////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Player_WaterFill.SQF
// Enhanced Water Bottle Filling - by BDC - Aug 11 2013, for DayZ 1.7.7.1
//
// BDC's Sanctuary Private DayZ Server - RaidCall group 6824535
// Script derived from DayZ \z\addons\dayz_code\actions\water_fill.sqf script
// This script allows the ability for the player to fill his or her empty water bottle(s) with rainwater to
// varying degrees of speed depending upon the intensity of rain (harder, heavier rain reduces time to collect)
// Player can be interrupted in the process rendering one or multiple still-unfilled water bottles.
// This script also checks to see that a player is outside of a building when attempting to use rain water.
//
// Check the Configurable Variables section just below for entries to modify. One important one is the
// "_CleanRainWater" variable that has an effect on text output plus whether or not the water collected
// from rain still requires boiling at a campfire with a tin can.
//
// Called directly from a modification done to compiles.sqf as a replacement of water_fill.sqf
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 

private["_isRain","_canFill","_Building","_vehicle","_inVehicle","_RainAmt","_HeavyRailFillTime","_MediumRainFillTime","_LightRainFillTime","_playerPos","_canDrink","_isPond","_isWell","_pondPos","_objectsWell","_objectsPond","_display","_stagnant_water_rates"];

// --------------------------
// Configuration
// --------------------------

_stagnant_water_rates = 25; // percent chance of having infected water (default = 25)

// --------------------------
// End of Configuration
// --------------------------

call gear_ui_init;

_playerPos = getPosATL player;
_canDrink = count nearestObjects [_playerPos, ["Land_pumpa","Land_water_tank"], 4] > 0;
_isPond = false;
_isWell = false;
_pondPos = [];
_objectsWell = [];

//Fill rain
_item = _this;
_canFill = count nearestObjects [_playerPos, ["Land_pumpa","Land_water_tank"], 4] > 0;
_hasbottleitem = _this in magazines player;
_isRain = false;
_config = configFile >> "CfgMagazines" >> _item;
_text = getText (_config >> "displayName");
 
// Configurable variables
_HeavyRainFillTime = 12; // Time in seconds to refill bottle in very heavy rain; default is 12
_MediumRainFillTime = 18; // Time in seconds to refill bottle in medium/moderate rain; default is 18
_LightRainFillTime = 26; // Time in seconds to refill bottle in light rain; default is 26
_CleanRainWater = true; // Acceptable values are "true" or "false"; "false" denotes collected rain water needs boiling with tin can
 

if (!_canDrink) then {
	_objectsWell = nearestObjects [_playerPos, [], 4];
	{
		//Check for Well
		_isWell = ["_well",str(_x),false] call fnc_inString;
		if (_isWell) then {_canDrink = true};
	} forEach _objectsWell;
};

if (!_canDrink) then {
	_objectsPond = nearestObjects [_playerPos, [], 50];
	{
		//Check for pond
		_isPond = ["pond",str(_x),false] call fnc_inString;
		if (_isPond) then {
			_pondPos = (_x worldToModel _playerPos) select 2;
			if (_pondPos < 0) then {
				_canDrink = true;
			};
		};
	} forEach _objectsPond;
};

if (_canDrink) then {
	if ((floor (random 100) < _stagnant_water_rates)) then {
	
		player playActionNow "PutDown";
		_nul = [objNull, player, rSAY, "drink_water"] call RE;
		r_player_infected = true;
		player setVariable["USEC_infected",true,true];
		player setVariable ["messing",[dayz_hunger,dayz_thirst],true];

		dayz_lastDrink = time;
		dayz_thirst = 0;

		//Ensure Control is visible
		_display = uiNamespace getVariable 'DAYZ_GUI_display';
		(_display displayCtrl 1302) ctrlShow true;
		cutText [(localize "STR_drink_stagnant_water"), "PLAIN DOWN"];
		
	} else {
		
		player playActionNow "PutDown";
		_nul = [objNull, player, rSAY, "drink_water"] call RE;
		dayz_lastDrink = time;
		dayz_thirst = 0;

		//Ensure Control is visible
		_display = uiNamespace getVariable 'DAYZ_GUI_display';
		(_display displayCtrl 1302) ctrlShow true;
		cutText [(localize "STR_drink_fresh_water"), "PLAIN DOWN"];
	};
};

// Initial disqualifications
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith { cutText [format["You cannot fill a water bottle while on a ladder."], "PLAIN DOWN"];  };
if (!_hasbottleitem) exitWith {cutText [format[(localize "str_player_31"),_text,(localize "str_player_31_fill")] , "PLAIN DOWN"]};
_vehicle = vehicle player;
_inVehicle = (_vehicle != player);
if (_inVehicle) exitwith {cutText [format["You may not do this while in a vehicle."] , "PLAIN DOWN"]};
 
// Gather global weather (rain) variable; ranges from 0 to 1 (none to very, very hard rain)
_RainAmt = drn_var_DynamicWeather_Rain; // referenced from \z\addons\dayz_code\system\DynamicWeatherEffects.sqf
 
// If global rain amount is higher than 0, then set flag isRain to true
if (_RainAmt > 0) then { _isRain = true; };
 
// Check to see if there's water wells or water tanks nearby and flag if so
if (!_canFill) then {
_objectsWell = nearestObjects [_playerPos, [], 4];
{
//Check for Well
_isWell = ["_well",str(_x),false] call fnc_inString;
if (_isWell) then {_canFill = true};
} forEach _objectsWell;
};
 
