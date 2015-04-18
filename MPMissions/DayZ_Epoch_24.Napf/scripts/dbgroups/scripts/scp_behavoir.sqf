/*
	Set behavoir
*/

diag_log "** scp_behavoir initializing";

private ["_unit"];

_unit = _this select 0;

_unit enableAI "TARGET";
_unit enableAI "AUTOTARGET";
_unit enableAI "MOVE";
_unit enableAI "ANIM";
_unit enableAI "FSM";
_unit allowDammage true;
_unit setCombatMode "RED";
_unit setBehaviour "STEALTH";
_unit setFormation "WEDGE";

diag_log "** scp_behavoir initialized";
