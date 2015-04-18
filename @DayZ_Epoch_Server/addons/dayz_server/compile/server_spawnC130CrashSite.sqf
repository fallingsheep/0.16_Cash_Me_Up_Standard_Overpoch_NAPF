/*
	Script Name: animated_crash_spawner.sqf
	Original Author: Grafzahl / Finest
	Modified by BushWookie & Forgotten for Epoch
	Modified by f3cuk for Epoch 1051
	Script Version: 1.3.2
*/
 
private["_show_name","_show_marker", "_finder","_timeAdjust","_timeToSpawn","_spawnRoll","_crash","_hasAdjustment","_newHeight","_adjustedPos","_useStatic","_crashDamage","_lootRadius","_preWaypoints","_preWaypointPos","_endTime","_startTime","_safetyPoint","_heliStart","_deadBody","_exploRange","_heliModel","_lootPos","_list","_craters","_dummy","_wp2","_wp3","_landingzone","_aigroup","_wp","_helipilot","_crash","_crashwreck","_smokerand","_staticcoords","_pos","_dir","_mdot","_position","_num","_config","_itemType","_itemChance","_weights","_index","_iArray","_crashModel","_lootTable","_guaranteedLoot","_randomizedLoot","_frequency","_variance","_spawnChance","_spawnMarker","_spawnRadius","_spawnFire","_permanentFire","_crashName","_marker", "_markerRadius","_hint","_itemTypes"];

_spawnChance			= 100;				// Percent chance of spawning a crash number between 0 - 100 
_guaranteedLoot			= 8;				// Guaranteed Loot Spawns
_randomizedLoot			= 8;				// Random number of loot piles as well as the guaranteed ones
_spawnFire				= true;				// Spawn Smoke/Fire at the helicrash
_fadeFire				= false;			// Fade the Smoke/Fire overtime
_preWaypoints			= 2;				// Amount of way points the heli flies to before crashing
_crashDamage			= 1;				// Amount of damage the heli can take before crashing (between 0.1 and 1) Lower the number and the heli can take less damage before crashing 1 damage is fully destroyed and 0.1 something like a DMR could one shot the heli
_exploRange				= 200;				// How far away from the predefined crash point should the heli start crashing
_minLootRadius			= 4;				// Minimum distance for loot to spawn from the crash site in meters
_maxLootRadius			= 10;				// Maximum distance for loot to spawn from the crash site in meters
_lootTable				= "HeliCrash";		// Name of the loot table the heli gets loot from (DO NOT edit unless you know what your doing)
_markerRadius			= 400;				// Radius for the marker
_show_marker			= true;				// Show a marker on the map
_show_name				= true;				// Add the crashname to the marker

/* do not change below values if you do not know what you are doing */
_plane					= false;
_spawnMarker 			= "center";
_heliModel				= ["C130J"] call BIS_fnc_selectRandom;
_crashModel				= "C130JWreck";
_spawnRadius			= HeliCrashArea;
_heliStart				= [[1000.0,2.0],[3500.0,2.0],[5000.0,2.0],[7500.0,2.0],[9712.0,663.067],[12304.0,1175.07],[14736.0,2500.0],[16240.0,5000.0],[16240.0,7500.0],[16240.0,10000.0]] call BIS_fnc_selectRandom;
_porh					= "helicopter";
_safetyPoint			= [0,16000,0];
_crashName				= getText (configFile >> "CfgVehicles" >> _heliModel >> "displayName");
_spawnRoll				= round(random 100);

_finder					= "";

if(_heliModel == "C130J") then {
	_lootTable		= "MilitarySpecial";
	_crashModel		= "C130JWreck";
	_plane			= true;
	_guaranteedLoot	= 4;
};


diag_log(format["CRASHSPAWNER: %1%2 chance to start a crashing %3 with loot table '%4'", _spawnChance, '%', _crashName, _lootTable]);

