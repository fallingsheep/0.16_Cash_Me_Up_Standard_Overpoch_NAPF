
/* TradeFromVehicle Functions                                                                                                                      */
/* DO NOT MODIFY THIS FILE! 																													   */

TFV_tradersGetTypeOfTIDSHumanity =
{
	private ["_current","_tids","_status","_compiled"];
	_compiled = [];
	{
	    _tids = [];
		_current = call compile format ["menu_%1;",_x];
		{ _tids set [(count _tids),(_x select 1)]; } forEach (_current select 0);
		_status = _current select 2;
		_compiled set [(count _compiled),[_x,_tids,_status]];
	} forEach serverTraders;
	_compiled
};

TFV_traderGetWeaponsMagazinesPrices =
{
	private ["_trader","_traderData","_tids","_typeOfHumanityWeaponsMagazinesPrices","_typeOfHumanityWeaponsMagazinesPricesRAW","_physicalPrice","_intPrice","_currencyItem","_currencyItemWorth","_humanityNeed","_typeOfTrader","_badItems","_trader_id"];
	_trader = _this select 0;
	_intPrice = 0;
	_traderData = call TFV_tradersGetTypeOfTIDSHumanity;
	_badItems = ["USBasicBag","Tripod_Bag","M2StaticMG_US_Bag_EP1","M2HD_mini_TriPod_US_Bag_EP1","DSHKM_TK_GUE_Bag_EP1","DSHKM_TK_INS_Bag_EP1","DSHkM_Mini_TriPod_TK_GUE_Bag_EP1",
				 "DSHkM_Mini_TriPod_TK_INS_Bag_EP1","KORD_high_TK_Bag_EP1","KORD_high_UN_Bag_EP1","KORD_TK_Bag_EP1","KORD_UN_Bag_EP1","MK19_TriPod_US_Bag_EP1",
				 "AGS_TK_Bag_EP1","AGS_TK_GUE_Bag_EP1","AGS_TK_INS_Bag_EP1","AGS_UN_Bag_EP1","M252_US_Bag_EP1","2b14_82mm_TK_Bag_EP1","2b14_82mm_TK_GUE_Bag_EP1",
				 "2b14_82mm_TK_INS_Bag_EP1","Metis_TK_Bag_EP1","TOW_TriPod_US_Bag_EP1","SPG9_TK_GUE_Bag_EP1","SPG9_TK_INS_Bag_EP1","US_UAV_Pack_EP1","US_Assault_Pack_EP1",
				 "US_Patrol_Pack_EP1","US_Backpack_EP1","CZ_Backpack_EP1","CZ_VestPouch_EP1","TK_RPG_Backpack_EP1","TK_ALICE_Pack_EP1","TK_Assault_Pack_EP1","DZ_Patrol_Pack_EP1",
				 "DZ_Assault_Pack_EP1","DZ_Czech_Vest_Puch","DZ_ALICE_Pack_EP1","DZ_TK_Assault_Pack_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1",
				 "DZ_LargeGunBag_EP1","DZ_GunBag_EP1","DZ_CompactPack_EP1","DZ_TerminalPack_EP1","BAF_L2A1_ACOG_tripod_bag","BAF_L2A1_ACOG_minitripod_bag",
				 "BAF_GPMG_Minitripod_D_bag","BAF_GMG_ACOG_minitripod_bag"];
	
	if (!isNil "TFV_ATIS") then {
		if (!TFV_ATIS) then {
			_badItems = (_badItems + ["ItemToolbox","ItemEtool","ItemMatchbox","ItemHatchet","ItemKnife","ItemFlashlight","ItemFlashlightRed","Binocular","NVGoggles","Laserdesignator","Kostey_photos","Kostey_map_case","Kostey_notebook","CDF_dogtags","Moscow_Bombing_File","Cobalt_File","ItemWatch","ItemCompass","ItemGPS","ItemRadio","ItemMap","EvPhoto","EvMap","EvMoscow","EvKobalt","EvMoney","EvDogTags","ItemMatchbox_DZE","ItemMachete","ItemHatchet_DZE","ItemCrowbar","ItemMap_Debug","ItemShovel","ItemFishingPole","ItemSledge","ItemKeyKit","Binocular_Vector"]);
		};
	};
	
	{
	    if ((_x select 0) == _trader) exitWith {
		    _tids = _x select 1;
			_typeOfTrader = _x select 0;
			_humanityNeed = _x select 2;
		};
	} forEach _traderData;
	
	_typeOfHumanityWeaponsMagazinesPrices = [_typeOfTrader,_humanityNeed,[]];
	
	{
		if(DZE_ConfigTrader) then {
		// Conf Traders
			_configtrader = [];		
			_cfgTraderCategory = missionConfigFile >> "CfgTraderCategory" >> (format["Category_%1",_x]);	
			for "_i" from 0 to ((count _cfgTraderCategory) - 1) do {
				_data = [];
				_class = configName (_cfgTraderCategory select _i);
				_type  = getText ((_cfgTraderCategory select _i) >> "type");	
				_buy  = getArray ((_cfgTraderCategory select _i) >> "buy");	
				_sell = getArray ((_cfgTraderCategory select _i) >> "sell");
				_buy set [2,1];
				_sell set [2,1];
				_typeNum = 1;
				if (_type == "trade_weapons") then {
					_typeNum = 3;
				} else { 
					if (_type in ["trade_backpacks", "trade_any_vehicle", "trade_any_vehicle_free", "trade_any_boat", "trade_any_bicycle"]) then {
						_typeNum = 2;
					};
				};
				_data = [[9999,[_class,_typeNum],50,_buy,_sell,0,_x,_type]];
				_configtrader = _configtrader + _data;
			};	
		
			if ((count(_configtrader)) > 0) then {
				_typeOfHumanityWeaponsMagazinesPricesRAW = _configtrader;
			};		
		}else{
			// Hive Traders
			PVDZE_plr_TradeMenuResult = nil;
			PVDZE_plr_TradeMenu = [player,_x];
			publicVariableServer "PVDZE_plr_TradeMenu";
			waitUntil {!isNil "PVDZE_plr_TradeMenuResult"};
			
			if ((count(PVDZE_plr_TradeMenuResult)) > 0) then {
				_typeOfHumanityWeaponsMagazinesPricesRAW = PVDZE_plr_TradeMenuResult;
			};		
		};

		if(TFV_DEBUG) then { diag_log format["[TFV] _typeOfHumanityWeaponsMagazinesPricesRAW %1",_typeOfHumanityWeaponsMagazinesPricesRAW]; };
		
		{
			if(TFV_COINS) then {
			// Conf Traders Price Coins
				if (!(((_x select 1) select 0) isKindOf 'AllVehicles') && !(((_x select 1) select 0) in _badItems)) then {
					_physicalPrice = [];
					_intPrice = 0;
					_intPrice = (_x select 4) select 0;
					(_typeOfHumanityWeaponsMagazinesPrices select 2) set [(count (_typeOfHumanityWeaponsMagazinesPrices select 2)),[((_x select 1) select 0),((_x select 1) select 1),_intPrice]];
				};
				// Conf Traders Price Bars
			}else{
			// Hive Traders Price Loop
				if (!(((_x select 1) select 0) isKindOf 'AllVehicles') && !(((_x select 1) select 0) in _badItems)) then {
					_physicalPrice = [];
					_intPrice = 0;
					for "_i" from 0 to (((_x select 4) select 0) - 1) do {
						_physicalPrice set [(count _physicalPrice),((_x select 4) select 1)];
					};			

					{
						_currencyItem = (configFile >> "CfgMagazines" >> _x);
						_currencyItemWorth = (_currencyItem >> "worth");
						if (isNumber _currencyItemWorth) then {
							_intPrice = (_intPrice + getNumber(_currencyItemWorth));
						};
					} forEach _physicalPrice;
					(_typeOfHumanityWeaponsMagazinesPrices select 2) set [(count (_typeOfHumanityWeaponsMagazinesPrices select 2)),[((_x select 1) select 0),((_x select 1) select 1),_intPrice]];
				};			
			};
		} forEach _typeOfHumanityWeaponsMagazinesPricesRaw;
	} forEach _tids;

	if(TFV_DEBUG) then { diag_log format["[TFV] _typeOfHumanityWeaponsMagazinesPrices %1",_typeOfHumanityWeaponsMagazinesPrices]; };
	_typeOfHumanityWeaponsMagazinesPrices
};

