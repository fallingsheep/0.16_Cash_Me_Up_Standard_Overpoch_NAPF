waitUntil {uiSleep 0.25;(!isNil "PVDZE_plr_LoginRecord")};
if (count units group player > 1) then {[player] join grpNull;};

acceptGroupInvite = compile preprocessFileLineNumbers "scripts\dzgm\acceptGroupInvite.sqf";
declineGroupInvite = compile preprocessFileLineNumbers "scripts\dzgm\declineGroupInvite.sqf";
disbandGroup = compile preprocessFileLineNumbers "scripts\dzgm\disbandGroup.sqf";
inviteToGroup = compile preprocessFileLineNumbers "scripts\dzgm\inviteToGroup.sqf";
kickFromGroup = compile preprocessFileLineNumbers "scripts\dzgm\kickFromGroup.sqf";
leaveGroup = compile preprocessFileLineNumbers "scripts\dzgm\leaveGroup.sqf";
mapLoop = compile preprocessFileLineNumbers "scripts\dzgm\mapLoop.sqf";
playerSelectChange = compile preprocessFileLineNumbers "scripts\dzgm\playerSelectChange.sqf";
updatePlayerList = compile preprocessFileLineNumbers "scripts\dzgm\updatePlayerList.sqf";
tagName = true;
	
if (isNil "dzgmInit") then {call compile preprocessFileLineNumbers "scripts\dzgm\icons.sqf";};
uiSleep 1;
[] spawn dzgmInit;
[] spawn mapLoop;
systemChat "Right click on radio to open group management";