/*
	Heal unit
*/

diag_log "** scp_heal initializing";

private ["_unit","_med","_medaction"];

//var fix
_medaction = 0;

_unit = _this select 0;
_med = false;

while {alive _unit} do {
	sleep 5;
	if ((damage _unit > 0) && ("ItemBloodbag" in magazines player) && alive _unit) then {
		if (_med) then {
			_medaction = _unit addAction [localize "str_actions_medical_08", "scripts\dbgroups\scripts\scp_healunit.sqf"];
			_med = false;
		};
	} else {
		_med = true;
	};

	if ((damage _unit == 0) || (!("ItemBloodbag" in magazines player)) || (!(alive _unit))) then {
		_unit removeAction _medaction;
	};
};

diag_log "** scp_heal initialized";
