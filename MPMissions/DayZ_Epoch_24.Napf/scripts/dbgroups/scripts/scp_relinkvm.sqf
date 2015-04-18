/*
	Reattach VM's to survivors
*/

private ["_i","_unit"];

diag_log "** scp_relinkvm initializing";

{
	[_x] execVM "scripts\dbgroups\scripts\scp_heal.sqf";
	[_x] execVM "scripts\dbgroups\scripts\scp_lockammo.sqf";
	_x addRating 10000000;				// make them not shoot each other for killing zeds
	sleep 0.2;
} forEach DBPV_SrvrUnits;

diag_log "** scp_relinkvm initialized";
