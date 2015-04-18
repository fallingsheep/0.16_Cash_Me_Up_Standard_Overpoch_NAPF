/*																		//
	DZMSHotSpotsAISpawn.sqf by Vampire
	Usage: [position,unitcount,skillLevel] execVM "dir\DZMSHotSpotsAISpawn.sqf";
		Position is the coordinates to spawn at [X,Y,Z]
		UnitCount is the number of units to spawn
		SkillLevel is the skill number defined in DZMSHotSpotsAIConfig.sqf
*/																		//
private ["_position","_unitcount","_skill","_wpRadius","_xpos","_ypos","_unitGroup","_aiskin","_unit","_weapon","_magazine","_wppos1","_wppos2","_wppos3","_wppos4","_wp1","_wp2","_wp3","_wp4","_wpfin","_unitArrayName","_unitMissionCount","_useDZAI"];
_position = _this select 0;
_unitcount = _this select 1;
_skill = _this select 2;
_unitArrayName = _this select 3;

//diag_log text format ["[DZMSHotSpots]: AI Pos:%1 / AI UnitNum: %2 / AI SkillLev:%3",_position,_unitcount,_skill];

_wpRadius = 20;

_xpos = _position select 0;
_ypos = _position select 1;

//Create the unit group. We use east by default.
_unitGroup = createGroup east;

//Probably unnecessary, but prevents client AI stacking
if (!isServer) exitWith {};

for "_x" from 1 to _unitcount do {

	//Lets pick a skin from the array
	_aiskin = DZMSHotSpotsBanditSkins call BIS_fnc_selectRandom;
	
	//Lets spawn the unit
	_unit = _unitGroup createUnit [_aiskin, [(_position select 0),(_position select 1),(_position select 2)], [], 10, "PRIVATE"];
	
	//Make him join the correct team
	[_unit] joinSilent _unitGroup;
	
	//Add the behaviour
	_unit enableAI "TARGET";
	_unit enableAI "AUTOTARGET";
	_unit enableAI "MOVE";
	_unit enableAI "ANIM";
	_unit enableAI "FSM";
	//_unit setCombatMode "YELLOW";
	//_unit setBehaviour "COMBAT";
	_unit setCombatMode "RED";
	_unit setBehaviour "STEALTH";
	_cash = round(random 20) * 1000; // number between 0 and 20 000
// Soul Hive
_unit setVariable["CashMoney",_cash ,true];
	
	//Remove the items he spawns with by default
	removeAllWeapons _unit;
	removeAllItems _unit;
	
	//Now we need to figure out their loadout, and assign it
	
	//Get the weapon array based on skill
	_weaponArray = [_skill] call DZMSHotSpotsGetWeapon;
	
	_weapon = _weaponArray select 0;
	_magazine = _weaponArray select 1;
	
	//diag_log text format ["[DZMSHotSpots]: AI Weapon:%1 / AI Magazine:%2",_weapon,_magazine];
	
	//Get the gear array (increase gold spawn (13)
	_aigearArray = [DZMSHotSpotsGear00,DZMSHotSpotsGear01,DZMSHotSpotsGear02,DZMSHotSpotsGear03,DZMSHotSpotsGear04,DZMSHotSpotsGear05,DZMSHotSpotsGear06,DZMSHotSpotsGear07,DZMSHotSpotsGear08,DZMSHotSpotsGear09,DZMSHotSpotsGear10,DZMSHotSpotsGear11,DZMSHotSpotsGear12,DZMSHotSpotsGear13,DZMSHotSpotsGear14,DZMSHotSpotsGear15,DZMSHotSpotsGear16,DZMSHotSpotsGear17,DZMSHotSpotsGear18,DZMSHotSpotsGear13,DZMSHotSpotsGear13,DZMSHotSpotsGear13,DZMSHotSpotsGear13,DZMSHotSpotsGear13];
	_aigear = _aigearArray call BIS_fnc_selectRandom;
	_gearmagazines = _aigear select 0;
	_geartools = _aigear select 1;
	
	//Gear the AI backpack
	_aipack = DZMSHotSpotsPacklist call BIS_fnc_selectRandom;

	//Lets add it to the Unit
	for "_i" from 1 to 3 do {
		_unit addMagazine _magazine;
	};
	_unit addWeapon _weapon;
	_unit selectWeapon _weapon;
	
	_unit addBackpack _aipack;
	
	if (DZMSHotSpotsUseNVG) then {
		_unit addWeapon "NVGoggles";
	};
	
	{
		_unit addMagazine _x
	} forEach _gearmagazines;
	
	{
		_unit addWeapon _x
	} forEach _geartools;
	
	_aicskill = DZMSHotSpotsSkills1;
	//Lets set the skills
	switch (_skill) do {
		case 0: {_aicskill = DZMSHotSpotsSkills0;};
		case 1: {_aicskill = DZMSHotSpotsSkills1;};
		case 2: {_aicskill = DZMSHotSpotsSkills2;};
		case 3: {_aicskill = DZMSHotSpotsSkills3;};
	};
	
	{
		_unit setSkill [(_x select 0),(_x select 1)]
	} forEach _aicskill;
	
	//Lets prepare the unit for cleanup
	_unit addEventHandler ["Killed",{ [(_this select 0), (_this select 1)] ExecVM DZMSHotSpotsAIKilled; }];
	_unit setVariable ["DZMSHotSpotsAI", true];

	// optionally install another damage handler ------------------------------------------>
	// determine if DZAI can be called, be paranoid about float comparisons
	if ( (DZMSHotSpotsAIBlood < -0.5) and !isnil("DZAI_useHealthSystem") ) then 
	{
		_useDZAI = DZAI_useHealthSystem;
	} else {
		_useDZAI = false;
	};
	// we either use DZAI...
	if ( _useDZAI ) then
	{
		_unit setVariable ["unithealth",[abs(DZMSHotSpotsAIBlood), 0, false]];		
		_unit setVariable ["unconscious",false];					
		_unit setVariable ["loadout",[[(_weaponArray select 0)],[(_weaponArray select 1)]]];
		_unit addEventHandler [DZAI_healthType, DZAI_healthStatements];
	};
	// ...or the simple scaler...
	if ( DZMSHotSpotsAIBlood > 0.5 ) then
	{
		_unit setVariable ["selections", []];
		_unit setVariable ["gethit", []];
		_unit setVariable ["unithealthscale", 8000/DZMSHotSpotsAIBlood];		
		_unit addEventHandler ["HandleDamage",
				{
					_unit = _this select 0;
					_selections = _unit getVariable ["selections", []];
					_gethit = _unit getVariable ["gethit", []];
					_scale = _unit getVariable ["unithealthscale", []];
					_selection = _this select 1;
					if !(_selection in _selections) then
					{
						_selections set [count _selections, _selection];
						_gethit set [count _gethit, 0];
					};
					_i = _selections find _selection;
					_olddamage = _gethit select _i;
					_damage = _olddamage + ((_this select 2) - _olddamage) * _scale;
					_gethit set [_i, _damage];
					_damage;
				}];
	};
	// ...or do nothing, which is Arma default
	// optionally install another damage handler ------------------------------------------<
};

