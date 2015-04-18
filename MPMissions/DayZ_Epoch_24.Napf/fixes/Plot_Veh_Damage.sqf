/***********************************************************
ASSIGN DAMAGE TO A UNIT
- Function Vehicle_HandleDamage
- [unit, selectionName, damage, source, projectile] call Vehicle_HandleDamage;
************************************************************/
private["_selection","_state","_strH","_total","_unit"];
_unit = _this select 0;
_selection = _this select 1;
_total = _this select 2;
_state = false;
 
 
if ((locked _unit && (count (crew _unit)) == 0) && (count(nearestObjects [_unit, ["Plastic_Pole_EP1_DZ"],50]) > 0)) exitWith {_state = true;};
if (_state) exitWith {};
if (_selection != "") then {_strH = "hit_" + _selection;} else {_strH = "totalDmg";};
if (_total >= 0.98) then {_total = 1.0;};
if (local _unit) then {
    if (_total > 0) then {
        _unit setVariable [_strH, _total, true];
        _unit setHit [_selection, _total];
        if (isServer) then {
            [_unit, "damage"] call server_updateObject;
        } else {
            PVDZE_veh_Update = [_unit,"damage"];
            publicVariableServer "PVDZE_veh_Update";
        };
    };
} else {
    PVDZE_send = [_unit,"VehHandleDam",_this];
    publicVariableServer "PVDZE_send";
};
_total