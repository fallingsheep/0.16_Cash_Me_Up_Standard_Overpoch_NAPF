// standard roadblock mission: humvee armored (sellable)
private ["_vehicle","_choseVic","_gunner","_name"];

// define mission name for debug output
_name = "RBVehicleArmed";

// pick a roadblock position
DZMSRoadBlockLootPos = DZMSRoadBlocksStatLocs call BIS_fnc_selectRandom;

// anounce the presence of a roadblock
diag_log text format["[DZMSHotSpots]: Minor Mission %1 started at %2", _name, DZMSRoadBlockLootPos];
[nil,nil,rTitleText,"There are rumors of bandits blocking a road.\n Keep your eyes open!", "PLAIN",10] call RE;

// spawn vehicle, DZMSHotSpotsSetupVehicle prevents the vehicle from disappearing and sets fuel and such
_choseVic = DZMSHotSpotsArmedVic call BIS_fnc_selectRandom;
_vehicle = createVehicle [_choseVic,[(DZMSRoadBlockLootPos select 0), (DZMSRoadBlockLootPos select 1),0],[], 0, "CAN_COLLIDE"];
[_vehicle] call DZMSHotSpotsSetupVehicle;

// DZMSHotSpotsAISpawn spawns AI to the mission. Usage: [_coords, count, skillLevel, unitArray]
[[(DZMSRoadBlockLootPos select 0) ,(DZMSRoadBlockLootPos select 1), 0],4,1,"DZMSHotSpotsUnitsMinor"] call DZMSHotSpotsAISpawn;
sleep 5;

// pick a gunner for the vehicle
_gunner = DZMSHotSpotsUnitsMinor select 1;
_gunner assignAsGunner _vehicle;
_gunner moveInTurret [_vehicle,[0]];

// wait until the player is within 5 meters and also meets the kill req
[DZMSRoadBlockLootPos,"DZMSHotSpotsUnitsMinor"] call DZMSHotSpotsWaitMissionComp;

// call DZMSHotSpotsSaveVeh to attempt to save the vehicles to the database, if saving is off, the script will exit.
[_vehicle] ExecVM DZMSHotSpotsSaveVeh;

// let everyone know the mission is over
diag_log text format["[DZMSHotSpots]: Minor Mission %1 has ended.", _name];
[nil,nil,rTitleText,"The roadblock has been cleared!", "PLAIN",6] call RE;

// let the timer know the mission is over
DZMSHotSpotsMinDone = true;

