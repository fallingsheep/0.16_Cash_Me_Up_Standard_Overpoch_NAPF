/*
	publish unit EH
*/

private ["_unit","_v01","_v02","_v03","_v04","_v05","_v06","_nunit"];

diag_log format ["** scp_publishunitEH : _this %1",_this];

_unit = _this select 0;		// unit
_v01 = _this select 1;		// DBSurvivor
_v02 = _this select 2;		// DBRecruited
_v03 = _this select 3;		// DBRecruiter
_v04 = _this select 4;		// DBRecruit
_v05 = _this select 5;		// DBDismiss
_v06 = _this select 6;		// isAlive

//diag_log format ["** scp_publishunitEH %1,%2,%3,%4,%5,%6,%7",_unit,_v01,_v02,_v03,_v04,_v05,_v06];

if (!(_v06)) then {
	diag_log format ["<*> %1 is dead",_unit];
};

_nunit = DBPV_SrvrUnits find _unit;
if(_nunit > -1) then {
	_eunit = DBPV_SrvrUnits select _nunit;
	_eunit setVariable ["DBSurvivor", _v01];
	_eunit setVariable ["DBRecruited", _v02];
	_eunit setVariable ["DBRecruiter", _v03];
	_eunit setVariable ["DBRecruit", _v04];
	_eunit setVariable ["DBDismiss", _v05];
	DBPV_SrvrUnits set [_nunit,_eunit];
} else {
	diag_log format ["** scp_publishunitEH : Unit %1 not in list",_unit];
};

