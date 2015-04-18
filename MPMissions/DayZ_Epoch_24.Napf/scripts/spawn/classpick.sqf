private ["_classHover","_vipUID","_go","_hlevel","_humanity","_itemText","_level","_selectedItem"];

disableSerialization;
_go = true;
_selectedItem = lbCurSel 8888;
_itemText = lbText [8888,_selectedItem];
{if (_itemText == (_x select 0)) then {_classHover = _x;};} forEach presetClasses;
{if (_itemText == (_x select 0)) then {_classHover = _x;};} forEach vipListClasses;
if (isNil "_classHover") exitWith {titleText ["\n\nSelect a class!","PLAIN DOWN"];titleFadeOut 4;_go = false;};

_level = _classHover select 7;
if (_level != 0) then {
	_vipUID = (getPlayerUID player);
	if (_level == 1) then {if !(_vipUID in vipClassLvl1) exitWith {titleText ["\n\nThis class is level 1 VIP only.","PLAIN DOWN"];titleFadeOut 4;_go = false;};};
	if (_level == 2) then {if !(_vipUID in vipClassLvl2) exitWith {titleText ["\n\nThis class is level 2 VIP only.","PLAIN DOWN"];titleFadeOut 4;_go = false;};};
	if (_level == 3) then {if !(_vipUID in vipClassLvl3) exitWith {titleText ["\n\nThis class is level 3 VIP only.","PLAIN DOWN"];titleFadeOut 4;_go = false;};};
};

_hlevel = _classHover select 8;
if (_hlevel != 0) then {
	_humanity = player getVariable ["humanity",0];
	if ((_hlevel < 0) && (_humanity >= _hlevel)) exitWith {titleText [format["\n\nYour humanity must be less than %1 for this class.",_hlevel], "PLAIN DOWN"];titleFadeOut 4;_go = false;};
	if ((_hlevel > 0) && (_humanity <= _hlevel)) exitWith {titleText [format["\n\nYour humanity must be greater than %1 for this class.",_hlevel], "PLAIN DOWN"];titleFadeOut 4;_go = false;};
};

if (_go) then {classSelect = _classHover;};
