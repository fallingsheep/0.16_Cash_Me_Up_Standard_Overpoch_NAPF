/********************
	BaseJump 0.3
	Author: Nightmare @ http://n8m4re.de
********************/
private["_vehicle","_onLadder"];
_vehicle = _this select 3 select 0;
_onLadder = _this select 3 select 1;
if !(_onLadder) then {	
		if (!isNil "dayz_zombieSpeak" && !isNil "player_alertZombies" ) then {	
				_vehicle playActionNow "Medic";
				[_vehicle,"open_backpack",0,false,20] call dayz_zombieSpeak;
				[_vehicle,99,true,(getPosATL _vehicle)] spawn player_alertZombies;			
			} else {
				_vehicle playActionNow "Medic";
			};		
		sleep 6;	
		_vehicle setVariable ["BJ_READY_TO_JUMP",true];	
		[BJ_STR_READY,BJ_STR_COLOR_SUCCESS] call BJ_SAM_SAYS;		
	} else {
		[BJ_STR_NOTGOOD,BJ_STR_COLOR_ERROR] call BJ_SAM_SAYS;	
	};
	