TFV_compileTraderData =
{
    private ["_traderData","_traderDataFirstClean","_traderDataFinal"];
	_traderDataFirstClean = [];
	_traderDataFinal = [];
	{
	    _traderData = [_x] call TFV_traderGetWeaponsMagazinesPrices;
		_traderDataFirstClean set [(count _traderDataFirstClean),_traderData];
	} forEach serverTraders;
	
	{
	    if ((count _x) > 2) then {
		    _traderDataFinal set [(count _traderDataFinal),_x];
		};
	} forEach _traderDataFirstClean;
	_traderDataFinal
};

TFV_inString = fnc_inString;

TFV_removeAllCurrency =
{
    private ["_item","_worth"];
	
	{
	    _item = (configFile >> 'cfgMagazines' >> _x);
		_worth = (_item >> 'worth');
		if (isNumber _worth) then { player removeMagazine _x; };
	} forEach (magazines player);
};

TFV_getTotalCurrency =
{
	private ["_total_currency","_worth"];
	_total_currency = 0;
	{
		_part =  (configFile >> "CfgMagazines" >> _x);
		_worth =  (_part >> "worth");
		if isNumber (_worth) then {
			_total_currency = _total_currency + getNumber(_worth);
		};
	} count (magazines player);
	_total_currency	
};

