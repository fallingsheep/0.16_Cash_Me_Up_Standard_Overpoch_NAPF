private ["_playerPos","_nearhouse","_Playersurvived","_inventory","_hasitem1","_Playersurvived","_removed","_helperColor","_objectHelper","_objectHelperDir","_objectHelperPos","_canDo", "_pos", "_cnt",
"_location","_dir","_classname","_item","_hasrequireditem","_missing","_hastoolweapon","_cancel","_reason","_started","_finished","_animState","_isMedic","_dis","_sfx","_hasbuilditem","_tmpbuilt","_onLadder","_isWater","_require","_text","_offset","_IsNearPlot","_isOk","_location1","_location2","_counter","_limit","_proceed","_num_removed","_position","_object","_canBuildOnPlot","_friendlies","_nearestPole","_ownerID","_findNearestPoles","_findNearestPole","_distance","_classnametmp","_ghost","_isPole","_needText","_lockable","_zheightchanged","_rotate","_combination_1","_combination_2","_combination_3","_combination_4","_combination","_combination_1_Display","_combinationDisplay","_zheightdirection","_abort","_isNear","_need","_objHupDiff","_needNear","_vehicle","_inVehicle","_requireplot","_objHDiff","_isLandFireDZ","_isTankTrap"];
 
//VARIABLES
_inventory = items player;
_hasitem1 = [["ItemWoodWall",4], "ItemWoodFloor"] call player_checkItems;
_Playersurvived = dayz_Survived;
_costsml = 1000;
_playerMoney = player getVariable["cashMoney",0];
if (_playerMoney < _costsml) exitWith {
	[format["<t align='center' size='0.75' color='#FFCC00'>You need %1 to build this.</t>",_costsml],0,0,2,2] spawn BIS_fnc_dynamicText; 
};

if (_Playersurvived < 2) exitWith {
[format["<t align='center' size='0.75' color='#FFCC00'>>not yet! you have %1 days survived. and needs almost 2 days</t>",_Playersurvived],0,0,2,2] spawn BIS_fnc_dynamicText; 
};
////////////////////////FIND NEAREST HOUSES AND PREVENT ANOTHER BUILD
_playerPos = getPosATL player;
_nearhouse = count nearestObjects [_playerPos, ["MAP_deutshe_mini","MAP_Mil_Mil_Guardhouse","MAP_bouda2_vnitrek"], 45] > 0;
 
if (_nearhouse) exitWith {
    [format["<t align='center' size='0.75' color='#ff5200'>%1 You cannot build another house in this plot area.</t>",(name player)],0,0,2,2] spawn BIS_fnc_dynamicText; 
        };

/////////////////////////////////////////////     

//CHECK ITEMS ///

if (!_hasitem1) exitWith {cutText 
[format["Needs 4xItemWoodWall and 1xFloorCelling4/4"], "PLAIN DOWN"];};
//////////////////////////


