/********************
	BaseJump 0.3
	Author: Nightmare @ http://n8m4re.de
********************/
private["_vehicle","_jump"];
_vehicle = _this select 3 select 0;
_jump = _this select 3 select 1;
if ( !isNil "BJ_ACTION_PREPARE" && !isNil "BJ_ACTION_JUMP" && !isNil "BJ_ACTION_NOJUMP" ) then {
	_vehicle setVariable ["BJ_READY_TO_JUMP",nil];
	_vehicle removeAction BJ_ACTION_PREPARE;
	_vehicle removeAction BJ_ACTION_JUMP;
	_vehicle removeAction BJ_ACTION_NOJUMP;
	BJ_ACTION_PREPARE = nil;	
	BJ_ACTION_JUMP = nil;
	BJ_ACTION_NOJUMP = nil;
	if ( _jump == 1 ) then {	
			_vehicle setvelocity [0,0.1,6];
			[_vehicle] spawn BIS_fnc_halo2;		
		} else {
				if (!isNil "dayz_zombieSpeak" && !isNil "player_alertZombies" ) then {	
					_vehicle playActionNow "Medic";
					[_vehicle,"open_backpack",0,false,20] call dayz_zombieSpeak;
					[_vehicle,99,true,(getPosATL _vehicle)] spawn player_alertZombies;			
				} else {
					_vehicle playActionNow "Medic";
				};		
		sleep 6;
		playSound "chicken01";
		[BJ_STR_PUSSY,BJ_STR_COLOR_DEFAULT] call BJ_SAM_SAYS;
	};
};
