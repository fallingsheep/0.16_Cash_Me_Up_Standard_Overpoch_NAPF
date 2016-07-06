private["_veh","_gear","_pos","_crashPile","_crashPiles","_element","_objWpnTypes","_objWpnQty","_isOK","_countr","_count","_cont","_temp","_rnd","_lockPrevent","_guaranteedLoot","_randomizedLoot","_radius","_chance"];
_veh = _this;
_gear = _veh getVariable ["lastInventory", []];

if(isNil "DZE_crashLootConfig") then{
	DZE_crashLootConfig = [true,2,5,5,0];
};
	
_lockPrevent = DZE_crashLootConfig select 0;
_guaranteedLoot = DZE_crashLootConfig select 1;
_randomizedLoot = DZE_crashLootConfig select 2;
_radius = DZE_crashLootConfig select 3;
_chance = DZE_crashLootConfig select 4;

_crashPile = objNull;
_crashPiles = [];
_cont = false;


if(_lockPrevent) then{
	if(locked _veh) then{
		_cont = false;
	}else{
		_cont = true;
	};
}else{
	_cont = true;
};

if(((count _gear) > 0) && _cont) then{
	
	//Wait for vehicle to stop moving
	sleep 1;
	_count = 0;
	while{(speed _veh) > 0.1 && _count <= 20} do{
		sleep 0.1;
		_count = _count + 0.1;
	};
	
	//Spawn the loot
	diag_log format["DEAD VEHICLE - server_crashLoot.sqf - %1",_gear];
	
	_pos = getPos _veh;
	_num = round(random _randomizedLoot) + _guaranteedLoot;

	for "_x" from 1 to _num do {
		_temp = createVehicle ["WeaponHolder", [_pos select 0, _pos select 1, 0], [], _radius, "CAN_COLLIDE"];
		_crashPiles = _crashPiles + [_temp];
	};
	
	//Add weapons
	_objWpnTypes = (_gear select 0) select 0;
	_objWpnQty = (_gear select 0) select 1;
	_countr = 0;					
	{
		if(_x in (DZE_REPLACE_WEAPONS select 0)) then {
			_x = (DZE_REPLACE_WEAPONS select 1) select ((DZE_REPLACE_WEAPONS select 0) find _x);
		};
		_isOK = 	isClass(configFile >> "CfgWeapons" >> _x);
		if (_isOK) then {
			_element = floor(random _num);
			_crashPile = _crashPiles select _element;
			for "_i" from 1 to (_objWpnQty select _countr) do {
				_rnd = random 1;
				if(_rnd >= _chance) then{
					_crashPile addWeaponCargoGlobal [_x,1];
				};
			};
		};
		_countr = _countr + 1;
	} count _objWpnTypes; 

	//Add Magazines
	_objWpnTypes = (_gear select 1) select 0;
	_objWpnQty = (_gear select 1) select 1;
	_countr = 0;
	{
		if (_x == "BoltSteel") then { _x = "WoodenArrow" }; // Convert BoltSteel to WoodenArrow
		if (_x == "ItemTent") then { _x = "ItemTentOld" };
		_isOK = 	isClass(configFile >> "CfgMagazines" >> _x);
		if (_isOK) then {
			_element = floor(random _num);
			_crashPile = _crashPiles select _element;
			for "_i" from 1 to (_objWpnQty select _countr) do {
				_rnd = random 1;
				if(_rnd >= _chance) then{
					_crashPile addMagazineCargoGlobal [_x,1];
				};
			};
		};
		_countr = _countr + 1;
	} count _objWpnTypes;
	
	//Add Backpacks
	_objWpnTypes = (_gear select 2) select 0;
	_objWpnQty = (_gear select 2) select 1;
	_countr = 0;
	{
		_isOK = 	isClass(configFile >> "CfgVehicles" >> _x);
		if (_isOK) then {
			_element = floor(random _num);
			_crashPile = _crashPiles select _element;
			for "_i" from 1 to (_objWpnQty select _countr) do {
				_rnd = random 1;
				if(_rnd >= _chance) then{
					_crashPile addBackpackCargoGlobal [_x,1];
				};
			};
		};
		_countr = _countr + 1;
	} count _objWpnTypes;
};