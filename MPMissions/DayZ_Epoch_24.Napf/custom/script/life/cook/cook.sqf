private ["_position","_nearkitchen","_hasitems","_inventory","_hasMatchbox"];

_position = getPosATL player;
_nearkitchen = count nearestObjects [_position, ["MAP_Dkamna_bila"], 5] > 0;
_hasitems = [["ItemBandage",1], "FoodrabbitRaw" ,["PartWoodPile"]] call player_checkItems;
_inventory = items player;
_hasMatchbox = 	"ItemMatchbox_DZE" in _inventory;

//if (!_hasitems && !_nearkitchen && !_hasMatchbox) exitWith {cutText [format["You have no meat or 1x Matchbox or 1x woodpile or 1x bandage or needs be close to kitchen"], "PLAIN DOWN"];};
if !(_nearkitchen) exitWith {
	cutText [format["Needs be near of a FiberPlant."], "PLAIN DOWN"];
};

if (_hasitems && _nearkitchen && _hasMatchbox) then
    {
    player playActionNow "PutDown";
    sleep 3;
    player removeMagazine "FoodrabbitRaw";
    player addMagazine "FoodrabbitCooked";
    sleep 0.01;
    titleText ["Cooked Meat!", "PLAIN DOWN"];titleFadeOut 5;
};