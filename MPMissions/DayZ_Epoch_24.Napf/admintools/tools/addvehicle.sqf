private ["_worldspace","_charID","_veh","_activatingPlayer","_location","_isOk","_vehtospawn","_dir","_helipad","_removed","_keyColor","_keyNumber","_keySelected","_isKeyOK","_config"];
 _vehtospawn = _this select 0;
 _dist = 10; 
 _activatingPlayer = player;
 _charID = dayz_characterID;
 _dir = getdir vehicle player;
 _pos = getPos vehicle player;
 _pos = [(_pos select 0)+_dist*sin(_dir),(_pos select 1)+_dist*cos(_dir),0];
 _worldspace = [_dir,_pos];
 
cutText ["Starting Spawn...", "PLAIN DOWN"];
 
// First select key color
_keyColor = ["Green","Red","Blue","Yellow","Black"] call BIS_fnc_selectRandom;
 
// then select number from 1 - 2500
_keyNumber = (floor(random 2500)) + 1;
 
// Combine to key (eg.ItemKeyYellow2494) classname
_keySelected = format[("ItemKey%1%2"),_keyColor,_keyNumber]; 
 
_isKeyOK =  isClass(configFile >> "CfgWeapons" >> _keySelected);
 
_config = _keySelected;
_isOk = [player,_config] call BIS_fnc_invAdd;
waitUntil {!isNil "_isOk"};
if (_isOk and _isKeyOK) then {
 
//	_removed = ([player,_part_in,_qty_in] call BIS_fnc_invRemove);
	_dir = round(random 360); 
	/*_helipad = nearestObjects [player, ["HeliHCivil","HeliHempty"], 100];

	if(count _helipad > 0) then {
		_location = (getPosATL (_helipad select 0));
	} else {
		_location = position player findEmptyPosition [0,15,_vehtospawn];
	};
	*/
	//fix spawn issue
	_location = _pos;
	
	//place vehicle spawn marker (local)
	_veh = createVehicle [_vehtospawn, _pos, [], 0, "CAN_COLLIDE"];
	//_veh = createVehicle ["Sign_arrow_down_large_EP1", _location, [], 0, "CAN_COLLIDE"]; 
	_location = (getPosATL _veh);
		 
	PVDZE_veh_Publish2 = [_veh,[_dir,_location],_vehtospawn,false,_keySelected,_activatingPlayer];
	publicVariableServer  "PVDZE_veh_Publish2";
	player reveal _veh;
	 
	cutText ["Vehicle spawned, key added to toolbelt.", "PLAIN DOWN"];
	
	
} else {
	cutText ["Your toolbelt is full.", "PLAIN DOWN"];
};