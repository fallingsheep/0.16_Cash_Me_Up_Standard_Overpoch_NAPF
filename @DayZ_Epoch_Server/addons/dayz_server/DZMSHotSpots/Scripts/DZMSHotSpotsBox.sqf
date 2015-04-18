/*
	Usage: [_crate,"type"] execVM "dir\DZMSHotSpotsBox.sqf";
		_crate is the crate to fill
		"type" is the type of crate
		"type" can be weapons or medical
*/
_crate = _this select 0;
_type = _this select 1;

// Clear the current cargo
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

// Define lists. Some lists are defined in DZMSHotSpotsWeaponCrateList.sqf in the ExtConfig.
_bpackList = ["DZ_ALICE_Pack_EP1","DZ_TK_Assault_Pack_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1","DZ_GunBag_EP1","DZ_LargeGunBag_EP1"];
_gshellList = ["HandGrenade_west","FlareGreen_M203","FlareWhite_M203","1Rnd_HE_M203"];
_medical = ["ItemBandage","ItemMorphine","ItemEpinephrine","ItemPainkiller","ItemWaterbottle","FoodMRE","ItemAntibiotic","ItemBloodbag","ItemSodaPepsi","ItemSodaCoke","FoodCanBakedBeans","FoodCanFrankBeans"];
_money = ["ItemSilverBar","ItemSilverBar","ItemSilverBar","ItemSilverBar","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemGoldBar","ItemGoldBar","ItemGoldBar10oz","ItemBriefcase100oz"];
_vehammo = ["100Rnd_762x54_PK", "29Rnd_30mm_AGS30", "50Rnd_127x107_DSHKM", "100Rnd_127x99_M2", "2000Rnd_762x51_M134", "48Rnd_40mm_MK19"];
_rareammo = ["1Rnd_HE_M203", "10Rnd_127x99_m107", "5Rnd_127x99_as50", "5Rnd_127x108_KSVK", "20Rnd_9x39_SP5_VSS"];
_launcher = ["Stinger", "SMAW", "RPG7V", "MetisLauncher"];

//////////////////////////////////////////////////////////////////
// Medical Crates
if (_type == "medical") then {
	// load medical
	_scount = count _medical;
	for "_x" from 0 to 20 do {
		_sSelect = floor(random _sCount);
		_item = _medical select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
};

///////////////////////////////////////////////////////////////////
// Weapon Crates
if (_type == "weapons") then {
	// load grenades
	_scount = count _gshellList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = _gshellList select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
   
	// load packs
	_scount = count _bpackList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = _bpackList select _sSelect;
		_crate addBackpackCargoGlobal [_item,1];
	};
	 
	// load pistols
	_scount = count DZMSHotSpotspistolList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSHotSpotspistolList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 8))];
		};
	};

	//load sniper
	_scount = count DZMSHotSpotssniperList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSHotSpotssniperList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 8))];
		};
	};

	//load mg
	_scount = count DZMSHotSpotsmgList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSHotSpotsmgList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 8))];
		};
	};

	//load primary
	_scount = count DZMSHotSpotsprimaryList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSHotSpotsprimaryList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 8))];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Epoch Supply Crates
if (_type == "supply") then {
	// load tools
	_scount = count DZMSHotSpotsConTools;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSHotSpotsConTools select _sSelect;
		_crate addWeaponCargoGlobal [_item, 1];
	};
	
	// load construction
	_scount = count DZMSHotSpotsConSupply;
	for "_x" from 0 to 20 do {
		_sSelect = floor(random _sCount);
		_item = DZMSHotSpotsConSupply select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};

	// load structures
	_scount = count DZMSHotSpotsConStructures;
	for "_x" from 0 to 10 do {
		_sSelect = floor(random _sCount);
		_item = DZMSHotSpotsConStructures select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
};

///////////////////////////////////////////////////////////////////
// Epoch Money Crates
if (_type == "money") then {
	// load money
	_scount = count _money;
	for "_x" from 0 to 10 do {
		_sSelect = floor(random _sCount);
		_item = _money select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
};

///////////////////////////////////////////////////////////////////
// crate containing vehicle ammo
if (_type == "vehammo") then {
	// load vehammo
	_scount = count _vehammo;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = _vehammo select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
};

///////////////////////////////////////////////////////////////////
// crate containing rare ammo
if (_type == "rareammo") then {
	// load rareammo
	_scount = count _rareammo;
	for "_x" from 0 to 7 do {
		_sSelect = floor(random _sCount);
		_item = _rareammo select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
};

///////////////////////////////////////////////////////////////////
// crate containing launcher
if (_type == "launcher") then {
	// load launcher
	_scount = count _launcher;
	_sSelect = floor(random _sCount);
	_item = _launcher select _sSelect;
	_crate addWeaponCargoGlobal [_item, 1];
	_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
	if (count _ammo > 0) then {
		_crate addMagazineCargoGlobal [(_ammo select 0), 1];
	};
};
