/*
	Below are the default ON/OFF toggles. Anything marked 
	true will turn on when you turn on AdminMode.
	To make an option default ON change = false to = true.
	To make an option default OFF change = true to = false.
	To disable an option entirely, go down to toggleMenu = 
*/

// START OF CONFIG
// Defines the default on and off for options
if (isNil "playerGod") then {playerGod = true;};
if (isNil "vehicleGod") then {vehicleGod = true;};
if (isNil "playerESP") then {playerESP = true;};
if (isNil "enhancedESP") then {enhancedESP = false;};
if (isNil "grassOff") then {grassOff = true;};
if (isNil "infAmmo") then {infAmmo = true;};
if (isNil "speedBoost") then {speedBoost = false;};
if (isNil "invisibility") then {invisibility = false;};
if (isNil "flying") then {flying = false;};
// END OF CONFIG

if (isNil "AdminMode") then {AdminMode = true;}else{AdminMode = !AdminMode;};

playerGodToggle = {
	playerGod = !playerGod;
	[] execVM "admintools\tools\AdminMode\GodModePlayer.sqf";
};
vehicleGodToggle = {
	vehicleGod = !vehicleGod;
	[] execVM "admintools\tools\AdminMode\GodModeVehicle.sqf";
};
playerESPToggle = {
	playerESP = !playerESP;
	if(playerESP && enhancedESP) then {enhancedESP = false; [enhancedESP] execVM "admintools\tools\AdminMode\ESPenhanced.sqf";};
	[] execVM "admintools\tools\AdminMode\ESPplayer.sqf";
};
enhancedESPToggle = {
	enhancedESP = !enhancedESP;
	if(playerESP && enhancedESP) then {playerESP = false; [playerESP] execVM "admintools\tools\AdminMode\ESPplayer.sqf";};
	[] execVM "admintools\tools\AdminMode\ESPenhanced.sqf";
};
grassOffToggle = {
	grassOff = !grassOff;
	[] execVM "admintools\tools\AdminMode\GrassOFF.sqf";
};
infAmmoToggle = {
	infAmmo = !infAmmo;
	[] execVM "admintools\tools\AdminMode\InfiniteAmmo.sqf";
};
speedBoostToggle = {
	speedBoost = !speedBoost;
	[] execVM "admintools\tools\AdminMode\speedboost.sqf";
};
invisibilityToggle = {
	invisibility = !invisibility;
	[] execVM "admintools\tools\AdminMode\Invisibility.sqf";
};
flyingToggle = {
	flying = !flying;
	[] execVM "admintools\tools\AdminMode\Flying.sqf";
};

optionMenu = 
{
	toggleMenu = 
	[
		// To disable an option for admins place a // in the front of the line below
		// and change the initialization to false in the config at the top of this file
		["",true],
		["Toggle options:(current state)", [-1], "", -5, [["expression", ""]], "1", "0"],
		[format["Vehicle Speed Boost: %1",speedBoost],[2],"", -5, [["expression", 'call speedBoostToggle']], "1", "1"],		
		[format["Enhanced ESP: %1",enhancedESP], [3], "", -5, [["expression", 'call enhancedESPToggle']], "1", "1"],
		[format["Player ESP: %1",playerESP], [4], "", -5, [["expression", 'call playerESPToggle']], "1", "1"],
		[format["Invisibility ON: %1",invisibility], [5], "", -5, [["expression", 'call invisibilityToggle']], "1", "1"],
		[format["Flying ON: %1",flying], [6], "", -5, [["expression", 'call flyingToggle']], "1", "1"],
		[format["Infinite Ammo: %1",infAmmo], [7], "", -5, [["expression", 'call infAmmoToggle']], "1", "1"],
		[format["God Mode: %1",playerGod], [8], "", -5, [["expression", 'call playerGodToggle']], "1", "1"],
		[format["Car God Mode: %1",vehicleGod], [9], "", -5, [["expression", 'call vehicleGodToggle']], "1", "1"],
		[format["Grass Off: %1",grassOff], [10], "", -5, [["expression", 'call grassOffToggle']], "1", "1"]
	];
	showCommandingMenu "#USER:toggleMenu";
};

AdminToggleON =
{
	if (speedBoost) then {[] execVM "admintools\tools\AdminMode\speedboost.sqf";}; Sleep 0.1;
	if (enhancedESP) then {[] execVM "admintools\tools\AdminMode\ESPenhanced.sqf";}; Sleep 0.1;
	if (playerESP) then {[] execVM "admintools\tools\AdminMode\ESPplayer.sqf";}; Sleep 0.1;
	if (invisibility) then {[] execVM "admintools\tools\AdminMode\Invisibility.sqf";}; Sleep 0.;
	if (infAmmo) then {[] execVM "admintools\tools\AdminMode\InfiniteAmmo.sqf";}; Sleep 0.1;
	if (flying) then {[] execVM "admintools\tools\AdminMode\Flying.sqf";}; Sleep 0.1;
	if (playerGod) then {[] execVM "admintools\tools\AdminMode\GodModePlayer.sqf";}; Sleep 0.1;
	if (vehicleGod) then {[] execVM "admintools\tools\AdminMode\GodModeVehicle.sqf";}; Sleep 0.1;
	if (grassOff) then {[] execVM "admintools\tools\AdminMode\GrassOFF.sqf";}; Sleep 0.1;
};

AdminToggleOFF =
{
	if (speedBoost) then {[] execVM "admintools\tools\AdminMode\speedboost.sqf";}; Sleep 0.1;
	if (enhancedESP) then {[] execVM "admintools\tools\AdminMode\ESPenhanced.sqf";}; Sleep 0.1;
	if (playerESP) then {[] execVM "admintools\tools\AdminMode\ESPplayer.sqf";}; Sleep 0.1;
	if (invisibility) then {[] execVM "admintools\tools\AdminMode\Invisibility.sqf";}; Sleep 0.1;
	if (infAmmo) then {[] execVM "admintools\tools\AdminMode\InfiniteAmmo.sqf";}; Sleep 0.1;
	if (flying) then {[] execVM "admintools\tools\AdminMode\Flying.sqf";}; Sleep 0.1;
	if (playerGod) then {[] execVM "admintools\tools\AdminMode\GodModePlayer.sqf";}; Sleep 0.1;
	if (vehicleGod) then {[] execVM "admintools\tools\AdminMode\GodModeVehicle.sqf";}; Sleep 0.1;
	if (grassOff) then {[] execVM "admintools\tools\AdminMode\GrassOFF.sqf";}; Sleep 0.1;
};

if(AdminMode) then {
	1 cutText ["God Mode, Vehicle God Mode, ESP, Inf Ammo, and Grass OFF - ENABLED","PLAIN DOWN",0.5];
	2 cutText ["***Press F4 to toggle AdminMode options***","PLAIN",0.75];
	F4_KEY = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 1) == 62) then {call optionMenu;};"];
	call AdminToggleON;
} else{
	titleText ["Admin Mode - DISABLED","PLAIN DOWN"];titleFadeOut 3;
	(findDisplay 46) displayRemoveEventHandler ["KeyDown", F4_KEY];
	call AdminToggleOFF;
};