//Lets give a launcher if enabled
//The last _unit should still be defined from the FOR above
if (DZMSHotSpotsUseRPG) then {
	_unit addWeapon "RPG7V";
	_unit addMagazine "PG7V";
	_unit addMagazine "PG7V";
};

// These are 4 waypoints in a NorthSEW around the center
_wppos1 = [_xpos, _ypos+20, 0];
_wppos2 = [_xpos+20, _ypos, 0];
_wppos3 = [_xpos, _ypos-20, 0];
_wppos4 = [_xpos-20, _ypos, 0];

// We add the 4 waypoints
_wp1 = _unitGroup addWaypoint [_wppos1, _wpRadius];
_wp1 setWaypointType "MOVE";
_wp2 = _unitGroup addWaypoint [_wppos2, _wpRadius];
_wp2 setWaypointType "MOVE";
_wp3 = _unitGroup addWaypoint [_wppos3, _wpRadius];
_wp3 setWaypointType "MOVE";
_wp4 = _unitGroup addWaypoint [_wppos4, _wpRadius];
_wp4 setWaypointType "MOVE";

// Then we add a center waypoint that tells them to visit the rest
_wpfin = _unitGroup addWaypoint [[_xpos,_ypos, 0], _wpRadius];
_wpfin setWaypointType "CYCLE";

//diag_log text format ["[DZMSHotSpots]: Spawned %1 AI at %2",_unitcount,_position];

// load the unit groups into a passed array name so they can be cleaned up later
call compile format["
%1 = %1 + (units _unitGroup); 
_unitMissionCount = count %1;
",_unitArrayName];

diag_log text format["[DZMSHotSpots]: (%3) %1 AI Spawned, %2 units in mission.",count (units _unitGroup),_unitMissionCount,_unitArrayName];