TFV_countCurrencyItems =
{
    private ["_return","_magazine","_worth"];
	_return = 0;
	{
	    _magazine = (configFile >> "CfgMagazines" >> _x);
		_worth = (_magazine >> "worth");
		if (isNumber _worth) then {
		    _return = _return + 1;
		};
	} count (magazines player);
	_return
};

SC_fnc_addCoinsT = 
{
	private ["_player","_amount","_wealth","_newwealth", "_result"];			
			_player =  _this select  0;
			_amount =  _this select  1;
			_result = false;	
			_wealth = _player getVariable["cashMoney",0];
			_player setVariable["cashMoney",_wealth + _amount, true];
			PVDZE_plr_Save = [_player,(magazines _player),true,true] ;
			publicVariableServer "PVDZE_plr_Save";
			_player setVariable ["moneychanged",1,true];					
			_newwealth = _player getVariable["cashMoney",0];		
			if (_newwealth >= _wealth) then { _result = true; };			
			_result
};

TFV_returnChangeCoins =
{
    private ["_amount","_return","_complete","_added","_object"];
	_amount = _this select 0;
	_object = _this select 1;
	if(TFV_TAX) then {
		if (_object == "vehicle") then {
			_amount = _amount * TFV_TAXFV;
		}else{
			_amount = _amount * TFV_TAXFB;
		};
	};
	_return = [];
	_complete = false;
	_added = [player, _amount] call SC_fnc_addCoinsT;
	_added
};

TFV_returnChange =
{
    private ["_amount","_return","_complete","_object"];
	_amount = _this select 0;
	_object = _this select 1;
	if(TFV_TAX) then {
		if (_object == "vehicle") then {
			if(TFV_TAXFV) then { _amount = _amount * TFV_TAXFV; };
		}else{
			if(TFV_TAXFB) then { _amount = _amount * TFV_TAXFB; };
		};
	};	
	_return = [];
	_complete = false;
	
	while {!_complete} do {
        {
			for "_i" from 1 to (floor(_amount / _x)) do {
				if (_x <= 9) then {
					if ((_amount - _x) >= 0) then {
						_amount = (_amount - _x);
						if (_x == 1) then { // ItemSilverBar
							_return set [(count _return),"ItemSilverBar"];
						} else {
							_return set [(count _return),(format ["ItemSilverBar%1oz",_x])];
						};
					};
				} else {
					if (_x <= 90) then {
						if ((_amount - _x) >= 0) then {
							_amount = (_amount - _x);
							_return set [(count _return),(format ["ItemBriefcaseS%1oz",_x])];
						};
					} else {
						if (_x <= 900) then {
							if ((_amount - _x) >= 0) then {
								_amount = (_amount - _x);
								if (_x == 100) then {
									_return set [(count _return),"ItemGoldBar"];
								} else { // ItemGoldBar2oz -> ItemGoldBar9oz
									_return set [(count _return),(format ["ItemGoldBar%1oz",(_x * 0.01)])];
								};
							};
						} else {
							if (_x <= 10000) then {
								if ((_amount - _x) >= 0) then {
									_amount = (_amount - _x);
									_return set [(count _return),(format ["ItemBriefcase%1oz",(_x * 0.01)])];
								};
							};
						};
					};
				};
			};
		} forEach [10000,9000,8000,7000,6000,5000,4000,3000,2000,1000,900,800,700,600,500,400,300,200,100,90,80,70,60,50,40,30,20,10,9,8,7,6,5,4,3,2,1];
		if (_amount <= 0) then {_complete = true;};
	};
	{player addMagazine _x;} forEach _return;
};

TFV_vehicleGetDisplayName =
{
    private ["_veh","_config","_return"];
	_veh = typeOf (_this select 0);
	_config = (configFile >> 'cfgVehicles' >> _veh);
	_return = if (isText(_config >> 'displayName')) then { getText(_config >> 'displayName');} else {"vehicle";};
	_return
};

