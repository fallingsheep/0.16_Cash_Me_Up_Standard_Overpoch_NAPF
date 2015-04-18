[1,2,3] call TFV_addActionReset;

private ["_arg"];
_arg = _this select 3;

switch (_arg) do {
    case "vehicle": {showCommandingMenu "#USER:TFV_VEHICLE_MENU";};
	case "backpack": {showCommandingMenu "#USER:TFV_BACKPACK_MENU";};
};