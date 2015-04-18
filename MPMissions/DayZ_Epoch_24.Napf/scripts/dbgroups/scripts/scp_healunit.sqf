/*
	Heal
*/

diag_log "** scp_heal initializing";

private ["_unit","_caller","_id","_mags"];

_unit = _this select 0;
_caller = _this select 1;
_id = _this select 2;

_mags = magazines player;

if ("ItemBloodbag" in _mags) then {
	player playActionNow "Medic";
	player removeMagazine "ItemBloodbag"; //remove the used bloodbag from inventory
	sleep 10;
	_unit removeAction _id;
	titleText ["You healed this survivor","PLAIN"];
	_unit setdamage 0;
	DBHealUnit = _unit;
	publicVariable "DBHealUnit";
} else {
	titleText ["You need a bloodbag to do this!","PLAIN"];
};

diag_log "** scp_heal initialized";
