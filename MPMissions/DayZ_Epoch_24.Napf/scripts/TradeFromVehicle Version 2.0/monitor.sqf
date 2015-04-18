
while {true} do {

    sleep 0.1;

	if (canBuild) then {
	    [1,2,3,"T"] call TFV_addActionReset;
	} else {
		if (TFV_VEHICLE == objNull) then {[1] call TFV_addActionReset;};
		if ((call TFV_getTotalCurrency) <= 0) then {[3] call TFV_addActionReset;};
		if (TFV_INWORK) then {[1,2,3] call TFV_addActionReset;};
		if (!([cursorTarget,TFV_TRADERDATA] call TFV_cursorTargetIsTrader)) then {[1,2,3] call TFV_addActionReset;};
		if (([cursorTarget,TFV_TRADERDATA] call TFV_cursorTargetIsTrader) && (!((player distance cursorTarget) < 5))) then {
			[1,2,3] call TFV_addActionReset;
		};
		if ((TFV_VEHICLE != objNull) && ((count(crew TFV_VEHICLE)) > 0)) then {[1] call TFV_addActionReset;};
		if (!(call TFV_unitHasBackpack)) then {[2] call TFV_addActionReset;};
		if (([cursorTarget,TFV_TRADERDATA] call TFV_cursorTargetIsTrader) && (!([TFV_TRADERDATA,cursorTarget] call TFV_humanityGetCanTrade))) then {
			[1,2,3] call TFV_addActionReset;
		};
	};
	
	waitUntil {!canBuild};
	
	if (!TFV_INWORK) then {
		if (([cursorTarget,TFV_TRADERDATA] call TFV_cursorTargetIsTrader) && ([TFV_TRADERDATA,cursorTarget] call TFV_humanityGetCanTrade) && ((player distance cursorTarget) < 5) && ((call TFV_getTotalCurrency) > 0) && (TFV_ACC) && ((call TFV_countCurrencyItems) > 1)) then {
			if (TFV_ADDACTION_3 == -1) then {TFV_ADDACTION_3 = player addAction [TFV_STR_COMPACTCURRENCY,"scripts\scripts\TradeFromVehicle Version 2.0\system\cc.sqf","",9997,false,true]; TFV_TRADER = cursorTarget;};
		};
		
		if ((vehicle player) != player) then {
			if ((driver(vehicle player)) == player) then {
				TFV_VEHICLE = (vehicle player);
				TFV_ISOWNER = true;
			} else {
				TFV_VEHICLE = (vehicle player);
				TFV_ISOWNER = false;
			};
		} else {
			if ((TFV_VEHICLE != objNull) && (TFV_ISOWNER)) then {
				if ((count(crew TFV_VEHICLE)) > 0) then {
					if ((driver TFV_VEHICLE) != objNull) then {
						TFV_ISOWNER = false;
					};
					TFV_VEHICLE = objNull;
				} else {
					if (([cursorTarget,TFV_TRADERDATA] call TFV_cursorTargetIsTrader) && ([TFV_TRADERDATA,cursorTarget] call TFV_humanityGetCanTrade) && ((player distance cursorTarget) < 5) && TFV_ATFV) then {
						if (TFV_ADDACTION_1 == -1) then {TFV_ADDACTION_1 = player addAction [(format [TFV_STR_TRADEFROMVEHICLE,[TFV_VEHICLE] call TFV_vehicleGetDisplayName]),"scripts\TradeFromVehicle Version 2.0\system\menu.sqf","vehicle",9999,false,true]; TFV_TRADER = cursorTarget;};
					};
				};
			};
			if ((call TFV_unitHasBackpack) && ([cursorTarget,TFV_TRADERDATA] call TFV_cursorTargetIsTrader) && ((player distance cursorTarget) < 5) && TFV_ATFB) then {
				if (TFV_ADDACTION_2 == -1) then {TFV_ADDACTION_2 = player addAction [TFV_STR_TRADEFROMBACKPACK,"scripts\TradeFromVehicle Version 2.0\system\menu.sqf","backpack",9998,false,true]; TFV_TRADER = cursorTarget;};
			};
		};
    };
	
};