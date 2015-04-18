/********************
	BaseJump 0.3
	Author: Nightmare @ http://n8m4re.de
********************/
if (!isDedicated) then {
	call compile preprocessFileLineNumbers "scripts\baseJump\config.sqf";
	call compile preprocessFileLineNumbers format ["scripts\baseJump\lang\%1.sqf",BJ_CFG_LANG];
	BIS_fnc_halo2 = compile preprocessFileLineNumbers "scripts\baseJump\action\fn_halo.sqf";
	BJ_MONITOR = {
		sleep 0.1;
		private["_vehicle","_pos","_height","_prepare","_readyToJump","_onLadder"];
		_readyToJump = nil;
		while {alive player} do {	
			if !(isNull player) then {
				_vehicle = player;
				_pos = [_vehicle] call BJ_FNC_GetPos;
				_height = (_pos select 2);	
				_readyToJump = _vehicle getVariable "BJ_READY_TO_JUMP";	
				_onLadder =	(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> ( animationState _vehicle ) >> "onLadder")) == 1;
				if ( isNil "BJ_ACTION_PREPARE" && ( _vehicle == player ) && !(_vehicle isKindOf "Air") ) then {
					BJ_ACTION_PREPARE = _vehicle addAction [ ("<t color='#FE9A2E'>" + BJ_STR_PREPARE + "</t>"),"scripts\baseJump\action\prepare.sqf",[_vehicle,_onLadder],999,false,false,"",""];
				};
					
				if ( isNil "BJ_ACTION_JUMP" && !isNil "_readyToJump" ) then {
					_vehicle removeAction BJ_ACTION_PREPARE;
					BJ_ACTION_PREPARE = _vehicle addAction [ ("<t color='#FE9A2E'>" + BJ_STR_READY + "</t>"),"",[],999,false,false,"",""];
					BJ_ACTION_NOJUMP = _vehicle addAction [ ("<t color='#FE9A2E'>" + BJ_STR_NOJUMP + "</t>"),"scripts\baseJump\action\jump.sqf",[_vehicle,0],998,false,false,"",""];
					BJ_ACTION_JUMP = _vehicle addAction [ ("<t color='#FE9A2E'>" + BJ_STR_JUMP + "</t>"),"scripts\baseJump\action\jump.sqf",[_vehicle,1],997,false,false,"",""];
				};
				
				if ( !isNil "BJ_ACTION_PREPARE" && ( _height <= BJ_CFG_AllowToJumpOnMeters || _onLadder) ) then {
					_vehicle removeAction BJ_ACTION_PREPARE;
					BJ_ACTION_PREPARE = nil;
				};
					
				if ( !isNil "BJ_ACTION_JUMP" && !isNil "BJ_ACTION_NOJUMP" && (_height <= BJ_CFG_AllowToJumpOnMeters || _onLadder) ) then {
					_vehicle removeAction BJ_ACTION_JUMP;
					BJ_ACTION_JUMP = nil;
					_vehicle removeAction BJ_ACTION_NOJUMP;
					BJ_ACTION_NOJUMP = nil;
				};			
				//hintSilent parseText format["<t>höhe: %1</t><br /><t>fps: %2</t>",_height,(round diag_fps)];
				sleep 0.01;
			} else {
				sleep 3;
			};
		};
	};
	
	BJ_ACTION_PREPARE = nil;
	BJ_ACTION_JUMP = nil;
	BJ_ACTION_NOJUMP = nil;
	BJ_STR_COLOR_DEFAULT = [(51/255),(181/255),(229/255),1];
	BJ_STR_COLOR_SUCCESS = [(153/255),(204/255),0,1];
	BJ_STR_COLOR_ERROR  = [1,(68/255),(68/255),1];
	BJ_SAM_SAYS = {private ["_message","_color"];_message = _this select 0;_color = _this select 1;taskHint [format[_message], _color, "taskNew"];cutText [_message,"PLAIN",0];sleep 5;cutText ["","PLAIN",0];};
	BJ_FNC_GetPos = {private ["_pos"]; if (isNil {_this select 0}) exitWith {[0,0,0]}; _thingy = _this select 0; _pos = getPosASL _thingy; if !(surfaceIsWater _pos) then { _pos =  ASLToATL _pos;}; _pos};
	
BJ_INIT_READY = true;	
};