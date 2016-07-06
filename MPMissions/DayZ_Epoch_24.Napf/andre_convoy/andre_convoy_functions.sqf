//Find Roads Intersections (can be separated by water)
donn_find_intersections = {
	_minDist = _this select 0;
	_roads = [0,0,0] nearRoads 50000;
	_donn_wps = [];
	{
		_road = _x;
		if (count roadsConnectedTo _x > 2) then {
			_alone = true;
			{
				if (_road distance _x < _minDist) exitWith {
					_alone = false;
				};
			} forEach _donn_wps;
			if (_alone) then {
				_donn_wps = _donn_wps + [position _x];
			};
		};
	} forEach _roads;
	_donn_wps
};

//AI handle damage Event Handler	
donn_casca_unit_HD = {
	_hurtedOne = _this select 0;
	_partDamage = _this select 1;
	_damage = _this select 2;
	_ofender = _this select 3;
	_process = false;
	if (isPlayer _ofender) then {_process = true;} else {if (_ofender isKindOf "LandVehicle" || _ofender isKindOf "Air" || _ofender isKindOf "Ship") then {_process = true;};};
	if (_process) then {
		_dist = _ofender distance _hurtedOne; //MANY
		_groupShoted = group _hurtedOne; //MANY
		_groupShoted setVariable ["donn_pshot",true,false]; //MANY
		if (_dist < 300) then {_groupShoted reveal [_this select 3,4];}; //MANY
		//Bomber part
		if (_hurtedOne getVariable ["donn_bomb",false]) then {
			if (_partDamage == "body" && _damage > 1) then {
				_uPos = position _hurtedOne;
				"HelicopterExploSmall" createVehicle _uPos;
				_unit setPos [0,0,0];
				_damnage = 100;
			};
		};
	} else {
		if (_hurtedOne != _ofender) then {_damage = 0;};
	};
	_damage
};

//BomberMan handle damage
donn_casca_unit_HD_bomber = {
	_hurtedOne = _this select 0;
	_partDamage = _this select 1;
	_damage = _this select 2;
	_ofender = _this select 3;
	_process = false;
	if (isPlayer _ofender) then {_process = true;} else {if (_ofender isKindOf "LandVehicle" || _ofender isKindOf "Air" || _ofender isKindOf "Ship") then {_process = true;};};
	if (_process) then {
		if (_partDamage == "body" && _damage > 1) then {
			_uPos = position _hurtedOne;
			"HelicopterExploSmall" createVehicle _uPos;
			_hurtedOne setPos [0,0,0];
			deleteVehicle _hurtedOne;
		};
	} else {
		if (_hurtedOne != _ofender) then {_damage = 0;};
	};
	_damage
};

//Vehicle Handle Damage
donn_casca_veh_HD = {
	_motor = _this select 0;
	_dist = (_this select 3) distance _motor;
	_groupShoted = _motor getVariable ["car_group",GrpNull];
	_inWar = _groupShoted getVariable ["donn_inWar",false];
	if (!_inWar) then {
		_crew = crew _motor;
		if (count _crew > 0) then {
			_groupShoted setVariable ["donn_pshot",true,false];
			if (_dist < 120) then {_groupShoted reveal [_this select 3,4];};
		};
	};
	if (_inWar) then {_groupShoted setVariable ["donn_pshot",true,false];	if (_dist < 120) then {_groupShoted reveal [_this select 3,4];};};
};

