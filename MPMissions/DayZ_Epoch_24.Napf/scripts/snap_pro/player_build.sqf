/*
	DayZ Base Building
	Made for DayZ Epoch please ask permission to use/edit/distrubute email vbawol@veteranbastards.com.
*/
/*
Snap Build Pro w/Admin Fast Build+Upgrade + A Plot For Life

Edited by KamikazeXeX from XeXGaming www.xexgaming.com
Date: 27/8/14
SnapBuildPro v1.4
*/
private ["_helperColor","_objectHelper","_objectHelperDir","_objectHelperPos","_canDo", "_pos", "_cnt",
"_location","_dir","_classname","_item","_hasRequiredTools","_missingT","_missingB","_hasrequireditem","_missing","_hastoolweapon","_cancel","_reason","_started","_finished","_animState","_isMedic","_dis","_sfx","_hasbuilditem","_tmpbuilt","_onLadder","_isWater","_require","_text","_offset","_IsNearPlot","_isOk","_location1","_location2","_counter","_limit","_proceed","_num_removed","_position","_object","_canBuildOnPlot","_friendlies","_nearestPole","_ownerID","_findNearestPoles","_findNearestPole","_distance","_classnametmp","_ghost","_isPole","_needText","_lockable","_zheightchanged","_rotate","_combination_1","_combination_2","_combination_3","_combination_4","_combination","_combination_1_Display","_combinationDisplay","_zheightdirection","_abort","_isNear","_need","_needNear","_vehicle","_inVehicle","_requireplot","_objHupDiff","_objHDiff","_isLandFireDZ","_isTankTrap","_isNear2","_typeIsString","_isBuildAdmin","_needBuildItem","_hasbuilditems","_itemIn","_countIn","_qty","_missingQty","_textMissing","_removed","_tobe_removed_total","_removed_total","_ownerPUID","_playerUID"];

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
_onLadder =		(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_isWater = 		dayz_isSwimming;
_cancel = false;
_reason = "";
_canBuildOnPlot = false;

_isBuildAdmin = (getPlayerUID player) in WG_adminBuild;

_vehicle = vehicle player;
_inVehicle = (_vehicle != player);
_playerUID = getPlayerUID player;

helperDetach = false;
_canDo = (!r_drag_sqf and !r_player_unconscious);

_vector = [];
fnc_SetPitchBankYaw = { 
    private ["_object","_rotations","_aroundX","_aroundY","_aroundZ","_dirX","_dirY","_dirZ","_upX","_upY","_upZ","_dir","_up","_dirXTemp",
    "_upXTemp"];
    _object = _this select 0; 
    _rotations = _this select 1; 
    _aroundX = _rotations select 0; 
    _aroundY = _rotations select 1; 
    _aroundZ = (360 - (_rotations select 2)) - 360; 
    _dirX = 0; 
    _dirY = 1; 
    _dirZ = 0; 
    _upX = 0; 
    _upY = 0; 
    _upZ = 1; 
    if (_aroundX != 0) then { 
        _dirY = cos _aroundX; 
        _dirZ = sin _aroundX; 
        _upY = -sin _aroundX; 
        _upZ = cos _aroundX; 
    }; 
    if (_aroundY != 0) then { 
        _dirX = _dirZ * sin _aroundY; 
        _dirZ = _dirZ * cos _aroundY; 
        _upX = _upZ * sin _aroundY; 
        _upZ = _upZ * cos _aroundY; 
    }; 
    if (_aroundZ != 0) then { 
        _dirXTemp = _dirX; 
        _dirX = (_dirXTemp* cos _aroundZ) - (_dirY * sin _aroundZ); 
        _dirY = (_dirY * cos _aroundZ) + (_dirXTemp * sin _aroundZ);        
        _upXTemp = _upX; 
        _upX = (_upXTemp * cos _aroundZ) - (_upY * sin _aroundZ); 
        _upY = (_upY * cos _aroundZ) + (_upXTemp * sin _aroundZ); 		
    }; 
    _dir = [_dirX,_dirY,_dirZ]; 
    _up = [_upX,_upY,_upZ]; 
    _object setVectorDirAndUp [_dir,_up];
	DZE_BuildVector = [_dir,_up];
}; 

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

_typeIsString = ((typeName _this) == "STRING");
//diag_log format["Type is STRING: %1",_typeIsString];
if (_typeIsString) then {
	_item =	_this;
};
if (!_typeIsString) then {
	_item =	_this select 0;
};

// Need Near Requirements
_abort = false;

_reason = "";

if (_typeIsString) then {
	_needNear = 	getArray (configFile >> "CfgMagazines" >> _item >> "ItemActions" >> "Build" >> "neednearby");

	{
		switch(_x) do{
			case "fire":
			{
				_distance = 3;
				_isNear = {inflamed _x} count (getPosATL player nearObjects _distance);
				if(_isNear == 0) then {
					_abort = true;
					_reason = "fire";
				};
			};
			case "workshop":
			{
				_distance = 3;
				_isNear = count (nearestObjects [player, ["Wooden_shed_DZ","WoodShack_DZ","WorkBench_DZ"], _distance]);
				if(_isNear == 0) then {
					_abort = true;
					_reason = "workshop";
				};
			};
			case "fueltank":
			{
				_distance = 30;
				_isNear = count (nearestObjects [player, dayz_fuelsources, _distance]);
				if(_isNear == 0) then {
					_abort = true;
					_reason = "fuel tank";
				};
			};
		};
	} forEach _needNear;
	
	if(_abort) exitWith {
		cutText [format[(localize "str_epoch_player_135"),_reason,_distance], "PLAIN DOWN"];
		DZE_ActionInProgress = false;
	};
};

if (_typeIsString) then {
	_classname = 	getText (configFile >> "CfgMagazines" >> _item >> "ItemActions" >> "Build" >> "create");
	_classnametmp = _classname;
	_require =  getArray (configFile >> "cfgMagazines" >> _this >> "ItemActions" >> "Build" >> "require");
};
if (!_typeIsString) then {
	_classname = _this select 0;
	_classnametmp = _classname;
	_require = _this select 1;
};
_text = 		getText (configFile >> "CfgVehicles" >> _classname >> "displayName");
_ghost = getText (configFile >> "CfgVehicles" >> _classname >> "ghostpreview");

_lockable = 0;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "lockable")) then {
	_lockable = getNumber(configFile >> "CfgVehicles" >> _classname >> "lockable");
};

