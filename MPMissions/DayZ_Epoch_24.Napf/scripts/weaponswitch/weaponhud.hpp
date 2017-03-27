class weaponHud
	{
		idd = -1;
		movingenable = true;
		duration = 3;
		onLoad = "((_this select 0) displayCtrl 1200) ctrlSetText (gettext (configFile >> 'cfgWeapons' >> (primaryWeapon player) >> 'picture'));{if ((getNumber (configFile >> 'CfgWeapons' >> _x >> 'Type')) == 2) exitWith {((_this select 0) displayCtrl 1201) ctrlSetText (gettext(configFile >> 'cfgWeapons' >> _x >> 'picture'));};} foreach weapons player;_hasbandage = 'ItemBandage' in magazines player;if (_hasbandage) then {(_this select 0) displayCtrl 1202 ctrlSetText (gettext (configFile >> 'cfgMagazines' >> 'itembandage' >> 'picture'));};";
		class Controls
		{

			
//START DIALOG			

class RscText_1002: RscText
{
	idc = 1002;
	text = "1";
	x = 0.276647 * safezoneW + safezoneX;
	y = 0.909196 * safezoneH + safezoneY;
	w = 0.0700046 * safezoneW;
	h = 0.0700182 * safezoneH;
};

class RscText_1003: RscText
{
	idc = 1003;
	text = "2";
	x = 0.387408 * safezoneW + safezoneX;
	y = 0.908743 * safezoneH + safezoneY;
	w = 0.0700046 * safezoneW;
	h = 0.0700182 * safezoneH;
};

class RscText_1000: RscText
{
	idc = 1000;
	text = "3";
	x = 0.500773 * safezoneW + safezoneX;
	y = 0.911168 * safezoneH + safezoneY;
	w = 0.0700046 * safezoneW;
	h = 0.0700182 * safezoneH;
};
class RscText_1001: RscText
{
	idc = 1001;
	text = "4";
	x = 0.611519 * safezoneW + safezoneX;
	y = 0.90753 * safezoneH + safezoneY;
	w = 0.0700046 * safezoneW;
	h = 0.0700182 * safezoneH;
};


class RscPicture_1200: RscPicture
{
	idc = 1200;
	text = "#(argb,8,8,3)color(0,0,0,0)";
	x = 0.290628 * safezoneW + safezoneX;
	y = 0.911168 * safezoneH + safezoneY;
	w = 0.0700046 * safezoneW;
	h = 0.0700182 * safezoneH;
	colorBackground[] = {0,0,0,0};
};

class RscPicture_1201: RscPicture
{
	idc = 1201;
	text = "#(argb,8,8,3)color(0,0,0,0)";
	x = 0.401556 * safezoneW + safezoneX;
	y = 0.90753 * safezoneH + safezoneY;
	w = 0.0700046 * safezoneW;
	h = 0.0700182 * safezoneH;
	colorBackground[] = {0,0,0,0};
};

class RscPicture_1202: RscPicture
{
	idc = 1202;
	text = "#(argb,8,8,3)color(0,0,0,0)";
	x = 0.51492 * safezoneW + safezoneX;
	y = 0.909955 * safezoneH + safezoneY;
	w = 0.0700046 * safezoneW;
	h = 0.0700182 * safezoneH;
	colorBackground[] = {0,0,0,0};
};

class RscPicture_1203: RscPicture
{
	idc = 1203;
	text = "#(argb,8,8,3)color(0,0,0,0)";
	x = 0.626441 * safezoneW + safezoneX;
	y = 0.905106 * safezoneH + safezoneY;
	w = 0.0700046 * safezoneW;
	h = 0.0700182 * safezoneH;
	colorBackground[] = {0,0,0,0};
};	

//END DIALOG

		};
	};