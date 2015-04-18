/*
	Lock ammo to full
*/

diag_log "** scp_lockammo initializing";

private ["_unit"];

_unit = _this select 0;

while {alive _unit} do {
	sleep 15;
	_unit setVehicleAmmo 1;
};

diag_log "** scp_lockammo initialized";
