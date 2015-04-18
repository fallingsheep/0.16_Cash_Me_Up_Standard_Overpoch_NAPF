/*
	DZMSHotSpotsAIKilled.sqf by Vampire
	This function is called when an AI Unit is killed.
	It handles the humanity allocation and body cleanup.
*/

private ["_unit","_player","_humanity","_banditkills"];
_unit = _this select 0;
_player = _this select 1;

//If the killer is a player, lets handle the humanity

if (isPlayer _player) then {
	private ["_banditkills","_humanity"];
	
	//diag_log text format ["[DZMSHotSpots]: Debug: Unit killed by %1 at %2", _player, mapGridPosition _unit];
	
	//Lets grab some info
	_humanity = _player getVariable ["humanity",0];
	_banditkills = _player getVariable ["banditKills",0];
	
	//If the player gets humanity per config, lets give it
	if (DZMSHotSpotsMissHumanity) then {
		_player setVariable ["humanity",(_humanity + DZMSHotSpotsCntHumanity),true];
	};
	
	//If this counts as a bandit kill, lets give it
	if (DZMSHotSpotsCntBanditKls) then {
		_player setVariable ["banditKills",(_banditkills + 1),true];
	};
	
	//Lets inform the nearby AI of roughly the players position
	//This makes the AI turn and react instead of laying around
	{
		if (((position _x) distance (position _unit)) <= 300) then {
			_x reveal [_player, 4.0];
		}
	} forEach allUnits;
	
} else {

	//diag_log text format ["[DZMSHotSpots]: Debug: Unit killed by %1 at %2", _player, mapGridPosition _unit];

	if (DZMSHotSpotsRunGear) then {
		//Since a player ran them over, or they died from unknown causes
		//Lets strip their gear
		removeBackpack _unit;
		removeAllWeapons _unit;
		{
			_unit removeMagazine _x
		} forEach magazines _unit;
	};
	
};

if (DZMSHotSpotsCleanDeath) then {
	_unit call DZMSHotSpotsPurgeObject;
	if (DZMSHotSpotsCleanDeath) exitWith {};
};

if (DZMSHotSpotsUseNVG) then {
	_unit removeWeapon "NVGoggles";
};

if (DZMSHotSpotsUseRPG AND ("RPG7V" in (weapons _unit))) then {
	_unit removeWeapon "RPG7V";
	_unit removeMagazines "PG7V";
};

//Dead body timer and cleanup
[DZMSHotSpotsBodyTime,10] call DZMSHotSpotsSleep;
_unit call DZMSHotSpotsPurgeObject;
