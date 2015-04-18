/*    
    For DayZ Epoch
    Single Zed spawn by axeman
*/
if(HordeScript) then {
private ["_zedTypes","_zedType","_zedPos","_agent","_zedTarget"];
_zedTypes = ["pz_policeman","pz_suit1","pz_suit2","pz_worker1","pz_worker2","pz_worker3","pz_doctor","pz_teacher","pz_hunter","pz_villager1","pz_villager2","pz_villager3","pz_priest"];
_zedPos = [6642.4,2439.6,0];//Position to spawn the Zed - Chernogorsk Central Garden
_zedTarget = [5956,7960,0];//Give the poor zed somewhere to walk to - Somewhere near Stary Sobor

_i = 1;
for "_i" from 1 to 10 do // spawns between 1 and 10 zombies
{
//random zed skin
_zedType = _zedTypes call BIS_fnc_selectRandom;

_agent = createAgent [_zedType, _zedPos, [], 40, "NONE"];
_agent disableAI "FSM";
_agent disableAI "AUTOTARGET";
_agent setBehaviour "COMBAT";
_agent setCombatMode "GREEN";
_agent setSkill 0;
_agent setUnitPos "UP";
_agent moveTo _zedTarget;
_agent forceSpeed 2;
[_zedPos,_agent,_zedTarget] execFSM "\z\addons\dayz_code\system\zombie_agent.fsm";//Set the normal Zed behaviour
};
};