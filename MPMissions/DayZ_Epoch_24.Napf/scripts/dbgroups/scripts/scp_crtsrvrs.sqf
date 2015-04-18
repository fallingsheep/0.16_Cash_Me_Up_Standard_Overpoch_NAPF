/*
	Create survivors
*/

private ["_i"];

diag_log "** scp_crtsrvrs initializing";

for "_i" from 1 to DBMaxSurvivors do {
	[false] execVM "scripts\dbgroups\scripts\scp_spwn_fr.sqf";
};

publicVariable "DBPV_SrvrUnits";

diag_log "** scp_crtsrvrs initialized";
