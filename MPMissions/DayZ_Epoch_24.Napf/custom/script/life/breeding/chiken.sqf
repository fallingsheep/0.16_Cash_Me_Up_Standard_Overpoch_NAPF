private ["_position","_nearbman","_inventory","_hasitem1","_removed","_dis","_sfx","_earlyObj","_lastObj"];



//DEFINES///

_position = getPosATL player;
_nearbman = count nearestObjects [_position, ["MAP_Shed_W01"], 10] > 0;
_inventory = items player;
_hasitem1 = [["PartWoodLumber",2], "PartWoodPlywood"] call player_checkItems;

//CHECK ITEMS AND NEAREST///

if (!_hasitem1) exitWith {cutText [format["Needs 2xMetalPole and 1xPartGeneric"], "PLAIN DOWN"];};


if (_nearbman && _hasitem1) then {


//SPAWN OBJET//

player playActionNow "Medic";
r_interrupt = false;
_removed = [["PartWoodLumber",2], "PartWoodPlywood"] call player_removeItems;


_dis=1;
_sfx = "gut";
[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

_earlyObj = "MAP_ChickenCoop" createVehicle (_position);
_earlyObj setVariable ["ObjectID", "1", true];
_earlyObj setVariable ["ObjectUID", "1", true];



cutText [format["Nice jail!"], "PLAIN DOWN"];
sleep 6;
cutText [format["Chiken will be ready in 1 minutes!"], "PLAIN DOWN"];

sleep 60;

cutText [format["Chiken are ready for be eated!!"], "PLAIN DOWN"];

deleteVehicle _earlyObj;

_lastObj = "Hen" createVehicle (_position);
_lastObj setVariable ["ObjectID", "1", true];
_lastObj setVariable ["ObjectUID", "1", true];

r_interrupt = false;
player switchMove "";
player playActionNow "stop";



} else{
cutText [format["You must  be near a Boogieman!!"], "PLAIN DOWN"];

sleep 10;
};


