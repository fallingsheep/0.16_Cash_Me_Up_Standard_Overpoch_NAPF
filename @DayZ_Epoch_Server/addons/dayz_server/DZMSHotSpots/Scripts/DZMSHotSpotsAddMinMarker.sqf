/*
	Adds a marker for Minor Missions. Only runs once.
	DZMSHotSpotsMarkerLoop.sqf keeps this marker updated.
	Usage: [coordinates,missionname]
*/
private["_nul","_nil"];
DZMSHotSpotsMinCoords = _this select 0;
DZMSHotSpotsMinName = _this select 1;

_nul = createMarker ["DZMSHotSpotsMinMarker", DZMSHotSpotsMinCoords];
"DZMSHotSpotsMinMarker" setMarkerColor "ColorGreen";
"DZMSHotSpotsMinMarker" setMarkerShape "ELLIPSE";
"DZMSHotSpotsMinMarker" setMarkerBrush "Grid";
"DZMSHotSpotsMinMarker" setMarkerSize [150,150];
_nil = createMarker ["DZMSHotSpotsMinDot", DZMSHotSpotsMinCoords];
"DZMSHotSpotsMinDot" setMarkerColor "ColorBlack";
"DZMSHotSpotsMinDot" setMarkerType "Vehicle";
"DZMSHotSpotsMinDot" setMarkerText DZMSHotSpotsMinName;