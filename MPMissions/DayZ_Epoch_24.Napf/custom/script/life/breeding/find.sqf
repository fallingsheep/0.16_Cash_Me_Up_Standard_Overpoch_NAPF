private ["_hasitems","_random"];

_hasitems = "ItemWaterbottle" in magazines player;
_random = round(random(3));
_trash = ["ItemZombieParts","HandGrenade_Stone","TrashTinCan"] call BIS_fnc_selectRandom;



if !(_hasitems) exitWith {
	cutText [format["You needs 1x Waterbottle."], "PLAIN DOWN"];
};			

if (_hasitems) then
    {
    player playActionNow "Medic";
    sleep 3;
    player removeMagazine "ItemWaterBottle";
    player addMagazine _trash;
    sleep 3;
    cutText ["worms&seeds or just trash", "PLAIN DOWN"];
};

			
        