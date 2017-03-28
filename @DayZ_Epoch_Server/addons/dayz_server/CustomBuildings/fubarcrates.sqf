//Special crates for fubar by kpw

if (isServer) then {

		_vehicle_100 = objNull;
		
		if (true) then
		{
		  _this = createVehicle ["SpecialWeaponsBox", [10088.619, 7566.7227], [], 0, "CAN_COLLIDE"];
		  _vehicle_106 = _this;
		  _this setDir 20;
          _this setVariable ["permaLoot",true];
		  
		  clearWeaponCargoGlobal _this;
		  clearMagazineCargoGlobal _this;

		  
		  _this addMagazineCargoGlobal ["ItemBriefcase100oz",6];
		  _this addMagazineCargoGlobal ["ItemVault",2];
		
		};
		_vehicle_101 = objNull;
		
		if (true) then
		{
		  _this = createVehicle ["SpecialWeaponsBox", [10096.636, 7546.7588], [], 0, "CAN_COLLIDE"];
		  _vehicle_107 = _this;
		  _this setDir 20;
		  _this setVariable ["permaLoot",true];

		  clearWeaponCargoGlobal _this;
		  clearMagazineCargoGlobal _this;

		  _this addWeaponCargoGlobal ["SCAR_L_CQC_CCO_SD",1];
		  _this addWeaponCargoGlobal ["SCAR_L_CQC",1];
		  _this addWeaponCargoGlobal  ["SCAR_L_CQC_Holo",1];
		  _this addWeaponCargoGlobal  ["SCAR_L_CQC_EGLM_Holo",1];
		  _this addWeaponCargoGlobal  ["SCAR_L_STD_EGLM_RCO",1];
		  _this addWeaponCargoGlobal  ["SCAR_L_STD_HOLO",1];
		  _this addWeaponCargoGlobal  ["SCAR_L_STD_Mk4CQT",1];
		  _this addWeaponCargoGlobal  ["SCAR_H_CQC_CCO",1];
		  _this addWeaponCargoGlobal  ["SCAR_H_CQC_CCO_SD",1];
		  _this addWeaponCargoGlobal  ["SCAR_H_STD_EGLM_Spect",1];
		  _this addWeaponCargoGlobal  ["SCAR_H_LNG_Sniper",1];
		  _this addWeaponCargoGlobal  ["SCAR_H_LNG_Sniper_SD",1];
		  _this addMagazineCargoGlobal ["30Rnd_556x45_StanagSD",5];
		  _this addMagazineCargoGlobal ["30Rnd_556x45_G36SD",5];
		  _this addMagazineCargoGlobal ["30Rnd_556x45_Stanag",30];
		  _this addMagazineCargoGlobal ["20Rnd_762x51_B_SCAR",15];
		  _this addMagazineCargoGlobal ["20Rnd_762x51_SB_SCAR",10];
		  _this addMagazineCargoGlobal ["1Rnd_HE_M203",25];
		
		};
		_vehicle_102 = objNull;
		
		if (true) then
		{
		  _this = createVehicle ["SpecialWeaponsBox", [10080.707, 7557.439], [], 0, "CAN_COLLIDE"];
		  _vehicle_108 = _this;
		  _this setDir 20;
		  _this setVariable ["permaLoot",true];

		  clearWeaponCargoGlobal _this;
		  clearMagazineCargoGlobal _this;

		  
		  _this addWeaponCargoGlobal ["m107",1];
		  _this addWeaponCargoGlobal [" BAF_AS50_scoped",1];
		  _this addMagazineCargoGlobal ["10Rnd_127x99_m107",10];
		  _this addMagazineCargoGlobal ["5Rnd_127x99_as50",10];
		  		
		};
		_vehicle_103 = objNull;
		
		if (true) then
		{
		  _this = createVehicle ["SpecialWeaponsBox", [10096.636, 7546.7588], [], 0, "CAN_COLLIDE"];
		  _vehicle_109 = _this;
		  _this setDir 20;
		  _this setVariable ["permaLoot",true];

		  clearWeaponCargoGlobal _this;
		  clearMagazineCargoGlobal _this;

		  _this addWeaponCargoGlobal ["Javelin",1];
		  _this addWeaponCargoGlobal ["Stinger",1];
		  _this addWeaponCargoGlobal  ["Igla",1];
		  _this addWeaponCargoGlobal  ["M136",1];
		  _this addWeaponCargoGlobal  ["M47Launcher_EP1",1];
		  _this addWeaponCargoGlobal  ["MAAWS",1];
		  _this addWeaponCargoGlobal  ["MetisLauncher",1];
		  _this addWeaponCargoGlobal  ["RPG7V",1];
		  _this addWeaponCargoGlobal  ["RPG18",1];
		  _this addMagazineCargoGlobal ["Javelin",5];
		  _this addMagazineCargoGlobal ["Stinger",5];
		  _this addMagazineCargoGlobal ["Igla",5];
		  _this addMagazineCargoGlobal ["M136",5];
		  _this addMagazineCargoGlobal ["Dragon_EP1",5];
		  _this addMagazineCargoGlobal ["MAAWS_HEDP",5];
		  _this addMagazineCargoGlobal ["AT13",5];
		  _this addMagazineCargoGlobal ["PG7V",5];
		  _this addMagazineCargoGlobal ["RPG18",5];
		
		};
		_vehicle_104 = objNull;
		
		if (true) then
		{
		  _this = createVehicle ["SpecialWeaponsBox", [10104.833, 7557.1543, 0], [], 0, "CAN_COLLIDE"];
		  _vehicle_110 = _this;
		  _this setDir 20;
		  _this setVariable ["permaLoot",true];

		  clearWeaponCargoGlobal _this;
		  clearMagazineCargoGlobal _this;

		  _this addWeaponCargoGlobal ["M14_EP1",1];
		  _this addWeaponCargoGlobal ["M16A2",1];
		  _this addWeaponCargoGlobal  ["M16A2GL",1];
		  _this addWeaponCargoGlobal  ["M4A1",1];
		  _this addWeaponCargoGlobal  ["M4A3_RCO_GL_EP1",1];
		  _this addWeaponCargoGlobal  ["M4A3_CCO_EP1",1];
		  _this addWeaponCargoGlobal  ["DMR",3];
		  _this addMagazineCargoGlobal ["20Rnd_762x51_DMR",25];
		  _this addMagazineCargoGlobal ["30Rnd_556x45_Stanag",25];
		
		};
		_vehicle_105 = objNull;
		
		if (true) then
		{
		  _this = createVehicle ["SpecialWeaponsBox", [10110.289, 7562.8955, 0], [], 0, "CAN_COLLIDE"];
		  _vehicle_111 = _this;
		  _this setDir 20;
          _this setVariable ["permaLoot",true];
		  
		  clearWeaponCargoGlobal _this;
		  clearMagazineCargoGlobal _this;

		  _this addWeaponCargoGlobal ["MG36_camo",1];
		  _this addWeaponCargoGlobal ["m240_scoped_EP1",1];
		  _this addWeaponCargoGlobal  ["M249_EP1",1];
		  _this addWeaponCargoGlobal  ["M249_m145_EP1",1];
		  _this addWeaponCargoGlobal  ["Mk_48_DES_EP1",1];
		  _this addWeaponCargoGlobal  ["PK",1];
		  _this addWeaponCargoGlobal  ["RPK_74",1];
		  _this addWeaponCargoGlobal  ["M60A4_EP1",1];
		  _this addMagazineCargoGlobal ["100Rnd_556x45_BetaCMag",5];
		  _this addMagazineCargoGlobal ["100Rnd_762x51_M240",15];
		  _this addMagazineCargoGlobal ["200Rnd_556x45_M249",10];
		  _this addWeaponCargoGlobal ["100Rnd_762x54_PK",5];
		  _this addWeaponCargoGlobal ["75Rnd_545x39_RPK",10];
		
		};
	
		};