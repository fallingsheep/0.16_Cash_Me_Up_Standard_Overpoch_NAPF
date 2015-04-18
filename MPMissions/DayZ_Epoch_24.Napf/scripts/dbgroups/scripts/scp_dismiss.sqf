/*
	Dismiss
*/

diag_log "** scp_dismiss initializing";

private ["_unit","_dismiss","_action"];

_unit = _this select 0;
_action = true;

while {alive _unit} do {
	sleep 5;

	if (_unit in units group player) then {
		if (alive _unit and (_action)) then {		
			_dismiss = _unit addAction ["Dismiss Unit", "scripts\dbgroups\scripts\scp_dismissunit.sqf",cursorTarget, 10, false, true, "", ""];
			_action = false;
		};
	} else {
		_action = true;
	};

	if ((!(_unit in units group player)) or (!(alive _unit))) then {
		_unit removeAction _dismiss;
	};
};

diag_log "** scp_dismiss initialized";
