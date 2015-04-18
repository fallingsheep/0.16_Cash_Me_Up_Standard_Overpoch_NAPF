/*
	DZMSHotSpotsInit.sqf by Vampire
	This is the file that every other file branches off from.
	It checks that it is safe to run, sets relations, and starts mission timers.
*/
private["_modVariant"];

waitUntil{initialized};

// Lets let the heavier scripts run first
sleep 60;

// Error Check
if (!isServer) exitWith { diag_log text format ["[DZMSHotSpots]: <ERROR> DZMSHotSpots is Installed Incorrectly! DZMSHotSpots is not Running!"]; };
if (!isnil("DZMSHotSpotsInstalled")) exitWith { diag_log text format ["[DZMSHotSpots]: <ERROR> DZMSHotSpots is Installed Twice or Installed Incorrectly!"]; };

// Global for other scripts to check if DZMSHotSpots is installed.
DZMSHotSpotsInstalled = true;

diag_log text format ["[DZMSHotSpots]: Starting DayZ Mission System."];

// Let's see if we need to set relationships
// Checking for DayZAI, SargeAI, and WickedAI (Three AI Systems that already set relations)
// I would rather the user set their relations in the respective mod instead of overwrite them here.
if ( (isnil("DZAI_isActive")) && (isnil("SAR_version")) && (isnil("WAIconfigloaded")) ) then
{

	// They weren't found, so let's set relationships
	diag_log text format ["[DZMSHotSpots]: Relations not found! Using DZMSHotSpots Relations."];
	
	// Create the groups if they aren't created already
	createCenter east;
	// Make AI Hostile to Survivors
	WEST setFriend [EAST,0];
	EAST setFriend [WEST,0];
	// Make AI Hostile to Zeds
	EAST setFriend [CIVILIAN,0];
	CIVILIAN setFriend [EAST,0];
	
} else {

	// Let's inform the user which relations we are using
	// This could be made better in a future version
	DZMSHotSpotsRelations = 0; //Set our counter variable
	if (!isnil("DZAI_isActive")) then {
		diag_log text format ["[DZMSHotSpots]: DZAI Found! Using DZAI's Relations!"];
		DZMSHotSpotsRelations = DZMSHotSpotsRelations + 1;
	};
	if (!isnil("SAR_version")) then {
		diag_log text format ["[DZMSHotSpots]: SargeAI Found! Using SargeAI's Relations!"];
		DZMSHotSpotsRelations = DZMSHotSpotsRelations + 1;
	};
	if (!isnil("WAIconfigloaded")) then {
		diag_log text format ["[DZMSHotSpots]: WickedAI Found! Using WickedAI's Relations!"];
		DZMSHotSpotsRelations = DZMSHotSpotsRelations + 1;
	};
	// If we have multiple relations running, lets warn the user
	if (DZMSHotSpotsRelations > 1) then {
		diag_log text format ["[DZMSHotSpots]: Multiple Relations Detected! Unwanted AI Behaviour May Occur!"];
		diag_log text format ["[DZMSHotSpots]: If Issues Arise, Decide on a Single AI System! (DayZAI, SargeAI, or WickedAI)"];
	};
	DZMSHotSpotsRelations = nil; //Destroy the Global Var
	
};

// Let's Load the Mission Configuration
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZMSHotSpots\DZMSHotSpotsConfig.sqf";

// These are Extended configuration files the user can adjust if wanted
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZMSHotSpots\ExtConfig\DZMSHotSpotsWeaponCrateList.sqf";
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZMSHotSpots\ExtConfig\DZMSHotSpotsAIConfig.sqf";

// Report the version
diag_log text format ["[DZMSHotSpots]: Currently Running Version: %1", DZMSHotSpotsVersion];

// Lets check for a copy-pasted config file
if (DZMSHotSpotsVersion != "1.1FIN") then {
	diag_log text format ["[DZMSHotSpots]: Outdated Configuration Detected! Please Update DZMSHotSpots!"];
	diag_log text format ["[DZMSHotSpots]: Old Versions are not supported by the Mod Author!"];
};

diag_log text format ["[DZMSHotSpots]: Mission and Extended Configuration Loaded!"];

// Lets get the map name for mission location purposes
DZMSHotSpotsWorldName = toLower format ["%1", worldName];
diag_log text format["[DZMSHotSpots]: %1 Detected. Map Specific Settings Adjusted!", DZMSHotSpotsWorldName];

// We need to detect Epoch to change the hive call for vehicle saving
// Epoch doesn't have hive 999 calls and uses 308 publish instead
_modVariant = toLower( getText (configFile >> "CfgMods" >> "DayZ" >> "dir"));
if (_modVariant == "@dayz_epoch") then {DZMSHotSpotsEpoch = true;} else {DZMSHotSpotsEpoch = false;};
if ((!(DZMSHotSpotsEpoch)) AND (!(isNil "PVDZE_serverObjectMonitor"))) then {DZMSHotSpotsEpoch = true;};

if (DZMSHotSpotsEpoch) then {
	diag_log text format ["[DZMSHotSpots]: DayZ Epoch Detected! Some Scripts Adjusted!"];
};

// Lets load our functions
call compile preprocessFileLineNumbers "\z\addons\dayz_server\DZMSHotSpots\DZMSHotSpotsFunctions.sqf";

// these arrays are used to hold units for each mission type
DZMSHotSpotsUnitsMinor = [];
DZMSHotSpotsUnitsMajor = [];

// these arrays are for holding variable hotspot positions&markers
DZMSHotSpotsX = [];
DZMSHotSpotsY = [];
DZMSHotSpotsZ = [];
DZMSHotSpotsRandX = [];
DZMSHotSpotsRandY = [];
DZMSHotSpotsShowMarkers = false;
DZMSHotSpotsLootPos  = [0.0, 0.0, 0.0];
DZMSRoadBlockLootPos = [0.0, 0.0, 0.0];

// Let's get the clocks running!
[] ExecVM DZMSHotSpotsMajTimer;
[] ExecVM DZMSHotSpotsMinTimer;
DZMSHotSpotsMajDone = false;
DZMSHotSpotsMinDone = false;

// Let's get the Marker Re-setter running for JIPs to stay updated
[] ExecVM DZMSHotSpotsMarkerLoop;
