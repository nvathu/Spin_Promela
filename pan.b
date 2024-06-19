	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC :init: */

	case 3: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 4: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 5: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 6: // STATE 4
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 5
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 6
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 8
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 10: // STATE 9
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 11: // STATE 10
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 12: // STATE 11
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 13: // STATE 12
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 14: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Airplane */

	case 15: // STATE 1
		;
		XX = 1;
		unrecv(now.tower_cmd, XX-1, 0, 5, 1);
		unrecv(now.tower_cmd, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 17: // STATE 3
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 18: // STATE 5
		;
		XX = 1;
		unrecv(now.tower_cmd, XX-1, 0, 7, 1);
		unrecv(now.tower_cmd, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 20: // STATE 7
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 21: // STATE 11
		;
		XX = 1;
		unrecv(now.tower_cmd, XX-1, 0, 3, 1);
		unrecv(now.tower_cmd, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 23: // STATE 13
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 24: // STATE 15
		;
		XX = 1;
		unrecv(now.tower_cmd, XX-1, 0, 6, 1);
		unrecv(now.tower_cmd, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 26: // STATE 17
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 27: // STATE 21
		;
		XX = 1;
		unrecv(now.tower_cmd, XX-1, 0, 1, 1);
		unrecv(now.tower_cmd, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 29: // STATE 23
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 30: // STATE 25
		;
		XX = 1;
		unrecv(now.tower_cmd, XX-1, 0, 4, 1);
		unrecv(now.tower_cmd, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 32: // STATE 27
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 33: // STATE 31
		;
		XX = 1;
		unrecv(now.tower_cmd, XX-1, 0, 2, 1);
		unrecv(now.tower_cmd, XX-1, 1, ((P1 *)_this)->id, 0);
		((P1 *)_this)->id = trpt->bup.oval;
		;
		;
		goto R999;
;
		;
		
	case 35: // STATE 33
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 36: // STATE 37
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Tower */

	case 37: // STATE 1
		;
		XX = 1;
		unrecv(now.plane_state, XX-1, 0, 6, 1);
		unrecv(now.plane_state, XX-1, 1, ((P0 *)_this)->i, 0);
		((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 38: // STATE 2
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 39: // STATE 3
		;
		XX = 1;
		unrecv(now.plane_state, XX-1, 0, 7, 1);
		unrecv(now.plane_state, XX-1, 1, ((P0 *)_this)->i, 0);
		((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 40: // STATE 5
		;
		now.runway = trpt->bup.oval;
		;
		goto R999;

	case 41: // STATE 6
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;
;
		;
		
	case 43: // STATE 9
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 44: // STATE 13
		;
		XX = 1;
		unrecv(now.plane_state, XX-1, 0, 5, 1);
		unrecv(now.plane_state, XX-1, 1, ((P0 *)_this)->i, 0);
		((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 45: // STATE 15
		;
		now.taxiway = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 16
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 47: // STATE 17
		;
		now.runway = trpt->bup.oval;
		;
		goto R999;
;
		
	case 48: // STATE 22
		goto R999;
;
		;
		
	case 50: // STATE 20
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 51: // STATE 24
		;
		XX = 1;
		unrecv(now.plane_state, XX-1, 0, 3, 1);
		unrecv(now.plane_state, XX-1, 1, ((P0 *)_this)->i, 0);
		((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 52: // STATE 26
		;
		now.gates_count = trpt->bup.oval;
		;
		goto R999;

	case 53: // STATE 27
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 54: // STATE 28
		;
		now.taxiway = trpt->bup.oval;
		;
		goto R999;
;
		
	case 55: // STATE 33
		goto R999;
;
		;
		
	case 57: // STATE 31
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 58: // STATE 35
		;
		XX = 1;
		unrecv(now.plane_state, XX-1, 0, 1, 1);
		unrecv(now.plane_state, XX-1, 1, ((P0 *)_this)->i, 0);
		((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 59: // STATE 37
		;
		now.taxiway = trpt->bup.oval;
		;
		goto R999;

	case 60: // STATE 38
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 61: // STATE 39
		;
		now.gates_count = trpt->bup.oval;
		;
		goto R999;
;
		
	case 62: // STATE 44
		goto R999;
;
		;
		
	case 64: // STATE 42
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 65: // STATE 46
		;
		XX = 1;
		unrecv(now.plane_state, XX-1, 0, 2, 1);
		unrecv(now.plane_state, XX-1, 1, ((P0 *)_this)->i, 0);
		((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 66: // STATE 48
		;
		now.runway = trpt->bup.oval;
		;
		goto R999;

	case 67: // STATE 49
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 68: // STATE 50
		;
		now.taxiway = trpt->bup.oval;
		;
		goto R999;
;
		
	case 69: // STATE 55
		goto R999;
;
		;
		
	case 71: // STATE 53
		;
		_m = unsend(now.plane_state);
		;
		goto R999;

	case 72: // STATE 57
		;
		XX = 1;
		unrecv(now.plane_state, XX-1, 0, 4, 1);
		unrecv(now.plane_state, XX-1, 1, ((P0 *)_this)->i, 0);
		((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 73: // STATE 58
		;
		_m = unsend(now.tower_cmd);
		;
		goto R999;

	case 74: // STATE 59
		;
		now.runway = trpt->bup.oval;
		;
		goto R999;

	case 75: // STATE 64
		;
		p_restor(II);
		;
		;
		goto R999;
	}

