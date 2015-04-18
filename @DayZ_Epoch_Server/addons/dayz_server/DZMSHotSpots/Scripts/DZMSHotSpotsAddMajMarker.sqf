/*
	Adds a marker for Major Missions. Only runs once.
	DZMSHotSpotsMarkerLoop.sqf keeps this marker updated.
	Usage: [coordinates,missionname]
*/
private["_nul","_nil"];
DZMSHotSpotsMajCoords = _this select 0;
DZMSHotSpotsMajName = _this select 1;

_nul = createMarker ["DZMSHotSpotsMajMarker", DZMSHotSpotsMajCoords];
"DZMSHotSpotsMajMarker" setMarkerColor "ColorRed";
"DZMSHotSpotsMajMarker" setMarkerShape "ELLIPSE";
"DZMSHotSpotsMajMarker" setMarkerBrush "Grid";
"DZMSHotSpotsMajMarker" setMarkerSize [175,175];
_nil = createMarker ["DZMSHotSpotsMajDot", DZMSHotSpotsMajCoords];
"DZMSHotSpotsMajDot" setMarkerColor "ColorBlack";
"DZMSHotSpotsMajDot" setMarkerType "Vehicle";
"DZMSHotSpotsMajDot" setMarkerText DZMSHotSpotsMajName;