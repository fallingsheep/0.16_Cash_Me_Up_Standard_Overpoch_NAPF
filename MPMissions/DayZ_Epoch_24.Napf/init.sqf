/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/

DBGroupsStarted = false;
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];
//Load Configs
call compile preprocessFileLineNumbers "scriptcontrol.sqf";
//Load Markers
[] execVM "scripts\custommarkers.sqf";
//REALLY IMPORTANT VALUES
dayZ_instance =	24;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epoch config
heliLift = true; // for dogs
spawnShoremode = 0;
spawnArea= 1500; // Default = 1500
setTerrainGrid 50;    //Grass (Hi)12.5 or 25(Med/standard) or 50(Low/off)
dayz_MapArea = 25000; // Default = 10000
dayz_maxLocalZombies = 20; // Default = 30 
dayz_spawnselection = 0;
dayz_paraSpawn = false;
dayz_minpos = -1000; 
dayz_maxpos = 26000;
dayz_sellDistance_vehicle = 10;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 40;
DynamicVehicleDamageLow = 20; // Default: 0
DynamicVehicleDamageHigh = 100; // Default: 100
DZE_requireplot = 1;
DZE_teleport = [14000,14000,14000,14000,14000];//needed for admin teleport
DZE_StaticConstructionCount = 1;
DZE_FriendlySaving = true;
DZE_TRADER_SPAWNMODE = false;
DZE_DeathMsgGlobal = true;
DZE_DeathMsgTitleText = true;
DZE_DeathMsgSide = true;
DZE_BackpackGuard = false; //Default = true, true to enable, false to disable - wipes backpack on combat/ALT+F4 logging
DZE_ForceNameTagsOff = false;
DZE_MissionLootTable = true; //Custom Loot Tables
DZE_ConfigTrader = true;//Config based traders
DZE_noRotate = []; //Objects that cannot be rotated. Ex: DZE_noRotate = ["VaultStorageLocked"]
DZE_curPitch = 45; //Starting rotation angle. Only 1, 5, 45, or 90.

//Door Mangement
AllowManualCode = true;// 2 reason| 1: Allows breaking codes (if 2nd config = false and code = 3 digits) | 2: Friends can access access not owned doors until owner gets on.
HarderPenalty = true;// Cen's Penalty: Flashes screen white. And kicks player to lobby if failed more then (random number between 4 and 14) times.
DZE_DoorsLocked = ["Land_DZE_GarageWoodDoorLocked","Land_DZE_LargeWoodDoorLocked","Land_DZE_WoodDoorLocked","CinderWallDoorLocked_DZ","CinderWallDoorSmallLocked_DZ"];

//EVR Blow out
ns_blowout = true;
ns_blowout_dayz = true;
ns_blow_delaymod = 0.74; //blowout delay
ns_blow_emp = false;

//Elevator
ElevatorScript = true;
ELE_MaxRange = 100; // maximum range the elevator can travel / stop points can be built (in meter)
ELE_Speed = 5; // speed of the elevator (meters per second)
ELE_StopWaitTime = 0; // disable the wait time if you call the elevator
ELE_RequiredBuildTools = ["ItemToolbox", "ItemCrowbar"]; // required tools for building an elevator and elevator stop
ELE_RequiredBuildItems = [["PartGeneric",4], "PartEngine", "ItemGenerator", "ItemJerrycan"]; // required items to build an elevator
ELE_RequiredBuildStopItems = [["PartGeneric",4]]; // required items to build an elevator stop
ELE_StopClass = "MetalFloor_Preview_DZ";

	EpochEvents = [
	["any","any","any","any",30,"crash_spawner"],
	["any","any","any","any",10,"oreveins"], 
	["any","any","any","any",0,"crash_spawner"],
	["any","any","any","any",25,"crash_spawner"],
	["any","any","any","any",18,"oreveins"], 
	["any","any","any","any",15,"supply_drop"],
	["any","any","any","any",50,"supply_drop"],
	["any","any","any","any",10,"Military"], 
	["any","any","any","any",25,"Treasure"], 
	["any","any","any","any",40,"Supplyitems"],
	["any","any","any","any",35,"oreveins"], 	
	["any","any","any","any",55,"Construction"]
	];