if (_Playersurvived > 2) then {
[format["<t align='center' size='0.75' color='#FFCC00'>>You learn build Small Houses.%1</t>",(name player)],0,0,2,2] spawn BIS_fnc_dynamicText;  







//Proceed if check succes
if (_hasitem1) then {





// objet class
 
_classname = "MAP_bouda2_vnitrek";
 
//objet class
 
if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_40") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

//snap vars -- temporary fix for errors so variables.sqf can be skipped
if (isNil "snapProVariables") then {
	if (isNil "DZE_snapExtraRange") then {
		DZE_snapExtraRange = 0;
	};
	if (isNil "DZE_checkNearbyRadius") then {
		DZE_checkNearbyRadius = 30;
	};
	s_player_toggleSnap = -1;
	s_player_toggleSnapSelect = -1;
	s_player_toggleSnapSelectPoint=[];
	snapActions = -1;
	snapGizmos = [];
	snapGizmosNearby = [];
	snapProVariables = true; // will skip this statement from now on.
};
// snap vars
// disallow building if too many objects are found within (30m by default) add DZE_checkNearbyRadius = 30; to your init.sqf to change
_pos = [player] call FNC_GetPos;
_cnt = count (_pos nearObjects ["All",DZE_checkNearbyRadius]); 
 if (_cnt >= DZE_BuildingLimit) exitWith { //end script if too many objects nearby
 	DZE_ActionInProgress = false;
 	cutText [(localize "str_epoch_player_41"), "PLAIN DOWN"];
 };

 
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_isWater =  dayz_isSwimming;
_cancel = false;
_reason = "";
_canBuildOnPlot = false;
 
_vehicle = vehicle player;
_inVehicle = (_vehicle != player);
 
helperDetach = false; 
_canDo = (!r_drag_sqf and !r_player_unconscious); 
 
DZE_Q = false;
DZE_Z = false;
 
DZE_Q_alt = false;
DZE_Z_alt = false;
 
DZE_Q_ctrl = false;
DZE_Z_ctrl = false;
 
DZE_5 = false;
DZE_4 = false;
DZE_6 = false;
DZE_F = false;
 
DZE_cancelBuilding = false;
 
call gear_ui_init;
closeDialog 1;
 
if (_isWater) exitWith {DZE_ActionInProgress = false; cutText [localize "str_player_26", "PLAIN DOWN"];};
if (_inVehicle) exitWith {DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_42"), "PLAIN DOWN"];};
if (_onLadder) exitWith {DZE_ActionInProgress = false; cutText [localize "str_player_21", "PLAIN DOWN"];};
if (player getVariable["combattimeout", 0] >= time) exitWith {DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_43"), "PLAIN DOWN"];};
 
_item = _this;
 
// Need Near Requirements
_abort = false;
_distance = 3;
_reason = "";
 
 
if(_abort) exitWith {
cutText [format[(localize "str_epoch_player_135"),_reason,_distance], "PLAIN DOWN"];
DZE_ActionInProgress = false;
};
 

_classnametmp = _classname;
_require =  getArray (configFile >> "ItemHemp" >> _this >> "ItemActions" >> "Build" >> "require");
_text =  getText (configFile >> "CfgVehicles" >> _classname >> "displayName");
_ghost = getText (configFile >> "CfgVehicles" >> _classname >> "ghostpreview");
  
_lockable = 0;
 
_requireplot = DZE_requireplot;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "requireplot")) then {
_requireplot = getNumber(configFile >> "CfgVehicles" >> _classname >> "requireplot");
};
 
_isAllowedUnderGround = 1;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "nounderground")) then {
_isAllowedUnderGround = getNumber(configFile >> "CfgVehicles" >> _classname >> "nounderground");
};
 
_offset =  getArray (configFile >> "CfgVehicles" >> _classname >> "offset");
if((count _offset) <= 0) then {
_offset = [0,7,2];
};
 
_isPole = (_classname == "Plastic_Pole_EP1_DZ");
_isLandFireDZ = (_classname == "Land_Fire_DZ");
 
_distance = DZE_PlotPole select 0;
_needText = localize "str_epoch_player_246";
 
if(_isPole) then {
_distance = DZE_PlotPole select 1;
};
 
// check for near plot
_findNearestPoles = nearestObjects [(vehicle player), ["Plastic_Pole_EP1_DZ"], _distance];
_findNearestPole = [];
 
{
if (alive _x) then {
_findNearestPole set [(count _findNearestPole),_x];
};
} foreach _findNearestPoles;
 
_IsNearPlot = count (_findNearestPole);
 
