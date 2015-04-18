/*  

Spawn Configuration:

1. These spawns are just examples to show what this mod can do. You can add or delete
any spawn in the _spawnPoints list. Don't forget to leave off the last comma for the last
element in the array.

2. Spawn format: 
	[Name, Pos, VIP Level, Humanity Level]
	Name - Each spawn must have a unique name. Can be anything. Do not use double quotes " inside.
	Pos - Coordinates in AboveTerrainLevel Format [x,y,z]
	VIP Level -
		0 - Anyone can pick this spawn
		1 - Only players with UIDs in _spawnLevel1 can pick this spawn
		2 - Only players with UIDs in _spawnLevel2 can pick this spawn
		3 - Only players with UIDs in _spawnLevel3 can pick this spawn​
	Humanity Level -
		0 - Anyone can pick this spawn
		Negative # - Only players with humanity less than this number can pick this spawn
		Positive # - Only players with humanity greater than this number can pick this spawn​

3. _customBase - List of UIDs that own custom bases.
   _customBases - List of custom bases in this format: ["Name",[Pos]]
   Name - Each base must have unique name. Can be anything. Do not use double quotes " inside.
   Pos - In AboveTerrainLevel [x,y,z] format
   These must match the order of the first list. The first UID in _customBase corresponds with the first base in _customBases and so on. 
   These will only show in the spawn list for the player who owns them. If multiple UIDs share the same base then add the same base multiple times to maintain order, 
   or consider making it a VIP spawn in _spawnPoints instead. Pos is exactly where you will spawn, does not run through findSafePos. These override body check.

*/

_bodyCheck = -1; // If a player has a body within this distance of a spawn that spawn will be blocked. Set to -1 to disable.
_mapRadius = 12000; // Distance from center to farthest edge of map. Only used when spawnNearPlot is enabled.
_spawnNearGroup = true; // Allow players to spawn near their group. Blocked if the player has a body within bodyCheck distance of the leader. Requires DZGM to work.
_spawnNearPlot = true; // Allow players to spawn near their plot. Blocked if the player has a body within bodyCheck distance of their plot. Requires Plot4Life to work. 
_spawnRadius = 800; // Distance around spawn to find a safe pos. Lower is closer to exact coordinates. Do not set too low or BIS_fnc_findSafePos may fail.
_customBase = [
	"0"
];
_customBases = [ // Do not use a z (height) higher than _autoOpenHeight in haloConfig.sqf if using halo
	[]
];

_spawnLevel1 = ["0","0","0"];
_spawnLevel2 = ["0","0","0"];
_spawnLevel3 = ["0","0","0"];
// To give higher level VIPs access to lower level VIP spawns too use +. For example:
// _spawnLevel2 = ["0","0","0"] + _spawnLevel1;
// _spawnLevel3 = ["0","0","0"] + _spawnLevel2;

_spawnPoints = [
	["Random",[[5411,16676,0],[1511,11479,0],[12231,16319,0],[6946,17385,0],[12862,14850,0],[4672,14940,0],[2720,12226,0],[4104,13026,0],[1461,10584,0],[10283,18449,0],[10709,17085,0]],0,0,1],
	["Seltishafen",[5411,16676,0],0,0],
	["Hubel",[1511,11479,0],0,0],
	["Lausen",[12231,16319,0],0,0],	
	["Seewen",[6946,17385,0],0,0],
	["Bunig",[12862,14850,0],0,0],	
	["Bubendorf",[4672,14940,0],0,0],
	["Hindelbank",[2720,12226,0],0,0],
	["Huttwil",[4104,13026,0],0,0],
	["Ittingen",[1461,10584,0],0,0],
	["Hordstern",[10283,18449,0],0,0],
	["Magden",[10709,17085,0],0,0],
	// Above are defaults
	["South Airstrip",[18291,1790,0],0,0],
	["Buckten",[5906,5637,0],0,0],
	["Giswil",[17101,5282,0],0,0],
	["Horw",[17262,13502,0],0,0],
	["Romoos",[12694,11878,0],0,0],
	["Sachseln",[15554,10651,0],0,0],
	["Schangen",[9412,5882,0],0,0],
	["Sissach",[11111,8326,0],0,0],
	["Waldegg",[8538,852,0],0,0]
];
