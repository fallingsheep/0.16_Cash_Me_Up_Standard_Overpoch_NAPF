/*
	Recruit unit
*/

diag_log "** scp_recruitunit initializing";

private ["_unit","_caller","_id"];

_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_unit removeAction _id;

[_unit] join player;

diag_log "** scp_recruitunit initialized";