if (_spawnRoll <= _spawnChance) then
{

	if(_plane) then {
		_porh = "plane";
	};
	
	[nil,nil,rTitleText,format["A %1 is in distress! Watch for it and go to the crash site to secure the loot!",_porh], "PLAIN",10] call RE;

	_position = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
	
	diag_log(format["CRASHSPAWNER: %1 started flying from %2 to %3 NOW!(TIME:%4||LT:%5)", _crashName,  str(_heliStart), str(_position), round(time), _lootTable]);
	
	_startTime 			= time;
	_crashwreck 		= createVehicle [_heliModel,_heliStart, [], 0, "FLY"];
	_crashwreck 		setCombatMode "BLUE";
	_crashwreck 		engineOn true;
	_crashwreck 		flyInHeight 150;

	if (_plane) then
	{
		_crashDamage = .5;
		_crashwreck setDamage .4;
		_crashwreck forceSpeed 250;
		_crashwreck setspeedmode "LIMITED";
	}
	else
	{
		_crashwreck forceSpeed 150;
		_crashwreck setspeedmode "NORMAL";
	};
	
	_landingzone 		= createVehicle ["HeliHEmpty", [_position select 0, _position select 1,0], [], 0, "CAN_COLLIDE"];
	_aigroup 			= creategroup civilian;
	_helipilot 			= _aigroup createUnit ["SurvivorW2_DZ",getPos _crashwreck,[],0,"FORM"];
	_helipilot 			setCombatMode "BLUE";
	_helipilot 			moveindriver _crashwreck;
	_helipilot 			assignAsDriver _crashwreck;
	
	sleep 0.5;
	
	if(_preWaypoints > 0) then
	{
		for "_x" from 1 to _preWaypoints do
		{
			_preWaypointPos = [getMarkerPos _spawnMarker, 0, _spawnRadius, 10, 0, 2000, 0] call BIS_fnc_findSafePos;
			_wp = _aigroup addWaypoint [_preWaypointPos, 0];
			_wp setWaypointType "MOVE";
			_wp setWaypointBehaviour "CARELESS";
		};
	};
 
	_wp2 				= _aigroup addWaypoint [position _landingzone, 0];
	_wp2 				setWaypointType "MOVE";
	_wp2 				setWaypointBehaviour "CARELESS";
	_wp2 				setWaypointStatements ["true", "_crashwreck setdamage 1;"];
	_wp3 				= _aigroup addWaypoint [_safetyPoint, 0];
	_wp3 				setWaypointType "CYCLE";
	_wp3 				setWaypointBehaviour "CARELESS";
	
	waituntil {(_crashwreck distance _position) <= 1000 || !alive _crashwreck || (getPosATL _crashwreck select 2) < 5 || (damage _crashwreck) >= _crashDamage};
	
	if (_plane) then
	{
		_crashwreck flyInHeight 100;
		_crashwreck forceSpeed 150;
		_crashwreck setspeedmode "NORMAL";
		_exploRange = 360;
	}
	else
	{
		_crashwreck flyInHeight 100;
		_crashwreck forceSpeed 100;
		_crashwreck setspeedmode "NORMAL";
	};
	
	waituntil {(_crashwreck distance _position) <= _exploRange || !alive _crashwreck || (getPosATL _crashwreck select 2) < 5 || (damage _crashwreck) >= _crashDamage};
	
	deletevehicle 		_helipilot;
	
	if (_plane) then
	{
		_crashwreck 	setdamage 1;
		_vel 			= velocity _crashwreck;
		_dir 			= direction _crashwreck;
		_speed 			= 100;
		_crashwreck 	setVelocity [(_vel select 0)-(sin _dir*_speed),(_vel select 1)-(cos _dir*_speed),(_vel select 2) - 30];
	}
	else
	{
		_crashwreck 	setHit ["mala vrtule", 1];
		_ran15 			= random 15;
		_crashwreck 	setVelocity [_ran15,_ran15,-25];
		_crashwreck 	setdamage .9;
		
		waitUntil{sleep 1; getpos _crashwreck select 2 <= 30};
		
		_helipilot 		setdamage 1;
		_crashwreck 	setVelocity [_ran15,_ran15,-20];
		
		waitUntil{sleep 1; getpos _crashwreck select 2 <= 10};
		
		_crashwreck 	setdamage 1;
	};
	
	waitUntil{sleep 1; getpos _crashwreck select 2 <= 5};
	
	diag_log(format["CRASHSPAWNER: %1 just exploded at %2!", _crashName, getpos _crashwreck]);
	
	_pos 				= [getpos _crashwreck select 0, getpos _crashwreck select 1,0];
	_dir 				= getdir _crashwreck;

	deletevehicle 		_crashwreck;
	deletevehicle 		_landingzone;
	
	_isWater = surfaceIsWater [getpos _crashwreck select 0, getpos _crashwreck select 1];
	
	if(_isWater) then {
	
		[nil,nil,rTitleText,format["The %1 has crashed into the water, no loot can be secured",_porh], "PLAIN",10] call RE;
	
	}
	else
	{
	
		_crash = createVehicle [_crashModel, _pos, [], 0, "CAN_COLLIDE"];
		_crash setDir _dir;
		
		PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_crash];
		
		if (_spawnFire) then
		{
			PVDZE_obj_Fire = [_crash, 4, time, false, _fadeFire];
			publicVariable "PVDZE_obj_Fire";
		};
		
		_num 				= round(random _randomizedLoot) + _guaranteedLoot;

		if (DZE_MissionLootTable) then {
			_itemTypes = [] + getArray(missionConfigFile >> "CfgBuildingLoot" >> _lootTable >> "lootType");
		} else {
			_itemTypes = [] + getArray(configFile >> "CfgBuildingLoot" >> _lootTable >> "lootType");
		};
		_CBLBase 			= dayz_CBLBase find(toLower(_lootTable));
		_weights 			= dayz_CBLChances select _CBLBase;
		_cntWeights 		= count _weights;
		
		for "_x" from 1 to _num do
		{
			_maxLootRadius 	= (random _maxLootRadius) + _minLootRadius;
			_lootPos 		= [_pos, _maxLootRadius, random 360] call BIS_fnc_relPos;
			_index1 		= floor(random _cntWeights);
			_index2 		= _weights select _index1;
			_itemType 		= _itemTypes select _index2;
			
			[_itemType select 0, _itemType select 1, _lootPos, 5] call spawn_loot;
			
			diag_log(format["CRASHSPAWNER: Loot spawn at '%1' with loot table '%2'", _lootPos, _lootTable]);
			
			_nearby = _pos nearObjects ["ReammoBox", sizeOf(_crashModel)];
			{
				_x setVariable ["permaLoot",true];
			} forEach _nearBy;
		};
		
		_endTime = time - _startTime;

		[nil,nil,rTitleText,format["The %1 has crashed, go and secure the loot!",_porh], "PLAIN",10] call RE;
		
		diag_log(format["CRASHSPAWNER: Crash completed! Wreck at: %2 - Runtime: %1 Seconds || Distance from calculated POC: %3 meters", round(_endTime), str(_pos), round(_position distance _crash)]);
		
		if(_show_marker) then {
		
			_marker_position = [_pos,0,_markerRadius,0,1,2000,0] call BIS_fnc_findSafePos;
			_marker = createMarker [ format ["loot_event_marker_%1", _startTime], _marker_position];
			_marker setMarkerShape "ELLIPSE";
			_marker setMarkerColor "ColorYellow";
			_marker setMarkerAlpha 0.5;
			_marker setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];
			_marker setMarkerText _crashName;
			
			if(_show_name) then {
			
				_mdot 	= createMarker [format ["dot_%1", _startTime], _marker_position];
				_mdot 	setMarkerColor "ColorBlack";
				_mdot 	setMarkerType "mil_dot";
				_mdot 	setMarkerText _crashName;
				
			};
		
		};
		
		waitUntil
		{
			sleep 5;
			_playerPresent = false;
			{
				if((isPlayer _x) && (_x distance _pos <= 25)) then {
					_playerPresent = true;
					_finder = name _x;
				};
				
			} foreach playableUnits;
			
			(_playerPresent)
		};

		[nil,nil,rTitleText,format["Survivors have secured the crash site!"], "PLAIN",10] call RE;
		
		if(_show_marker) then {
		
			deleteMarker _marker;
			
			if(_show_name) then {
				deleteMarker _mdot;
			};
		
		};
		
		diag_log(format["CRASHSPAWNER: Crash found by %1, removing the marker" , _finder]);
	
	};

};