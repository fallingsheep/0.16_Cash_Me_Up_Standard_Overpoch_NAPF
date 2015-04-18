class ComboLockUI
{
	idd = 41144;
	movingenable = 0;
	class Controls
	{	
		class ZupaBackground_1
		{
		    access = 0;
			type = 0;
			colorText[] = {0.8784,0.8471,0.651,1};
			text = "";
			fixedWidth = 0;
			style = 0;
			shadow = 2;
			font = "Zeppelin32";
			SizeEx = 0.03921;			
			idc = -1;
			x = 0.35 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.20 * safezoneW;
			h = 0.50 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};	
		
		class ZupaHeader_2: RscTextT
		{
		
			idc = -1;
			x = 0.35 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.20 * safezoneW;
			h = 0.05 * safezoneH;		
			text = "Unlock / Lock Door";
			colorBackground[] = {0,0,0,0.8};	
			colorText[] = {1,1,1,1};			
		};
		
					
		class ZupaButton_1 : Zupa_RscButtonMenu
		{
			idc = -1;
			text = "Eye Scan";
			x = 0.40 * safezoneW + safezoneX;
			y = 0.40 * safezoneH + safezoneY;					
			style = 2;
			w = 0.20;
			onButtonClick = "call player_unlockDoor";					
		};
		
		class ZupaButton_4 : Zupa_RscButtonMenu
		{
			idc = -1;
			text = "Manual Code";
			x = 0.40 * safezoneW + safezoneX;
			y = 0.50 * safezoneH + safezoneY;					
			style = 2;
			w = 0.20;
			onButtonClick = "call player_enterCode";					
		};
		
		class ZupaButton_2: Zupa_RscButtonMenu
		{
			idc = -1;
			text = "Cancel";
			x = 0.40 * safezoneW + safezoneX;
			y = 0.70 * safezoneH + safezoneY;			
			w = 0.20;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 3000);";			
		};		

		class ZupaButton_3: Zupa_RscButtonMenu
		{
			idc = -1;
			text = "Manage";
			x = 0.40 * safezoneW + safezoneX;
			y = 0.60 * safezoneH + safezoneY;			
			w = 0.20;
			onButtonClick = "[] call player_manageDoor";			
		};				
	};	
};