//Load in compiled functions
call compile preprocessFileLineNumbers "fixes\variables.sqf";
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "fixes\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.3;
call compile preprocessFileLineNumbers "fixes\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";				//Compile regular functions
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "ZSC\gold\ZSCinit.sqf";
call compile preprocessFileLineNumbers "fixes\compiles.sqf";
progressLoadingScreen 0.6;
call compile preprocessFileLineNumbers "scripts\Buildables\Crafting_Compiles.sqf";
progressLoadingScreen 0.7;
call compile preprocessFileLineNumbers "server_traders_napf_24.sqf";				//Compile trader configs
progressLoadingScreen 0.8;
call compile preprocessFileLineNumbers "logistic\init.sqf";
progressLoadingScreen 0.9;
call compile preprocessFileLineNumbers "admintools\AdminList.sqf"; // Epoch admin Tools variables/UIDs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_24.Napf\dynamic_vehicle.sqf";
	//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_24.Napf\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_server\system\server_monitor.sqf";
	
	if(EXPLODING_GAS_STATION_SCRIPT)then{
		_gasstations = [] execVM "scripts\fuelexplosion.sqf";
	};
	
};

endLoadingScreen; // Work around for loadscreen freeze

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	if (IntroMusicScript) then {
		 _id = player addEventHandler ["Respawn", {
			 _id = [] spawn player_death; 
			 [] execVM "scripts\intromusic\intromusic.sqf";
			 _nul = [] execVM "addin\plrInit.sqf";
			 }
		 ];
	}else{
		_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	};
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	//Coins
	execVM "ZSC\compiles\playerHud.sqf";
	//ESS V2
	execVM "scripts\spawn\start.sqf";
	//Radio chatter
	if (RadioChatterScript) then{
		//msgChance,sleepTimer,DayZ 1.8 users set to true
		[0.15, 600, false] execVM "scripts\radioChatter.sqf";
	};

	
if (((getPlayerUID player) in AdminList)||((getPlayerUID player) in ModList))then{
//dont load the antihack so admin tools work properly
}else{
     [] execVM "admintools\antihack\antihack.sqf"; // Epoch Antihack with bypass
    };
	//Lights
	if (LightScript) then{
		[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	};
	
	_nil =  execVM "scripts\VASP\VASP_init.sqf";
	
	//Right Click Actions
	call compile preprocessFileLineNumbers "scripts\click_actions\init.sqf";
	//Safezone
	if (SafezoneScripts) then {
		//Community Safezones
		execVM "scripts\CAGN\initiate.sqf";	
	};
		//DZGM
	if (DZGMScript) then {
		execVM "scripts\dzgm\init.sqf";
	};
	if (TradeFromVehicleScript) then {
	[] execVM "scripts\TradeFromVehicle Version 2.0\setup\init.sqf";
	};
	if (ElevatorScript) then{
		["elevator"] execVM "scripts\elevator\elevator_init.sqf";
	};
	//DZAI Client
	if (DZAIClientScript) then{
	_nul = [] execVM "DZAI_Client\dzai_initclient.sqf";
	};
	//Service Points
	if (ServicePointScript) then{
		execVM "scripts\service_point\service_point.sqf";
	};
	//Debug Monitor
	if(DebugMonitorScript)then{
	debugMonitor = true;//default on
		if (!isDedicated) then {
		waitUntil {!isNil "PVDZE_plr_LoginRecord"};
			execVM "scripts\DebugMonitor\debug_monitor.sqf";
		};
	};
	if (JAEMScript) then {
		_nil = [] execVM "scripts\JAEM\EvacChopper_init.sqf";
	};
	if(KillMessageScript)then{
		execVM "scripts\CustomKillMessage\kill_msg.sqf";
	};
};
//needs to be commented out for kill messages
//#include "\z\addons\dayz_code\system\REsec.sqf";
//Convoy Script
if (ConvoyScript)then{
	if (isServer) then {
		execVM "andre_convoy\andre_convoy.sqf";
	};
};
//Bus Route
if (BusRouteScript)then{
	if (isServer) then {
		[true] execVM "scripts\busroute\init_bus.sqf";
	};
	if (!isDedicated) then {
		[] execVM "scripts\busroute\player_axeBus.sqf";
	};
};
//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

if(SnowScript)then{
	if (isServer) then {
		if((random 100) < snowchance)then{
			[] execVM "scripts\Weather\SnowStorm.sqf";//FPS HIT
		};
	};
};
if(WindDustScript)then{
	execVM "scripts\Weather\WindDust.sqf"; //FPS HIT
};
if(GroundFogScript)then{
	execVM "scripts\Weather\ground_fog.sqf"; //FPS HIT
};
if(WEAPONSWITCH_SCRIPT)then{
	if (!isserver) then {
		execvm "scripts\weaponswitch\weaponHud.sqf";
	};
};

