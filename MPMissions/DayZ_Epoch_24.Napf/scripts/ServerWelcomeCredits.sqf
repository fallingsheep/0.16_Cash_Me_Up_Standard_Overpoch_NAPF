// FILENAME: server_WelcomeCredits.sqf
// SCRIPT NAME: Server Intro Credits Script by IT07
// SCRIPT VERSION: v1.3.7 BETA
// Credits for original script: Bohemia Interactive http://bistudio.com
_onScreenTime = 5; //how long one role should stay on screen. Use value from 0 to 10 where 0 is almost instant transition to next role
waitUntil {!isNil "dayz_animalCheck"};
sleep 30; //Wait in seconds before the credits start after player IS ingame
_role1 = "Welcome to";
_role1names = ["Sheeps Epoch NAPF repack","0.15 - Sheeps Back Baby!"];
_role2 = "Admins";
_role2names = ["Falligsheep", "Zombiesheep", "Crazy Sheep"];
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names]//make SURE the last one here does NOT have a , at the end
];