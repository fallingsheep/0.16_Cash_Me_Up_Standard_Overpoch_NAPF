class display2
{
    idd = 10001;
    movingenable=false;
	class Controls
	{ 

class RscFrame_1800: slkRscFrame
{
	idc = 1800;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.4125 * safezoneW;
	h = 0.605 * safezoneH;
};
class IGUIBack_2200: slkIGUIBack
{
	idc = 2200;
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.4125 * safezoneW;
	h = 0.605 * safezoneH;
	colorBackground[] = {0,0,0,0.8};
};
class RscPicture_1200: slkRscPicture
{
	idc = 1200;
	text = "custom\script\life\book\display2.paa";
	x = 0.29375 * safezoneW + safezoneX;
	y = 0.225 * safezoneH + safezoneY;
	w = 0.4125 * safezoneW;
	h = 0.55 * safezoneH;
};
class RscButton_1600: slkRscButton
{
	idc = 1600;
	text = "CLOSE"; //--- ToDo: Localize;
	x = 0.45875 * safezoneW + safezoneX;
	y = 0.786 * safezoneH + safezoneY;
	w = 0.0825 * safezoneW;
	h = 0.033 * safezoneH;
	OnButtonClick = "((ctrlParent (_this select 0)) closeDisplay 10001)";
};


};
};
