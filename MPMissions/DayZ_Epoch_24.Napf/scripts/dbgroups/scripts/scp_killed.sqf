/*
	Survivor was killed
*/

private ["_unitc","_killer","_nunit","_unit"];
diag_log "** scp_killed initializing";

_unitc = _this select 0;
_killer = _this select 1;

diag_log format ["<*> Survivor %1 killed by %2",_unitc,_killer];

_nunit = DBPV_SrvrUnits find _unitc;
if(_nunit < 0) then {
	diag_log format ["** scp_killed : Unit %1 not in list",_unitc];
	if (true) exitWith {};
};
_unit = DBPV_SrvrUnits select _nunit;

_unit removeAllEventHandlers "HandleDamage";
_unit removeAllEventHandlers "MPKilled";

if (!(isServer)) exitWith {};

// set back to default variables then respawn new unit
//removeAllActions _unit;	// unfortunately found out it's arma 3 only, bummer
_unit setVariable ["DBSurvivor", true];
_unit setVariable ["DBRecruited", false];
_unit setVariable ["DBRecruiter", 0];
_unit setVariable ["DBRecruit", false];
_unit setVariable ["DBDismiss", false];
[_unit] call scp_publishunit;

sleep 2;
[true] execVM "scripts\dbgroups\scripts\scp_spwn_fr.sqf";
sleep 2;

publicVariable "DBPV_SrvrUnits";

diag_log "** scp_killed initialized";