// Check to see if there's a pond nearby we can fill from and if so flag it
if (!_canFill) then {
_objectsPond = nearestObjects [_playerPos, [], 50];
{
//Check for pond
_isPond = ["pond",str(_x),false] call fnc_inString;
if (_isPond) then {
_pondPos = (_x worldToModel _playerPos) select 2;
if (_pondPos < 0) then {
_canFill = true;
};
};
} forEach _objectsPond;
};
 
// Flagged yes to fill from a pond or well/water tank? Good, do it
if (_canFill) then {
_Qty = {_x == "ItemWaterbottleUnfilled"} count magazines player;
 
// If we're not swimming, let's start the animation to have the player squat
if (!dayz_isSwimming) then {
player playActionNow "PutDown";
};
//player playActionNow "PutDown";
 
if ("ItemWaterbottleUnfilled" in magazines player) then {
player removeMagazines "ItemWaterbottleUnfilled";
for "_x" from 1 to _qty do {
sleep 1;
 
_dis = 5;
_sfx = "fillwater";
[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
 
player addMagazine "ItemWaterbottle";
};
 
// Success on filling - Inform the player
if (_Qty > 1) then {
cutText [format["You have filled %1 water bottles.",_Qty], "PLAIN DOWN"];
} else {
cutText [format["You have refilled your water bottle."], "PLAIN DOWN"];
};
} else {
cutText [format["You have no empty water bottles to fill."], "PLAIN DOWN"];
};
};
 
if (!_canFill and !_isRain) exitwith { // No water well or pond nearby and not raining?
cutText [format["You must be near a water source (a pond or well) or it must be raining to refill water bottle(s)."], "PLAIN DOWN"];
};
 
// It's raining! Hallelujah! Let's find out how hard it's raining then start an interruptible loop
if (!_canFill and _isRain and ("ItemWaterbottleUnfilled" in magazines player)) then {
 
  // Rain water collecting disqualifications
  //Are we swimming? We cannot be to fill a water bottle
  if (dayz_isSwimming) exitwith { cutText [format["You must not be swimming to refill your water bottle in the rain."], "PLAIN DOWN"]; };
  // We inside a building? referenced in \z\addons\dayz_code\compile\fn_temperatur.sqf
  if (dayz_inside) exitwith { cutText [format["You must be outside of a building or structure to fill with rain water."], "PLAIN DOWN"]; };
 
  // Set initial loop variables
  _startRefillTime = time;
  r_interrupt = false;
  r_doLoop = true;
  _interrupted = false;
 
  // Determine how many empty water bottles we have in inventory
  _Qty = {_x == "ItemWaterbottleUnfilled"} count magazines player;
 
  // Start player squat animation
  player playActionNow "PutDown";
 
  // Play sound for nearby player and alert nearby zombies
  [player,"fillwater",0,false,5] call dayz_zombieSpeak;
  [player,5,true,(getPosATL player)] spawn player_alertZombies;
 
  // Set refill time depending upon degree of rain (heavy, medium, or light)
  _RefillTime = _LightRainFillTime; // set as default
  if (_RainAmt > 0.53) then { // heavy rain
_RefillTime = _HeavyRainFillTime; };
  if (_RainAmt > 0.25) then { // medium rain
    _RefillTime = _MediumRainFillTime; };
  if (_RainAmt < 0.25) then { // light rain
    _RefillTime = _LightRainFillTime; };
 
  // Inform the player we're starting and how long it will take
  if (_Qty == 1) then {
    cutText [format["You begin filling the empty water bottle. This will take %1 seconds. Do not interrupt.",_RefillTime], "PLAIN DOWN"];
  } else {
    cutText [format["You begin filling %1 empty water bottles. This will take %2 seconds. Do not interrupt.",_Qty,_RefillTime], "PLAIN DOWN"];
  };
 
  // Loop thru required time to fill and check for interruptions
while {r_doLoop} do {
if (!r_interrupt) then {
if ((time - _startRefillTime) <= _RefillTime) then {
player playActionNow "PutDown";
} else {                 
r_doLoop = false;
};
_RainAmt = drn_var_DynamicWeather_Rain; // Check for rain stopping
 
if (_RainAmt < 0.025) then {
cutText [format["The rain has stopped. Water bottle filling has been interrupted."], "PLAIN DOWN"];
r_doLoop = false;
r_action = false;
_interrupted = true;
};
};
// If the player is interrupted, break out of the loop and set flags to cease remainder of filling
        if (r_interrupt) then {
cutText [format["Water bottle filling interrupted."], "PLAIN DOWN"];
r_doLoop = false;
r_action = false;
_interrupted = true;
        };   
}; // end (timed) while loop
    r_doLoop = false;
 
// Finished? Great. Change the empty water bottle out for full and inform the player
if (!_interrupted) then {
if (_CleanRainWater) then {
if (_Qty == 1) then {
cutText [format["You've successfully filled your water bottle with safe to drink, clean rain water."], "PLAIN DOWN"];
} else {
cutText [format["You've successfully filled %1 water bottles with safe to drink, clean rain water.",_Qty], "PLAIN DOWN"];
};
} else {
  if (_Qty == 1) then {
cutText [format["You've successfully filled your water bottle with rain water. Boil to make safe."], "PLAIN DOWN"];
} else {
cutText [format["You've successfully filled %1 water bottles with rain water. Boil to make safe.",_Qty], "PLAIN DOWN"];
};
};
 
// Perform the change out of unfilled water bottles to (clean "as boiled") filled one in inventory
player removeMagazines "ItemWaterbottleUnfilled";
for "_x" from 1 to _Qty do {
if (_CleanRainWater) then {
player addMagazine "ItemWaterbottleboiled"; // if _CleanRainWater flagged to true, then set water bottle to (boiled) type
} else {
player addMagazine "ItemWaterbottle";
};
};
};
};