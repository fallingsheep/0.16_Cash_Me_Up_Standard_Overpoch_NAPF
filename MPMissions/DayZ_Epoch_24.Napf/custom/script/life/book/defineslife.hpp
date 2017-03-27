#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C
#define ST_GROUP_BOX       96
#define ST_GROUP_BOX2      112
#define ST_ROUNDED_CORNER  ST_GROUP_BOX + ST_CENTER
#define ST_ROUNDED_CORNER2 ST_GROUP_BOX2 + ST_CENTER

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar 
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4


////////////////
//Base Classes//
////////////////

class slkIGUIBack
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] = 
	{
		0,
		0,
		0,
		0
	};
	font = "Zeppelin32";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] = 
	{
		-1,-1,-1,-1
		//"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
		//"(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
		//"(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
		//"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"
	};
};

class slkRscText {
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	type = 0;
	style = 0;
	shadow = 1;
	colorShadow[] = {0, 0, 0, 0.5};
	font = "Zeppelin32";
	SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	colorText[] = {1, 1, 1, 1.0};
	colorBackground[] = {0, 0, 0, 0};
	linespacing = 1;
	tooltipColorText[] = {1,1,1,1};
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
};

class slkRscListBox
{
	access = 0;
	type = 5;
	w = 0.4;
	h = 0.4;
	rowHeight = 0;
	colorText[] = {1,1,1,1};
	colorDisabled[] = {1,1,1,0.25};
	colorScrollbar[] = {1,0,0,0};
	colorSelect[] = {0,0,0,1};
	colorSelect2[] = {0,0,0,1};
	colorSelectBackground[] = {0.95,0.95,0.95,1};
	colorSelectBackground2[] = {0.95,0.95,0.95,1};
	colorBackground[] = {0,0,0,0.3};
	soundSelect[] = {"",0.1,1};
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	class ScrollBar
	{
		color[] = {1,1,1,0.6};
		colorActive[] = {1,1,1,1};
		colorDisabled[] = {1,1,1,0.3};
		shadow = 0;
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
	style = 16;
	font = "Zeppelin32";
	shadow = 2;
	sizeEx = 0.03921;
	color[] = {1,1,1,1};
	period = 1.2;
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
};
class slkRscCombo {
	idc = -1;
	type = 4;
	style = 1;
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.035;
	colorSelect[] = {0.023529, 0, 0.0313725, 1};
	colorText[] = {0.023529, 0, 0.0313725, 1};
	colorBackground[] = {0.95, 0.95, 0.95, 1};
	colorSelectBackground[] = {0.543, 0.5742, 0.4102, 1.0};
	colorScrollbar[] = {0.023529, 0, 0.0313725, 1};
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
	wholeHeight = 0.45;
	color[] = {0, 0, 0, 0.6};
	colorActive[] = {0, 0, 0, 1};
	colorDisabled[] = {0, 0, 0, 0.3};
	font = "Zeppelin32";
	sizeEx = 0.031;
	soundSelect[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundExpand[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	soundCollapse[] = {"\ca\ui\data\sound\new1", 0.09, 1};
	maxHistoryDelay = 1.0;
	
	class ScrollBar {
		color[] = {1, 1, 1, 0.6};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 0.3};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};

class slkRscBackground
{
	type = 0;
	style = ST_BACKGROUND;
	shadow = 2;
	colorBackground[] = {0,0,0,1};
	colorText[] = {1,1,1,1};
	font = "Zeppelin32";
	sizeEx = 0.02;
	text = "";
};

class slkRscButton
{
    
   access = 0;
    type = CT_BUTTON;
    text = "";
    colorText[] = {1,1,1,.9};
	colorBackgroundDisabled[] = {0,0.0,0};
	colorBackgroundActive[] = {0.2,0.38,0.647,0.8};
    colorFocused[] = {0.2,0.38,0.647,0.8};
	colorDisabled[] = {0.2,0.38,0.647,0.8};
    colorBackground[] = {0.2,0.38,0.647,0.8};
	colorShadow[] = {0.023529,0,0.0313725,1};
    colorBorder[] = {0.023529,0,0.0313725,1};
    soundEnter[] = {"\ca\ui\data\sound\onover",0.09,1};
    soundPush[] = {"\ca\ui\data\sound\new1",0,0};
    soundClick[] = {"\ca\ui\data\sound\onclick",0.07,1};
    soundEscape[] = {"\ca\ui\data\sound\onescape",0.09,1};
    style = 2;
    x = 0;
    y = 0;
    w = 0.055589;
    h = 0.039216;
    shadow = 2;
    font = "Bitstream";
    sizeEx = 0.03921;
    offsetX = 0.003;
    offsetY = 0.003;
    offsetPressedX = 0.002;
    offsetPressedY = 0.002;
    borderSize = 0;
};
class slkRscStructuredText
{
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {0.8784,0.8471,0.651,1};
	class Attributes
	{
		font = "Zeppelin32";
		color = "#FFFFFF";
		align = "left";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = 0.03921;
	shadow = 2;
};
class slkRscFrame
{
    type = CT_STATIC;
    idc = -1;
    style = ST_FRAME;
    shadow = 2;
    colorBackground[] = {1,1,1,1};
    colorText[] = {1,1,1,0.9};
    font = "Bitstream";
    sizeEx = 0.03;
    text = "";
};

class slkBOX
{ 
    type = CT_STATIC;
    idc = -1;
    style = ST_CENTER;
    shadow = 2;
    colorText[] = {1,1,1,1};
    font = "Bitstream";
    sizeEx = 0.02;
    colorBackground[] = { 0.33,0.33,0, 0.8 }; 
    text = ""; 

};
class slkW_RscText {
	idc = -1;
	type = 0;
	style = 0x00;
	colorBackground[] = { 1 , 1 , 1 , 0 };
	colorText[] = { 1 , 1 , 1 , 1 };
	font = "Zeppelin32";
	sizeEx = .025;
	h = .25;
	text = "";
};

class slk {
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {.8784,.8471,.651,1};
	class Attributes
	{
		font = "Zeppelin32";
		color = "#e0d8a6";
		align = "center";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = .035;
	w = .1;
	text = "";
	size = .03921;
	shadow = 2;
};
class slkRscList
{
	type = 5;
	style = 69;
	idc = -1;
	text = "";
	w = .275;
	h = .04;
	colorSelect[] = {1, 1, 1, 1};
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {1,1,1,1};
	colorSelectBackground[] = {.40, .43, .28, .5};
	colorScrollbar[] = {.2, .2, .2, 1};
	arrowEmpty = "\ca\ui\data\ui_arrow_combo_ca.paa";
	arrowFull = "\ca\ui\data\ui_arrow_combo_active_ca.paa";
	wholeHeight = .45;
	rowHeight = .04;
	color[] = {.7, .7, .7, 1};
	colorActive[] = {0,0,0,1};
	colorDisabled[] = {0,0,0,.3};
	font = "Zeppelin32";
	sizeEx = .023;
	soundSelect[] = {"",.1,1};
	soundExpand[] = {"",.1,1};
	soundCollapse[] = {"",.1,1};
	maxHistoryDelay = 1;
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	class ScrollBar
	{
		color[] = {1, 1, 1, 1};
		colorActive[] = {1, 1, 1, 1};
		colorDisabled[] = {1, 1, 1, 1};
		thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
		arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
		arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
		border = "\ca\ui\data\ui_border_scroll_ca.paa";
	};
};

class slkRscPicture 
{
	idc = -1; 
	type = 0;
	style = 48;
	font = "Zeppelin32";
	sizeEx = .023;	
	colorBackground[] = {};
	colorText[] = {};	
	x = .0; y = .2;
	w = .2; h = .2;	
	text = "";	
}; 

class slkRscButtonBase {
	idc = -1;
	type = 16;
	style = 0;	
	w = .183825;
	h = .104575;	
	color[] = {.95, .95, .95, 1};
	color2[] = {1, 1, 1, .4};
	colorBackground[] = {1, 1, 1, 1};
	colorbackground2[] = {1, 1, 1, .4};
	colorDisabled[] = {1, 1, 1, .25};	
	periodFocus = 1.2;
	periodOver = .8;	
	class HitZone {
		left = .004;
		top = .029;
		right = .004;
		bottom = .029;		
	};
	class ShortcutPos {
		left = .004;
		top = .026;
		w = .0392157;
		h = .0522876;		
	};
	class TextPos {	
		left = .05;
		top = .025;
		right = .005;
		bottom = .025;	
	};
	animTextureNormal = "\ca\ui\data\ui_button_normal_ca.paa";
	animTextureDisabled = "\ca\ui\data\ui_button_disabled_ca.paa";
	animTextureOver = "\ca\ui\data\ui_button_over_ca.paa";
	animTextureFocused = "\ca\ui\data\ui_button_focus_ca.01.paa";
	animTexturePressed = "\ca\ui\data\ui_button_down_ca.paa";
	animTextureDefault = "\ca\ui\data\ui_button_default_ca.paa";
	textureNoShortcut = "";
	period = .4;
	font = "Zeppelin32";
	size = .023;
	sizeEx = .023;
	text = "";
	
	soundEnter[] = {"\ca\ui\data\sound\mouse2", .09, 1};
	soundPush[] = {"\ca\ui\data\sound\new1", .09, 1};
	soundClick[] = {"\ca\ui\data\sound\mouse3", .07, 1};
	soundEscape[] = {"\ca\ui\data\sound\mouse1", .09, 1};
	
	action = "";
	
	class Attributes {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";
		shadow = "1";	
	};
	
	class AttributesImage {
		font = "Zeppelin32";
		color = "#E5E5E5";
		align = "left";	
	};
};
class slkMap {
			moveOnEdges = 0;
			shadow = 0;
			maxSatelliteAlpha = .85;
			alphaFadeStartScale = .35;
			alphaFadeEndScale = .4;
			colorOutside[] = {0,0,0,1};			
			style = 48;
			font = "EtelkaNarrowMediumPro";
			sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
			type = 101;
			colorBackground[] = {.8,.8,.8,1};
			colorText[] = {0,0,0,1};
			colorRailway[] = {.5,.5,.5,.5};
			colorSea[] = {.56,.8,.98,.5};
			colorForest[] = {.6,.8,.2,.5};
			colorRocks[] = {.5,.5,.5,.5};
			colorCountlines[] = {.65,.45,.27,.5};
			colorMainCountlines[] = {.65,.45,.27,1};
			colorCountlinesWater[] = {0,.53,1,.5};
			colorMainCountlinesWater[] = {0,.53,1,1};
			colorForestBorder[] = {.4,.8,0,1};
			colorRocksBorder[] = {.5,.5,.5,1};
			colorPowerLines[] = {0,0,0,1};
			colorNames[] = {0,0,0,1};
			colorInactive[] = {1,1,1,.5};
			colorLevels[] = {.286,.177,.094,.5};
			fontLabel = "TahomaB";
			sizeExLabel = .04;
			fontGrid = "TahomaB";
			sizeExGrid = .04;
			fontUnits = "TahomaB";
			sizeExUnits = .04;
			fontNames = "TahomaB";
			sizeExNames = .04;
			fontInfo = "TahomaB";
			sizeExInfo = .04;
			fontLevel = "TahomaB";
			sizeExLevel = .04;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			stickX[] = {.2,{"Gamma",1,1.5}};
			stickY[] = {.2,{"Gamma",1,1.5}};
			ptsPerSquareSea = 6;
			ptsPerSquareTxt = 8;
			ptsPerSquareCLn = 8;
			ptsPerSquareExp = 8;
			ptsPerSquareCost = 8;
			ptsPerSquareFor = "4.0f";
			ptsPerSquareForEdge = "10.0f";
			ptsPerSquareRoad = 2;
			ptsPerSquareObj = 10;
			showCountourInterval = 0;
			onMouseMoving = "mouseX = (_this Select 1);mouseY = (_this Select 2)";
			onMouseButtonDown = "mouseButtonDown = _this Select 1";
			onMouseButtonUp = "mouseButtonUp = _this Select 1";				
			class CustomMark {
				icon = "\ca\ui\data\map_waypoint_ca.paa";
				color[] = {0,0,1,1};
				size = 18;
				importance = 1;
				coefMin = 1;
				coefMax = 1;
			};
			class Bunker {
				icon = "\ca\ui\data\map_bunker_ca.paa";
				color[] = {0,0,1,1};
				size = 14;
				importance = 1.5 * 14 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class Bush {
				icon = "\ca\ui\data\map_bush_ca.paa";
				color[] = {.55,.64,.43,1};
				size = 14;
				importance = .2 * 14 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class BusStop {
				icon = "\ca\ui\data\map_busstop_ca.paa";
				color[] = {0,0,1,1};
				size = 10;
				importance = 1 * 10 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class Command {
				icon = "#(argb,8,8,3)color(1,1,1,1)";
				color[] = {0,.9,0,1};
				size = 18;
				importance = 1;
				coefMin = 1;
				coefMax = 1;
			};
			class Cross {
				icon = "\ca\ui\data\map_cross_ca.paa";
				color[] = {0,0,1,1};
				size = 16;
				importance = .7 * 16 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class Fortress {
				icon = "\ca\ui\data\map_bunker_ca.paa";
				color[] = {0,0,1,1};
				size = 16;
				importance = 2 * 16 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class Fuelstation {
				icon = "#(argb,8,8,3)color(0,0,0,1)";
				color[] = {0,0,0,1};
				size = 16;
				importance = 2 * 16 * .05;
				coefMin = .75;
				coefMax = 4;
			};
			class Fountain {
				icon = "\ca\ui\data\map_fountain_ca.paa";
				color[] = {0,.35,.7,1};
				size = 12;
				importance = 1 * 12 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class Hospital {
				icon = "\ca\ui\data\map_hospital_ca.paa";
				color[] = {.78,0,.05,1};
				size = 16;
				importance = 2 * 16 * .05;
				coefMin = .5;
				coefMax = 4;
			};
			class Chapel {
				icon = "\ca\ui\data\map_chapel_ca.paa";
				color[] = {0,0,1,1};
				size = 16;
				importance = 1 * 16 * .05;
				coefMin = .9;
				coefMax = 4;
			};
			class Church {
				icon = "\ca\ui\data\map_church_ca.paa";
				color[] = {0,0,1,1};
				size = 16;
				importance = 2 * 16 * .05;
				coefMin = .9;
				coefMax = 4;
			};
			class Legend {
				x = "SafeZoneX";
				y = "SafeZoneY";
				w = .34;
				h = .152;
				font = "Zeppelin32";
				sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * .6)";
				colorBackground[] = {0,0,0,1};
				color[] = {0,0,0,1};
			};
			class Lighthouse {
				icon = "\ca\ui\data\map_lighthouse_ca.paa";
				color[] = {.78,0,.05,1};
				size = 20;
				importance = 3 * 16 * .05;
				coefMin = .9;
				coefMax = 4;
			};
			class Quay {
				icon = "\ca\ui\data\map_quay_ca.paa";
				color[] = {0,0,1,1};
				size = 16;
				importance = 2 * 16 * .05;
				coefMin = .5;
				coefMax = 4;
			};
			class Rock {
				icon = "\ca\ui\data\map_rock_ca.paa";
				color[] = {0,0,1,1};
				size = 12;
				importance = .5 * 12 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class Ruin {
				icon = "\ca\ui\data\map_ruin_ca.paa";
				color[] = {.78,0,.05,1};
				size = 16;
				importance = 1.2 * 16 * .05;
				coefMin = 1;
				coefMax = 4;
			};
			class SmallTree {
				icon = "\ca\ui\data\map_smalltree_ca.paa";
				color[] = {.55,.64,.43,1};
				size = 12;
				importance = .6 * 12 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class Stack {
				icon = "\ca\ui\data\map_stack_ca.paa";
				color[] = {0,0,1,1};
				size = 20;
				importance = 2 * 16 * .05;
				coefMin = .9;
				coefMax = 4;
			};
			class Task {
				icon = "\ca\ui\data\ui_taskstate_current_CA.paa";
				iconCreated = "\ca\ui\data\ui_taskstate_new_CA.paa";
				iconCanceled = "#(argb,8,8,3)color(0,0,0,0)";
				iconDone = "\ca\ui\data\ui_taskstate_done_CA.paa";
				iconFailed = "\ca\ui\data\ui_taskstate_failed_CA.paa";
				color[] = {.863,.584,.0,1};
				colorCreated[] = {.95,.95,.95,1};
				colorCanceled[] = {.606,.606,.606,1};
				colorDone[] = {.424,.651,.247,1};
				colorFailed[] = {.706,.0745,.0196,1};
				size = 10;
				coefMin = 1;
				coefMax = 4;
				importance = 1;
			};
			class Tree {
				icon = "\ca\ui\data\map_tree_ca.paa";
				color[] = {.55,.64,.43,1};
				size = 12;
				importance = .9 * 16 * .05;
				coefMin = .25;
				coefMax = 4;
			};
			class Tourism {
				icon = "\ca\ui\data\map_tourism_ca.paa";
				color[] = {.78,0,.05,1};
				size = 16;
				importance = 1 * 16 * .05;
				coefMin = .7;
				coefMax = 4;
			};
			class Transmitter {
				icon = "\ca\ui\data\map_transmitter_ca.paa";
				color[] = {0,0,1,1};
				size = 20;
				importance = 2 * 16 * .05;
				coefMin = .9;
				coefMax = 4;
			};
			class ViewTower {
				icon = "\ca\ui\data\map_viewtower_ca.paa";
				color[] = {0,0,1,1};
				size = 16;
				importance = 2.5 * 16 * .05;
				coefMin = .5;
				coefMax = 4;
			};
			class Watertower {
				icon = "\ca\ui\data\map_watertower_ca.paa";
				color[] = {0,.35,.7,1};
				size = 32;
				importance = 1.2 * 16 * .05;
				coefMin = .9;
				coefMax = 4;
			};
			class Waypoint {
				icon = "\ca\ui\data\map_waypoint_ca.paa";
				color[] = {0,0,1,1};
				size = 14;
				importance = 2.5 * 16 * .05;
				coefMin = .5;
				coefMax = 4;
			};
			class WaypointCompleted {
				icon = "\ca\ui\data\map_waypoint_completed_ca.paa";
				color[] = {0,0,1,1};
				size = 14;
				importance = 2.5 * 16 * .05;
				coefMin = .5;
				coefMax = 4;
			};
			class ActiveMarker {
				icon = "";
				color[] = {0,0,1,1};
				size = 14;
				importance = 2.5 * 16 * .05;
				coefMin = .5;
				coefMax = 4;
			};

		};