TFV_vehicleGetWeaponCargo =
{
    private ["_veh","_return","_cargoTypes","_cargoCounts"];
	_veh = _this select 0;
	_return = [];
	_cargoTypes = (getWeaponCargo _veh) select 0;
	_cargoCounts = (getWeaponCargo _veh) select 1;
	for "_i" from 0 to (count(_cargoTypes) - 1) do {
	    for "_j" from 1 to (_cargoCounts select _i) do {
		    _return set [(count _return),(_cargoTypes select _i)];
		};
	};
	_return
};

TFV_vehicleGetMagazineCargo =
{
	private ["_veh","_return","_cargoTypes","_cargoCounts"];
	_veh = _this select 0;
	_return = [];
	_cargoTypes = (getMagazineCargo _veh) select 0;
	_cargoCounts = (getMagazineCargo _veh) select 1;
	for "_i" from 0 to (count(_cargoTypes) - 1) do {
	    for "_j" from 1 to (_cargoCounts select _i) do {
		    _return set [(count _return),(_cargoTypes select _i)];
		};
	};
	_return
};

TFV_humanityGetCanTrade =
{
    private ["_playerHumanity","_trader","_list","_return"];
	_playerHumanity = player getVariable ['humanity',0];
	_list = _this select 0;
	_trader = typeOf (_this select 1);
	_return = false;
	
	{
	    if ((_x select 0) == _trader) exitWith {
		    switch (_x select 1) do {
			    case "friendly": {
					if (_playerHumanity > -5000) then { _return = true; };
				};
				case "hostile": {
					if (_playerHumanity <= -5000) then { _return = true; };
				};
				case "neutral": {
					_return = true;
				};
				case "hero": {
					if (_playerHumanity >= 5000) then { _return = true; };
				};
			};
		};
	} forEach _list;
	
	_return
};

TFV_weaponMagazineGetPrice =
{
    private ["_search","_list","_trader","_return"];

	_list = _this select 0;
	_trader = typeOf (_this select 1);
	_search = _this select 2;
	_return = -1;
	
	{
	    if ((_x select 0) == _trader) exitWith {
		    {
			    if ((_x select 0) == _search) exitWith {
				    _return = (_x select 2);
				};
			} forEach (_x select 2);
		};
	} forEach _list;
	
	_return
};

TFV_findKeys =
{
    private ["_veh","_return","_cargo"];
	_veh = _this select 0;
	_return = [];
	_cargo = getWeaponCargo _veh;
	for "_i" from 0 to (count(_cargo select 0) - 1) do {
	    if (["ItemKey",((_cargo select 0) select _i)] call TFV_inString) then {
		    for "_j" from 1 to ((_cargo select 1) select _i) do {
			    _return set [(count _return),((_cargo select 0) select _i)];
			};
		};
	};
	_return
};

TFV_currencyCompact =
{
    private ["_currencyInt"];
	_currencyInt = call TFV_getTotalCurrency;
	call TFV_removeAllCurrency;
	[_currencyInt] call TFV_returnChange;
};

TFV_unitHasBackpack =
{
    private ["_return"];
	_return = false;
	if (!isNull(unitBackpack player)) then {
	    _return = true;
	};	
	_return
};

TFV_tradingGetStages =
{
    private ["_weaponsMagazines","_itemsPerStage","_return","_count"];
	_weaponsMagazines = _this select 0;
	_itemsPerStage = _this select 1;
	_return = -1;
	
	_count = (count _weaponsMagazines);
	_return = ceil(_count / _itemsPerStage);
	_return
};

TFV_cursorTargetIsTrader =
{
    private ["_cursorTarget","_list","_return"];
	_cursorTarget = typeOf (_this select 0);
	_list = _this select 1;
	_return = false;
	{
	    if (((_x select 0) == _cursorTarget) && ((count (_x select 2)) > 0)) exitWith {_return = true; _return};
	} forEach _list;
	_return
};

TFV_addActionReset =
{
	private ["_indices"];
	_indices = _this;
	if (1 in _indices) then {if (TFV_ADDACTION_1 != -1) then { player removeAction TFV_ADDACTION_1; TFV_ADDACTION_1 = -1;};};
	if (2 in _indices) then {if (TFV_ADDACTION_2 != -1) then { player removeAction TFV_ADDACTION_2; TFV_ADDACTION_2 = -1;};};
	if (3 in _indices) then {if (TFV_ADDACTION_3 != -1) then { player removeAction TFV_ADDACTION_3; TFV_ADDACTION_3 = -1;};};
	if (4 in _indices) then {if (TFV_ADDACTION_4 != -1) then { player removeAction TFV_ADDACTION_4; TFV_ADDACTION_4 = -1;};};
	if ("T" in _indices) then {if (TFV_TRADER != objNull) then { TFV_TRADER = objNull;};};
};