/*
	Publish unit
*/

private ["_unit","_v01","_v02","_v03","_v04","_v05","_v06"];

_unit = _this select 0;		// unit

_v01 = _unit getVariable ["DBSurvivor",false];
_v02 = _unit getVariable ["DBRecruited",false];
_v03 = _unit getVariable ["DBRecruiter",0];
_v04 = _unit getVariable ["DBRecruit",false];
_v05 = _unit getVariable ["DBDismiss",false];
_v06 = alive _unit;

DBPV_PubUnit = [_unit,_v01,_v02,_v03,_v04,_v05,_v06];
publicVariable "DBPV_PubUnit";

diag_log format ["** scp_publishunit %1,%2,%3,%4,%5,%6,%7",_unit,_v01,_v02,_v03,_v04,_v05,_v06];
