private ["_GasCoordsArray","_SetBombPos","_markerRadius","_marker_on_radius","_marker","_bomb","_dabomb","_playernear","_this"];

_timer1 = random(300); // random time for explosions
_timer2 = (random(1000) + 50);
fn_explode = {

_vehicle = vehicle player;
_pos = getPosATL _vehicle;
_fuelStations = dayz_fuelpumparray;
_maxDistance = 14000; // how far away before explosions can occur

_fuelStation = (nearestObjects [_pos, _fuelStations, _maxDistance]);
_SetBombPos = _fuelStation call BIS_fnc_selectRandom;

//_GasCoordsArray = [
//[7256.3296, 7658.8853, 0],//novy
//[5854.7207, 10103.158, 3.0517578e-005],//grisino
//[3666.843, 8979.5107, 3.0517578e-005],//novy
//[2021.9128, 2234.3821, 1.4305115e-006],//kamenka
//[5874.8354, 2200.7412, 1.6689301e-005],//balota
//[6687.0552, 3006.4988, 1.4305115e-006],//chernogorsk
//[9526.9893, 2012.6692, 6.6757202e-006],//electro
//[13374.127, 6605.4155, 4.9114227e-005],//solsny
//[10450.536, 8891.4951, 0],//gorka
//[2997.0571, 7464.5742, 3.0517578e-005],//putosh
//[2704.6943, 5603.8535, 0]//zeleno
//];
//_SetBombPos = _GasCoordsArray call BIS_fnc_selectRandom;


_markerRadius = 100; // Radius the camp can spawn and used for the marker

_marker_on_radius = createMarker ["gas",_SetBombPos];
_marker_on_radius setMarkerShape "ELLIPSE";
_marker_on_radius setMarkerType "Cricle01";
_marker_on_radius setMarkerColor "ColorRed";
_marker_on_radius setMarkerAlpha 0.8;
_marker_on_radius setMarkerBrush "Solid";
_marker_on_radius setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];

_marker = createMarker ["Explosion", _SetBombPos];
_marker setMarkerText "Gas Station Explode";
_marker setMarkerType "mil_circle";
_marker setMarkerColor "ColorBlack";
_marker setMarkerBrush "Solid";
_marker setMarkerSize [0.1, 0.1];


//EXIT FROM HERE//
// Send center message to users
[nil,nil,rTitleText,"An Explosion can be heard.", "PLAIN",10] call RE;
sleep 1;

_bomb = "Bo_GBU12_LGB";
_dabomb = objNull;
if (true) then
{
	_this = createVehicle [_bomb,_SetBombPos, [], 2, "CAN_COLLIDE"];
	_dabomb = _this;
};

//_playernear = false;
//{
//if ((isPlayer _x) && (_x distance _SetBombPos < 35)) then {																								////																					
//_x setDamage 1;
//};
//} count playableUnits;	

sleep 60;
deleteMarker _marker_on_radius;
deleteMarker _marker;
};



waituntil {(round(time)) > _timer1};
if (time > _timer1) then {
	call fn_explode;
};

waituntil {(round(time)) > _timer2};
if (time > _timer2) then {
	call fn_explode;
};