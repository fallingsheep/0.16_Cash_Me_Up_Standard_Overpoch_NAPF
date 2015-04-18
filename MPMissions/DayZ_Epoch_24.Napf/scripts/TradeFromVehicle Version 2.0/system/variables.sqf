
/* TradeFromVehicle System Variables.                                      																		   */
/* DO NOT MODIFY THIS FILE! 																													   */

TFV_TRADERDATA = call TFV_compileTraderData;
TFV_ADDACTION_1 = -1;
TFV_ADDACTION_2 = -1;
TFV_ADDACTION_3 = -1;
TFV_VEHICLE = objNull;
TFV_TRADER = objNull;
TFV_ISOWNER = false;
TFV_INWORK = false;

if (TFV_MIPS < 1) then {TFV_MIPS == 1;};
if (TFV_WIPS < 1) then {TFV_WIPS == 1;};

TFV_MWIPS = if (TFV_MIPS == TFV_WIPS) then {TFV_MIPS} else {((round(((TFV_MIPS max TFV_WIPS) - (TFV_MIPS min TFV_WIPS)) * 0.5)) + (TFV_MIPS min TFV_WIPS))};

if(TFV_TAX) then {
	TFV_STR_TRADEFROMVEHICLE =  "<t color='#7CFC00'>Trade From %1 " + TFV_TAXFVT + "% Tax</t>";
	TFV_STR_TRADEFROMBACKPACK = "<t color='#7CFC00'>Trade From Backpack " + TFV_TAXFBT + "% Tax</t>";
}else{
	TFV_STR_TRADEFROMVEHICLE =  "<t color='#7CFC00'>Trade From %1</t>";
	TFV_STR_TRADEFROMBACKPACK = "<t color='#7CFC00'>Trade From Backpack</t>";
};

TFV_STR_COMPACTCURRENCY =   "<t color='#7CFC00'>Combine Money</t>";

TFV_STR_TRADING =           "Trading from your %3, stage %1 of %2.\nMove to cancel.";
TFV_STR_TRADECANCELLED =    "Trading cancelled.";
TFV_STR_TRADECOMPLETE =     "Trading complete.\nTraded %1 %2 from your %3.";
TFV_STR_TRADINGFROM =       "Trading from %1.";

TFV_VEHICLE_MENU =
[
    ["",false],
	["Trading From Vehicle",[0],"",-5,[["expression",""]],"1","0"],
	["Trade Weapons",[0],"",-5,[["expression","['vehicle','weapons'] ExecVM 'scripts\TradeFromVehicle Version 2.0\system\trade.sqf'"]],"1","1"],
	["Trade Magazines",[0],"",-5,[["expression","['vehicle','magazines'] ExecVM 'scripts\TradeFromVehicle Version 2.0\system\trade.sqf'"]],"1","1"],
	["Trade All Items",[0],"",-5,[["expression","['vehicle','all'] ExecVM 'scripts\TradeFromVehicle Version 2.0\system\trade.sqf'"]],"1","1"],
	["",[0],"",-5,[["expression",""]],"1","0"],
	["Exit",[0],"",-5,[["expression",""]],"1","1"]
];

TFV_BACKPACK_MENU =
[
    ["",false],
	["Trading From Backpack",[0],"",-5,[["expression",""]],"1","0"],
	["Trade Weapons",[0],"",-5,[["expression","['backpack','weapons'] ExecVM 'scripts\TradeFromVehicle Version 2.0\system\trade.sqf'"]],"1","1"],
	["Trade Magazines",[0],"",-5,[["expression","['backpack','magazines'] ExecVM 'scripts\TradeFromVehicle Version 2.0\system\trade.sqf'"]],"1","1"],
	["Trade All Items",[0],"",-5,[["expression","['backpack','all'] ExecVM 'scripts\TradeFromVehicle Version 2.0\system\trade.sqf'"]],"1","1"],
	["",[0],"",-5,[["expression",""]],"1","0"],
	["Exit",[0],"",-5,[["expression",""]],"1","1"]
];