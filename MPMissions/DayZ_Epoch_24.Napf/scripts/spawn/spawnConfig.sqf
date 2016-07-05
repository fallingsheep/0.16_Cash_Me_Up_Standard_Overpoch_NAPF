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
	["Buckten",[5906,5637,0],0,0],
	["Giswil",[17101,5282,0],0,0],
	["Horw",[17262,13502,0],0,0],
	["Romoos",[12694,11878,0],0,0],
	["Sachseln",[15554,10651,0],0,0],
	["Schangen",[9412,5882,0],0,0],
	["Sissach",[11111,8326,0],0,0],
	["Waldegg",[8538,852,0],0,0],
	["Worb",[ 2350,7680,0],0,0],
	["Homburg",[ 2740 , 6240,0],0,0],
	["Brienz" , [ 14520 , 3230,0],0,0],
	["Froburg" , [ 17260 , 3710,0],0,0],
	["Unterdorf" , [ 5080 , 112300],0,0],
	["Liestal" , [ 12560 , 9930,0],0,0],
	["Alpnach" , [ 18410 , 9540,0],0,0],
	["Suhrenfeld" , [ 16400 , 18550,0],0,0],
	["Pfeffiken" , [ 18260 , 17200 ,0],0,0],
	["Olten" , [ 9870 , 16770 ,0],0,0],
	["Sorenburg" , [ 13560 , 5500 , 0 ] ,0,0],
	["Farnen" , [ 13180 , 7110 , 0 ] ,0,0],
	["Munsingen" , [ 3970 , 8090 , 0 ] ,0,0],
	["Hasle" , [ 3550 , 10120 , 0 ] ,0,0],
	["Muttenz" , [ 6300 , 10220 , 0 ] ,0,0],
	["Muenchenstein" , [ 6160 , 9930 , 0 ] ,0,0],
	["Chatzbach" , [ 7480 , 9510 , 0 ] ,0,0],
	["Signau" , [ 5990 , 8870 , 0 ] ,0,0],
	["Eggwil" , [ 7370 , 6800 , 0 ] ,0,0],
	["Milan" , [ 9980 , 8010 , 0 ] ,0,0],
	["Bruderholz" , [ 9850 , 10130 , 0 ] ,0,0],
	["Agerifeld" , [ 8730 , 11320 , 0 ] ,0,0],
	["Oberdorf" , [ 5750 , 12040 , 0 ] ,0,0],
	["Seltisberg" , [ 5950 , 15270 , 0 ] ,0,0],
	["Neue Welt" , [ 5670 , 13940 , 0 ] ,0,0],
	["Trueb" , [ 7640 , 14300 , 0 ] ,0,0],
	["Truebsall" , [ 8450 , 14620 , 0 ] ,0,0],
	["Lenzburg" , [ 9170 , 16300 , 0 ] ,0,0],
	["Freidorf" , [ 8390 , 17440 , 0 ] ,0,0],
	["Hasenmatt" , [ 11080 , 18460 , 0 ] ,0,0],
	["Ruemlingen" , [ 10610 , 16120 , 0 ] ,0,0],
	["Hirsegg" , [ 10360 , 14350 , 0 ] ,0,0],
	["Napf" , [ 10830 , 11920 , 0 ] ,0,0],
	["Luzern" , [ 14940 , 14120 , 0 ] ,0,0],
	["Wolhusen" , [ 14240 , 12980 , 0 ] ,0,0],
	["Meggen" , [ 16080 , 15430 , 0 ] ,0,0],
	//Airports
	["NE Airport" , [ 14660 , 16790,0],0,0],
	["SW Airport",[18311.3,2289.75,0],0,0],
	["SE Airport",[18220 , 2500 ,0],0,0],
	//traders
	["Hero Trader",[5154.019, 4855.4419,0],0,0],
	["Bandit Trader",[10395.563, 8270.3369,0],0,0],
	["Boat Trader",[16864.951, 5273.5635,0],0,0],
	["North Boat Trader",[6773.3965, 16950.34,0],0,0],
	["Trader City",[12421.825, 5058.9873,0],0,0],
	["Trader City 2",[8266.668, 15482.221,0],0,0],
	["Trader City 3",[15473.157, 13187.692,0],0,0],
	["Black Market",[8243.2871, 15505.409,0],0,0]
	
	
];
