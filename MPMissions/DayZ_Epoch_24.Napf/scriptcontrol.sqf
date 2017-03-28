//Script Control - Allows you to customize the repack by turning certain scripts on or off - true = on /false = off

//////////////////////////
//		Settings		//
//////////////////////////
//Server name for watermark
server_name = "0.16 NAPF"; //Watermark Text
//Debris
MaxDynamicDebris = 100; // max number of junk that can spawn randomly on map
//Vehicles
MaxVehicleLimit = 100; //max number of vehicles that can spawn randomly on map
//player zombies
DZE_PlayerZed = false; // should players have chance of becoming a ZOMBIE when they respawn after death
//Recruit Survivors
DBMaxSurvivors = 10; // change this to the number of survivors you want, the more you add the lower your server and client FPS
//Full Moon Nights
dayz_fullMoonNights = true; // full moons at night
//Mining Veins
MaxMineVeins = 50; // max ore veins on map
//Animals
dayz_maxAnimals = 20; // max wild animals
dayz_tameDogs = true; // can dogs be tamed
//Weight
DZE_R3F_WEIGHT = true; //use weight system
//snow
snowchance = 5; //5% chance to snow on server start/restart
//Building / Plot / loot
DZE_LootSpawnTimer = 10;// how long before loot respawns in minutes 
DZE_BuildingLimit = 1000;//how many items can a player build
dayz_poleSafeArea = 50; //zombie free plot poles area size
DZE_BuildOnRoads = true; //can players build on roads
DZE_PlotPole = [100,100];	// size of plot pole area
//Medical
UnconsciousTime = 10; // default (random): UnconsciousTime = round((((random 2) max 0.1) * _damage) * 20);
BleedingTime =  30;//How long to bleed for. default (random):BleedingTime =(random 300) + 30;
BleedStandingDamage = 20; // damage per sec while standing and bleeding. default BleedStandingDamage = 30;
BleedKneelingDamage = 10; // damage per sec while kneeling and bleeding. default BleedKneelingDamage = 15;
BleedCrawlingDamage = 5; // damage per sec while crawling and bleeding. default BleedCrawlingDamage = 7.5;
DZE_selfTransfuse = true; //Self blood bag
DZE_selfTransfuse_Values = [
8000, //Blood amount
 5,  // Chance of Infection
150 //Cooldown Timer
];
//EVR 
ns_blow_playerdamage = random 2000; // damage players take when blowout happens and they unprotected
ns_blow_itemapsi = "NVGoggles"; //if player has this item they dont take damage form EVR

//Crash loot
/*
Revamped instructions by Ree
select 0 =  Locked vehicles Will not drop Loot ("Default: True") 
select 1 = The Amount of Loot Piles around destroyed vehicles ("Default: 2") out of Max amount ___?  "Max Safe Amount" 
select 2 =  Max additional loot piles On top of select 1 loot Piles  ("Default: 5")  out of Max amount ___?  "Max Safe Amount" 
select 3 =  Radius around crash site to drop loot ("Default: 5")m out of Max amount ___?  "Max Safe Amount" 
select 4 = Chance of gear being destroyed (Between 0-1, Ex: 0 = Never lost, 0.5 = Half lost, 1 = All lost)
Default: DZE_crashLootConfig = [true,2,5,5,0];
*/
DZE_crashLootConfig = [false,2,5,5,0];  // to disable loot when explodes set it to [false0,0,0,0]

///////////////////////////////
//		Scripts ON/OFF		//
//////////////////////////////
//Exploding gas stations
EXPLODING_GAS_STATION_SCRIPT = true;
//EPOCH LIFE
EPOCHLIFESCRIPT = true;
//Build house days survived
PLOTBUILDHOUSESCRIPT = true;
//WeaponSwitching
WEAPONSWITCH_SCRIPT = true;
//Convoys
ConvoyScript = true;

