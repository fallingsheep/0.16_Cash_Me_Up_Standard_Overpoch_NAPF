//Fill oil
if (DZE_ActionInProgress) exitWith {};
DZE_ActionInProgress = true;

if ("ItemFuelBarrelEmpty" in magazines player) then {
	player playActionNow "Medic";
	//remove empty barrel
	player removeMagazine "ItemFuelBarrelEmpty";
	//add full barrel
	player addMagazine "ItemOilBarrel";
	//inform player
	cutText [format["You have filled 1 barrel with oil!"], "PLAIN DOWN"];
} else {
	cutText [format["You need empty barrel for this!"], "PLAIN DOWN"];
};
DZE_ActionInProgress = false;