_requireplot = DZE_requireplot;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "requireplot")) then {
	_requireplot = getNumber(configFile >> "CfgVehicles" >> _classname >> "requireplot");
};

_isAllowedUnderGround = 1;
if(isNumber (configFile >> "CfgVehicles" >> _classname >> "nounderground")) then {
	_isAllowedUnderGround = getNumber(configFile >> "CfgVehicles" >> _classname >> "nounderground");
};

if (!_typeIsString) then {
	_offset = _this select 3;
};
if (_typeIsString) then {
	_offset = 	getArray (configFile >> "CfgVehicles" >> _classname >> "offset");
	if((count _offset) <= 0) then {
		_offset = [0,1.5,0];
	};
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
} count _findNearestPoles;

_IsNearPlot = count (_findNearestPole);

// If item is plot pole and another one exists within 45m
if(_isPole && _IsNearPlot > 0) exitWith {  DZE_ActionInProgress = false; cutText [(localize "str_epoch_player_44") , "PLAIN DOWN"]; };

if(_IsNearPlot == 0) then {

	// Allow building of plot
	if(_requireplot == 0 || _isLandFireDZ) then {
		_canBuildOnPlot = true;
	};

} else {
	// Since there are plots nearby we check for ownership and then for friend status
	
	// check nearby plots ownership and then for friend status
	_nearestPole = _findNearestPole select 0;

	// Find owner 
	_ownerID = _nearestPole getVariable ["ownerPUID","0"];

	diag_log format["Player_build start: [PlayerUID = %1]  [OwnerID = %2]", _playerUID, _ownerID];

	// check if friendly to owner
	if(_playerUID == _ownerID) then {  //Keep ownership
		// owner can build anything within his plot except other plots
		diag_log text "Player is owner";
		if(!_isPole) then {
			_canBuildOnPlot = true;
		};

	} else {
		// disallow building plot
		if(!_isPole) then {
			_friendlies = _nearestPole getVariable ["plotfriends",[]];
			_fuid  = [];
			{
				  _friendUID = _x select 0;
				  _fuid  =  _fuid  + [_friendUID];
			} forEach _friendlies;
			_builder  = getPlayerUID player;
			// check if friendly to owner
			if(_builder in _fuid) then {
				_canBuildOnPlot = true;
			};
		};
	};
};

//Item Check
if(!_canBuildOnPlot) exitWith {  DZE_ActionInProgress = false; cutText [format[(localize "STR_EPOCH_PLAYER_135"),_needText,_distance] , "PLAIN DOWN"]; };

