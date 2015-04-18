class E_RscListBox
{
	access = 0;
	type = 5;
	w = 0.4;
	h = 0.4;
	rowHeight = 0;
	colorText[] = {0.75,0.75,0.75,0.8};
	colorScrollbar[] = {0.75,0.75,0.75,0.5};
	colorSelect[] = {1,1,1,1};
	colorSelect2[] = {1,1,1,1};
	colorSelectBackground[] = {0,0,0,1};
	colorSelectBackground2[] = {0.75,0.75,0.75,.8};
	colorBackground[] = {0,0,0,0};
	soundSelect[] = {"",0.1,1};
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	class ScrollBar
	{
		color[] = {0.75,0.75,0.75,0.5};
		colorActive[] = {0.75,0.75,0.75,0.5};
		colorDisabled[] = {0.75,0.75,0.75,.5};
		shadow = 0;
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
	style = 0x02;
	font = "Bitstream";
	shadow = 2;
	sizeEx = 0.037;
	color[] = {0.75,0.75,0.75,0.5};
	period = 1.2;
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};
class E_Class_Dialog
{
	idd = -1;
	movingenable = true;
	class Controls
	{
		class E_Class_ListBox: E_RscListBox
		{
			idc = 8888;
			x = 0.424439 * safezoneW + safezoneX;
			y = 0.292117 * safezoneH + safezoneY;
			w = 0.151945 * safezoneW;
			h = 0.32007 * safezoneH;
		};
		class E_Class_ButtonSelect: E_RscButton
		{
			idc = -1;
			text = "Select class";
			colorText[] = {1,1,1,.9};
			colorDisabled[] = {0.4,0.4,0.4,0};
			colorBackground[] = {0.75,0.75,0.75,0.8};
			colorBackgroundDisabled[] = {0,0,0};
			colorBackgroundActive[] = {0.75,0.75,0.75,1};
			colorFocused[] = {0.75,0.75,0.75,.5};
			x = 0.46 * safezoneW + safezoneX;
			y = 0.638 * safezoneH + safezoneY;
			w = 0.08 * safezoneW;
			h = 0.03 * safezoneH;
			action = "call classPick;";
		};
	};
};