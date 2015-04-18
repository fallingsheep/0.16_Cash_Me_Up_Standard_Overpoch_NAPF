//////////////////////////////////////////////////////////////
//New Bank AI by Spodermayt, for Darihon's Bank Raid Script.//
/////////////////////////15.10.2014///////////////////////////

private ["_squad1","_squad2","_squad3","_squad4","_squad5","_squad6","_squad7","_squad8","_squad9","_squad10","_squad11","_squad12","_squad13","_squad14","_squad15","_squad16","_squad17","_squad18","_squad19","_squad20","_squad21","_squad22","_squad23","_squad24","_squad25","_squadDriver","_squadGunner"];

execVM "scripts\rob\bank_config.sqf";
sleep 0.5;

if(_debugBank == 1) then {
	systemChat "[DEBUG] AI successfully executed.";
};

if (_suv_enabled == 1) then {
	execVM "scripts\rob\ai_suv.sqf";
};

//Init (create center etc)
_CENTER = createCenter east; //Creates Center.
_aiGroup = createGroup east; //Creates a Group.
EAST setFriend [WEST,0]; //Sets West (Survivors) as hostile.
_target = [6258.8682, 10038.864, 1.1120623]; //Waypoint to Bank.

//Spawn 25 AI's.
_squad1 = _aiGroup createUnit ["Policeman",[6117.0615, 10082.4253, -3.0517578e-005], [], 10, "PRIVATE"];
_squad2 = _aiGroup createUnit ["Policeman",[6116.8257, 10083.9414, 3.0517578e-005], [], 10, "PRIVATE"];
_squad3 = _aiGroup createUnit ["Policeman",[6165.1577, 10068.9253, 3.0517578e-005], [], 10, "PRIVATE"];
_squad4 = _aiGroup createUnit ["Policeman",[6165.2744, 10067.1851, 0.00012207031], [], 10, "PRIVATE"];
_squad5 = _aiGroup createUnit ["Policeman",[6135.9312, 10083.7476, 6.1035156e-005], [], 10, "PRIVATE"];
_squad6 = _aiGroup createUnit ["Policeman",[6136.8037, 10083.9746, 3.0517578e-005], [], 10, "PRIVATE"];
_squad7 = _aiGroup createUnit ["Policeman",[6120.5835, 10097.4673, 6.1035156e-005], [], 10, "PRIVATE"];
_squad8 = _aiGroup createUnit ["Policeman",[6118.9585, 10096.4248, -3.0517578e-005], [], 10, "PRIVATE"];
_squad9 = _aiGroup createUnit ["Policeman",[6102.9878, 10081.5625, 3.0517578e-005], [], 10, "PRIVATE"];
_squad10 = _aiGroup createUnit ["Policeman",[6101.709, 10082.1987, 3.0517578e-005], [], 10, "PRIVATE"];
_squad11 = _aiGroup createUnit ["Policeman",[6154.3481, 10004.5303, 3.0517578e-005], [], 10, "PRIVATE"];
_squad12 = _aiGroup createUnit ["Policeman",[6153.354, 10005.8223, 3.0517578e-005], [], 10, "PRIVATE"];
_squad13 = _aiGroup createUnit ["Policeman",[6151.3467, 10056.7314, 9.1552734e-005], [], 10, "PRIVATE"];
_squad14 = _aiGroup createUnit ["Policeman",[6150.1733, 10058.5913, 9.1552734e-005], [], 10, "PRIVATE"];
_squad15 = _aiGroup createUnit ["Policeman",[6150.2402, 10056.0337, 3.0517578e-005], [], 10, "PRIVATE"];
_squad16 = _aiGroup createUnit ["Policeman",[6148.9692, 10055.5972, -3.0517578e-005], [], 10, "PRIVATE"];
_squad17 = _aiGroup createUnit ["Policeman",[6147.2456, 10057.4097, 0], [], 10, "PRIVATE"];
_squad18 = _aiGroup createUnit ["Policeman",[6149.0371, 10057.7861, 9.1552734e-005], [], 10, "PRIVATE"];
_squad19 = _aiGroup createUnit ["Policeman",[6148.937, 10060.5503, 0], [], 10, "PRIVATE"];
_squad20 = _aiGroup createUnit ["Policeman",[6147.5586, 10059.8584, 6.1035156e-005], [], 10, "PRIVATE"];
_squad21 = _aiGroup createUnit ["Policeman",[6146.3003, 10059.0952, 0], [], 10, "PRIVATE"];
_squad22 = _aiGroup createUnit ["Policeman",[6100.5786, 10070.1196, -3.0517578e-005], [], 10, "PRIVATE"];
_squad23 = _aiGroup createUnit ["Policeman",[6199.7778, 10067.9043, 0.00012207031], [], 10, "PRIVATE"];
_squad24 = _aiGroup createUnit ["Policeman",[6199.0522, 10065.7212, 9.1552734e-005], [], 10, "PRIVATE"];
_squad25 = _aiGroup createUnit ["Policeman",[6199.4536, 10062.8257, 0.00012207031], [], 10, "PRIVATE"];

if(_debugBank == 1) then {
	systemChat "[DEBUG AI] Units Created.";
};

//Add everyone to a "master" group.
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] joinSilent _unitGroup;

