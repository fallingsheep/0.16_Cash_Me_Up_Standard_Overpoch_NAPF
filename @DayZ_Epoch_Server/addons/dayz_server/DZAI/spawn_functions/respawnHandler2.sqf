//Respawn handler stage 2
#define PROCESSING_WAIT_TIME 5 //Minimum time delay between respawns.

waitUntil {uiSleep 3; diag_tickTime > DZAI_nextRespawnTime};

DZAI_respawnActive = true;							//First respawn is now being processed, so deny subsequent attempts to modify the initial wait time.
DZAI_queueActive = nil;
DZAI_nextRespawnTime = nil;

while {(count DZAI_respawnQueue) > 0} do {
	private ["_minDelay","_delay"];

	_minDelay = -1;
	//diag_log format ["DEBUG: Contents of respawn queue before cleanup stage 1: %1.",DZAI_respawnQueue];
	//Remove expired entries before proceeding.
	{
		if (((typeName (_x select 3)) == "GROUP") && {(isNull (_x select 3))}) then {
			DZAI_respawnQueue set [_forEachIndex,objNull];
		};
	} forEach DZAI_respawnQueue;
	//diag_log format ["DEBUG: Contents of respawn queue before cleanup stage 2: %1.",DZAI_respawnQueue];
	if (objNull in DZAI_respawnQueue) then {
		DZAI_respawnQueue = DZAI_respawnQueue - [objNull];
		//diag_log "DEBUG :: Cleaned despawned groups from respawn queue.";
	};
	//diag_log format ["DEBUG: Contents of respawn queue after cleanup: %1.",DZAI_respawnQueue];
	
	//Begin examining queue entries.
	for "_i" from 0 to ((count DZAI_respawnQueue) - 1) do {
		_timeToRespawn = (DZAI_respawnQueue select _i) select 0;
		//If enough time has passed to respawn the group.
		if (diag_tickTime > _timeToRespawn) then {
			_mode = (DZAI_respawnQueue select _i) select 1;
			call {
				if (_mode == 0) exitWith {
					//Infantry AI respawn
					_trigger = (DZAI_respawnQueue select _i) select 2;
					_unitGroup = (DZAI_respawnQueue select _i) select 3;
					_grpArray = _trigger getVariable ["GroupArray",[]];
					if ((_unitGroup in _grpArray) && {((_unitGroup getVariable ["GroupSize",0]) == 0)}) then {
						if (((triggerStatements _trigger) select 1) == "") then {
							//Trigger is active, so respawn the group
							_maxUnits = _trigger getVariable ["maxUnits",[1,0]];
							_respawned = [_unitGroup,_trigger,_maxUnits] call fnc_respawnBandits;
							if ((DZAI_debugLevel > 0) && {!_respawned}) then {diag_log format ["DZAI Debug: No units were respawned for group %1 at %2. Group %1 reinserted into respawn queue.",_unitGroup,(triggerText _trigger)];};
						} else {
							//Trigger is inactive (despawned or deleted) so clean up group instead
							if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Spawn area %1 has already been despawned. Cleaning up group %2.",triggerText _trigger,_unitGroup]};
							_unitGroup call DZAI_deleteGroup;
							if (!isNull _trigger) then {
								_trigger setVariable ["GroupArray",_grpArray - [grpNull]];
							};
						};
					};
				};
				if (_mode == 1) exitWith {
					//Custom vehicle AI respawn
					_respawnParams = (DZAI_respawnQueue select _i) select 2;
					_nul = _respawnParams spawn DZAI_spawnVehicle_custom;
					if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Respawning custom AI vehicle patrol with params %1",((DZAI_respawnQueue select _i) select 2)]};
				};
				if (_mode == 2) exitWith {
					//Vehicle AI patrol respawn
					_vehicleTypeOld = (DZAI_respawnQueue select _i) select 2;
					call {
						if (_vehicleTypeOld isKindOf "Air") exitWith {
							//Air-type vehicle AI patrol respawn
							if ((count DZAI_heliTypesUsable) == 0) then {
								_nul = _vehicleTypeOld spawn DZAI_spawnVehiclePatrol; 
								if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Respawning AI air vehicle patrol type %1.",_vehicleTypeOld]};
							} else {
								DZAI_heliTypesUsable set [(count DZAI_heliTypesUsable),_vehicleTypeOld];
								_index = floor (random (count DZAI_heliTypesUsable));
								_vehicleTypeNew = DZAI_heliTypesUsable select _index;						
								_nul = _vehicleTypeNew spawn DZAI_spawnVehiclePatrol;
								DZAI_heliTypesUsable set [_index,objNull];
								DZAI_heliTypesUsable = DZAI_heliTypesUsable - [objNull];
								if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Respawning AI air vehicle type patrol %1.",_vehicleTypeNew]};
							};
						};
						if (_vehicleTypeOld isKindOf "Ship") exitWith {
							//Land-type vehicle AI patrol respawn
							if ((count DZAI_seaTypesUsable) == 0) then {
								_nul = _vehicleTypeOld spawn DZAI_spawnVehiclePatrol;
								if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Respawning AI sea vehicle patrol type %1.",_vehicleTypeOld]};
							} else {
								DZAI_seaTypesUsable set [(count DZAI_seaTypesUsable),_vehicleTypeOld];
								_index = floor (random (count DZAI_seaTypesUsable));
								_vehicleTypeNew = DZAI_seaTypesUsable select _index;	
								_nul = _vehicleTypeNew spawn DZAI_spawnVehiclePatrol;
								DZAI_seaTypesUsable set [_index,objNull];
								DZAI_seaTypesUsable = DZAI_seaTypesUsable - [objNull];
								if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Respawning AI sea vehicle patrol type %1.",_vehicleTypeNew]};
							};
						};
						if (_vehicleTypeOld isKindOf "LandVehicle") exitWith {
							//Land-type vehicle AI patrol respawn
							if ((count DZAI_heliTypesUsable) == 0) then {
								_nul = _vehicleTypeOld spawn DZAI_spawnVehiclePatrol;
								if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Respawning AI land vehicle patrol type %1.",_vehicleTypeOld]};
							} else {
								DZAI_vehTypesUsable set [(count DZAI_vehTypesUsable),_vehicleTypeOld];
								_index = floor (random (count DZAI_vehTypesUsable));
								_vehicleTypeNew = DZAI_vehTypesUsable select _index;	
								_nul = _vehicleTypeNew spawn DZAI_spawnVehiclePatrol;
								DZAI_vehTypesUsable set [_index,objNull];
								DZAI_vehTypesUsable = DZAI_vehTypesUsable - [objNull];
								if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: Respawning AI land vehicle patrol type %1.",_vehicleTypeNew]};
							};
						};
					};
				};
			};
			DZAI_respawnQueue set [_i,objNull];
			uiSleep PROCESSING_WAIT_TIME;
		} else {
			//Find shortest delay to next group respawn.
			_delay = ((_timeToRespawn - diag_tickTime) max PROCESSING_WAIT_TIME);
			//diag_log format ["DEBUG :: Comparing new respawn time %1 with previous %2.",_delay,_minDelay];
			if (_minDelay > 0) then {
				//If next delay time is smaller than the current minimum delay, use it instead.
				if (_delay < _minDelay) then {
					_minDelay = _delay;
					//diag_log format ["DEBUG :: Found shorter respawn interval: %1 seconds.",_minDelay];
				};
			} else {
				//Initialize minimum delay to first found delay.
				_minDelay = _delay;
				//diag_log format ["DEBUG :: Set respawn interval to %1 seconds.",_minDelay];
			};
		};
	};
	//Remove processed entries
	if (objNull in DZAI_respawnQueue) then {
		DZAI_respawnQueue = DZAI_respawnQueue - [objNull];
		//diag_log "DEBUG :: Cleaned respawned groups from respawn queue.";
	};
	if (_minDelay > -1) then {
		if (DZAI_debugLevel > 0) then {diag_log format ["DZAI Debug: %1 groups left in respawn queue. Next group is scheduled to respawn in %2 seconds.",(count DZAI_respawnQueue),_minDelay];};
		uiSleep _minDelay;
	};
};

DZAI_respawnActive = nil;
if (DZAI_debugLevel > 0) then {diag_log "DZAI Debug: Respawn queue is empty. Exiting respawn handler. (respawnHandler)";};
