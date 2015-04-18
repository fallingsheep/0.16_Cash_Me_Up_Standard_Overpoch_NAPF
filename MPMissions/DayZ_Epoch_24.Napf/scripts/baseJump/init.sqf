/********************
	BaseJump 0.3
	Author: Nightmare @ http://n8m4re.de
********************/
if (!isDedicated) then {
	BJ_INIT_READY = false;
	call compile preprocessFileLineNumbers "scripts\basejump\compiles.sqf";
	waitUntil{BJ_INIT_READY};
	[] spawn BJ_MONITOR;
};