_missingT = "";
_missingB = "";
_hasRequiredTools = true;
_hasbuilditem = true;
if (!_isBuildAdmin) then {
	{
		//diag_log format["Testing for tool: %1",_x];
		_hastoolweapon = _x in weapons player;
		if(!_hastoolweapon) exitWith {_hasRequiredTools = false; _missingT = getText (configFile >> "cfgWeapons" >> _x >> "displayName");};
	} count _require;

	if (!_typeIsString && _hasRequiredTools) then {
		_needBuildItem = _this select 2;
		{
			_itemIn = _x select 0;
			_countIn = _x select 1;
			_qty = { (_x == _itemIn) || (configName(inheritsFrom(configFile >> "cfgMagazines" >> _x)) == _itemIn) } count magazines player;
			if(_qty < _countIn) exitWith { _missingB = getText(configFile >> "CfgMagazines" >> _itemIn >> "displayName"); _missingQty = (_countIn - _qty); _hasbuilditem = false;};
		} count _needBuildItem;
	};
	
	if (_typeIsString && _hasRequiredTools) then {
		_hasbuilditem = _this in magazines player;
	};
};
// Message If missing
if (!_hasRequiredTools) exitWith {DZE_ActionInProgress = false; cutText [format[(localize "str_epoch_player_137"),_missingT] , "PLAIN DOWN"];};