//Clean AI on death and re-assign a new driver and set rewards (coins)
donn_combo_kill_player = [];
donn_combo_kill_time = [];
donn_combo_kill_lvl = [];
donn_cleanUnitCoins = {
	_unit = _this select 0;
	_player = _this select 1;
	_motor = assignedVehicle _unit;
	_role = assignedVehicleRole _unit;
	_unit removeAllEventHandlers "handleDamage";
	if (_role select 0 == "Driver") then {_unit call donn_roll_driver;};
	if (random 100 > 60) then {
		{_unit removeWeapon _x;} forEach weapons _unit;
		{_unit removeMagazine _x;} forEach magazines _unit;
	};
	donn_units_motor = donn_units_motor - [_unit];
	_gain = donn_coinRewards select 0;
	_extraGain = 0;
	_genSonTxt = "";
	if (random 100 > 90) then {
		_gain = donn_coinRewards select 1;
		_genSonTxt = "You killed the general son! ";
	};
	_index = donn_combo_kill_player find _player;
	_comboTxt = "";
	if (_index != -1) then {
		_newTime = time;
		_lastTime = donn_combo_kill_time select _index;
		donn_combo_kill_time set [_index,_newTime];
		if (_newTime - _lastTime <= 15) then {
			_currLvl = donn_combo_kill_lvl select _index;
			_newLvl = _currLvl + 1;
			donn_combo_kill_lvl set [_index,_newLvl];
			_extraGain = _newLvl * (donn_coinRewards select 2);
			_comboTxt = ("Combo kill level " + str _newLvl + "!");
		} else {
			donn_combo_kill_lvl set [_index,0];
		};
	} else {
		donn_combo_kill_player set [count donn_combo_kill_player,_player];
		donn_combo_kill_time set [count donn_combo_kill_time,time];
		donn_combo_kill_lvl set [count donn_combo_kill_lvl,0];
	};
	donn_units_delete = donn_units_delete + [[_unit,time]];
	//Money gain
	_unit setVariable ["cashMoney",_gain,true];
	if (_extraGain > 0) then {_result = [_player,_extraGain] call SC_fnc_addCoins;};
	_txt = _genSonTxt + _comboTxt;
	if (_txt != "") then {_nil = [nil,_player,"loc",rTITLETEXT,_txt,"PLAIN DOWN",4] call RE;};
	//Humanity Gain / Loss
	_humanity = _player getVariable ["humanity",0];
	_humGain = donn_humanityGainForKill;
	_humGainDir = 1;if (_humanity < donn_humanityZeroScale) then {_humGainDir = -1;};
	_humGain = _humGain * _humGainDir;
	_player setVariable ["humanity",(_humanity + _humGain),true];
};

//Clean AI on death and re-assign a new driver and set rewards (gold)
donn_cleanUnitGold = {
	_unit = _this select 0;
	_player = _this select 1;
	_motor = assignedVehicle _unit;
	_role = assignedVehicleRole _unit;
	_unit removeAllEventHandlers "handleDamage";
	if (_role select 0 == "Driver") then {_unit call donn_roll_driver;};
	if (random 100 > 60) then {
		{_unit removeWeapon _x;} forEach weapons _unit;
		{_unit removeMagazine _x;} forEach magazines _unit;
	};
	donn_units_motor = donn_units_motor - [_unit];
	_gain = donn_goldRewards select 0;
	_extraGain = [donn_goldRewards select 2 select 0,0];
	_genSonTxt = "";
	if (random 100 > 90) then {
		_gain = donn_goldRewards select 1;
		_genSonTxt = "You killed the general son! ";
	};
	_index = donn_combo_kill_player find _player;
	_comboTxt = "";
	if (_index != -1) then {
		_newTime = time;
		_lastTime = donn_combo_kill_time select _index;
		donn_combo_kill_time set [_index,_newTime];
		if (_newTime - _lastTime <= 15) then {
			_currLvl = donn_combo_kill_lvl select _index;
			_newLvl = _currLvl + 1;
			donn_combo_kill_lvl set [_index,_newLvl];
			_extraGain = [donn_goldRewards select 2 select 0,(donn_goldRewards select 2 select 1) * _newLvl];
			_comboTxt = ("Combo kill level " + str _newLvl + "!");
		} else {
			donn_combo_kill_lvl set [_index,0];
		};
	} else {
		donn_combo_kill_player set [count donn_combo_kill_player,_player];
		donn_combo_kill_time set [count donn_combo_kill_time,time];
		donn_combo_kill_lvl set [count donn_combo_kill_lvl,0];
	};
	donn_units_delete = donn_units_delete + [[_unit,time]];
	//Money gain
	for "_i" from 1 to (_gain select 1) do {_unit addMagazine (_gain select 0);};
	if (_extraGain select 1 > 0) then {for "_i" from 1 to (_extraGain select 1) do {_unit addMagazine (_extraGain select 0);};};
	_txt = _genSonTxt + _comboTxt;
	if (_txt != "") then {_nil = [nil,_player,"loc",rTITLETEXT,_txt,"PLAIN DOWN",4] call RE;};
	//Humanity Gain / Loss
	_humanity = _player getVariable ["humanity",0];
	_humGain = donn_humanityGainForKill;
	_humGainDir = 1;if (_humanity < donn_humanityZeroScale) then {_humGainDir = -1;};
	_humGain = _humGain * _humGainDir;
	_player setVariable ["humanity",(_humanity + _humGain),true];
};

