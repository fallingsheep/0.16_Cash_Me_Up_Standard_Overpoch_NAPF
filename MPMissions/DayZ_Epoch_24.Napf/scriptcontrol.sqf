//Script Control - Allows you to customize the repack by turning certain scripts on or off - true = on /false = off


//Server watermark
WaterMarkScript = true; //Watermark on/off
server_name = "0.15 NAPF"; //Watermark Text
//Gambling ( Slotmachine, Guessing Game)
GambleingScript = false; // NO NAPF CASINO YET
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
//Repack version 
REPACKMOD = "Overpoch NAPF"; 
BUILDNUMBER = "38";


