/*
	Survivor actions
*/
waitUntil {(alive player)};
sleep 10;

private ["_ctrgt","_srvr","_rcrtd","_rcrtr","_puid","_raction","_daction","_palive","_isMan","_survivor","_ractive","_dactive","_unit","_marker","_markerPos","_group","_nunit","_lastunit","_aialive"];

_raction = -1;
_daction = -1;
_palive = alive player;
//_ractive = false;
//_dactive = false;
_puid = getPlayerUID player;
_lastunit = -1;
_nunit = -1;
diag_log "** scp_srvractions initializing";

while {_palive} do {
	_ctrgt = cursorTarget;
	_isMan = _ctrgt isKindOf "Man";
	if(_isMan) then {
		//diag_log "** scp_srvractions is a unit";
		//diag_log format ["** scp_srvractions 1 - %1",_ctrgt];
		_survivor = _ctrgt in DBPV_SrvrUnits;
		
		if(_survivor) then {			// a survivor
			//diag_log "** scp_srvractions 2";
			_lastunit = _nunit;
			_nunit = DBPV_SrvrUnits find _ctrgt;
			_unit = DBPV_SrvrUnits select _nunit;
			_srvr = _unit getVariable ["DBSurvivor",false];
			_rcrtd = _unit getVariable ["DBRecruited",false];
			_rcrtr = _unit getVariable ["DBRecruiter",0];
			_ractive = _unit getVariable ["DBRecruit",false];
			_dactive = _unit getVariable ["DBDismiss",false];
			_aialive = alive _unit;
			
			if((!(_lastunit == _nunit)) and (!(_rcrtd))) then {_ractive = false;};	// different unit so clear recruit active
			
			_unit setVariable ["DBRecruit", _ractive];
			_unit setVariable ["DBDismiss", _dactive];
			DBPV_SrvrUnits set [_nunit,_unit];
			[_unit] call scp_publishunit;

			//diag_log format ["** scp_srvractions - %1,%2,%3,%4,%5,%6,%7",_rcrtd,_rcrtr,_puid,_survivor,_srvr,_ractive,_dactive];
			if(!(_rcrtd) and (_aialive)) then {						// survivor can be recruited
				if(!(_ractive)) then {
					//diag_log "** scp_srvractions 3";
					_raction = _unit addAction ["Recruit Unit", "scripts\dbgroups\scripts\scp_recruitsrvr.sqf",_puid];
					_unit removeAction _daction;
					_ractive = true;
					_dactive = false;
					_unit setVariable ["DBRecruit", _ractive];
					_unit setVariable ["DBDismiss", _dactive];
					DBPV_SrvrUnits set [_nunit,_unit];
					[_unit] call scp_publishunit;
				};
			} else {
				if(_ractive) then {
					_unit removeAction _raction;
					_ractive = false;
				};
				if(_puid == _rcrtr) then {
					if((!(_dactive)) and (_aialive)) then {
						_daction = _unit addAction ["Dismiss Unit", "scripts\dbgroups\scripts\scp_dismisssrvr.sqf"];
						_dactive = true;
						_unit setVariable ["DBRecruit", _ractive];
						_unit setVariable ["DBDismiss", _dactive];
						DBPV_SrvrUnits set [_nunit,_unit];
						[_unit] call scp_publishunit;
					};
				};
				_unit setVariable ["DBRecruit", _ractive];
				_unit setVariable ["DBDismiss", _dactive];
				DBPV_SrvrUnits set [_nunit,_unit];
				[_unit] call scp_publishunit;
			};
		};
	};
	Sleep 2;
	_palive = alive player;
};

// this part doesn't seem to work (it's not logged to the client rpt file), need to find a fix for it
player removeAction _raction;
player removeAction _daction;

diag_log format ["** scp_srvractions : %1 logged out, dismissing survivors",_puid];

// dismiss survivors
if (DBCurSurvivors > 0) then {
	{
		_rcrtr = _x getVariable ["DBRecruiter",0];
		if (_rcrtr == _puid) then {
			_marker = [getMarkerPos "S1", getMarkerPos "S2", getMarkerPos "S3", getMarkerPos "S4", getMarkerPos "S5", getMarkerPos "S6", getMarkerPos "S7", getMarkerPos "S8", getMarkerPos "S9", getMarkerPos "S10", getMarkerPos "S11", getMarkerPos "S12"];
			_markerPos = _marker call BIS_fnc_selectRandom;
			_group = createGroup West;
			[_x] join _group;
			[_group, _markerPos, 250] call scp_task_patrol;
			_x setVariable ["DBRecruited", false];
			_x setVariable ["DBRecruiter", 0];
			_x setVariable ["DBRecruit", false];
			_x setVariable ["DBDismiss", false];
			[_x] call scp_publishunit;
		};
	} forEach DBPV_SrvrUnits;
};
diag_log "** scp_srvractions initialized";
