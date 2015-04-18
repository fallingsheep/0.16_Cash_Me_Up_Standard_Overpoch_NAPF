/*
	Recruit
*/

diag_log "** scp_recruit initializing";

private ["_unit","_recruit","_recruitaction"];

_unit = _this select 0;
_recruit = true;

// first run, force addAction
_recruitaction = _unit addAction ["Recruit Unit", "scripts\dbgroups\scripts\scp_recruitunit.sqf",cursorTarget, 10, false, true, "", ""];
_recruit = false;

while {alive _unit} do {
	sleep 5;
	if ((!(_unit in units group player)) and alive _unit) then {
		if (_recruit) then {
			_recruitaction = _unit addAction ["Recruit Unit", "scripts\dbgroups\scripts\scp_recruitunit.sqf",cursorTarget, 10, false, true, "", ""];
			_recruit = false;
		};
	} else {
		_recruit = true;
	};

	if ((_unit in units group player) or (!(alive _unit))) then {
		_unit removeAction _recruitaction;
	};
};

diag_log "** scp_recruit initialized";
