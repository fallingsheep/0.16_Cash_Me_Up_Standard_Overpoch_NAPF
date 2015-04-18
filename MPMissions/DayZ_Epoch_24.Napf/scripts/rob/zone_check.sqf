private [_bankLoc];

_meters = player distance [6258.8682, 10038.864, 1.6962879];

if(_debugBank == 1) then {
	systemChat "[DEBUG] Bank Zonecheck successfully executed.";
};

waitUntil (_meters >= 50) then {
	if (_robComplete == 1) exitWith {};
	if !(_robComplete == 1) exitWith {
		failRob = 1;
		systemChat "Bank robbery failed.";
	};
};