//Delete a AI dead body
donn_AI_deleteBody = {
	_unit = _this;
	_unit removeAllEventHandlers "handleDamage";
	_unit removeAllEventHandlers "fired";
	_unit removeAllEventHandlers "firedNear";
	_unit removeAllEventHandlers "killed";
	_unit removeAllEventHandlers "local";
	_unit removeAllMPEventHandlers "mpkilled";
	_unit removeAllMPEventHandlers "mphit";
	_unit removeAllMPEventHandlers "mprespawn";
	clearVehicleInit _unit;
	deleteVehicle _unit;	
};

//Loot Selection Function
donn_selectLoot = {
	_lootsOriginal = _this select 0;
	_qtd = _this select 1;
	_loots = +_lootsOriginal;
	_qtd = _qtd min 8;
	_return = [];
	for "_x" from 0 to (_qtd - 1) do {
		_rnd = (ceil (random (count _loots))) - 1;
		_rnd = _rnd max 0;
		_return = _return + [_loots select _rnd];
		_loots set [_rnd,"delme"];
		_loots = _loots - ["delme"];
		if (count _loots == 0) then {_loots = +_lootsOriginal;};
	};
	_return
};

//Add or Remove Turret Ammo - Function
donn_cascar_tuAmmo = {
	_ammos = _this select 0;
	_motor = _this select 1;
	_action = _this select 2;
	if (_action == "add") then {
		{
			_ammo = _x;
			for "_a" from 1 to 3 do {
				_motor addMagazineTurret [_ammo,[_forEachIndex]];
			};
		} forEach _ammos;
	};
	if (_action == "remove") then {
		{
			_motor removeMagazinesTurret [_x,[_forEachIndex]];
		} forEach _ammos;
	};
};

//Select a new driver
donn_roll_driver = {
	_unit = _this;
	_assignedVehDrv = assignedVehicle _unit;
	_unitsGrp = units group _unit;
	_newDriver = ObjNull;
	{
		if (alive _x) then {
			if (assignedVehicle _x == _assignedVehDrv) then {
				if (isNull _newDriver) then {
					_newDriver = _x;
				} else {
					if ((assignedVehicleRole _newDriver) select 0 == "Turret") then {
						_newDriver = _x;
					};
				};
			};
		};
	} forEach (_unitsGrp - [_unit]);
	if (!isNull _newDriver) then {
		unassignVehicle _unit;
		_newDriver assignAsDriver _assignedVehDrv;
		if ((group _newDriver) getVariable "donn_inWar") then {
			if ((assignedVehicleRole _newDriver) select 0 == "Turret") then {
				[_newDriver] orderGetIn false;
				[_newDriver] allowGetIn false;
				_newDriver setSkill 1;
			};
		};		
	};
};

//Protect Vehicles from players until all crew is off
donn_casca_getIn = {
	_motor = _this select 0;
	_unit = _this select 2;
	if (isPlayer _unit) then {
		_carGroup = _motor getVariable ["car_group",GrpNull];
		_allOff = true;
		{if (alive _x && assignedVehicle _x == _motor) then {_allOff = false;};} forEach units _carGroup;
		if (!_allOff) then {_unit action ['getOut', _motor];};
		if (_allOff) then {
			_motor setFuel 0.5;
			_motor removeAllEventHandlers "handleDamage";
			_motor removeAllEventHandlers "Killed";
			_motor removeAllEventHandlers "getIn";
			_motor removeAllEventHandlers "getOut";
			_motor addeventhandler ["handleDamage",{_this call vehicle_handleDamage}];
			_motor addeventhandler ["killed",{_this call vehicle_handleKilled}];
			PVDZE_veh_Init = _motor;
			publicVariable "PVDZE_veh_Init";
			_nil = [nil,_unit,"loc",rTITLETEXT,"\n\nThis vehicle will disappear on server restart!","PLAIN DOWN",5] call RE;
			_motor addEventHandler ["getIn",{
				_unit = _this select 2;
				_nil = [nil,_unit,"loc",rTITLETEXT,"\n\nThis vehicle will disappear on server restart!","PLAIN DOWN",5] call RE;
			}];
		};
	};
};

