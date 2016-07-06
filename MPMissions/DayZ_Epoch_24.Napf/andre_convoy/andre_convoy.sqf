//===========================================
//THIS VERSION IS FOR ARMA 2: ANDRE CONVOYS
//===========================================
//By Donnovan from Brazil
//===========================================

if (isServer) then {
	//=======================
	//BASIC KONFIGURATION 1!
	//=======================

	//Vehicles: Its ok to repeate the same car with different configuration.
	donn_carsConvy = [
		//(0) Vehicle Unarmored Armed low Capacity
		["Offroad_DSHKM_Gue",1,["150Rnd_127x107_DSHKM"]],
		//(1) Vehicle Unarmored Unarmed Mediun Capacity
		["BAF_Offroad_D",3,[]],
		//(2) Vehicle Unarmed Armored High Capacity
		["BTR40_TK_GUE_EP1",4,[]],
		//(3) Vehicle Unarmed Armored High Capacity
		["GAZ_Vodnik_MedEvac",4,[]],
		//(4) Vehicle Trash High Capacity
		["car_sedan",3,[]],
		//(5) Civil Truck Ultra High Capacity
		["Ural_TK_CIV_EP1",7,[]],
		//(6) Vehicle Trash High Capacity
		["car_sedan",1,[]],
		//(7) Vehicle Trash High Capacity
		["car_sedan",2,[]],
		//(8) Vehicle Unarmored Unarmed Mediun Capacity
		["BAF_Offroad_D",2,[]]
	];

	//Soldier of the Convoys (all the soldiers are the same)
	donn_soldierSkin = ["TK_INS_Bonesetter_EP1","TK_CIV_Takistani01_EP1"];

	//=======================
	//BASIC KONFIGURATION 2!
	//=======================

	//CONVOY CONFIGURATION
	
	//Time between each consecutive spawn
	_timeBetweenSpawns = 60 * 8;

	//Cars in each convoy (refere to donn_carsConvy)
	_convoyFormation = [
		[5],
		[6],
		[6],
		[8],
		[8,7],
		[0,1],
		[4],
		[0,2],
		[5],
		[0,3],
		[0,5,0]
	];
	
	//Crew Skill (driver, cargors and turreters)
	_generalSkill = 0.6;	//All skills, except ain skill, for all AI
	_driverManAin = 0.8;	//Ain of the driver, from 0 to 1
	_cargoMansAin = 0.5;	//Ain of the cargo ocupants, from 0 to 1
	_turretMansAin = 0.3;	//Ain ot the turret operators, from 0 to 1
	
	//SMART BOMBER MAN CONFIG - Percentage of bomberman AI in car disembarks: 0 is 0% and 1 is 100%
	//Those bombermans will fight and run to the player in the first oportunity
	//0.25 means 1 smart bomber each 4 vehicle disembark (1/0.25 = 4)
	donn_fighterBomberManPerc = 0.1;
	donn_fighterBomberIndicator = true; //indicates the fighter bombers with a small sphere above their heads		
		
	//SMART BOMBER MAN CONFIG - Percentage of bomberman AI in car disembarks: 0 is 0% and 1 is 100%
	//Those bomberman will not fight and search for a player to explode right after disembark
	//0.2 means 1 runner bomber each 5 vehicle disembark (1/0.2 = 5)
	donn_runnerBomberManPerc = 0.1;
	donn_runnerBomberIndicator = true; //indicates the runner bombers with a small sphere above their heads
	
	//ICONS SETTINGS
	_showMapIcons = true;					//Show spawn, convoy and AI icons on map?
	_showMapIconsOnlyWhenNotInWar = true;	//Hide convoy icons when they enter in war, so the fight is not spoted.
	_showCrewNumber = false;					//Show crew number on the vehicle icon on map? (runner bombers don't count as vehicle crew)
	
	//SPECIAL REWARDS
	//Special kill (main char kill or combo kill) reward in gold or coins? Use false to gold / true to coins.
	_useCoinsReward = true;
	//Special Reward Array: _xxxxxRewards = [kill reward,son of general kill reward,extra for each combo kill];
	donn_coinRewards = [650,4000,650];
	donn_goldRewards = [["ItemSilverBar",0],["ItemGoldBar10oz",1],["ItemGoldBar",1]];

	//HUMANITY GAIN
	//How much humnity to gain for each AI kill?
	donn_humanityGainForKill = 65;
	//Bellow this value you is in the Bandit Way so donn_humanityGainForKill will subtract to your humanity
	//Above this value you is in the Hero Way so donn_humanityGainForKill will add to your humanity
	donn_humanityZeroScale = 500;
	
	//OTHER SETTINGS
	donn_aiCarVulnerable = true; 		//false or 0 is INVUNERABLE true or 1 is VULNERABLE
	_donn_delete_body_time = 2400;	//Time in seconds to delete a dead AI body	
	_lootCutter = 2;				//Number of loot piles in veh are divided by this number (minimum of 1 loot pile)
	
	//====================
	//MAP CONFIGURATION
	//====================

	//VEHICLES SPAWN: [[vehicle spawn position],[nothing],spawn angle,spawn radius]
	
	//CHERNARUS SPAWNS
	_spawns = [
		[[2000,10907,0.2],[],100,15],
		[[7730,4798,0.2],[],22,15],
		[[7195,9700,0.2],[],0,15]
	];

	//=====================
	//EXTRA KONFIGURATION!
	//=====================

	//LOOT IN VEHICLE
	_loot1 = [
		[["addWeaponCargoGlobal","Mk_48_DZ",[1,1,2]],["addMagazineCargoGlobal","100Rnd_762x51_M240",[1,2,3]]],	//Maried Loot
		[["addWeaponCargoGlobal","M249_DZ",[1,1,2]],["addMagazineCargoGlobal","200Rnd_556x45_M249",[1,2,3]]],	//Maried Loot
		[["addWeaponCargoGlobal","G36C",[1,1,2]],["addMagazineCargoGlobal","30Rnd_556x45_Stanag",[2,3,4]]],		//Maried Loot
		[["addWeaponCargoGlobal","DMR_DZ",[1,1,2]],["addMagazineCargoGlobal","20Rnd_762x51_DMR",[3,4,5]]],		//Maried Loot
		[["addWeaponCargoGlobal","AK_47_M",[1,1,2]],["addMagazineCargoGlobal","30Rnd_762x39_AK47",[2,3,4]]],	//Maried Loot
		[["addWeaponCargoGlobal","NVGoggles",[3,4,5]]],
		[["addWeaponCargoGlobal","ItemEtool",[3,4,5]]],
		[["addWeaponCargoGlobal","Binocular_Vector",[2,3,4]]],
		[["addMagazineCargoGlobal","ItemBloodBag",[8,12,16]]],
		[["addMagazineCargoGlobal","PartEngine",[5,7,9]]],
		[["addMagazineCargoGlobal","ItemBandage",[20,25,30]]],
		[["addMagazineCargoGlobal","HandGrenade_West",[6,10,14]]],
		[["addMagazineCargoGlobal","ItemBriefcase100oz",[1,1,1]]],
		[["addMagazineCargoGlobal","ItemBriefcase100oz",[1,2,2]]]
	];
	
	//AI WEAPONS & AMMO
	_donn_weapons = [
		["Mk_48_DZ","100Rnd_762x51_M240"],
		["M249_DZ","200Rnd_556x45_M249"],
		["G36C","30Rnd_556x45_Stanag"],
		["G36C_camo","30Rnd_556x45_Stanag"],
		["G36A_camo","30Rnd_556x45_Stanag"],
		["G36K_camo","30Rnd_556x45_Stanag"],
		["AK_47_M","30Rnd_762x39_AK47"],
		["AKS_74_U","30Rnd_545x39_AK"],
		["bizon_silenced","64Rnd_9x19_SD_Bizon"],
		["DMR_DZ","20Rnd_762x51_DMR"],
		["RPK_74","75Rnd_545x39_RPK"]
	];
	
	//=========================
	//END OF KONFIGURATION
	//=========================
	
	//==============================================================================================================
	//==============================================================================================================
	//==============================================================================================================
	//==============================================================================================================
	
	//Avoid Vehicles to Explode when Entering it
	waitUntil {sleep 2;!isNil "DZE_safeVehicle"};
	_cascaVehicles = [];
	{
		_car = _x select 0;
		if !(_car in _cascaVehicles) then {
			_cascaVehicles = _cascaVehicles + [_car];
		};
	} forEach donn_carsConvy;
	DZE_safeVehicle = DZE_safeVehicle + _cascaVehicles;	

	//Generate Functions
	call compile preprocessFileLineNumbers "andre_convoy\andre_convoy_functions.sqf";
	
	//Set Type of Kill Reward (Coins or Gold)
	if (_useCoinsReward) then {donn_cleanUnit = donn_cleanUnitCoins;} else {donn_cleanUnit = donn_cleanUnitGold;};
	
	//Find Waypoints: Automatic find street waypoints
	donn_wps = [1200] call donn_find_intersections;
	
	//Show Spawn Icons on Map / refuel Vehicles / Show convoy icons on map 
	donn_motor = [];
	donn_units_motor = [];
	donn_units_delete = [];
	if (_showMapIcons) then {
		[_spawns,_showCrewNumber,_donn_delete_body_time] spawn {
				//Convoy Icons on Map Iniciate variables
				_showCrewNumber = _this select 1;
				_donn_delete_body_time = _this select 2;
				_add = [];
				_remove = [];
				_update = [];
				_donn_units_motor_icon_old = [];
				//Add Icon Function
				_addIcon = {
					_iName = _this select 0;
					_iPos = _this select 1;
					_iColor = _this select 2;
					_iText = _this select 3;
					_mark = createMarker [_iName, _iPos];
					_mark setMarkerColor _iColor;
					_mark setMarkerShape "Icon";
					_mark setMarkerType "mil_dot";
					_mark setMarkerText _iText;
				};
			
			//Spawn icons on map iniciate variables
			_spawns = _this select 0;
			_donn_casca_icons = [];
			{_donn_casca_icons = _donn_casca_icons + [[_x select 0,"Convoy Spawn " + str (_forEachIndex + 1)]];} forEach _spawns;
			
			//While: Spawn icons / Convoy Icons / Refuel
			_sleep_a = 0;
			_sleep_b = 0;
			_sleep_c = 0;
			while {true} do {
				//Spawn Icons Add
				if (_sleep_a == 0) then {
					{
						_mark = createMarker ["Donn_Spawn_" + str _forEachIndex, _x select 0];
						_mark setMarkerShape "Icon";
						_mark setMarkerText (_x select 1);
						_mark setMarkerType "mil_dot";
						_mark setMarkerColor "ColorPink";
					} forEach _donn_casca_icons;
				};

				//Refual Vehicles each 100 seconds and delete dead AI body
				if (_sleep_b >= 100) then {
					_sleep_b = 0;
					
					//Refuel
					{_x setFuel 1;} forEach donn_motor;

					//Delete AI dead body
					{
						_unit =  _x select 0;
						_dieTime = _x select 1;
						if (!isNull _unit) then {
							if (time - _dieTime > _donn_delete_body_time) then {
								_unit call donn_AI_deleteBody;
							};
						};
					} forEach donn_units_delete;
				};
				
				//Convoy Icons
				{
					deleteMarker vehicleVarName _x;
				} forEach _remove;
				{
					_color = "";
					if (_x isKindOf "LandVehicle") then {
						if (_x getVariable ["donn_tu",false]) then {_color = "ColorRed";} else {_color = "ColorBlue";};
					} else {
						_color = "ColorYellow";
					};
					_array = [vehicleVarName _x,position _x,_color,""];
					_array call _addIcon;
				} forEach _add;
				{
					_posXY = position _x;
					_marker = vehicleVarName _x;
					_marker setMarkerPos (getPosATL _x);
					if (_x isKindOf "LandVehicle") then {
						if (_showCrewNumber) then {_marker setMarkerText str ({alive _x} count crew _x);};
					};

				} forEach _update;
				_donn_units_motor_icon = [];
				_vehIcon = [];
				{
					if !((group _x) getVariable ["donn_inWar",false]) then {
						_veh = vehicle _x;
						_assigned = assignedVehicle _x;
						if (_veh != _x) then {
							if !(_veh in _vehIcon) then {
								_vehIcon = _vehIcon + [_veh];
								_donn_units_motor_icon = _donn_units_motor_icon + [_veh];
							};
						} else {
							_donn_units_motor_icon = _donn_units_motor_icon + [_x];
						};
						if !(_assigned in _vehIcon) then {
							_vehIcon = _vehIcon + [_assigned];
							_donn_units_motor_icon = _donn_units_motor_icon + [_assigned];
						};
					};
					
				} forEach donn_units_motor;
				if (_sleep_c >= 20) then {
					_add = _donn_units_motor_icon;
					_remove = _donn_units_motor_icon_old;
					_donn_units_motor_icon_old = _donn_units_motor_icon;
					_sleep_c = 0;
				} else {
					_add = _donn_units_motor_icon - _donn_units_motor_icon_old;
					_remove = _donn_units_motor_icon_old - _donn_units_motor_icon;
					_update = _donn_units_motor_icon - _add;
					_donn_units_motor_icon_old = _donn_units_motor_icon;
				};
				
				//Sleep Divisor of all
				_sleepTime = 4.0;
				uiSleep _sleepTime;
				_sleep_a = _sleep_a + _sleepTime;
				_sleep_b = _sleep_b + _sleepTime;
				_sleep_c = _sleep_c + _sleepTime;
			
				//Spawn Icons Remove
				if (_sleep_a == 15) then {
					_sleep_a = 0;
					{deleteMarker ("Donn_Spawn_" + str _forEachIndex);} forEach _donn_casca_icons;
				};
			};
		};
	} else {
		//Refual Vehicles each 100 seconds and Check for AI body delete
		_donn_delete_body_time spawn {
			while {true} do {
				_donn_delete_body_time = _this;
				
				//Refuel
				{_x setFuel 1;} forEach donn_motor;
			
				//Delete AI dead body
				{
					_unit =  _x select 0;
					_dieTime = _x select 1;
					if (!isNull _unit) then {
						if (time - _dieTime > _donn_delete_body_time) then {
							_unit call donn_AI_deleteBody;
						};
					};
				} forEach donn_units_delete;
				uiSleep 100;
			};
		};
	};
	
	donn_godModeMult = 0;
	if (donn_aiCarVulnerable) then {donn_godModeMult = 1;};
	
	//Safe Sleep
	sleep 10;
	
	//Spawn Casca Units/Cars
	for "_cs" from 1 to (count _convoyFormation) do {
		diag_log ("[CASCA CONVOY] Initialized Spawn! " + str _cs);
		
		//Inicialization
		_spawn = _spawns select ((_cs + ((count _spawns)-1)) mod (count _spawns));
		_origin = _spawn select 0;
		_rad = _spawn select 3;
		_rosa_group = createGroup EAST;
		_convoy = _convoyFormation select (_cs-1);
		_behaviorSafe = "CARELESS";
		_speed = "NORMAL";
		_qtd = count _convoy;
		_cars = [];
		{
			_cars = _cars + [donn_carsConvy select _x];
		} forEach _convoy;
		for "_n" from 1 to _qtd do {
			private ["_firstDriver"];
			
			//Spawn Car
			_car = _cars select (_n - 1);
			_motor = createVehicle [_car select 0,_origin,[],_rad,"NONE"];
			_motor allowDamage donn_aiCarVulnerable;
			_motor setVehicleVarName ("CASCA_CAR_" + str _cs + "_" + str _n);
			_motorID = str(round(random 999999));
			_motor setVariable ["ObjectID",_motorID,true];
			_motor setVariable ["ObjectUID",_motorID,true];
			//PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_motor];
			_motor setVariable ["car_group",_rosa_group,false];
			_motor removeAllEventHandlers "HandleDamage";
			_motor addEventHandler ["HandleDamage",{_this call donn_casca_veh_HD;(_this select 2)*donn_godModeMult}];
			_motor setDir (_spawn select 2);
			_motor setFuel 1;
			donn_motor = donn_motor + [_motor];
			_motor addEventHandler ["GetIn",{_this call donn_casca_getIn;}];
			_motor addEventHandler ["GetOut",{_this call donn_casca_getOut;}];
			
			//Add Vehicle Ammo
			_ammos = _car select 2;
			if (count _ammos > 0) then {
				[_ammos,_motor,"add"] call donn_cascar_tuAmmo;
				_motor setVariable ["donn_tu",true,true];
			};
			
			//count Crew
			_driverCount = 1;
			_turreterCount = count _ammos;
			_cargorsCount = _car select 1;
			_crewCount = _driverCount + _turreterCount + _cargorsCount;
			
			//Put Loot in the Car
			clearWeaponCargoGlobal _motor;
			clearMagazineCargoGlobal _motor;
			{
				{call compile format ["_motor %1 ['%2',%3];",_x select 0,_x select 1,_x select 2 select ((_qtd - 1) min 2)];} forEach _x;
			} forEach ([_loot1,ceil (_crewCount/_lootCutter)] call donn_selectLoot);
			
			//Spawn Soldiers
			_gunnerPos = 0;
			for "_y" from 1 to _crewCount do {
				
				//Create Soldier
				_skin = donn_soldierSkin call BIS_fnc_selectRandom;
				_unit = _rosa_group createUnit [_skin,[50,50,50],[],50,"PRIVATE"];
				_unit setVehicleVarName ("CASCA_AI_" + str _cs + "_" + str _n + "_" + str _y);				
				[_unit] joinSilent _rosa_group;
				_unit addEventHandler ["Killed",{_this call donn_cleanUnit;}];
				_unit addEventHandler ["HandleDamage",{_this call donn_casca_unit_HD}];
				donn_units_motor = donn_units_motor + [_unit];
				_unit disableAi "TARGET";
				_unit disableAi "AUTOTARGET";
				
				//Give Soldier Weapon and Ammo
				removeAllWeapons _unit;
				{_unit removeMagazine _x} forEach magazines _unit;
				_weap_mag = _donn_weapons call BIS_fnc_selectRandom;
				_weapon = _weap_mag select 0;
				_magazine = _weap_mag select 1;
				_unit addWeapon _weapon;
				_unit selectWeapon _weapon;
				for "_pa" from 1 to (ceil (1 + random 2)) do {
					_unit addMagazine _magazine;
				};
				
				//Put AI in the car
				if (_y == 1) then {
					//Driver
					_unit assignAsDriver _motor;
					_unit moveInDriver _motor;
					_unit setSkill _generalSkill;
					_unit setSkill ["aimingAccuracy",_driverManAin];
				};
				if (_y > 1 && _y <= 1 + _turreterCount) then {
					//Turreters
					_unit assignAsGunner _motor;
					_unit moveInTurret [_motor,[_gunnerPos]];
					_unit setSkill _generalSkill;
					_unit setSkill ["aimingAccuracy",_turretMansAin];
					_gunnerPos = _gunnerPos + 1;
 				};
				if (_y > 1 + _turreterCount) then {
					//Cargors
					_unit assignAsCargo _motor;
					_unit moveInCargo _motor;
					_unit setSkill _generalSkill;
					_unit setSkill ["aimingAccuracy",_cargoMansAin];
				};
			};
			_rosa_group setCombatMode "BLUE";
			_rosa_group setBehaviour _behaviorSafe;
			_rosa_group setVariable ["donn_pshot",false,false];
			_rosa_group setVariable ["donn_inWar",false,false];
			{_x allowFleeing 0} forEach units _rosa_group;		
			{[_x] allowGetIn true;sleep 0.2;} forEach units _rosa_group;
			{[_x] orderGetIn true;sleep 0.2;} forEach units _rosa_group;
		};
		
		//Make Units leave or Embark car
		[_rosa_group,_behaviorSafe] spawn {
			_rosa_group = _this select 0;
			_behaviorSafe = _this select 1;
			_noHurtTime = 0;
			_tm = 1;
			_targetOff = true;
			while {!isNil "_rosa_group"} do {
				_newHurt = _rosa_group getVariable ["donn_pshot",false];
				if (isNil "_newHurt") then {_newHurt = false;};
				if (_newHurt) then {
					_noHurtTime = 0;
					_rosa_group setVariable ["donn_pshot",false,false];
					if (_targetOff) then {
						_targetOff = false;
						_rosa_group setVariable ["donn_inWar",true,false];
						{_x enableAi "TARGET";sleep 0.025;} forEach units _rosa_group;
						{_x enableAi "AUTOTARGET";sleep 0.025;} forEach units _rosa_group;
						sleep 0.5;
						_rosa_group setBehaviour "COMBAT";
						_rosa_group setCombatMode "RED";
						sleep 0.5;
						_turreters = [];
						{if ((assignedVehicleRole _x) select 0 == "Turret") then {_turreters = _turreters + [_x];};} forEach units _rosa_group;
						_leaveToFight = (units _rosa_group) - _turreters;
						{[_x] orderGetIn false;sleep 0.05;} forEach _leaveToFight;
						{[_x] allowGetIn false;sleep 0.05;} forEach _leaveToFight;
						_tm = 15;
					};
				} else {
					_noHurtTime = _noHurtTime + _tm;
					if (_noHurtTime > 120) then {
						_noDangerFell = true;
						{if (_rosa_group knowsAbout _x > 0) exitWith {_noDangerFell = false;};} forEach playableUnits;
						if (_noDangerFell) then {
							_targetOff = true;
							_rosa_group setVariable ["donn_inWar",false,false];
							{_x disableAi "TARGET";} forEach units _rosa_group;
							{_x disableAi "AUTOTARGET";} forEach units _rosa_group;
							sleep 1;
							_rosa_group setBehaviour _behaviorSafe;
							_rosa_group setCombatMode "BLUE";
							sleep 2;
							{[_x] allowGetIn true;sleep 0.2;} forEach units _rosa_group;
							{[_x] orderGetIn true;sleep 0.2;} forEach units _rosa_group;
							_tm = 1;
						};
					};
				};
				sleep _tm;
			};
		};
		
		//Make Convoy Route
		[_spawn select 0,_rosa_group,_speed,donn_wps] call donn_makeroute;
	
		//Sleep Before Next Spawn
		sleep _timeBetweenSpawns;
	};
};