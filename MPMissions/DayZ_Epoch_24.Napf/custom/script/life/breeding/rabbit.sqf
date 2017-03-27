private ["_position","_nearbman","_inventory","_hasitem1","_removed","_dis","_sfx","_earlyObj","_lastObj"];



//DEFINES///

_position = getPosATL player;
_nearbman = count nearestObjects [_position, ["MAP_Shed_W01"], 5] > 0;
_inventory = items player;
_hasitem1 = [["ItemBurlap",2], "ItemWaterBottle"] call player_checkItems;

//CHECK ITEMS AND NEAREST///

if (!_hasitem1) exitWith {cutText [format["Needs 2xItemBurlap 1xWaterBottle"], "PLAIN DOWN"];};


if (_nearbman && _hasitem1) then {


//SPAWN OBJET//

player playActionNow "Medic";
r_interrupt = false;
_removed = [["ItemBurlap",2], "ItemWaterBottle"] call player_removeItems;


_dis=1;
_sfx = "gut";
[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

_earlyObj = "Land_cages_EP1" createVehicle (_position);
_earlyObj setVariable ["ObjectID", "1", true];
_earlyObj setVariable ["ObjectUID", "1", true];

player addMagazine "ItemWaterbottleUnfilled"; 

cutText [format["Nice!"], "PLAIN DOWN"];
sleep 6;
cutText [format["Your rabit will be ready in 3 minutes!"], "PLAIN DOWN"];

sleep 180;

cutText [format["rabbit are ready to be eated!!"], "PLAIN DOWN"];

deleteVehicle _earlyObj;

_lastObj = "Rabbit" createVehicle (_position);
_lastObj setVariable ["ObjectID", "1", true];
_lastObj setVariable ["ObjectUID", "1", true];

r_interrupt = false;
player switchMove "";
player playActionNow "stop";



} else{
cutText [format["You need  be near of  AnimalShed!!"], "PLAIN DOWN"];

sleep 10;
};