//Make bomber man on disembark
donn_disembarkCount = 0;
donn_casca_getOut = {
	_unit = _this select 2;
	_inWar = (group _unit) getVariable ["donn_inWar",false];
	if (!isPlayer _unit && _inWar) then {
		donn_disembarkCount = donn_disembarkCount + 1;
		if (donn_disembarkCount mod (round (1/(donn_fighterBomberManPerc max 0.001))) == 0) then {
			if ((assignedVehicleRole _unit) select 0 != "Turret") then {
				_sphere = objNull;
				if (donn_fighterBomberIndicator) then {
					_sphere = createVehicle ["Sign_sphere25cm_EP1",[0,0,0],[],0,"CAN_COLLIDE"];
					_sphere attachTo [_unit,[0,0,2.25]];
				};
				_unit setVariable ["donn_bomb",true,false];
				[objNull,_unit,_sphere] execFSM "andre_convoy\andre_convoy_bomberFighter.fsm";
			} else {
				donn_disembarkCount = donn_disembarkCount - 1;
			};
		};
		if (donn_disembarkCount mod (round (1/(donn_runnerBomberManPerc max 0.001))) == 0) then {
			_agentPos = position assignedVehicle _unit;
			_agent = createAgent ["TK_INS_Soldier_AAT_EP1",_agentPos,[],0,"NONE"];
			_agent removeAllEventHandlers "handleDamage";
			_agent addEventHandler ["handleDamage",{_this call donn_casca_unit_HD_bomber}];
			_sphere = objNull;
			if (donn_runnerBomberIndicator) then {
				_sphere = createVehicle ["Sign_sphere25cm_EP1",[0,0,0],[],0,"CAN_COLLIDE"];
				_sphere attachTo [_agent,[0,0,2.25]];
			};				
			[objNull,_agent,group _unit,_sphere] execFSM "andre_convoy\andre_convoy_bomberRunner.fsm";	
		};
	};
};

//Route Maker
donn_makeroute = {
	_origin = _this select 0;
	_rosa_group = _this select 1;
	_speed = _this select 2;
	_posBefore = _origin;
	_posNow = _origin;
	_wp = _rosa_group addWaypoint [_posNow,0,0];
	_wp setWaypointCompletionRadius 15;
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed _speed;
	_posNext = [0,0,0];
	for "_c" from 1 to 5 do {
		_distToBefore = 0;
		_distToNext = 0;
		_found = false;
		for "_x" from 1 to 200 do {
			_posNext = donn_wps call BIS_fnc_selectRandom;
			_distToNext = _posNow distance _posNext;
			_distToBefore = _posNext distance _posBefore;
			_otherIsland = false;
			if (_distToNext > 2500 && _distToNext < 5000 && _distToBefore > 2000) then {
				_found = true;
				_distUnits = _distToNext/20;
				_dltX = ((_posNext select 0) - (_posNow select 0))/_distUnits;
				_dltY = ((_posNext select 1) - (_posNow select 1))/_distUnits;
				for "_i" from 1 to _distUnits do {
					_travelPos = [(_posNow select 0)+_i*_dltX,(_posNow select 1)+_i*_dltX]; 
					if (surfaceIsWater _travelPos) exitWith {_found = false;};
				};
			};
			if (_found) exitWith {};
			sleep 0.001;
		};
		if (!_found) then {_posNext = donn_wps call BIS_fnc_selectRandom;};
		_wp = _rosa_group addWaypoint [_posNext,0,_c];
		_wp setWaypointCompletionRadius 15;
		_wp setWaypointType "MOVE";
		_wp setWaypointSpeed _speed;
		_posNow = _posNext;
	};
	_wp = _rosa_group addWaypoint [_origin,0,6];
	_wp setWaypointCompletionRadius 15;
	_wp setWaypointType "CYCLE";
	_wp setWaypointSpeed _speed;
};