/*
	Anti-Teleport - Created By Razor / Refactored By Alby & CopyPasted to Epoch by Skaronator
*/

private ["_log","_playerName","_playerUID","_al1veOnce","_debug","_lastpos","_lastheight","_lasttime","_lastVehicle","_v","_h","_topv","_toph","_curpos","_distance","_acceptableDistance","_curtime","_difftime","_plant","_curheight","_speed","_topSpeed","_terrainHeight","_differenceCheck","_lastPosVar","_safetyVehicle","_curPos"];

waitUntil {vehicle player == player};

[] spawn {
	private ["_playerName","_playerUID"];
	_playerName = name player;
	_playerUID = getPlayerUID player;
	while {1 == 1} do {
		if (typeName player != "OBJECT") then {
			PVDZE_atp = format["WARNING typename error for player UID#%1", _playerUID];
			publicVariableServer "PVDZE_atp";
			//forceEnd;
			endMission "LOSER";
			sleep 10; //Bypass spam
		};
	};
	endMission "LOSER";
};

[] spawn {
	_playerName = name player;
	_playerUID = getPlayerUID player;
	while {true} do {
		sleep 5;
	};
	PVDZE_atp = format["WARNING PLAYER WITH NAME (%1) && UID# (%2) HAS CHANGED THE TRUE VALUE TO FALSE", _playerName, _playerUID];
	publicVariableServer "PVDZE_atp";
	endMission "LOSER";
	sleep 10;
};

[] spawn {
	_al1veOnce = false;
	if (!_al1veOnce) then {
		private [ "_loc", "_plant","_debug"];
		_debug = getMarkerpos "respawn_west";
		// check that plants libs are properly loaded
		// thanks to Tansien the great
		// run only once per character life
		{
			_plant = _x createVehicleLocal _debug;
			sleep 0.1;
			if (sizeOf _x == 0) exitWith { 
				PVDZE_atp = "Plants texture hack for type " + _x;
				publicVariableServer "PVDZE_atp";
				endMission "LOSER";
			};
			deleteVehicle _plant;
		} count ["grass", "prunus", "picea", "fallentree", "phragmites", "acer", "amygdalusn", "Brush", "fiberplant", "amygdalusc", "boulder"];
		diag_log format [ "%1: Plants libs tests done!", __FILE__];
	};
	_al1veOnce = true;
};

