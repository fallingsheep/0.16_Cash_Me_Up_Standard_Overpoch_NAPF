/*
	Dismiss unit
*/

diag_log "** scp_dismissunit initializing";

private ["_unit","_caller","_id","_marker","_markerPos","_group"];

_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_unit removeAction _id;

_marker = [getMarkerPos "S1", getMarkerPos "S2", getMarkerPos "S3", getMarkerPos "S4", getMarkerPos "S5", getMarkerPos "S6", getMarkerPos "S7", getMarkerPos "S8", getMarkerPos "S9", getMarkerPos "S10", getMarkerPos "S11", getMarkerPos "S12"];
_markerPos = _marker call BIS_fnc_selectRandom;


_group = createGroup West;
[_unit] join _group;
[_group, _markerPos, 250] call scp_task_patrol;

diag_log "** scp_dismissunit initialized";
