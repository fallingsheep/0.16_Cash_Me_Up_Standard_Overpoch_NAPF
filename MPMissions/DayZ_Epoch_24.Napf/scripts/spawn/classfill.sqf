private ["_vipClass","_vipUID","_seldClass"];

disableSerialization;
lbClear 8888;
{lbAdd [8888,_x select 0];} forEach presetClasses;

_vipUID = (getPlayerUID player);
if (_vipUID in vipListClass) then {
	{if (_vipUID == _x) then {_vipClass = _forEachIndex;};} forEach vipListClass;
	_seldClass = vipListClasses select _vipClass;
	lbAdd [8888,_seldClass select 0];
};
