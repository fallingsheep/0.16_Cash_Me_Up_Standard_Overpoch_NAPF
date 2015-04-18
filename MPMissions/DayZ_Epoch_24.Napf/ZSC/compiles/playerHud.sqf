disableSerialization;
while {true} do
{
	1000 cutRsc ["ZSC_Money_Display","PLAIN"];
	_wpui = uiNameSpace getVariable "ZSC_Money_Display"; // Thx to ASREMIX
    _vitals = _wpui displayCtrl 4900;
	Money = player getVariable["cashMoney",0];
	_vitals ctrlSetStructuredText parseText format ["	<t size='0.9'> %1 </t><img size='0.9' align='right' image='ZSC\gui\Money.paa'/>",	[Money] call BIS_fnc_numberText];
	_vitals ctrlCommit 0;
    sleep 1.5;
};