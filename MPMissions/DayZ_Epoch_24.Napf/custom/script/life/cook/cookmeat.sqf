private ["_position","_nearkitchen","_hasitems","_inventory","_hasMatchbox"];

_position = getPosATL player;
_nearkitchen = count nearestObjects [_position, ["MAP_Dkamna_bila"], 5] > 0;
_hasitems = [["ItemBandage",1], "FoodmeatRaw" ,["PartWoodPile"]] call player_checkItems;
_inventory = items player;
_hasMatchbox = 	"ItemMatchbox_DZE" in _inventory;


if !(_nearkitchen) exitWith {
	cutText [format["Must be near of a kitchen."], "PLAIN DOWN"];
};
if !(_hasMatchbox) exitWith {
	cutText [format["Must be equiped whit 1x matchboxs in your toolbet."], "PLAIN DOWN"];
};

if (_hasitems && _nearkitchen && _hasMatchbox) then
    {
    player playActionNow "PutDown";
    sleep 3;
    player removeMagazine "FoodmeatRaw";
    player addMagazine "FoodmeatCooked";
	player addMagazine "FoodmeatCooked";
    sleep 3;
    titleText ["Cooked Meat!", "PLAIN DOWN"];titleFadeOut 5;
};