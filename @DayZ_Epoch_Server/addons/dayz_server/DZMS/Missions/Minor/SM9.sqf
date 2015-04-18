/*
	Nut Truck Crash by lazyink (Full credit for code to TheSzerdi & TAW_Tonic)
	Updated to new format by Vampire
	edited by Fallingsheep
*/
private ["_missName","_coords","_crash","_crate","_crate1","_crate2"];

//Name of the Mission
_missName = "Nuts!";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"A Nut truck has crashed!\n Go find those nuts!", "PLAIN",10] call RE;

//DZMSAddMinMarker is a simple script that adds a marker to the location
[_coords,_missName] ExecVM DZMSAddMinMarker;

//Add and fill the boxes
_crate = createVehicle ["USVehicleBox",[(_coords select 0) + 3, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate,"nuts"] ExecVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;


//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel, unitArray]
[_coords,3,0,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 1;
[_coords,3,0,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 1;
[_coords,3,0,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 1;
[_coords,3,0,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 1;
[_coords,3,0,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 1;
[_coords,3,0,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 1;
[_coords,3,0,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 1;
[_coords,3,0,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 1;

//Wait until the player is within 30 meters and also meets the kill req
[_coords,"DZMSUnitsMinor"] call DZMSWaitMissionComp;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Nuts! have been Secured by Survivors!", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Minor SM Nuts! Mission has Ended."];
deleteMarker "DZMSMinMarker";
deleteMarker "DZMSMinDot";

//Let the timer know the mission is over
DZMSMinDone = true;