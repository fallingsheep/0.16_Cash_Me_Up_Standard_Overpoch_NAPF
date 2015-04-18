/*
	Recruit
*/

diag_log "** scp_recruitsrvr initializing";

private ["_unit","_caller","_id","_puid","_nunit"];

_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_puid = _this select 3;

_unit removeAction _id;

[_unit] join player;

_unit setVariable ["DBRecruited", true];
_unit setVariable ["DBRecruiter", _puid];

_nunit = DBPV_SrvrUnits find _unit;
if (_nunit > 0) then {
	DBPV_SrvrUnits set [_nunit,_unit];
	[_unit] call scp_publishunit;
} else {
	diag_log format ["** scp_recruitsrvr : Unit %1 not in list",_unit];
};

diag_log "** scp_recruitsrvr initialized";
