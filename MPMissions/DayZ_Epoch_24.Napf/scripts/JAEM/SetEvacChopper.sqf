/*------------------------------------*/
/* JAEM                               */
/* Just another Chopper-Evac Mod v1.6 */
/* OtterNas3                          */
/* 01/14/2014                         */
/* Last update: 11/03/2014            */
/* Advanced by hellraver              */
/*------------------------------------*/

private ["_allNearRescueFields","_locationPlayer","_cnt","_objectID","_objectUID","_targetVehicle","_playerUID","_magazinesPlayer","_hasBriefcase","_location","_dir","_object","_dis","_sfx","_animState","_loop","_started","_finished","_isMedic"];

/* Remove the Action Menu entry */
player removeAction s_player_changeEvacChopper;
s_player_changeEvacChopper = 1;
player removeAction s_player_createEvacChopper;
s_player_createEvacChopper = 1;
actionMenu = false;

//This prevents the creating of Evac-Chopper field on trader signs
_allNearRescueFields = (nearestObjects [player,["HeliHRescue","HeliHCivil","HeliHEmpty"],50]);
if (count _allNearRescueFields > 0) then {
	{
		if (((_x getVariable["ObjectID","0"]) == "0") && ((_x getVariable["ObjectUID","0"]) == "0")) then {
			systemChat ("You can not create or change a Evac-Chopper near a Trader or near a Heli sign which is a part of a Map or from a Trader!");
			systemChat ("Please keep a distance of 50m if you want create or change a Evac-Chopper!");
			s_player_changeEvacChopper = -1;
			s_player_createEvacChopper = -1;
			actionMenu = true;
			breakOut "exit";
		};
	} forEach _allNearRescueFields;
};

//Getting the target Vehicle and needed variables
_targetVehicle = _this select 3;
_location = ([_targetVehicle] call ON_fnc_GetPos);
_dir = getDir _targetVehicle;
_playerUID = ([player] call ON_fnc_convertUID);
_magazinesPlayer = magazines player;

//Cause we can only create a sign on flat terrain and not on Buildings or buildable objects
//We check if the Chopper height is below 1m above Terrain
if ((_location) select 2 >= 3) then {
	systemChat("Sorry but Evac-Chopper need a flat Terrain");
	systemChat("Make sure you don't stand on a Buildings or buildable objects!");
	s_player_changeEvacChopper = -1;
	s_player_createEvacChopper = -1;
	actionMenu = true;
	breakOut "exit";
};

//Check if player has the needed amount of Briefcases to pay for the Evac-Chopper
//If not exit script
_hasBriefcase = {_x == "ItemBriefcase100oz"} count _magazinesPlayer;
if (_hasBriefcase < evac_chopperPrice) then {
	if (playerHasEvacField) then {
		systemChat(format["Changing of Evac-Chopper costs %1 Full Briefcases - You dont have it - Sorry!", evac_chopperPrice]);
	} else {
		systemChat(format["Creating of Evac-Chopper costs %1 Full Briefcases - You dont have it - Sorry!", evac_chopperPrice]);
	};
	s_player_changeEvacChopper = -1;
	s_player_createEvacChopper = -1;
	actionMenu = true;
	breakOut "exit";
};

//Before we start the changing process
//If player already has a Evac-Chopper
//We give the player a warning that Evac-Choppers needs free sight around
//Give him 10 seconds until we change the Evac-Chopper to the current target
if (playerHasEvacField) then {
	systemChat("WARNING! Evac-Choppers needs free sight to all sides");
	sleep 2;
	systemChat("WARNING! Make sure you got no objects like Buildings or Trees around!");
	sleep 2;
	_cnt = 10;
	_locationPlayer = (([player] call ON_fnc_GetPos));
	for "_p" from 1 to 10 do
	{
		systemChat(format ["Changing of Evac-Chopper starts in %1s - Move to cancel",_cnt]);
		if (player distance _locationPlayer > 0.2) then {
			systemChat("Changing of Evac-Chopper canceled");
			s_player_changeEvacChopper = -1;
			actionMenu = true;
			breakOut "exit";
		};
		sleep 1;
		_cnt = _cnt - 1;
	};
};

//Before we start the creating process
//We give the player a warning that Evac-Choppers needs free sight around
//Countdown for 10 seconds
if (!playerHasEvacField) then {
	systemChat("WARNING! Evac-Choppers needs free sight to all sides");
	sleep 2;
	systemChat("WARNING! Make sure you got no objects like Buildings or Trees around!");
	sleep 2;
	_cnt = 10;
	_locationPlayer = (([player] call ON_fnc_GetPos));
	for "_i" from 1 to 10 do
	{
		systemChat(format ["Creating of Evac-Chopper starts in %1s - Move to cancel",_cnt]);
		if (player distance _locationPlayer > 0.2) then {
			systemChat("Creating of Evac-Chopper canceled");
			s_player_createEvacChopper = -1;
			actionMenu = true;
			breakOut "exit";
		};
		sleep 1;
		_cnt = _cnt - 1;
	};
};

