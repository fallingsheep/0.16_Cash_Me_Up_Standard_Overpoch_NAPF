// standard hotspot mission: launcher loot
private ["_index","_name","_crate"];

// define mission name for debug output
_name = "HSLauncher";

// select one of the active positions
_index = DZMSHotSpotsX call BIS_fnc_randomIndex;
DZMSHotSpotsLootPos = [(DZMSHotSpotsX select _index),
                       (DZMSHotSpotsY select _index),
                       (DZMSHotSpotsZ select _index)];
diag_log text format["[DZMSHotSpots]: Major Mission %1 started at %2", _name, DZMSHotSpotsLootPos];

// create loot box, DZMSHotSpotsBoxFill fills the box, DZMSHotSpotsProtectObj prevents it from disappearing
_crate = createVehicle ["USVehicleBox",DZMSHotSpotsLootPos,[], 0, "CAN_COLLIDE"];
[_crate,"launcher"] ExecVM DZMSHotSpotsBoxSetup;
[_crate] call DZMSHotSpotsProtectObj;

// DZMSHotSpotsAISpawn spawns AI to the mission. Usage: [_coords, count, skillLevel, unitArray]
[[(DZMSHotSpotsLootPos select 0) ,(DZMSHotSpotsLootPos select 1), 0],3,1,"DZMSHotSpotsUnitsMajor"] call DZMSHotSpotsAISpawn;
[[(DZMSHotSpotsLootPos select 0) ,(DZMSHotSpotsLootPos select 1), 0],3,1,"DZMSHotSpotsUnitsMajor"] call DZMSHotSpotsAISpawn;
sleep 5;

// wait until the player is within 5 meters and also meets the kill req
[DZMSHotSpotsLootPos,"DZMSHotSpotsUnitsMajor"] call DZMSHotSpotsWaitMissionComp;

// let everyone know the mission is over
diag_log text format["[DZMSHotSpots]: Major Mission %1 has ended.", _name];

// let the timer know the mission is over
DZMSHotSpotsMajDone = true;

// a new set of locations needs to be chosen
call DZMSHotSpotsPickLocations;
