/*
	DB Groups addon
*/

private ["_i"];

call compile preprocessFileLineNumbers "scripts\dbgroups\scripts\scp_compiles.sqf";
call compile preprocessFileLineNumbers "scripts\dbgroups\scripts\scp_compileEH.sqf";

if (isServer) then {
	diag_log "** DB groups server side initializing";
	[] call scp_crtsrvrs;
	DBSGroups = true;
	publicVariable "DBSGroups";
} else {
	waitUntil {(alive player)};
	waitUntil {DBSGroups};
	sleep 5;

	[] execVM "scripts\dbgroups\scripts\scp_relinkvm.sqf";		// reactivate VMs when player logs in

	diag_log "** DB groups client side initializing";
};

DBGroupsStarted = true;

diag_log "** DB groups initialized";