// If item is plot pole and another one exists within 45m
if(_isPole and _IsNearPlot > 0) exitWith {  DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_44") , "PLAIN DOWN"]; };
 
if(_IsNearPlot == 0) then {
 
// Allow building of plot
_canBuildOnPlot = false;
 
} else {
// Since there are plots nearby we check for ownership and then for friend status
 
// check nearby plots ownership and then for friend status
_nearestPole = _findNearestPole select 0;
 
// Find owner
_ownerID = _nearestPole getVariable["CharacterID","0"];
 
// diag_log format["DEBUG BUILDING: %1 = %2", dayz_characterID, _ownerID];
 
// check if friendly to owner
if(dayz_characterID == _ownerID) then {  //Keep ownership
// owner can build anything within his plot except other plots
if(!_isPole) then {
_canBuildOnPlot = true;
};
 
} else {
// disallow building plot
_canBuildOnPlot = false;
};
};
 
// _message
if(!_canBuildOnPlot) exitWith {  DZE_ActionInProgress = false; cutText [format["Thers a plot in here or needs a plot"], "PLAIN DOWN",3]; };
 
_missing = "";
 
_location = [0,0,0];
_isOk = true;
 
// get inital players position
_location1 = [player] call FNC_GetPos;
_dir = getDir player;
 
// if ghost preview available use that instead
if (_ghost != "") then {
_classname = _ghost;
};
 
_object = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
 
//Build gizmo
	_objectHelper = "Sign_sphere10cm_EP1" createVehicle _location;
	_helperColor = "#(argb,8,8,3)color(0,0,0,0,ca)";
	_objectHelper setobjecttexture [0,_helperColor];
	_objectHelper attachTo [player,_offset];
	_object attachTo [_objectHelper,[0,0,0]];
	_position = [_objectHelper] call FNC_GetPos;
 
_objHDiff = 0;
 
while {_isOk} do {
 
_zheightchanged = false;
_zheightdirection = "";
_rotate = false;
 
if (DZE_Q) then {
DZE_Q = false;
_zheightdirection = "up";
_zheightchanged = true;
};
if (DZE_Z) then {
DZE_Z = false;
_zheightdirection = "down";
_zheightchanged = true;
};
if (DZE_Q_alt) then {
DZE_Q_alt = false;
_zheightdirection = "up_alt";
_zheightchanged = true;
};
if (DZE_Z_alt) then {
DZE_Z_alt = false;
_zheightdirection = "down_alt";
_zheightchanged = true;
};
if (DZE_Q_ctrl) then {
DZE_Q_ctrl = false;
_zheightdirection = "up_ctrl";
_zheightchanged = true;
};
if (DZE_Z_ctrl) then {
DZE_Z_ctrl = false;
_zheightdirection = "down_ctrl";
_zheightchanged = true;
};
if (DZE_4) then {
_rotate = true;
DZE_4 = false;
_dir = -45;
};
if (DZE_6) then {
_rotate = true;
DZE_6 = false;
_dir = 45;
};
 
if (DZE_F and _canDo) then {	
			if (helperDetach) then {
				_objectHelperDir = getDir _objectHelper; 
				_objectHelper attachTo [player];
				_objectHelper setDir _objectHelperDir-(getDir player);
				helperDetach = false;
			} else {
				_objectHelperDir = getDir _objectHelper;
				detach _objectHelper;
				[_objectHelper]	call FNC_GetSetPos;
				_objectHelper setVelocity [0,0,0]; //fix sliding glitch
				helperDetach = true;
			};
			DZE_F = false;
		}; 
 
if(_rotate) then {
			if (helperDetach) then {
				_objectHelperDir = getDir _objectHelper;
				_objectHelper setDir _objectHelperDir+_dir;
				[_objectHelper]	call FNC_GetSetPos;
			} else {
				detach _objectHelper;
				_objectHelperDir = getDir _objectHelper;
				_objectHelper setDir _objectHelperDir+_dir;
				[_objectHelper]	call FNC_GetSetPos;
				_objectHelperDir = getDir _objectHelper;
				_objectHelper attachTo [player];
				_objectHelper setDir _objectHelperDir-(getDir player);		
			};

		};
 
if(_zheightchanged) then {
			if (!helperDetach) then {
				detach _objectHelper;
				_objectHelperDir = getDir _objectHelper;
			};

			_position = [_objectHelper] call FNC_GetPos;

			if(_zheightdirection == "up") then {
				_position set [2,((_position select 2)+0.1)];
				_objHDiff = _objHDiff + 0.1;
			};
			if(_zheightdirection == "down") then {
				_position set [2,((_position select 2)-0.1)];
				_objHDiff = _objHDiff - 0.1;
			};

			if(_zheightdirection == "up_alt") then {
				_position set [2,((_position select 2)+1)];
				_objHDiff = _objHDiff + 1;
			};
			if(_zheightdirection == "down_alt") then {
				_position set [2,((_position select 2)-1)];
				_objHDiff = _objHDiff - 1;
			};

			if(_zheightdirection == "up_ctrl") then {
				_position set [2,((_position select 2)+0.01)];
				_objHDiff = _objHDiff + 0.01;
			};
			if(_zheightdirection == "down_ctrl") then {
				_position set [2,((_position select 2)-0.01)];
				_objHDiff = _objHDiff - 0.01;
			};

			if((_isAllowedUnderGround == 0) && ((_position select 2) < 0)) then {
				_position set [2,0];
			};

			if (surfaceIsWater _position) then {
				_objectHelper setPosASL _position;
			} else {
				_objectHelper setPosATL _position;
			};

			if (!helperDetach) then {
			_objectHelper attachTo [player];
			_objectHelper setDir _objectHelperDir-(getDir player);
			};
		};

		sleep 0.5;
 
_location2 = [player] call FNC_GetPos;
		_objectHelperPos = [_objectHelper] call FNC_GetPos;

		if(DZE_5) exitWith {
			_isOk = false;
			_position = [_object] call FNC_GetPos;
			detach _object;
			_dir = getDir _object;
			deleteVehicle _object;
			detach _objectHelper;
			deleteVehicle _objectHelper;
		};
 
if(_location1 distance _location2 > 10) exitWith {
			_isOk = false;
			_cancel = true;
			_reason = "You've moved to far away from where you started building (within 10 meters)";
			detach _object;
			deleteVehicle _object;
			detach _objectHelper;
			deleteVehicle _objectHelper;
		};
		
		if(_location1 distance _objectHelperPos > 10) exitWith {
			_isOk = false;
			_cancel = true;
			_reason = "Object is placed to far away from where you started building (within 10 meters)";
			detach _object;
			deleteVehicle _object;
			detach _objectHelper;
			deleteVehicle _objectHelper;
		};

		if(abs(_objHDiff) > 10) exitWith {
			_isOk = false;
			_cancel = true;
			_reason = "Cannot move up or down more than 10 meters";
			detach _object;
			deleteVehicle _object;
			detach _objectHelper;
			deleteVehicle _objectHelper;
		};
 
if (player getVariable["combattimeout", 0] >= time) exitWith {
			_isOk = false;
			_cancel = true;
			_reason = (localize "str_epoch_player_43");
			detach _object;
			deleteVehicle _object;
			detach _objectHelper;
			deleteVehicle _objectHelper;
		};

		if (DZE_cancelBuilding) exitWith {
			_isOk = false;
			_cancel = true;
			_reason = "Cancelled building.";
			detach _object;
			deleteVehicle _object;
			detach _objectHelper;
			deleteVehicle _objectHelper;
		};
	};
 
//No building on roads unless toggled
if (!DZE_BuildOnRoads) then {
if (isOnRoad _position) then { _cancel = true; _reason = "Cannot build on a road."; };
};
 
// No building in trader zones
if(!canbuild) then { _cancel = true; _reason = "Cannot build in a city."; };
 
if(!_cancel) then {
 
_classname = _classnametmp;
 
// Start Build
_tmpbuilt = createVehicle [_classname, _location, [], 0, "CAN_COLLIDE"];
 
_tmpbuilt setdir _dir;
 
// Get position based on object
_location = _position;
 
if((_isAllowedUnderGround == 0) and ((_location select 2) < 0)) then {
_location set [2,0];
};
 
_tmpbuilt setPosATL _location;
 
 
cutText [format[(localize "str_epoch_player_138"),_text], "PLAIN DOWN"];
 
_limit = 1;
 
if (DZE_StaticConstructionCount > 0) then {
_limit = DZE_StaticConstructionCount;
}
else {
if (isNumber (configFile >> "CfgVehicles" >> _classname >> "constructioncount")) then {
_limit = getNumber(configFile >> "CfgVehicles" >> _classname >> "constructioncount");
};
};
 
player playActionNow "Medic";
[player,"repair",0,false,10] call dayz_zombieSpeak;
[player,10,true,(getPosATL player)] spawn player_alertZombies;
sleep 3;
_removed = [["ItemWoodWall",4], "ItemWoodFloor"] call player_removeItems;
cutText [format[localize "str_build_01",_text], "PLAIN DOWN"];
 
if (_isPole) then {
[] spawn player_plotPreview;
};
 
_tmpbuilt setVariable ["OEMPos",_location,true];
 
_tmpbuilt setVariable ["CharacterID",dayz_characterID,true];
 
_charID = dayz_characterID;
_activatingPlayer = player;
 
PVDZE_veh_Publish = [_tmpbuilt,[_dir,_location],_classname,true,_charid,_activatingPlayer];
publicVariableServer  "PVDZE_veh_Publish";
 
// MESSAGE HERE///////////////
[format["<t align='center' size='0.50' color='#FFCC00'>>Nice! A Small House Survivor!<</t>",_Playersurvived],0,0,2,2] spawn BIS_fnc_dynamicText;  
//cutText [format["Nice House Survivor!"], "PLAIN DOWN",3];
 //Remove cost and set money
player setVariable["cashMoney",(_playerMoney - _costsml),true];
////////////////////////////////////////////
 
player reveal _tmpbuilt;
DZE_ActionInProgress = false;
 
} else {
cutText [format[(localize "str_epoch_player_47"),_text,_reason], "PLAIN DOWN"];
DZE_ActionInProgress = false;
};
 
DZE_ActionInProgress = false;

};
};
