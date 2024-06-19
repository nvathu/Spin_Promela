mtype = { AIR_GO_AROUND,AIR_TAKE_OFF,RUNWAY_LAND,RUNWAY_TAKE_OFF,TAXIWAY_LAND,TAXIWAY_TAKE_OFF,GATE};

chan tower_cmd = [0] of { mtype,int };// Tower command channel
chan plane_state = [5] of { mtype,int };


bool runway = false;// is runway occupied
bool taxiway = false;// is taxiway occupied
int gates_count = 0;// number of planes in gates,0 - all gates are free

proctype Tower() {
	int i;
	do
	:: plane_state?AIR_TAKE_OFF(i) -> tower_cmd!AIR_GO_AROUND(i);// go around after take - off
	:: plane_state?AIR_GO_AROUND(i) -> // plane in the air ready for landing
		atomic {
			if 
			:: !runway && !taxiway && gates_count < 4 -> 
				runway = true;tower_cmd!RUNWAY_LAND(i);// prevent from landing if plane will be stuck
			:: else -> 
				printf("Airplane %d goes around \n",i);plane_state!AIR_GO_AROUND(i);
			fi;
		}
	:: plane_state?RUNWAY_LAND(i) -> // plane just landed
		atomic {
			if
			:: !taxiway && gates_count < 4 -> 
				taxiway = true;
				tower_cmd!TAXIWAY_LAND(i);
				runway = false;// go to the taxiway if free and there is space in gates
			:: else -> 
				printf("Airplane %d is waiting on the runway \n",i);
				plane_state!RUNWAY_LAND(i);
			fi;
		}
	:: plane_state?TAXIWAY_LAND(i) -> // plane on the taxiway,want to go to gate
		atomic {
			if
			:: gates_count < 4 -> 
				gates_count = gates_count + 1;
				tower_cmd!GATE(i);taxiway = false;// go if some gate is free
			:: else -> 
				printf("Airplane %d is waiting on the taxiway \n",i);
				plane_state!TAXIWAY_LAND(i);
			fi;
		}
	:: plane_state?GATE(i) -> // plane stands in the gate
		atomic {
			if
			:: !taxiway && !runway -> 
				taxiway = true;
				tower_cmd!TAXIWAY_TAKE_OFF(i);
				gates_count = gates_count - 1;// go to the taxiway if it is free and runway is free
			:: else -> 
				printf("Airplane %d is waiting in the gate \n",i);plane_state!GATE(i);
			fi;
		}
	:: plane_state?TAXIWAY_TAKE_OFF(i) -> // plane on the taxiway,want to take off
		atomic {
			if
			:: !runway -> 
				runway = true;
				tower_cmd!RUNWAY_TAKE_OFF(i);
				taxiway = false;// go on the runway to take off if free
			:: else -> 
				printf("Airplane %d is wainting on the taxiway \n",i);
				plane_state!TAXIWAY_TAKE_OFF(i);
			fi;
		}
	:: plane_state?RUNWAY_TAKE_OFF(i) -> // plane on the runway,take off
		atomic {
			tower_cmd!AIR_TAKE_OFF(i);runway = false;
		}
	od;
}

proctype Airplane(int id) {
	Air:
	if
	:: tower_cmd?RUNWAY_LAND(id) -> 
		printf("Airplane %d landing\n",id);
		plane_state!RUNWAY_LAND(id);
		goto Runway;
	:: tower_cmd?AIR_GO_AROUND(id) -> 
		printf("Airplane %d goes around\n",id);
		plane_state!AIR_GO_AROUND(id);
		goto Air;
	fi;
	
	Runway:
	if
	:: tower_cmd?TAXIWAY_LAND(id) -> 
		printf("Airplane %d taxing to the gate\n",id);
		plane_state!TAXIWAY_LAND(id);
		goto Taxiway;
	:: tower_cmd?AIR_TAKE_OFF(id) -> 
		printf("Airplane %d takes off\n",id);
		plane_state!AIR_TAKE_OFF(id);
		goto Air;
	fi;
	
	Taxiway:
	if
	:: tower_cmd?GATE(id) -> 
		printf("Airplane %d docking to gate\n",id);
		plane_state!GATE(id);
		goto Gate;
	:: tower_cmd?RUNWAY_TAKE_OFF(id) -> 
		printf("Airplane %d going to takeoff\n",id);
		plane_state!RUNWAY_TAKE_OFF(id);
		goto Runway;
	fi;
	
	Gate:
	if
	:: tower_cmd?TAXIWAY_TAKE_OFF(id) -> 
		printf("Airplane %d taxing to take off\n",id);
		plane_state!TAXIWAY_TAKE_OFF(id);
		goto Taxiway;
	fi;
}

init {
	atomic {
		run Tower();
		run Airplane(1);
		run Airplane(2);
		run Airplane(3);
		run Airplane(4);
		run Airplane(5);
	}
	
	tower_cmd!AIR_GO_AROUND(1);
	tower_cmd!AIR_GO_AROUND(2);
	tower_cmd!AIR_GO_AROUND(3);
	tower_cmd!AIR_GO_AROUND(4);
	tower_cmd!AIR_GO_AROUND(5);
}