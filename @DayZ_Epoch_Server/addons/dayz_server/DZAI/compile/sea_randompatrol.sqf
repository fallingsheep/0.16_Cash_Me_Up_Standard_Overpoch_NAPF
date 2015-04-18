private ["_unitGroup","_wpSelect"];
_unitGroup = _this select 0;

_wpSelect = [(getMarkerPos "DZAI_centerMarker"),7000,random(360),2] call SHK_pos;
[_unitGroup,0] setWPPos _wpSelect; 
[_unitGroup,0] setWaypointCompletionRadius 150;
if ((count (waypoints _unitGroup)) == 1) then {
	_unitGroup setCurrentWaypoint [_unitGroup,0];
};