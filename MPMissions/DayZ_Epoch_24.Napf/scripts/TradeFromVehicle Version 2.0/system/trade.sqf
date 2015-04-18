
if (TFV_TRADER == objNull) exitWith {};
if ((player distance TFV_TRADER) > 6) exitWith {systemChat "You're too far from the trader.";};

TFV_INWORK = true;

private ["_object","_cat","_validWeapons","_validMagazines","_vehicleDisplayName","_canTrade","_tradeCount","_tradeWeapons","_tradeMagazines","_tradeStages","_currentStage","_keys","_returnWeapons","_returnMagazines","_tradeLoop","_stageStarted","_tradeValueInt","_itemPrice","_tradedWeapons","_tradedMagazines","_payment","_startingCargoCount","_success","_currentCargoCount","_startingPos"];

_object = _this select 0;
_cat = _this select 1;
_vehicleDisplayName = if (TFV_VEHICLE != objNull) then {[TFV_VEHICLE] call TFV_vehicleGetDisplayName} else {""};
_canTrade = true;
_startingPos = if (TFV_VEHICLE != objNull) then {getPos TFV_VEHICLE} else {0};
_validWeapons = [];
_validMagazines = [];

_tooFar=false;
if (TFV_VEHICLE != objNull) then {
	if (_object == "vehicle") then {
		if ((player distance TFV_VEHICLE) > 50) exitWith {_toofar=true;};
	};
};

if(_tooFar) exitWith {
	TFV_INWORK = false; systemChat "You're too far from your vehicle.";
};

