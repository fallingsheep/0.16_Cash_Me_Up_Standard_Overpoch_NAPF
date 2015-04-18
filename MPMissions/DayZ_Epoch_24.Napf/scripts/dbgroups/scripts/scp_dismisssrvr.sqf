/*
	Dismiss
*/

diag_log "** scp_dismisssrvr initializing";

private ["_unit","_caller","_id","_marker","_markerPos","_group","_nunit"];

_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_unit removeAction _id;

_marker = [getMarkerPos "S1", getMarkerPos "S2", getMarkerPos "S3", getMarkerPos "S4", getMarkerPos "S5", getMarkerPos "S6", getMarkerPos "S7", getMarkerPos "S8", getMarkerPos "S9", getMarkerPos "S10", getMarkerPos "S11", getMarkerPos "S12"];
_markerPos = _marker call BIS_fnc_selectRandom;
_group = createGroup West;
[_unit] join _group;
[_group, _markerPos, 250] call scp_task_patrol;

_unit setVariable ["DBRecruited", false];
_unit setVariable ["DBRecruiter", 0];

_nunit = DBPV_SrvrUnits find _unit;
if (_nunit > 0) then {
	DBPV_SrvrUnits set [_nunit,_unit];
	[_unit] call scp_publishunit;
} else {
	diag_log format ["** scp_dismisssrvr : Unit %1 not in list",_unit];
};

diag_log "** scp_dismisssrvr initialized";