//locate vehicles on map
LocateVehicleScript = true;
//Server watermark
WaterMarkScript = true; //Watermark on/off
//Hot wire safes
HotwireSafeScript = true;
//Slow zombies
walkerZombieScript = true;
//Gambling ( Slotmachine, Guessing Game)
GambleingScript = true; // NO NAPF CASINO YET
//No Voice Inside chat
noVoicesidescript = true;
//Intro Music
IntroMusicScript = true;
//Server Logo
logoWatermark = true;
//Zombie free bases
ZombieFreeBaseScript = true;
//Fill oil barrels scripts
oilrigFillScript = true;
//Recruit Survivors
RecruitSurvivorsScript = true;
//Roaming Zombie Hordes
HordeScript = true;
//Base jump
BaseJumpScript = true;
//AI BUS Route
BusRouteScript = true; 
//Show marker for AI bus on map
BUSmarkerScript = true; 
//Custom Kill Message's
KillMessageScript = true;
//Weapon Mods
WeaponModScript = true;
//EVR Blowout
EVRScript = true;
//Lights
LightScript = true;
//Welcome Credits
ServerWelcomeCreditsScript = true;
//Admin Tools
AdmintoolsScript = true;
//Debug Monitor
DebugMonitorScript = true;
//deploy Bike
DeployBikeScript = true;
//Burn Tents
BurnTentsScript = true;
//Crafting
craftingScript = true;
//Suicide
SuicideScript = true;
//Binocular Fog
BinocularScript = true;
//Carepackage on self
carepackageSELFScript = true;
//Carepackage on map
carepackageMAPScript = true;
//Sirens
SirenScript = true;
//Animate MV22 wings
AnimateMV22script = true;
//Animate SUV Hatch
AnimateSUVscript = true;
//Nitro
NOSScript = true;
//Regen Blood
RegenBloodScript = true;
//Fast Rope
FastropeScript = true;
//Safezones
SafezoneScripts = true;
//Harvest Hemp
HarvestHempScript = true;
//DZGM (DayZ Group Management)
DZGMScript = true;
//Drink Water
DrinkWaterScript = true;
//Tent Sleep Healing
TentHealScript = true;
//Investigation / Detain / Arrest
ArrestScript = true;
//Trade from Vehicles / backpacks
TradeFromVehicleScript = true;
//Anti Zombie Emitter
AntiZombieEmitterScript = true;
//Zombie bait
ZombieBaitScript = true;
//Zombie bomb bait
ZombieBombScript = true;
//DZAI CLient (does not disable DZAI just the client side part)
DZAIClientScript = true;
//Take Clothes
TakeClothesScript = true;
//Bury Body
BuryHumanScript = true;
//Cannibalism
CannibalismScript = true;
//Zombie Truck
ZombieTruckScript = true;
//Hero Perks
HeroPerkScript = true;
//Walk amongst the dead
WalkAmongstDeadScript = true;
//Rob Bank
RobBankScript = true; 
//Service Points
ServicePointScript = true;
//Snow
SnowScript = true;
//Wind Dust
WindDustScript = true;
//Ground  Fog
GroundFogScript = true;
//JAEM ( Just Another Evac Mod)
JAEMScript = true;
//Advanced Alchemy Building
AdvancedAlchemyScript = true;
//Mining Script
Miningscript = true;
//Deadbody markers
deadbodyscript = true;
//Dogs
dogscript = true;
//Fishing 
Fishingscript = true;
//Radio Chatter
RadioChatterScript = true;
//////////////////////////
//		ADMIN LISTS		//
//////////////////////////
//Super Admins
SuperAdminList = [
"12", // <Your In-Game Name here>
"12" // <S-Admin In-Game Name>
];
//Admins
AdminList = [
"12", // <Admin In-Game Name>
"12" // <Admin In-Game Name>
];
//Mods
ModList = [
"12", // <Moderator In-Game Name>
"12" // <Moderator In-Game Name>
];


//CUSTOM BUILDINGS

/* 
to turn on a custom area remove the // from the front
to turn it back off add the // back in

EG
Sector FNG ON
execVM "\z\addons\dayz_server\CustomBuildings\sectorfng\sectorfng_init.sqf";

Sector FNG OFF
//execVM "\z\addons\dayz_server\CustomBuildings\sectorfng\sectorfng_init.sqf";

to turn the map markers on change false to true

*/
if (isServer) then {
//Sector FNG inland
[] execVM "\z\addons\dayz_server\CustomBuildings\sectorfng\sectorfng_init.sqf";

//Red Zone
[] execVM "\z\addons\dayz_server\CustomBuildings\insel.sqf";

//Blitz Island
[] ExecVM "\z\addons\dayz_server\CustomBuildings\blitz-island.sqf";

//Magden
[] ExecVM "\z\addons\dayz_server\CustomBuildings\Magden.sqf";

//Napf_small_base
[] ExecVM "\z\addons\dayz_server\CustomBuildings\Napf_small_base.sqf";

//Blitz Island
[] ExecVM "\z\addons\dayz_server\CustomBuildings\neisland.sqf";

//aircraftcarrier
[] ExecVM "\z\addons\dayz_server\CustomBuildings\BSRLHD.sqf";

//BSRbridge
[] ExecVM "\z\addons\dayz_server\CustomBuildings\Bsrbridge.sqf";

//BSRSEAF
[] ExecVM "\z\addons\dayz_server\CustomBuildings\Bsrseaf.sqf";

//Feld
[] ExecVM "\z\addons\dayz_server\CustomBuildings\feldmoos.sqf";

//Oil Rigs
[] ExecVM "\z\addons\dayz_server\CustomBuildings\oilrig1.sqf";

//Bank
[] ExecVM "\z\addons\dayz_server\CustomBuildings\bank_building.sqf";
};

// DO NOT CHANGE THIS!!

//set adminlist to be all admins
AdminList = AdminList + SuperAdminList; 
//Manage Doors Admins
DoorAdminList = AdminList;
//ADMIN BUILD
WG_adminBuild = AdminList;
Admin_Crafting = AdminList;

//Repack version 
REPACKMOD = "0.16 Overpoch NAPF"; 
BUILDNUMBER = "57";