#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf";

endLoadingScreen; // Work around for loadscreen freeze
//EVR Blow out
if(EVRScript)then{
if (isServer) then { _bul = [ns_blow_emp] execVM "scripts\blowout\module\blowout_server.sqf"; };
if (!isDedicated) then { _bul = [] execVM "scripts\blowout\module\blowout_client.sqf"; };
};
if (isServer) then{
	if(RobBankScript)then{
		execVM "scripts\rob\bank_building.sqf";
	};
};

if(HarvestHempScript)then{
	if (isServer) then {
	//Hemp
	execVM "scripts\HarvestHemp\randomweedfarm.sqf";
	};
};
	//DayZ Watermark
if(WaterMarkScript)then{
	if (!isNil "server_name") then {
	  [] spawn {
		  waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		  waituntil {!(isNull (findDisplay 46))};
		  5 cutRsc ["wm_disp","PLAIN"];
		  ((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText server_name;
	  };
	};
};
if(logoWatermark)then{
	_piclogo = "pictures\logo.paa";
	[
		'<img align=''left'' size=''1.0'' shadow=''0'' image='+(str(_piclogo))+' />',
		safeZoneX+0.027,
		safeZoneY+safeZoneH-0.1,
		99999,
		0,
		0,
		3090
	] spawn bis_fnc_dynamicText;
};
if(RecruitSurvivorsScript)then{
	if (isServer) then {
		DBPV_SrvrUnits = [];
		publicVariable "DBPV_SrvrUnits";
		DBCurSurvivors = 0;
		publicVariable "DBCurSurvivors";
		DBSGroups = false;
		publicVariable "DBSGroups";
		DBUpdClient = false;
		publicVariable "DBUpdClient";
	};
		[] execVM "scripts\dbgroups\init.sqf";
	if (!isDedicated) then {
		[] execVM "scripts\dbgroups\scripts\scp_srvractions.sqf";
		[] execVM "scripts\dbgroups\scripts\scp_adjustrating.sqf";
		DBUpdClient = true; // update survivor variables
		publicVariable "DBUpdClient";
	};
};	

if(FastropeScript)then{
	_fast_roping = [] execVM "scripts\Fastrope\BTC_fast_roping_init.sqf";
};
if(RegenBloodScript)then{
	//Regen Blood
	 execVM "scripts\RegenBlood\regenblood.sqf";
};

if(ZombieTruckScript)then{
//Zombie Truck
call compile preprocessFileLineNumbers "scripts\zombietruck\init.sqf";
};
if(WalkAmongstDeadScript)then{
	call compile preprocessFileLineNumbers "scripts\walkamongstthedead\config.sqf";
};
if(HeroPerkScript)then{
	//hero spawn
	call compile preprocessFileLineNumbers "scripts\HeroPerks\heroperk.sqf";
};

[]execVM "scripts\gambling\slotmachine\slots.sqf";
[]execVM "scripts\gambling\guessinggame\guess.sqf";

if(WeaponModScript)then{
	call compile preprocessFileLineNumbers "scripts\wmod\init.sqf";
};
//Base jump
if(BaseJumpScript)then{
	call compile preprocessFileLineNumbers "scripts\baseJump\init.sqf";  
};
If(ZombieFreeBaseScript)then{
	[] execVM "scripts\safebases\base_SafeArea.sqf";
};
//Admin Tools
if(AdmintoolsScript)then{
	[] execVM "admintools\Activate.sqf";
};
if(noVoicesidescript)then{
    call compile preprocessFileLineNumbers "scripts\noVoice.sqf";                              
};
if(Miningscript)then{
	[] execVM 'scripts\mining\init.sqf';
};
if(deadbodyscript)then{
	[] execVM 'scripts\deadbodymarkers.sqf';
};
if(dogscript)then{ 
	if (isServer) then {
		dogOwner = [];
	 };
	_nul = [] execVM "addin\vehInit.sqf";
};
if(Fishingscript)then{
	[] execVM 'scripts\fishing\init.sqf';
 };
//Admin skin
{
	_adminated = _x getVariable ["adminated",0];
	if( !isNil "_adminated" &&  _adminated != 0)then{
	_x setObjectTexture [0, "pictures\admin.jpg"];
	};
}forEach playableUnits; // if your antihack doesnt allow this use nearestObjects[player, ["Survivor2_DZ"],25000];
endLoadingScreen; // Work around for loadscreen freeze

diag_log format ["REPACK VERSION: %1 - build %2", REPACKMOD, BUILDNUMBER];