//Start Creating

//Player did not had a Evac-Chopper yet or decided to replace it with the new target
//So we check again if he STILL has the Briefcase in his inventory
//If yes, we remove it and say thanks ^^
_magazinesPlayer = magazines player;
_hasBriefcase = {_x == "ItemBriefcase100oz"} count _magazinesPlayer;
if (_hasBriefcase < evac_chopperPrice) then {
	if (playerHasEvacField) then {
		systemChat(format["Changing of Evac-Chopper costs %1 Full Briefcases - You dont have it - Sorry!", evac_chopperPrice]);
	} else {
		systemChat(format["Creating of Evac-Chopper costs %1 Full Briefcases - You dont have it - Sorry!", evac_chopperPrice]);
	};
	s_player_changeEvacChopper = -1;
	s_player_createEvacChopper = -1;
	actionMenu = true;
	breakOut "exit";
} else {
	[player, "ItemBriefcase100oz", evac_chopperPrice] call BIS_fnc_invRemove;
	if (playerHasEvacField) then {
		systemChat(format["Changing of Evac-Chopper costs %1 Full Briefcases - Thanks for your payment!", evac_chopperPrice]);
	} else {
		systemChat(format["Creating of Evac-Chopper costs %1 Full Briefcases - Thanks for your payment!", evac_chopperPrice]);
	};
};

/* The super duper OneForAllAnimation... */
[1,1] call dayz_HungerThirst;
player playActionNow "Medic";

_dis = 20;
_sfx = "repair";
[player,_sfx,0,false,_dis] call dayz_zombieSpeak;  
[player,_dis,true,(getPosATL player)] spawn player_alertZombies;

_animState = animationState player;
_loop = true;
_started = false;
_finished = false;

while {_loop} do {
	_animState = animationState player;
	_isMedic = ["medic",_animState] call fnc_inString;
	if (_isMedic) then {
		_started = true;
	};
	/* Inform the player about the performing */
	if (_loop && playerHasEvacField) then {
		cutText["~~ Performing Change Evac-Chopper ~~\n~~ Please wait ~~","PLAIN",0.5];
	};
	if (_loop && !playerHasEvacField) then {
		cutText["~~ Performing Create Evac-Chopper ~~\n~~ Please wait ~~","PLAIN",0.5];
	};
	if (_started && !_isMedic) then {
		_loop = false;
		_finished = true;
	};
	sleep 1;
};

if (_finished) then {
	//The player paid and changes Evac-Chopper so we delete the Sign from the database
	if (playerHasEvacField) then {
		_objectID = playersEvacField getVariable["ObjectID","0"];
		_objectUID = playersEvacField getVariable["ObjectUID","0"];
		PVDZE_obj_Delete = [_objectID,_objectUID,player];
		publicVariableServer "PVDZE_obj_Delete";
		PVDZE_EvacChopperFieldsUpdate = ["rem",playersEvacField];
		publicVariableServer "PVDZE_EvacChopperFieldsUpdate";
		deleteVehicle playersEvacField;
		playerHasEvacField = false;
		playersEvacField = nil;
		cutText["~~ Change Evac-Chopper - SUCCESS ~~","PLAIN",1];
	};
	//The player paid so we create the Sign and write it to the database
	//We use the playerUID so the owner is permanent!
	if (!playerHasEvacField) then {
		_object = createVehicle ["HeliHRescue", _location, [], 0, "CAN_COLLIDE"];
		_object addEventHandler ["HandleDamage", {false}];
		_object enableSimulation false;
		_object setDir _dir;
		_object setPosATL _location;
		player reveal _object;
		_object setVariable ["CharacterID",_playerUID,true];
		_object setVariable ["Classname", "HeliHRescue",true];
		PVDZE_obj_Publish = [_playerUID,_object,[_dir,_location],"HeliHRescue"];
		publicVariableServer "PVDZE_obj_Publish";
		PVDZE_EvacChopperFieldsUpdate = ["add",_object];
		publicVariableServer "PVDZE_EvacChopperFieldsUpdate";
		playerHasEvacField = true;
		playersEvacField = _object;
		cutText["~~ Create Evac-Chopper - SUCCESS ~~","PLAIN",1];
	};
};

/* Reset the action menu variables for a new run */
s_player_changeEvacChopper = -1;
s_player_createEvacChopper = -1;
actionMenu = true;

//Thats it for the creation part of the Evac-Chopper
//Hope you enjoyed it :)
//Moo,
//Otter