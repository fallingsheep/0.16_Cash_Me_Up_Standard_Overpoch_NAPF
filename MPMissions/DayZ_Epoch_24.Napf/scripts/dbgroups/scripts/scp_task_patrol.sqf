
diag_log "** scp_task_patrol initializing";

//Validate parameter count
if ((count _this) < 3) exitWith {debugLog "Log: [taskPatrol] Function requires at least 3 parameters!"; false};

private ["_grp", "_pos", "_maxDist", "_blacklist"];
_grp = _this select 0;
_pos = _this select 1;
_maxDist = _this select 2;
_blacklist = [];
if ((count _this) > 4) then {_blacklist = _this select 4};

//HotZoneDistances = HotZoneDistances + [_maxDist];

//Validate parameters
if ((typeName _grp) != (typeName grpNull)) exitWith {debugLog "Log: [taskPatrol] Group (0) must be a Group!"; false};
if ((typeName _pos) != (typeName [])) exitWith {debugLog "Log: [taskPatrol] Position (1) must be an Array!"; false};
if ((typeName _maxDist) != (typeName 0)) exitWith {debugLog "Log: [taskPatrol] Maximum distance (2) must be a Number!"; false};
if ((typeName _blacklist) != (typeName [])) exitWith {debugLog "Log: [taskPatrol] Blacklist (3) must be an Array!"; false};


//Create a string of randomly placed waypoints.
private ["_prevPos"];
_prevPos = _pos;
for "_i" from 0 to (3 + (floor (random 5))) do
{
	private ["_wp", "_newPos"];
	_newPos = [_prevPos, 50, _maxDist, 1, 0, 60 * (pi / 180), 0, _blacklist] call BIS_fnc_findSafePos;
	_prevPos = _newPos;

	_wp = _grp addWaypoint [_newPos, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointCompletionRadius 20;

	//Set the group's speed and formation at the first waypoint.
	if (_i == 0) then
	{
		_wp setWaypointSpeed "LIMITED";
		_wp setWaypointFormation "STAG COLUMN";
	};
};

//Cycle back to the first position.
private ["_wp"];
_wp = _grp addWaypoint [_pos, 0];
_wp setWaypointType "CYCLE";
_wp setWaypointCompletionRadius 20;

diag_log "** scp_task_patrol initialized";

true