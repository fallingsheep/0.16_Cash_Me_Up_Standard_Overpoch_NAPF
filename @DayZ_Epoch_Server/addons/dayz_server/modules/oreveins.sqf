private ["_spawnRadius","_spawnMarker","_position","_positionarray","_mainpos","_markerRadius","_marker","_rock01",
"_rock02","_rock03","_rock03","_rock04","_rock05","_rock06","_rock07","_spawnChance","_spawnRoll"];
_spawnChance =  0.90; 
_spawnRoll = random 1;
_despawn_timer = 500;
_spawnRadius = 5000;
_spawnMarker = 'center';
_position = [getMarkerPos "center",0,5500,10,0,2000,0] call BIS_fnc_findSafePos;
_positionarray = [
[(_position select 0) - 14.5, (_position select 1) - 21,-0.012],
[(_position select 0) - 20, (_position select 1) - 20,-0.012],
[(_position select 0) + 25, (_position select 1) + 5,-0.012],
[(_position select 0) + 16, (_position select 1) - 14,-0.012],
[(_position select 0) + 49, (_position select 1) + 17.5,-0.012],
[(_position select 0) + 38.5, (_position select 1) - 16,-0.012]
];
_mainpos = _positionarray call BIS_fnc_selectRandom;

//if (isNil "EPOCH_EVENT_RUNNING") then {
//EPOCH_EVENT_RUNNING = false;
//};
// 
//// Check for another event running
//if (EPOCH_EVENT_RUNNING) exitWith {
//diag_log("Event already running");
//};

EPOCH_EVENT_RUNNING = true;

// Random chance of event happening

if (_spawnRoll > _spawnChance) exitWith {};


_markerRadius = 100; // Radius the camp can spawn and used for the marker

_marker_on_radius = createMarker ["bodycorpse",_position];
_marker_on_radius setMarkerShape "ELLIPSE";
_marker_on_radius setMarkerType "Cricle01";
_marker_on_radius setMarkerColor "ColorBlack";
_marker_on_radius setMarkerAlpha 0.8;
_marker_on_radius setMarkerBrush "Solid";
_marker_on_radius setMarkerSize [(_markerRadius + 50), (_markerRadius + 50)];

_marker = createMarker ["Random Ore Veins", _mainpos];
_marker setMarkerText "Random Ore Veins";
_marker setMarkerType "mil_circle";
_marker setMarkerColor "ColorYellow";
_marker setMarkerBrush "Solid";
_marker setMarkerSize [0.1, 0.1];

_rock01 = createVehicle ["Gold_Vein_DZE", [(_position select 0) + 1, (_position select 1) - 13,-0.12],[], 0, "CAN_COLLIDE"];
_rock01 setDir 0;
_rock01 setVectorUp surfaceNormal position _rock01;
_rock02 = createVehicle ["Silver_Vein_DZE", [(_position select 0) - 13, (_position select 1) - 3,-0.12],[], 0, "CAN_COLLIDE"];
_rock02 setDir 0;
_rock02 setVectorUp surfaceNormal position _rock02;
_rock03 = createVehicle ["Silver_Vein_DZE", [(_position select 0) + 14, (_position select 1) - 8,-0.12],[], 0, "CAN_COLLIDE"];
_rock03 setDir 0;
_rock03 setVectorUp surfaceNormal position _rock03;
_rock04 = createVehicle ["Silver_Vein_DZE", [(_position select 0) - 1, (_position select 1) - 11,-0.12],[], 0, "CAN_COLLIDE"];
_rock04 setDir 0;
_rock04 setVectorUp surfaceNormal position _rock04;
_rock05 = createVehicle ["Gold_Vein_DZE", [(_position select 0) - 10, (_position select 1) - 5,-0.12],[], 0, "CAN_COLLIDE"];
_rock05 setDir 0;
_rock05 setVectorUp surfaceNormal position _rock05;
_rock06 = createVehicle ["Silver_Vein_DZE", [(_position select 0) - 11, (_position select 1) - 7,-0.12],[], 0, "CAN_COLLIDE"];
_rock06 setDir 0;
_rock06 setVectorUp surfaceNormal position _rock06;
_rock07 = createVehicle ["Gold_Vein_DZE", [(_position select 0) - 20, (_position select 1) - 9,-0.12],[], 0, "CAN_COLLIDE"];
_rock07 setDir 0;
_rock07 setVectorUp surfaceNormal position _rock07;


[nil,nil,rTitleText,"Ore Veins Spotted! Lets Get The Gems!","PLAIN",7.5] call RE;    


sleep _despawn_timer;
EPOCH_EVENT_RUNNING = false;
deleteVehicle _rock01;
deleteVehicle _rock02;
deleteVehicle _rock03;
deleteVehicle _rock04;
deleteVehicle _rock05;
deleteVehicle _rock06;
deleteVehicle _rock07;
deleteMarker _marker_on_radius;
deleteMarker _marker;