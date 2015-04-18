/*
	Heal unit across all machines
*/

diag_log "** scp_healEH initializing";

private ["_unit","_nunit","_unith"];
//_unit = _this select 0;

_nunit = DBPV_SrvrUnits find _this;
if(_nunit > -1) then {
	_unith = DBPV_SrvrUnits select _nunit;
	_unith setdamage 0;
	DBPV_SrvrUnits set [_nunit,_unit];
} else {
	diag_log format ["** scp_healEH : Unit %1 not in list",_unit];
};

diag_log "** scp_healEH initialized";
