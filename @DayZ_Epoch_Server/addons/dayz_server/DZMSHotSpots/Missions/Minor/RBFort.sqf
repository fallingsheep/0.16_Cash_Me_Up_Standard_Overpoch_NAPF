// standard roadblock mission: land_fortified_nest_big and money crate
private ["_base1","_name","_crate"];

// define mission name for debug output
_name = "RBFort";

// pick a roadblock position
DZMSRoadBlockLootPos = DZMSRoadBlocksStatLocs call BIS_fnc_selectRandom;

// anounce the presence of a roadblock
diag_log text format["[DZMSHotSpots]: Minor Mission %1 started at %2", _name, DZMSRoadBlockLootPos];
[nil,nil,rTitleText,"There are rumors of bandits blocking a road.\n Keep your eyes open!", "PLAIN",10] call RE;

// spawn scenery
_base1 = createVehicle ["land_fortified_nest_big", [(DZMSRoadBlockLootPos select 0), (DZMSRoadBlockLootPos select 1),-0.2],[], 0, "CAN_COLLIDE"];
[_base1] call DZMSHotSpotsProtectObj;

// create loot box, DZMSHotSpotsBoxFill fills the box, DZMSHotSpotsProtectObj prevents it from disappearing
_crate = createVehicle ["MedBox0",DZMSRoadBlockLootPos,[], 0, "CAN_COLLIDE"];
[_crate,"money"] ExecVM DZMSHotSpotsBoxSetup;
[_crate] call DZMSHotSpotsProtectObj;

// DZMSHotSpotsAISpawn spawns AI to the mission. Usage: [_coords, count, skillLevel, unitArray]
[[(DZMSRoadBlockLootPos select 0) ,(DZMSRoadBlockLootPos select 1), 0],4,1,"DZMSHotSpotsUnitsMinor"] call DZMSHotSpotsAISpawn;
sleep 5;

// wait until the player is within 5 meters and also meets the kill req
[DZMSRoadBlockLootPos,"DZMSHotSpotsUnitsMinor"] call DZMSHotSpotsWaitMissionComp;

// let everyone know the mission is over
diag_log text format["[DZMSHotSpots]: Minor Mission %1 has ended.", _name];
[nil,nil,rTitleText,"The roadblock has been cleared!", "PLAIN",6] call RE;

// let the timer know the mission is over
DZMSHotSpotsMinDone = true;