//Give everyone weapons.
_squad1 addWeapon "M4A3_CCO_EP1";
_squad1 addMagazine "30Rnd_556x45_Stanag";
_squad1 addMagazine "30Rnd_556x45_Stanag";
_squad2 addWeapon "M4A1_Aim";
_squad2 addMagazine "30Rnd_556x45_Stanag";
_squad2 addMagazine "30Rnd_556x45_Stanag";
_squad3 addWeapon "M240_DZ";
_squad3 addMagazine "100Rnd_762x51_M240";
_squad3 addMagazine "100Rnd_762x51_M240";
_squad4 addWeapon "M240_DZ";
_squad4 addMagazine "100Rnd_762x51_M240";
_squad4 addMagazine "100Rnd_762x51_M240";
_squad5 addWeapon "M240_DZ";
_squad5 addMagazine "100Rnd_762x51_M240";
_squad5 addMagazine "100Rnd_762x51_M240";
_squad6 addWeapon "M4A1_Aim";
_squad6 addMagazine "30Rnd_556x45_Stanag";
_squad6 addMagazine "30Rnd_556x45_Stanag";
_squad7 addWeapon "DMR_DZ";
_squad7 addMagazine "20Rnd_762x51_DMR";
_squad7 addMagazine "20Rnd_762x51_DMR";
_squad8 addWeapon "DMR_DZ";
_squad8 addMagazine "20Rnd_762x51_DMR";
_squad8 addMagazine "20Rnd_762x51_DMR";
_squad9 addWeapon "M4A3_CCO_EP1";
_squad9 addMagazine "30Rnd_556x45_Stanag";
_squad9 addMagazine "30Rnd_556x45_Stanag";
_squad10 addWeapon "Remington870_lamp";
_squad10 addMagazine "8Rnd_B_Beneli_Pellets";
_squad10 addMagazine "8Rnd_B_Beneli_Pellets";
_squad11 addWeapon "M4A3_CCO_EP1";
_squad11 addMagazine "30Rnd_556x45_Stanag";
_squad11 addMagazine "30Rnd_556x45_Stanag";
_squad12 addWeapon "M4A1_Aim";
_squad12 addMagazine "30Rnd_556x45_Stanag";
_squad12 addMagazine "30Rnd_556x45_Stanag";
_squad13 addWeapon "M240_DZ";
_squad13 addMagazine "100Rnd_762x51_M240";
_squad13 addMagazine "100Rnd_762x51_M240";
_squad14 addWeapon "M4A3_CCO_EP1";
_squad14 addMagazine "30Rnd_556x45_Stanag";
_squad14 addMagazine "30Rnd_556x45_Stanag";
_squad15 addWeapon "M4A1_Aim";
_squad15 addMagazine "30Rnd_556x45_Stanag";
_squad15 addMagazine "30Rnd_556x45_Stanag";
_squad16 addWeapon "M4A3_CCO_EP1";
_squad16 addMagazine "30Rnd_556x45_Stanag";
_squad16 addMagazine "30Rnd_556x45_Stanag";
_squad17 addWeapon "M4A1_Aim";
_squad17 addMagazine "30Rnd_556x45_Stanag";
_squad17 addMagazine "30Rnd_556x45_Stanag";
_squad18 addWeapon "Remington870_lamp";
_squad18 addMagazine "8Rnd_B_Beneli_Pellets";
_squad18 addMagazine "8Rnd_B_Beneli_Pellets";
_squad19 addWeapon "Remington870_lamp";
_squad19 addMagazine "8Rnd_B_Beneli_Pellets";
_squad19 addMagazine "8Rnd_B_Beneli_Pellets";
_squad20 addWeapon "Remington870_lamp";
_squad20 addMagazine "8Rnd_B_Beneli_Pellets";
_squad20 addMagazine "8Rnd_B_Beneli_Pellets";
_squad21 addWeapon "M4A3_CCO_EP1";
_squad21 addMagazine "30Rnd_556x45_Stanag";
_squad21 addMagazine "30Rnd_556x45_Stanag";
_squad22 addWeapon "M4A1_Aim";
_squad22 addMagazine "30Rnd_556x45_Stanag";
_squad22 addMagazine "30Rnd_556x45_Stanag";
_squad23 addWeapon "M240_DZ";
_squad23 addMagazine "100Rnd_762x51_M240";
_squad23 addMagazine "100Rnd_762x51_M240";
_squad24 addWeapon "M240_DZ";
_squad24 addMagazine "100Rnd_762x51_M240";
_squad24 addMagazine "100Rnd_762x51_M240";
_squad25 addWeapon "M240_DZ";
_squad25 addMagazine "100Rnd_762x51_M240";
_squad25 addMagazine "100Rnd_762x51_M240";

if(_debugBank == 1) then {
	systemChat "[DEBUG AI] Gave Weapons to AI.";
};

//Set Skills.
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setSkill ["aimingspeed", 0.3];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setSkill ["spotdistance", 0.3];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setSkill ["aimingaccuracy", 0.3];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setSkill ["aimingshake", 0.3];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setSkill ["spottime", 0.3];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setSkill ["spotdistance", 0.4];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setSkill ["commanding", 0.4];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setSkill ["general", 0.5];
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] enableAI "TARGET";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] enableAI "AUTOTARGET";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] enableAI "MOVE";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] enableAI "ANIM";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] enableAI "FSM";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setCombatMode "RED";
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] setBehaviour "COMBAT";
//Move units to bank.
[_squad1,_squad2,_squad3,_squad4,_squad5,_squad6,_squad7,_squad8,_squad9,_squad10,_squad11,_squad12,_squad13,_squad14,_squad15,_squad16,_squad17,_squad18,_squad19,_squad20,_squad21,_squad22,_squad23,_squad24,_squad25] moveTo _target;
if(_debugBank == 1) then {
	systemChat "[DEBUG AI] Set Units Skills.";
};