//private ["_config","_type","_position","_dir","_object","_list","_w8","_dis","_deniedplaces","_mindistance","_roadclear","_pointsclear"];


_roadclear = true; //We want to remove garbage from entire roads.
_pointsclear = true; //We want to clear garbage near custom points.
_mindistance = 100; // We want to clear area of 100m radius around our custom points


//our custom points 2D positions array. We will clear everything near that points.
_deniedplaces = [
	[6329,7808], 	//stary sobor outpost point 1
	[6294,7825]	//stary sobor outpost point 2
		];



_list = _this select 0;
_w8 = _this select 1;
for "_i" from ((count _list) - 1) to 0 step -1 do
{
	_config = (_list select _i);
	if (isClass(_config)) then {
		_type = getText (_config >> "type");
		_position = [] + getArray (_config >> "position");
		_dir = getNumber (_config >> "direction");
		//_onFire = getNumber (_config >> "onFire");
		_dis = _position distance player;
		
		_onroad = false; //init main check.
		
		//only check if position on road if we want to clear roads.
		if (_roadclear) then {_onroad = (isOnRoad _position);}; 

		//only check this position against custom points if we want it.
		if (_pointsclear) then { 
					{ if ((_position distance _x)<_mindistance) then {_onroad=true;} } forEach _deniedplaces;
				       };

	
		_inVehicle = (vehicle player != player);

	
		if (!_onroad) then {

		//diag_log(format["%1 position [%2,%3] is not on road or near cleared area, will probably spawn.",_type,_position select 0,_position select 1]);
		
		if (_dis > 2) then {
			_object = _type createVehicleLocal [_position select 0,_position select 1,-100];
			_object setDir _dir;
			_object setPos [_position select 0,_position select 1,0];
			_object setPosATL _position;
			_object allowDamage false;
			_object setVariable ["", true]; // SV used by player_spawnCheck
			if (_w8 AND {((_i % 25) == 0)}) then { sleep 0.01; };
		} else {
			if (!_inVehicle) then {
				_object = _type createVehicleLocal [_position select 0,_position select 1,-100];
				_object setDir _dir;
				_object setPos [_position select 0,_position select 1,0];
				_object setPosATL _position;
				_object allowDamage false;
				_object setVariable ["", true]; // SV used by player_spawnCheck
				if (_w8 AND {((_i % 25) == 0)}) then { sleep 0.01; };
			};
		};
		} //endifonroad
		else
		{

		//diag_log(format["%1 position [%2,%3] is on road or near cleared area, will probably not spawn.",_type,_position select 0,_position select 1]);
		
		};
	};
};
//diag_log ("FILL: " + str(_list));
