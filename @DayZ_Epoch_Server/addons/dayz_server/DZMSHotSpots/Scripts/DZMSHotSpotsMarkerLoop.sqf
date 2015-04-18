/*
	Marker Resetter by Vampire
	Marker Resetter checks if a Mission is running and resets the marker for JIPs
*/

// change for DZMSHotSpots: always mark all possible hotspots

private["_run","_marker","_markerstring","_pos","_showanddeletemarkers"];

// exit if no locations are given
if (isNil "DZMSHotSpotsStatLocs") exitWith {diag_log "DZMSHotSpots: no locations given";};

// initially fetch active hotspots
call DZMSHotSpotsPickLocations;

//Lets start the timer
_run = true;
while {_run} do
{
	// get external marker flag so display and removal are handled consistently
	_showanddeletemarkers = DZMSHotSpotsShowMarkers;

	// display all markers (only debug)
	if ( DZMSHotSpotsMapDebug ) then
	{
		{
			_markerstring = format ["DZMSHotSpotsMarkerAll_%1", _forEachIndex];	
			_marker = createMarker [_markerstring, _x];
			_markerstring setMarkerColor "ColorGreen";
			_markerstring setMarkerShape "ICON";
			_markerstring setMarkerType "MIL_UNKNOWN";
		} forEach DZMSHotSpotsStatLocs;	
		{
			_markerstring = format ["DZMSRoadBlocksMarkerAll_%1", _forEachIndex];	
			_marker = createMarker [_markerstring, _x];
			_markerstring setMarkerColor "ColorGreen";
			_markerstring setMarkerShape "ICON";
			_markerstring setMarkerType "MIL_WARNING";
		} forEach DZMSRoadBlocksStatLocs;	
	};

	// display active markers
	if ( _showanddeletemarkers ) then 
	{
		{
			// position, randomly offset
			_pos = [(DZMSHotSpotsX select _forEachIndex),
                                (DZMSHotSpotsY select _forEachIndex),
                                (DZMSHotSpotsZ select _forEachIndex)];
			_pos set [0, (_pos select 0) + DZMSHotSpotsRandX];
			_pos set [1, (_pos select 1) + DZMSHotSpotsRandY];

			// midpoint marker: question mark
			_markerstring = format ["DZMSHotSpotsMarkerQ_%1", _forEachIndex];	
			_marker = createMarker [_markerstring, _pos];
			_markerstring setMarkerColor "ColorYellow";
			_markerstring setMarkerShape "ICON";
			_markerstring setMarkerType "MIL_UNKNOWN";

			// circle marker
			_markerstring = format ["DZMSHotSpotsMarker_%1", _forEachIndex];	
			_marker = createMarker [_markerstring, _pos];
			_marker setMarkerShape "ELLIPSE";
			_marker setMarkerColor "ColorYellow";
			_marker setMarkerAlpha 0.5;
			_marker setMarkerSize [DZMSHotSpotsRandR, DZMSHotSpotsRandR];
		} forEach DZMSHotSpotsX;
	};

        // display loot markers (only debug)
	if ( DZMSHotSpotsMapDebug ) then
	{
		_markerstring = format ["DZMSHotSpotsLootPos"];	
		_marker = createMarker [_markerstring, DZMSHotSpotsLootPos];
		_markerstring setMarkerColor "ColorRed";
		_markerstring setMarkerShape "ICON";
		_markerstring setMarkerType "MIL_UNKNOWN";
		_markerstring = format ["DZMSRoadBlockLootPos"];	
		_marker = createMarker [_markerstring, DZMSRoadBlockLootPos];
		_markerstring setMarkerColor "ColorRed";
		_markerstring setMarkerShape "ICON";
		_markerstring setMarkerType "MIL_WARNING";
        };

	// sleep 25 seconds
        [25,5] call DZMSHotSpotsSleep; 

	// delete all markers (only debug)
	if ( DZMSHotSpotsMapDebug ) then
	{
		{
			_markerstring = format ["DZMSHotSpotsMarkerAll_%1", _forEachIndex];
			deleteMarker _markerstring;
		} forEach DZMSHotSpotsStatLocs;
		{
			_markerstring = format ["DZMSRoadBlocksMarkerAll_%1", _forEachIndex];
			deleteMarker _markerstring;
		} forEach DZMSRoadBlocksStatLocs;
		_markerstring = format ["DZMSHotSpotsLootPos"];	
		 deleteMarker _markerstring;
		_markerstring = format ["DZMSRoadBlockLootPos"];	
		 deleteMarker _markerstring;
	};
	
	// delete active markers
	if ( _showanddeletemarkers ) then
	{
		{
			_markerstring = format ["DZMSHotSpotsMarkerQ_%1", _forEachIndex];
			deleteMarker _markerstring;
			_markerstring = format ["DZMSHotSpotsMarker_%1", _forEachIndex];
			deleteMarker _markerstring;
		} forEach DZMSHotSpotsX;
	};
};
