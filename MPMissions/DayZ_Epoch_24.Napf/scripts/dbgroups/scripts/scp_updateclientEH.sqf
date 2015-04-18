/*
	Update client side survivors once player has loaded
*/

if (isServer) then {	// server only
	diag_log "** scp_updateclient initializing";

	publicVariable "DBPV_SrvrUnits";
	DBUpdClient = false;
	publicVariable "DBUpdClient";

	{
		[_x] call scp_publishunit;
	} forEach DBPV_SrvrUnits;

	diag_log "** scp_updateclient initialized";
};
