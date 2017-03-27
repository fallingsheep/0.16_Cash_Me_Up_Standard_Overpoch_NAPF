/*
put together for DayZ Epoch
Credits to Shogun338 from Insurrection gaming
modified for separate "gather weed" script
*/

private ["_gearmenu","_playerPos","_nearWeed","_weed","_objectID","_objectUID"];
_playerPos = getPosATL player;
_hempqty = {_x == "FoodCanCorn"} count magazines player;
_nearWeed = count nearestObjects [_playerPos, ["MAP_p_Phragmites"], 4] > 0;
_weed = nearestObject [player, "MAP_p_Phragmites"];

if !(_nearWeed) exitWith {
	cutText [format["Needs be near of a Corn Field."], "PLAIN DOWN"];
};
if (_hempqty > 2) exitWith { 
    cutText [format["WARNING: %1, YOure Full of corn farmer", name player], "PLAIN DOWN"];
};
if (dayz_combat == 1) then { 
    cutText [format["IN COMBAT."], "PLAIN DOWN"];
} else {
	disableSerialization;
	_gearmenu = FindDisplay 106;
	_gearmenu CloseDisplay 106;
	player playActionNow "Medic";
	r_interrupt = false;
	sleep 6;
	_objectID = _weed getVariable["ObjectID","0"];
	_objectUID = _weed getVariable["ObjectUID","0"];
	deleteVehicle _weed;
	[_objectID,_objectUID] call server_deleteObj;
	deleteVehicle _weed;
	player addMagazine "FoodCanCorn";
	sleep 2;
	cutText [format["NICE LETS EAT CORN"], "PLAIN DOWN"];	
};