switch (_object) do {
    case "vehicle": {
	    _startingCargoCount = ((count([TFV_VEHICLE] call TFV_vehicleGetWeaponCargo)) + (count([TFV_VEHICLE] call TFV_vehicleGetMagazineCargo)));
	    TFV_VEHICLE setVehicleLock "LOCKED";
	    _keys = [TFV_VEHICLE] call TFV_findKeys;
		switch (_cat) do {
		    case "weapons": {
				if ((count([TFV_VEHICLE] call TFV_vehicleGetWeaponCargo)) <= 0) then {
					systemChat format ["No weapons to trade in your %1.",_vehicleDisplayName];
					_canTrade = false;
			    } else {
					_tradeCount = (count([TFV_VEHICLE] call TFV_vehicleGetWeaponCargo));
					_tradeCount = (_tradeCount - (count _keys));
					_tradeWeapons = [TFV_VEHICLE] call TFV_vehicleGetWeaponCargo;
//					diag_log format["[OGHF] _tradeWeapons %1", _tradeWeapons];
					_tradeMagazines = [];
					{
					    if (([TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice) > 0) then {
						    _validWeapons set [(count _validWeapons),_x];
						};
					} forEach _tradeWeapons;
					_tradeStages = [_validWeapons,TFV_WIPS] call TFV_tradingGetStages;
				};
			};
			case "magazines": {
			    if ((count([TFV_VEHICLE] call TFV_vehicleGetMagazineCargo)) <= 0) then {
					systemChat format ["No magazines to trade in your %1.",_vehicleDisplayName];
					_canTrade = false;
				} else {
					_tradeCount = (count([TFV_VEHICLE] call TFV_vehicleGetMagazineCargo));
					_tradeWeapons = [];
					_tradeMagazines = [TFV_VEHICLE] call TFV_vehicleGetMagazineCargo;
					{
					    if (([TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice) > 0) then {
						    _validMagazines set [(count _validMagazines),_x];
						};
					} forEach _tradeMagazines;
					_tradeStages = [_validMagazines,TFV_MIPS] call TFV_tradingGetStages;
				};
			};
			case "all": {
				if (((count([TFV_VEHICLE] call TFV_vehicleGetWeaponCargo)) <= 0) && ((count([TFV_VEHICLE] call TFV_vehicleGetMagazineCargo)) <= 0)) then {
					systemChat format ["No items to trade in your %1.",_vehicleDisplayName];
					_canTrade = false;
				} else {
					_tradeCount = ((count([TFV_VEHICLE] call TFV_vehicleGetWeaponCargo)) + (count([TFV_VEHICLE] call TFV_vehicleGetMagazineCargo)));
					_tradeCount = (_tradeCount - (count _keys));
					_tradeWeapons = [TFV_VEHICLE] call TFV_vehicleGetWeaponCargo;
					_tradeMagazines = [TFV_VEHICLE] call TFV_vehicleGetMagazineCargo;
					{
					    if (([TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice) > 0) then {
						    _validWeapons set [(count _validWeapons),_x];
						};
					} forEach _tradeWeapons;
					{
					    if (([TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice) > 0) then {
						    _validMagazines set [(count _validMagazines),_x];
						};
					} forEach _tradeMagazines;
					_tradeStages = [(_validWeapons + _validMagazines),TFV_MWIPS] call TFV_tradingGetStages;
				};
			};
		};
	};
	case "backpack": {
	    _startingCargoCount = ((count([(unitBackpack player)] call TFV_vehicleGetWeaponCargo)) + (count([(unitBackpack player)] call TFV_vehicleGetMagazineCargo)));
	    _keys = [(unitBackpack player)] call TFV_findKeys;
		switch (_cat) do {
		    case "weapons": {
				if ((count([(unitBackpack player)] call TFV_vehicleGetWeaponCargo)) <= 0) then {
					systemChat "No weapons to trade in your backpack.";
					_canTrade = false;
			    } else {
					_tradeCount = (count([(unitBackpack player)] call TFV_vehicleGetWeaponCargo));
					_tradeCount = (_tradeCount - (count _keys));
					_tradeWeapons = [(unitBackpack player)] call TFV_vehicleGetWeaponCargo;
					_tradeMagazines = [];
					{
					    if (([TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice) > 0) then {
						    _validWeapons set [(count _validWeapons),_x];
						};
					} forEach _tradeWeapons;
					_tradeStages = [_validWeapons,TFV_WIPS] call TFV_tradingGetStages;
				};
			};
			case "magazines": {
			    if ((count([(unitBackpack player)] call TFV_vehicleGetMagazineCargo)) <= 0) then {
					systemChat "No magazines to trade in your backpack.";
					_canTrade = false;
				} else {
					_tradeCount = (count([(unitBackpack player)] call TFV_vehicleGetMagazineCargo));
					_tradeWeapons = [];
					_tradeMagazines = [(unitBackpack player)] call TFV_vehicleGetMagazineCargo;
					{
					    if (([TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice) > 0) then {
						    _validMagazines set [(count _validMagazines),_x];
						};
					} forEach _tradeMagazines;
					_tradeStages = [_validMagazines,TFV_MIPS] call TFV_tradingGetStages;
				};
			};
			case "all": {
				if (((count([(unitBackpack player)] call TFV_vehicleGetWeaponCargo)) <= 0) && ((count([(unitBackpack player)] call TFV_vehicleGetMagazineCargo)) <= 0)) then {
					systemChat "No items to trade in your backpack.";
					_canTrade = false;
				} else {
					_tradeCount = ((count([(unitBackpack player)] call TFV_vehicleGetWeaponCargo)) + (count([(unitBackpack player)] call TFV_vehicleGetMagazineCargo)));
					_tradeCount = (_tradeCount - (count _keys));
					_tradeWeapons = [(unitBackpack player)] call TFV_vehicleGetWeaponCargo;
					_tradeMagazines = [(unitBackpack player)] call TFV_vehicleGetMagazineCargo;
					{
					    if (([TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice) > 0) then {
						    _validWeapons set [(count _validWeapons),_x];
						};
					} forEach _tradeWeapons;
					{
					    if (([TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice) > 0) then {
						    _validMagazines set [(count _validMagazines),_x];
						};
					} forEach _tradeMagazines;
					_tradeStages = [(_validWeapons + _validMagazines),TFV_MWIPS] call TFV_tradingGetStages;
				};
			};
		};	
	};
};

if (!_canTrade) exitWith {
	TFV_INWORK = false;
	if (_object == "vehicle") then {TFV_VEHICLE setVehicleLock "UNLOCKED";};
};

r_interrupt = false;
_currentStage = 1;
_returnWeapons = if ((count _keys) > 0) then {_keys} else {[]};
_returnMagazines = [];
_tradeLoop = true;
_stageStarted = false;
_tradeValueInt = 0;
_itemPrice = -1;
_tradedWeapons = 0;
_tradedMagazines = 0;
_success = true;

titleText [(format [TFV_STR_TRADING,_currentStage,_tradeStages,(if (_object == "vehicle") then {_vehicleDisplayName} else {"backpack"})]),"PLAIN DOWN"];
while {_tradeLoop} do {
    _currentCargoCount = ((count([TFV_VEHICLE] call TFV_vehicleGetWeaponCargo)) + (count([TFV_VEHICLE] call TFV_vehicleGetMagazineCargo)));
	
	if (["medic",(animationState player)] call TFV_inString) then {
		_stageStarted = true;
	};
	if ((_stageStarted) && !(["medic",(animationState player)] call TFV_inString)) then {
		_currentStage = (_currentStage + 1);
		titleText [(format [TFV_STR_TRADING,_currentStage,_tradeStages,(if (_object == "vehicle") then {_vehicleDisplayName} else {"backpack"})]),"PLAIN DOWN"];
		_stageStarted = false;
	};
	if ((!_stageStarted) && !(["medic",(animationState player)] call TFV_inString)) then {
		if (_currentStage > _tradeStages) then {
			_success = true;
			_tradeLoop = false;
		} else {
			player playActionNow "Medic";
		};
	};
    
	if (r_interrupt) exitWith {
		[objNull,player,rSwitchMove,""] call RE;
		player playActionNow "stop";
		_tradeLoop = false;
		_success = false;
		titleText [TFV_STR_TRADECANCELLED,"PLAIN DOWN"];
	};
	
	if (_object == "vehicle") then {
		if ((count(crew TFV_VEHICLE)) > 0) exitWith {
			r_interrupt = true;
			_tradeLoop = false;
			_success = false;
			[objNull,player,rSwitchMove,""] call RE;
			player playActionNow "stop";
			titleText [(format ["Another player entered your %1, trade cancelled.",_vehicleDisplayName]),"PLAIN DOWN"];
		};
		if (_startingCargoCount != _currentCargoCount) exitWith {
			r_interrupt = true;
			_tradeLoop = false;
			_success = false;
			[objNull,player,rSwitchMove,""] call RE;
			player playActionNow "stop";
			titleText [(format ["Another player accessed the gear of your %1, trade cancelled.",_vehicleDisplayName]),"PLAIN DOWN"];	    
		};
		if (((getPos TFV_VEHICLE) distance _startingPos) > 1) exitWith {
			r_interrupt = true;
			_tradeLoop = false;
			_success = false;
			[objNull,player,rSwitchMove,""] call RE;
			player playActionNow "stop";
			titleText [(format ["Your %1 has been moved, trade cancelled.",_vehicleDisplayName]),"PLAIN DOWN"];		
		};
	};
	if (_object == "backpack") then {
	    if (_startingCargoCount != (count([(unitBackpack player)] call TFV_vehicleGetWeaponCargo)) + (count([(unitBackpack player)] call TFV_vehicleGetMagazineCargo))) exitWith {
			r_interrupt = true;
			_tradeLoop = false;
			_success = false;
			[objNull,player,rSwitchMove,""] call RE;
			player playActionNow "stop";
			titleText ["Another player has accessed your backpack, trade cancelled.","PLAIN DOWN"];	
		};
	};
};

if (_success) then {
	if ((_cat == "weapons") || (_cat == "all")) then {
		if ((count(_tradeWeapons)) != 0) then {
			{
				_itemPrice = [TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice;
				if (_itemPrice > 0) then {
					_tradeValueInt = (_tradeValueInt + _itemPrice);
					_tradedWeapons = (_tradedWeapons + 1);
				} else {
					if (!(_x in _keys)) then {
						_returnWeapons set [(count _returnWeapons),_x];
					};
				};
			} forEach _tradeWeapons;
		};
	};
	if ((_cat == "magazines") || (_cat == "all")) then {
		if ((count(_tradeMagazines)) != 0) then {
			{
				_itemPrice = [TFV_TRADERDATA,TFV_TRADER,_x] call TFV_weaponMagazineGetPrice;
				if (_itemPrice > 0) then {
					_tradeValueInt = (_tradeValueInt + _itemPrice);
					_tradedMagazines = (_tradedMagazines + 1);
				} else {
					_returnMagazines set [(count _returnMagazines),_x];
				};
			} forEach _tradeMagazines;
		};
    };
	
    if (_object == "vehicle") then {
	    if ((_cat == "magazines") || (_cat == "all")) then {
			clearMagazineCargoGlobal TFV_VEHICLE;
		};
		if ((_cat == "weapons") || (_cat == "all")) then {
	        clearWeaponCargoGlobal TFV_VEHICLE;
		};
    } else {
	    if ((_cat == "magazines") || (_cat == "all")) then {
			clearMagazineCargoGlobal (unitBackpack player);
		};
		if ((_cat == "weapons") || (_cat == "all")) then {
	        clearWeaponCargoGlobal (unitBackpack player);
		};
    };
  
    if ((_cat == "weapons") || (_cat == "all")) then {
		{
			if (_object == "vehicle") then {
				TFV_VEHICLE addWeaponCargoGlobal [_x,1];
			} else {
				(unitBackpack player) addWeaponCargoGlobal [_x,1];
			};
		} forEach _returnWeapons;
	};
    {
		if (_object == "vehicle") then {
			TFV_VEHICLE addMagazineCargoGlobal [_x,1];
		} else {
			(unitBackpack player) addMagazineCargoGlobal [_x,1];
		};
    } forEach _returnMagazines;
  
    if (_object == "vehicle") then {
	    switch (_cat) do {
		    case "weapons": {
				titleText [(format [TFV_STR_TRADECOMPLETE,_tradedWeapons,"weapons",_vehicleDisplayName]),"PLAIN DOWN"];
			};
			case "magazines": {
				titleText [(format [TFV_STR_TRADECOMPLETE,_tradedMagazines,"magazines",_vehicleDisplayName]),"PLAIN DOWN"];
			};
			case "all": {
				titleText [(format [TFV_STR_TRADECOMPLETE,(_tradedWeapons + _tradedMagazines),"items",_vehicleDisplayName]),"PLAIN DOWN"];
			};
		};
	} else {
	    switch (_cat) do {
		    case "weapons": {
				titleText [(format [TFV_STR_TRADECOMPLETE,_tradedWeapons,"weapons","backpack"]),"PLAIN DOWN"];
			};
			case "magazines": {
				titleText [(format [TFV_STR_TRADECOMPLETE,_tradedMagazines,"magazines","backpack"]),"PLAIN DOWN"];
			};
			case "all": {
				titleText [(format [TFV_STR_TRADECOMPLETE,(_tradedWeapons + _tradedMagazines),"items","backpack"]),"PLAIN DOWN"];
			};
		};	
	};
	
	if(TFV_COINS) then {
		_payment = [_tradeValueInt,_object] call TFV_returnChangeCoins;
	}else{
		_payment = [_tradeValueInt,_object] call TFV_returnChange;
	};
	

};

if (_object == "vehicle") then {TFV_VEHICLE setVehicleLock "UNLOCKED";};
TFV_INWORK = false;
