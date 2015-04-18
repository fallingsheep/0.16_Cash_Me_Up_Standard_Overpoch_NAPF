/*------------------------------------*/
/* JAEM                               */
/* Just another Chopper-Evac Mod v1.6 */
/* OtterNas3                          */
/* 01/14/2014                         */
/* Last update: 11/03/2014            */
/* Advanced by hellraver              */
/*------------------------------------*/

private ["_cnt","_locationPlayer","_objectID","_objectUID","_dis","_sfx","_animState","_loop","_started","_finished","_isMedic"];

/* Remove the Action Menu entry */
player removeAction s_player_clearEvacChopper;
s_player_clearEvacChopper = 1;

systemChat("WARNING! Evac-Chopper will be cleared!");
sleep 2;
_cnt = 10;
_locationPlayer = (([player] call ON_fnc_GetPos));
for "_p" from 1 to 10 do
{
	systemChat(format ["Clearing of Evac-Chopper starts in %1s - NO REFUND! - Move to cancel!",_cnt]);
	if (player distance _locationPlayer > 0.2) then {
		systemChat("Clearing of Evac-Chopper canceled");
		s_player_clearEvacChopper = -1;
		breakOut "exit";
	};
	sleep 1;
	_cnt = _cnt - 1;
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
	if (_loop) then {
		cutText["~~ Performing Clear Evac-Chopper ~~\n~~ Please wait ~~","PLAIN",0.5];
	};
	if (_started && !_isMedic) then {
		_loop = false;
		_finished = true;
	};
	sleep 1;
};

if (_finished) then {
	//We delete the Sign from the database
	_objectID = playersEvacField getVariable["ObjectID","0"];
	_objectUID = playersEvacField getVariable["ObjectUID","0"];
	PVDZE_obj_Delete = [_objectID,_objectUID,player];
	publicVariableServer "PVDZE_obj_Delete";
	deleteVehicle playersEvacField;
	PVDZE_EvacChopperFieldsUpdate = ["rem",playersEvacField];
	publicVariableServer "PVDZE_EvacChopperFieldsUpdate";
	playerHasEvacField = false;
	playersEvacField = nil;
	cutText["~~ Clear Evac-Chopper - SUCCESS ~~","PLAIN",1];
};

/* Reset the action menu variables for a new run */
s_player_clearEvacChopper = -1;