if (!_typeIsString && !_hasbuilditem) exitWith {DZE_ActionInProgress = false; cutText [format[(localize "str_epoch_player_146"),_missingQty, _missingB], "PLAIN DOWN"];};
if (_typeIsString && !_hasbuilditem) exitWith {DZE_ActionInProgress = false; cutText [format[(localize "str_player_31"),_text,"build"] , "PLAIN DOWN"]; };
//Proceed after item check
if (_hasRequiredTools && _hasbuilditem) then {
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

	if (isClass (missionConfigFile >> "SnapBuilding" >> _classname)) then {	
		["","","",["Init",_object,_classname,_objectHelper]] spawn snap_build;
	};
	
	DZE_updateVec = false;
	DZE_memDir = getDir _objectHelper;
	DZE_memForBack = 0;
	DZE_memLeftRight = 0;
	if !(_classname in DZE_noRotate) then{
		s_player_setVectorsReset = player addaction ["Reset","scripts\snap_pro\player_vectorChange.sqf","reset"];
		s_player_setVectorsForward = player addaction ["Pitch Forward","scripts\snap_pro\player_vectorChange.sqf","forward"];
		s_player_setVectorsBack = player addaction ["Pitch Back","scripts\snap_pro\player_vectorChange.sqf","back"];
		s_player_setVectorsLeft = player addaction ["Bank Left","scripts\snap_pro\player_vectorChange.sqf","left"];
		s_player_setVectorsRight = player addaction ["Bank Right","scripts\snap_pro\player_vectorChange.sqf","right"];
		s_player_setVectors1 = player addaction ["Increment by 1 degree","scripts\snap_pro\player_vectorChange.sqf","1"];
		s_player_setVectors5 = player addaction ["Increment by 5 degrees","scripts\snap_pro\player_vectorChange.sqf","5"];
		s_player_setVectors45 = player addaction ["Increment by 45 degrees","scripts\snap_pro\player_vectorChange.sqf","45"];
		s_player_setVectors90 = player addaction ["Increment by 90 degrees","scripts\snap_pro\player_vectorChange.sqf","90"];
	};
	
	
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
			DZE_memDir = DZE_memDir - 45;
		};
		if (DZE_6) then {
			_rotate = true;
			DZE_6 = false;
			_dir = 45;
			DZE_memDir = DZE_memDir + 45;
		};
		
		if(DZE_updateVec) then{
			[_objectHelper,[DZE_memForBack,DZE_memLeftRight,DZE_memDir]] call fnc_SetPitchBankYaw;
			DZE_updateVec = false;
		};
		
		if (DZE_F and _canDo) then {	
			if (helperDetach) then {
				_objectHelper attachTo [player];
				DZE_memDir = DZE_memDir-(getDir player);
				helperDetach = false;
				[_objectHelper,[DZE_memForBack,DZE_memLeftRight,DZE_memDir]] call fnc_SetPitchBankYaw;
			} else {
				_objectHelperDir = getDir _objectHelper;
				detach _objectHelper;
				DZE_memDir = getDir _objectHelper;
				[_objectHelper,[DZE_memForBack,DZE_memLeftRight,DZE_memDir]] call fnc_SetPitchBankYaw;
				[_objectHelper]	call FNC_GetSetPos;
				_objectHelper setVelocity [0,0,0]; //fix sliding glitch
				helperDetach = true;
			};
			DZE_F = false;
		};

		if(_rotate) then {
			[_objectHelper,[DZE_memForBack,DZE_memLeftRight,DZE_memDir]] call fnc_SetPitchBankYaw;
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
			
			[_objectHelper,[DZE_memForBack,DZE_memLeftRight,DZE_memDir]] call fnc_SetPitchBankYaw;
		};

		sleep 0.5;

		_location2 = [player] call FNC_GetPos;
		_objectHelperPos = [_objectHelper] call FNC_GetPos;

		if(DZE_5) exitWith {
			_isOk = false;
			_position = [_object] call FNC_GetPos;
			detach _object;
			_dir = getDir _object;
			_vector = [(vectorDir _object),(vectorUp _object)];	
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

	if !(_classname in DZE_noRotate) then{
		player removeAction s_player_setVectorsReset;
		player removeAction s_player_setVectorsForward;
		player removeAction s_player_setVectorsBack;
		player removeAction s_player_setVectorsLeft;
		player removeAction s_player_setVectorsRight;
		player removeAction s_player_setVectors1;
		player removeAction s_player_setVectors5;
		player removeAction s_player_setVectors45;
		player removeAction s_player_setVectors90;
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

		if((_isAllowedUnderGround == 0) && ((_location select 2) < 0)) then {
			_location set [2,0];
		};
	
		_buildOffset = [0,0,0];
		_vUp = _vector select 1;
		switch (_classname) do {
			case "MetalFloor_DZ": { _buildOffset = [(_vUp select 0) * .148, (_vUp select 1) * .148,0]; };
		};
		
		_location = [
			(_location select 0) - (_buildOffset select 0),
			(_location select 1) - (_buildOffset select 1),
			(_location select 2) - (_buildOffset select 2)
		];

		if (surfaceIsWater _location) then {
			_tmpbuilt setPosASL _location;
			_location = ASLtoATL _location;
		} else {
			_tmpbuilt setPosATL _location;
		};

		_tmpbuilt setVectorDirAndUp _vector;
		
		cutText [format[(localize "str_epoch_player_138"),_text], "PLAIN DOWN"];
		
		_limit = 3;

		if (DZE_StaticConstructionCount > 0) then {
			_limit = DZE_StaticConstructionCount;
		} else {
			if (isNumber (configFile >> "CfgVehicles" >> _classname >> "constructioncount")) then {
				_limit = getNumber(configFile >> "CfgVehicles" >> _classname >> "constructioncount");
			};
		};

		_isOk = true;
		_proceed = false;
		_counter = 0;
		
		while {_isOk && !_isBuildAdmin} do {

			[10,10] call dayz_HungerThirst;
			player playActionNow "Medic";
			
			_dis=20;
			_sfx = "repair";
			[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
			[player,_dis,true,(getPosATL player)] spawn player_alertZombies;
	
			r_interrupt = false;
			r_doLoop = true;
			_started = false;
			_finished = false;
	
			while {r_doLoop} do {
				_animState = animationState player;
				_isMedic = ["medic",_animState] call fnc_inString;
				if (_isMedic) then {
					_started = true;
				};
				if (_started && !_isMedic) then {
					r_doLoop = false;
					_finished = true;
				};
				if (r_interrupt || (player getVariable["combattimeout", 0] >= time)) then {
					r_doLoop = false;
				};
				if (DZE_cancelBuilding) exitWith {
					r_doLoop = false;
				};
				sleep 0.1;
			};
			r_doLoop = false;


			if(!_finished) exitWith {
				_isOk = false;
				_proceed = false;
			};

			if(_finished) then {
				_counter = _counter + 1;
			};

			cutText [format[(localize "str_epoch_player_139"),_text, _counter,_limit], "PLAIN DOWN"];

			if(_counter == _limit) exitWith {
				_isOk = false;
				_proceed = true;
			};
		};
		if (_isBuildAdmin) then {
			_isOk = false;
			_proceed = true;
		};
		
		if (_proceed) then {
		//diag_log "Proceed OK";
			_tobe_removed_total = 0;
			_removed_total = 0;
			_temp_removed_array = [];
			if (!_isBuildAdmin) then {
				//diag_log "Is Admin REMOVE NOT OK";
				if (_typeIsString) then {
					_tobe_removed_total = ([player,_item] call BIS_fnc_invRemove);
					_removed_total = _tobe_removed_total;
				};
				if (!_typeIsString) then {
					{
						_removed = 0;
						_itemIn = _x select 0;
						_countIn = _x select 1;
						// //diag_log format["Recipe Finish: %1 %2", _itemIn,_countIn];
						_tobe_removed_total = _tobe_removed_total + _countIn;
			
						{					
							if( (_removed < _countIn) && ((_x == _itemIn) || configName(inheritsFrom(configFile >> "cfgMagazines" >> _x)) == _itemIn)) then {
								_num_removed = ([player,_x] call BIS_fnc_invRemove);
								_removed = _removed + _num_removed;
								_removed_total = _removed_total + _num_removed;
								if(_num_removed >= 1) then {
									_temp_removed_array set [count _temp_removed_array,_x];
								};
							};
						} forEach magazines player;
					} forEach _needBuildItem;
				};
			} else {
				//diag_log "Is Admin REMOVE OK";
				_tobe_removed_total = 1;
				_removed_total = 1;
			};
			if((_tobe_removed_total == _removed_total) && (_removed_total >= 1)) then {
				//diag_log "Removed Item OK";
				cutText [format[localize "str_build_01",_text], "PLAIN DOWN"];

				if (_isPole) then {
					[] spawn player_plotPreview;
				};
				
				_tmpbuilt setVariable ["OEMPos",_location,true];

				if(_lockable > 1) then {
					//diag_log "Is Lockable OK";
					_combinationDisplay = "";

					switch (_lockable) do {
						
						case 2: { // 2 lockbox
							_combination_1 = (floor(random 3)) + 100; // 100=red,101=green,102=blue
							_combination_2 = floor(random 10);
							_combination_3 = floor(random 10);
							_combination = format["%1%2%3",_combination_1,_combination_2,_combination_3];
							
							dayz_combination = _combination;
							if (_combination_1 == 100) then {
								_combination_1_Display = "Red";
							};
							if (_combination_1 == 101) then {
								_combination_1_Display = "Green";
							};
							if (_combination_1 == 102) then {
								_combination_1_Display = "Blue";
							};
							_combinationDisplay = format["%1%2%3",_combination_1_Display,_combination_2,_combination_3];
						};
						
						case 3: { // 3 combolock
							_combination_1 = floor(random 10);
							_combination_2 = floor(random 10);
							_combination_3 = floor(random 10);
							_combination = format["%1%2%3",_combination_1,_combination_2,_combination_3];
							dayz_combination = _combination;
							_combinationDisplay = _combination;
						};
						
						case 4: { // 4 safe
							_combination_1 = floor(random 10);
							_combination_2 = floor(random 10);
							_combination_3 = floor(random 10);
							_combination_4 = floor(random 10);
							_combination = format["%1%2%3%4",_combination_1,_combination_2,_combination_3,_combination_4];
							dayz_combination = _combination;
							_combinationDisplay = _combination;
						};
					};

					_tmpbuilt setVariable ["CharacterID",_combination,true];
					
					_tmpbuilt setVariable ["ownerPUID",_playerUID,true];

						
					PVDZE_obj_Publish = [_combination,_tmpbuilt,[_dir,_location,_vector,_playerUID],_classname];
					//diag_log "Publish Lockable";
					publicVariableServer "PVDZE_obj_Publish";

				
					cutText [format[(localize "str_epoch_player_140"),_combinationDisplay,_text], "PLAIN DOWN", 5];
					

				} else {
					_tmpbuilt setVariable ["CharacterID",dayz_characterID,true];
					
					_tmpbuilt setVariable ["ownerPUID",_playerUID,true];
					// fire?
					if(_tmpbuilt isKindOf "Land_Fire_DZ") then {
						_tmpbuilt spawn player_fireMonitor;
					} else {
						PVDZE_obj_Publish = [dayz_characterID,_tmpbuilt,[_dir,_location,_vector,_playerUID],_classname];
						publicVariableServer "PVDZE_obj_Publish";
					};
					
				};
			} else {
				deleteVehicle _tmpbuilt;
				cutText [(localize "str_epoch_player_46") , "PLAIN DOWN"];
				{
					[player,_x] call BIS_fnc_invAdd;
				} forEach _temp_removed_array;				
			};

		} else {
			r_interrupt = false;
			if (vehicle player == player) then {
				[objNull, player, rSwitchMove,""] call RE;
				player playActionNow "stop";
			};

			deleteVehicle _tmpbuilt;
			cutText [(localize "str_epoch_player_46") , "PLAIN DOWN"];
		};

	} else {
		cutText [format[(localize "str_epoch_player_47"),_text,_reason], "PLAIN DOWN"];
	};
};

DZE_ActionInProgress = false;