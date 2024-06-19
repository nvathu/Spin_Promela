#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC :init: */
	case 3: // STATE 1 - voss24_project1_format.pml:125 - [(run Tower())] (0:0:0 - 1)
		IfNotBlocked
		reached[2][1] = 1;
		if (!(addproc(II, 1, 0, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - voss24_project1_format.pml:126 - [(run Airplane(1))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		if (!(addproc(II, 1, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - voss24_project1_format.pml:127 - [(run Airplane(2))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][3] = 1;
		if (!(addproc(II, 1, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - voss24_project1_format.pml:128 - [(run Airplane(3))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][4] = 1;
		if (!(addproc(II, 1, 1, 3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - voss24_project1_format.pml:129 - [(run Airplane(4))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][5] = 1;
		if (!(addproc(II, 1, 1, 4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - voss24_project1_format.pml:130 - [(run Airplane(5))] (0:0:0 - 1)
		IfNotBlocked
		reached[2][6] = 1;
		if (!(addproc(II, 1, 1, 5)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 8 - voss24_project1_format.pml:133 - [tower_cmd!AIR_GO_AROUND,1] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 7, 1, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 10: // STATE 9 - voss24_project1_format.pml:134 - [tower_cmd!AIR_GO_AROUND,2] (0:0:0 - 1)
		IfNotBlocked
		reached[2][9] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 7, 2, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 11: // STATE 10 - voss24_project1_format.pml:135 - [tower_cmd!AIR_GO_AROUND,3] (0:0:0 - 1)
		IfNotBlocked
		reached[2][10] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 7, 3, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 12: // STATE 11 - voss24_project1_format.pml:136 - [tower_cmd!AIR_GO_AROUND,4] (0:0:0 - 1)
		IfNotBlocked
		reached[2][11] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 7, 4, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 13: // STATE 12 - voss24_project1_format.pml:137 - [tower_cmd!AIR_GO_AROUND,5] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 7, 5, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 14: // STATE 13 - voss24_project1_format.pml:138 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][13] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Airplane */
	case 15: // STATE 1 - voss24_project1_format.pml:80 - [tower_cmd?RUNWAY_LAND,id] (0:0:1 - 1)
		reached[1][1] = 1;
		if (q_zero(now.tower_cmd))
		{	if (boq != now.tower_cmd) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.tower_cmd) == 0) continue;

		XX=1;
		if (5 != qrecv(now.tower_cmd, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.tower_cmd, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Airplane:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tower_cmd);
			sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.tower_cmd))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 16: // STATE 2 - voss24_project1_format.pml:81 - [printf('Airplane %d landing\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		Printf("Airplane %d landing\n", ((P1 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 3 - voss24_project1_format.pml:82 - [plane_state!RUNWAY_LAND,id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 5, ((P1 *)_this)->id, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 18: // STATE 5 - voss24_project1_format.pml:84 - [tower_cmd?AIR_GO_AROUND,id] (0:0:1 - 1)
		reached[1][5] = 1;
		if (q_zero(now.tower_cmd))
		{	if (boq != now.tower_cmd) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.tower_cmd) == 0) continue;

		XX=1;
		if (7 != qrecv(now.tower_cmd, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.tower_cmd, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Airplane:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tower_cmd);
			sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.tower_cmd))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 6 - voss24_project1_format.pml:85 - [printf('Airplane %d goes around\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		Printf("Airplane %d goes around\n", ((P1 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 7 - voss24_project1_format.pml:86 - [plane_state!AIR_GO_AROUND,id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 7, ((P1 *)_this)->id, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 11 - voss24_project1_format.pml:92 - [tower_cmd?TAXIWAY_LAND,id] (0:0:1 - 1)
		reached[1][11] = 1;
		if (q_zero(now.tower_cmd))
		{	if (boq != now.tower_cmd) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.tower_cmd) == 0) continue;

		XX=1;
		if (3 != qrecv(now.tower_cmd, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.tower_cmd, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Airplane:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tower_cmd);
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.tower_cmd))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 22: // STATE 12 - voss24_project1_format.pml:93 - [printf('Airplane %d taxing to the gate\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		Printf("Airplane %d taxing to the gate\n", ((P1 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 13 - voss24_project1_format.pml:94 - [plane_state!TAXIWAY_LAND,id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][13] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 3, ((P1 *)_this)->id, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 24: // STATE 15 - voss24_project1_format.pml:96 - [tower_cmd?AIR_TAKE_OFF,id] (0:0:1 - 1)
		reached[1][15] = 1;
		if (q_zero(now.tower_cmd))
		{	if (boq != now.tower_cmd) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.tower_cmd) == 0) continue;

		XX=1;
		if (6 != qrecv(now.tower_cmd, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.tower_cmd, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Airplane:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tower_cmd);
			sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.tower_cmd))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 25: // STATE 16 - voss24_project1_format.pml:97 - [printf('Airplane %d takes off\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		Printf("Airplane %d takes off\n", ((P1 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 17 - voss24_project1_format.pml:98 - [plane_state!AIR_TAKE_OFF,id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 6, ((P1 *)_this)->id, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 27: // STATE 21 - voss24_project1_format.pml:104 - [tower_cmd?GATE,id] (0:0:1 - 1)
		reached[1][21] = 1;
		if (q_zero(now.tower_cmd))
		{	if (boq != now.tower_cmd) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.tower_cmd) == 0) continue;

		XX=1;
		if (1 != qrecv(now.tower_cmd, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.tower_cmd, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Airplane:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tower_cmd);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.tower_cmd))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 28: // STATE 22 - voss24_project1_format.pml:105 - [printf('Airplane %d docking to gate\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		Printf("Airplane %d docking to gate\n", ((P1 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 23 - voss24_project1_format.pml:106 - [plane_state!GATE,id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 1, ((P1 *)_this)->id, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 30: // STATE 25 - voss24_project1_format.pml:108 - [tower_cmd?RUNWAY_TAKE_OFF,id] (0:0:1 - 1)
		reached[1][25] = 1;
		if (q_zero(now.tower_cmd))
		{	if (boq != now.tower_cmd) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.tower_cmd) == 0) continue;

		XX=1;
		if (4 != qrecv(now.tower_cmd, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.tower_cmd, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Airplane:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tower_cmd);
			sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.tower_cmd))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 31: // STATE 26 - voss24_project1_format.pml:109 - [printf('Airplane %d going to takeoff\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		Printf("Airplane %d going to takeoff\n", ((P1 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 27 - voss24_project1_format.pml:110 - [plane_state!RUNWAY_TAKE_OFF,id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 4, ((P1 *)_this)->id, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 31 - voss24_project1_format.pml:116 - [tower_cmd?TAXIWAY_TAKE_OFF,id] (0:0:1 - 1)
		reached[1][31] = 1;
		if (q_zero(now.tower_cmd))
		{	if (boq != now.tower_cmd) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.tower_cmd) == 0) continue;

		XX=1;
		if (2 != qrecv(now.tower_cmd, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P1 *)_this)->id;
		;
		((P1 *)_this)->id = qrecv(now.tower_cmd, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Airplane:id", ((P1 *)_this)->id);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.tower_cmd);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.tower_cmd))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 34: // STATE 32 - voss24_project1_format.pml:117 - [printf('Airplane %d taxing to take off\\n',id)] (0:0:0 - 1)
		IfNotBlocked
		reached[1][32] = 1;
		Printf("Airplane %d taxing to take off\n", ((P1 *)_this)->id);
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 33 - voss24_project1_format.pml:118 - [plane_state!TAXIWAY_TAKE_OFF,id] (0:0:0 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->id); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 2, ((P1 *)_this)->id, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 37 - voss24_project1_format.pml:121 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Tower */
	case 37: // STATE 1 - voss24_project1_format.pml:14 - [plane_state?AIR_TAKE_OFF,i] (0:0:1 - 1)
		reached[0][1] = 1;
		if (q_zero(now.plane_state))
		{	if (boq != now.plane_state) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.plane_state) == 0) continue;

		XX=1;
		if (6 != qrecv(now.plane_state, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		;
		((P0 *)_this)->i = qrecv(now.plane_state, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Tower:i", ((P0 *)_this)->i);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plane_state);
			sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.plane_state))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 38: // STATE 2 - voss24_project1_format.pml:14 - [tower_cmd!AIR_GO_AROUND,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 7, ((P0 *)_this)->i, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 39: // STATE 3 - voss24_project1_format.pml:15 - [plane_state?AIR_GO_AROUND,i] (0:0:1 - 1)
		reached[0][3] = 1;
		if (q_zero(now.plane_state))
		{	if (boq != now.plane_state) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.plane_state) == 0) continue;

		XX=1;
		if (7 != qrecv(now.plane_state, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		;
		((P0 *)_this)->i = qrecv(now.plane_state, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Tower:i", ((P0 *)_this)->i);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plane_state);
			sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.plane_state))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 40: // STATE 4 - voss24_project1_format.pml:18 - [(((!(runway)&&!(taxiway))&&(gates_count<4)))] (6:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!((( !(((int)now.runway))&& !(((int)now.taxiway)))&&(now.gates_count<4))))
			continue;
		/* merge: runway = 1(0, 5, 6) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.runway);
		now.runway = 1;
#ifdef VAR_RANGES
		logval("runway", ((int)now.runway));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 41: // STATE 6 - voss24_project1_format.pml:19 - [tower_cmd!RUNWAY_LAND,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 5, ((P0 *)_this)->i, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 42: // STATE 8 - voss24_project1_format.pml:21 - [printf('Airplane %d goes around \\n',i)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		Printf("Airplane %d goes around \n", ((P0 *)_this)->i);
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 9 - voss24_project1_format.pml:21 - [plane_state!AIR_GO_AROUND,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 7); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 7, ((P0 *)_this)->i, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 44: // STATE 13 - voss24_project1_format.pml:24 - [plane_state?RUNWAY_LAND,i] (0:0:1 - 1)
		reached[0][13] = 1;
		if (q_zero(now.plane_state))
		{	if (boq != now.plane_state) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.plane_state) == 0) continue;

		XX=1;
		if (5 != qrecv(now.plane_state, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		;
		((P0 *)_this)->i = qrecv(now.plane_state, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Tower:i", ((P0 *)_this)->i);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plane_state);
			sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.plane_state))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 45: // STATE 14 - voss24_project1_format.pml:27 - [((!(taxiway)&&(gates_count<4)))] (16:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		if (!(( !(((int)now.taxiway))&&(now.gates_count<4))))
			continue;
		/* merge: taxiway = 1(0, 15, 16) */
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)now.taxiway);
		now.taxiway = 1;
#ifdef VAR_RANGES
		logval("taxiway", ((int)now.taxiway));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 46: // STATE 16 - voss24_project1_format.pml:29 - [tower_cmd!TAXIWAY_LAND,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 3, ((P0 *)_this)->i, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 17 - voss24_project1_format.pml:30 - [runway = 0] (0:61:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.runway);
		now.runway = 0;
#ifdef VAR_RANGES
		logval("runway", ((int)now.runway));
#endif
		;
		/* merge: .(goto)(61, 22, 61) */
		reached[0][22] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 48: // STATE 22 - voss24_project1_format.pml:35 - [.(goto)] (0:61:0 - 2)
		IfNotBlocked
		reached[0][22] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 49: // STATE 19 - voss24_project1_format.pml:32 - [printf('Airplane %d is waiting on the runway \\n',i)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		Printf("Airplane %d is waiting on the runway \n", ((P0 *)_this)->i);
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 20 - voss24_project1_format.pml:33 - [plane_state!RUNWAY_LAND,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 5); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 5, ((P0 *)_this)->i, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 51: // STATE 24 - voss24_project1_format.pml:36 - [plane_state?TAXIWAY_LAND,i] (0:0:1 - 1)
		reached[0][24] = 1;
		if (q_zero(now.plane_state))
		{	if (boq != now.plane_state) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.plane_state) == 0) continue;

		XX=1;
		if (3 != qrecv(now.plane_state, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		;
		((P0 *)_this)->i = qrecv(now.plane_state, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Tower:i", ((P0 *)_this)->i);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plane_state);
			sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.plane_state))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 52: // STATE 25 - voss24_project1_format.pml:39 - [((gates_count<4))] (27:0:1 - 1)
		IfNotBlocked
		reached[0][25] = 1;
		if (!((now.gates_count<4)))
			continue;
		/* merge: gates_count = (gates_count+1)(0, 26, 27) */
		reached[0][26] = 1;
		(trpt+1)->bup.oval = now.gates_count;
		now.gates_count = (now.gates_count+1);
#ifdef VAR_RANGES
		logval("gates_count", now.gates_count);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 53: // STATE 27 - voss24_project1_format.pml:41 - [tower_cmd!GATE,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 1, ((P0 *)_this)->i, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 54: // STATE 28 - voss24_project1_format.pml:41 - [taxiway = 0] (0:61:1 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((int)now.taxiway);
		now.taxiway = 0;
#ifdef VAR_RANGES
		logval("taxiway", ((int)now.taxiway));
#endif
		;
		/* merge: .(goto)(61, 33, 61) */
		reached[0][33] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 55: // STATE 33 - voss24_project1_format.pml:46 - [.(goto)] (0:61:0 - 2)
		IfNotBlocked
		reached[0][33] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 56: // STATE 30 - voss24_project1_format.pml:43 - [printf('Airplane %d is waiting on the taxiway \\n',i)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		Printf("Airplane %d is waiting on the taxiway \n", ((P0 *)_this)->i);
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 31 - voss24_project1_format.pml:44 - [plane_state!TAXIWAY_LAND,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 3, ((P0 *)_this)->i, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 58: // STATE 35 - voss24_project1_format.pml:47 - [plane_state?GATE,i] (0:0:1 - 1)
		reached[0][35] = 1;
		if (q_zero(now.plane_state))
		{	if (boq != now.plane_state) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.plane_state) == 0) continue;

		XX=1;
		if (1 != qrecv(now.plane_state, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		;
		((P0 *)_this)->i = qrecv(now.plane_state, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Tower:i", ((P0 *)_this)->i);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plane_state);
			sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.plane_state))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 59: // STATE 36 - voss24_project1_format.pml:50 - [((!(taxiway)&&!(runway)))] (38:0:1 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(( !(((int)now.taxiway))&& !(((int)now.runway)))))
			continue;
		/* merge: taxiway = 1(0, 37, 38) */
		reached[0][37] = 1;
		(trpt+1)->bup.oval = ((int)now.taxiway);
		now.taxiway = 1;
#ifdef VAR_RANGES
		logval("taxiway", ((int)now.taxiway));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 60: // STATE 38 - voss24_project1_format.pml:52 - [tower_cmd!TAXIWAY_TAKE_OFF,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 2, ((P0 *)_this)->i, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 61: // STATE 39 - voss24_project1_format.pml:53 - [gates_count = (gates_count-1)] (0:61:1 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = now.gates_count;
		now.gates_count = (now.gates_count-1);
#ifdef VAR_RANGES
		logval("gates_count", now.gates_count);
#endif
		;
		/* merge: .(goto)(61, 44, 61) */
		reached[0][44] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 62: // STATE 44 - voss24_project1_format.pml:57 - [.(goto)] (0:61:0 - 2)
		IfNotBlocked
		reached[0][44] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 63: // STATE 41 - voss24_project1_format.pml:55 - [printf('Airplane %d is waiting in the gate \\n',i)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][41] = 1;
		Printf("Airplane %d is waiting in the gate \n", ((P0 *)_this)->i);
		_m = 3; goto P999; /* 0 */
	case 64: // STATE 42 - voss24_project1_format.pml:55 - [plane_state!GATE,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][42] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 1, ((P0 *)_this)->i, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 65: // STATE 46 - voss24_project1_format.pml:58 - [plane_state?TAXIWAY_TAKE_OFF,i] (0:0:1 - 1)
		reached[0][46] = 1;
		if (q_zero(now.plane_state))
		{	if (boq != now.plane_state) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.plane_state) == 0) continue;

		XX=1;
		if (2 != qrecv(now.plane_state, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		;
		((P0 *)_this)->i = qrecv(now.plane_state, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Tower:i", ((P0 *)_this)->i);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plane_state);
			sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.plane_state))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 66: // STATE 47 - voss24_project1_format.pml:61 - [(!(runway))] (49:0:1 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!( !(((int)now.runway))))
			continue;
		/* merge: runway = 1(0, 48, 49) */
		reached[0][48] = 1;
		(trpt+1)->bup.oval = ((int)now.runway);
		now.runway = 1;
#ifdef VAR_RANGES
		logval("runway", ((int)now.runway));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 67: // STATE 49 - voss24_project1_format.pml:63 - [tower_cmd!RUNWAY_TAKE_OFF,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 4, ((P0 *)_this)->i, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 68: // STATE 50 - voss24_project1_format.pml:64 - [taxiway = 0] (0:61:1 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.oval = ((int)now.taxiway);
		now.taxiway = 0;
#ifdef VAR_RANGES
		logval("taxiway", ((int)now.taxiway));
#endif
		;
		/* merge: .(goto)(61, 55, 61) */
		reached[0][55] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 69: // STATE 55 - voss24_project1_format.pml:69 - [.(goto)] (0:61:0 - 2)
		IfNotBlocked
		reached[0][55] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 70: // STATE 52 - voss24_project1_format.pml:66 - [printf('Airplane %d is wainting on the taxiway \\n',i)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][52] = 1;
		Printf("Airplane %d is wainting on the taxiway \n", ((P0 *)_this)->i);
		_m = 3; goto P999; /* 0 */
	case 71: // STATE 53 - voss24_project1_format.pml:67 - [plane_state!TAXIWAY_TAKE_OFF,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (q_full(now.plane_state))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.plane_state);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.plane_state, 0, 2, ((P0 *)_this)->i, 2);
		if (q_zero(now.plane_state)) { boq = now.plane_state; };
		_m = 2; goto P999; /* 0 */
	case 72: // STATE 57 - voss24_project1_format.pml:70 - [plane_state?RUNWAY_TAKE_OFF,i] (0:0:1 - 1)
		reached[0][57] = 1;
		if (q_zero(now.plane_state))
		{	if (boq != now.plane_state) continue;
		} else
		{	if (boq != -1) continue;
		}
		if (q_len(now.plane_state) == 0) continue;

		XX=1;
		if (4 != qrecv(now.plane_state, 0, 0, 0)) continue;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		;
		((P0 *)_this)->i = qrecv(now.plane_state, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Tower:i", ((P0 *)_this)->i);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.plane_state);
			sprintf(simtmp, "%d", 4); strcat(simvals, simtmp);
			strcat(simvals, ",");
			sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);
		}
#endif
		if (q_zero(now.plane_state))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 73: // STATE 58 - voss24_project1_format.pml:72 - [tower_cmd!AIR_TAKE_OFF,i] (0:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (q_full(now.tower_cmd))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.tower_cmd);
		sprintf(simtmp, "%d", 6); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->i); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.tower_cmd, 0, 6, ((P0 *)_this)->i, 2);
		if (q_zero(now.tower_cmd)) { boq = now.tower_cmd; };
		_m = 2; goto P999; /* 0 */
	case 74: // STATE 59 - voss24_project1_format.pml:72 - [runway = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][59] = 1;
		(trpt+1)->bup.oval = ((int)now.runway);
		now.runway = 0;
#ifdef VAR_RANGES
		logval("runway", ((int)now.runway));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 75: // STATE 64 - voss24_project1_format.pml:75 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

