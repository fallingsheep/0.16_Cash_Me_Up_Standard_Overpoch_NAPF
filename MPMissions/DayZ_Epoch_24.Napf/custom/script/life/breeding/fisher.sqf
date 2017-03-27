private ["_position","_nearpound","_hasitems","_random"];

_position = getPosATL player;
_nearpound = count nearestObjects [_position, ["WaterBasin_conc_EP1"], 5] > 0;
_hasitems = "ItemZombieParts" in magazines player;
_random = round(random(3));
_fish = ["ItemSeaBass","ItemTuna","ItemTrout"] call BIS_fnc_selectRandom;


if !(_nearpound) exitWith {
	cutText [format["Must be near of a fishpound."], "PLAIN DOWN"];
};

if !(_hasitems) exitWith {
	cutText [format["You needs 1x ZombieParts."], "PLAIN DOWN"];
};			

if (_nearpound && _hasitems) then
    {
    player playActionNow "GestureSwing";
    sleep 3;
    player removeMagazine "ItemZombieParts";
    player addMagazine _fish;
    sleep 3;
    cutText ["Any fish", "PLAIN DOWN"];
};
