/*
	Spawn friendly
*/

if (!(isServer)) exitWith {};

diag_log "** scp_spwn_fr initializing";

private ["_i","_marker","_markerPos","_p","_pos","_westGrp","_SideHQ","_types","_type","_unit","_unitc","_nunit","_selections","_gethit","_olddamage","_damage","_dunitn","_unitdied","_dunit"];

_unitdied = _this select 0;
_dunitn = -1;

if (_unitdied) then {		// find dead unit to replace
	_dunit = nil;
	{
		if(!(alive _x)) then {_dunit = _x;};
	} forEach DBPV_SrvrUnits;
	if(!(isNil "_dunit")) then {
		_dunitn = DBPV_SrvrUnits find _dunit;
	};
};

if ((DBCurSurvivors >= DBMaxSurvivors) and (_dunitn < 0)) exitWith {};		// reached the limit

_marker = [getMarkerPos "S1", getMarkerPos "S2", getMarkerPos "S3", getMarkerPos "S4", getMarkerPos "S5", getMarkerPos "S6", getMarkerPos "S7", getMarkerPos "S8", getMarkerPos "S9", getMarkerPos "S10", getMarkerPos "S11", getMarkerPos "S12"];
_markerPos = _marker call BIS_fnc_selectRandom;
_p = [_markerPos, random 180, random 200] call scp_rndpos;

_pos = _p;
_westGrp = createGroup west;
_SideHQ = createCenter west;

_types = ["SurvivorW2_DZ", "SurvivorW3_DZ", "SurvivorWpink_DZ", "SurvivorWcombat_DZ", "SurvivorWdesert_DZ", "SurvivorWurban_DZ","Pilot_EP1_DZ","Soldier_Bodyguard_AA12_PMC_DZ","Soldier1_DZ","USMC_Soldier_Medic"];
_type = _types call BIS_fnc_selectRandom;

_unitc = _westGrp createUnit [_type, _pos, [], 1.0, "PRIVATE"];

{_unitc removeMagazine _x;} forEach (magazines _unitc);
{_unitc removeWeapon _x;} forEach (weapons _unitc);

if (_dunitn < 0) then {		// add it to the array
	DBPV_SrvrUnits = DBPV_SrvrUnits + [_unitc];
	_nunit = DBPV_SrvrUnits find _unitc;
	_unit = DBPV_SrvrUnits select _nunit;
	DBCurSurvivors = DBCurSurvivors + 1;
	publicVariable "DBCurSurvivors";
} else {					// replacing a dead unit
	diag_log format ["<*> Replacing dead survivor #%1 with %2",_dunitn,_unitc];
	DBPV_SrvrUnits set [_dunitn,_unitc];
	_unit = _unitc;
	_nunit = _dunitn;
};

_unit addRating 10000000;				// make them not shoot each other for killing zeds

WEST setFriend [RESISTANCE, 0];
WEST setFriend [EAST, 0];
//	WEST setFriend [CIVILIAN, 0];
EAST setFriend [WEST, 0];

_unit addEventHandler ["HandleDamage",{_this call local_zombieDamage;}];
_unit addMPEventHandler ["MPKilled",{[_this,"humanKills"] call local_eventKill;}];
//_unit addMPEventHandler ["MPKilled",{["survivorKilled"] call fnc_humanity;}];
_unit addMPEventHandler ["MPKilled",{[_this select 0,_this select 1] spawn scp_killed;}];

_unit setVariable ["selections", []];
_unit setVariable ["gethit", []];
_unit setVariable ["DBSurvivor", true];
_unit setVariable ["DBRecruited", false];
_unit setVariable ["DBRecruiter", 0];
_unit setVariable ["DBRecruit", false];
_unit setVariable ["DBDismiss", false];

_unit addEventHandler
[
	"HandleDamage",
	{
		_unit = _this select 0;
		_selections = _unit getVariable ["selections", []];
		_gethit = _unit getVariable ["gethit", []];
		_selection = _this select 1;
		if !(_selection in _selections) then
		{
			_selections set [count _selections, _selection];
			_gethit set [count _gethit, 0];
		};
		_i = _selections find _selection;
		_olddamage = _gethit select _i;
		_damage = _olddamage + ((_this select 2) - _olddamage) * 0.5;
		_gethit set [_i, _damage];
		_damage;
	}
];

[_unit] call scp_behavoir;
[_westGrp, _pos, 250] call scp_task_patrol;

//_unit addBackpack "DBBackpack128";
_unit addWeapon "M4A1_AIM_SD_camo";
_unit addWeapon "NVGoggles";
_unit addMagazine "30Rnd_556x45_StanagSD";
_unit addMagazine "30Rnd_556x45_StanagSD";

DBPV_SrvrUnits set [_nunit,_unit];
publicVariable "DBPV_SrvrUnits";

[_unit] call scp_publishunit;

diag_log format ["** scp_spwn_fr Unit created : %1,%2,%3",_type,(_pos select 0),(_pos select 1)];

//};
sleep .2;

diag_log "** scp_spwn_fr initialized";
