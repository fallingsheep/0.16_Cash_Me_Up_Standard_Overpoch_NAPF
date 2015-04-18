class RscDisplayGuess
{
   idd = GUESS_DIALOG;
   movingenable = 0;
   
   class Controls
   {
		class guess_BG: RscBackground
		{
			idc = 5800;
			colorBackground[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			x = 0.341179 * safezoneW + safezoneX;
			y = 0.296657 * safezoneH + safezoneY;
			w = 0.321678 * safezoneW;
			h = 0.320144 * safezoneH;
			
		};  
		class guess_FRM: RscFrame
		{
			idc = 1800;
			x = 0.341179 * safezoneW + safezoneX;
			y = 0.296657 * safezoneH + safezoneY;
			w = 0.321678 * safezoneW;
			h = 0.320144 * safezoneH;
			colorBackground[] = {-1,-1,-1,1};
		};
		class 1_BTN: RscButton
		{
			idc = 1600;
			text = "1";
			x = 0.353111 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess1";
			
		};
		class 2_BTN: RscButton
		{
			idc = 1602;
			text = "2";
			x = 0.382489 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess2";
		};
		class 3_BTN: RscButton
		{
			idc = 1603;
			text = "3";
			x = 0.411867 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess3";
		};
		class 4_BTN: RscButton
		{
			idc = 1601;
			text = "4";
			x = 0.441244 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess4";
		};
		class 5_BTN: RscButton
		{
			idc = 1604;
			text = "5";
			x = 0.470622 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess5";
		};
		class 7_BTN: RscButton
		{
			idc = 1605;
			text = "7";
			x = 0.536722 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess7";
		};
		class 6_BTN: RscButton
		{
			idc = 1606;
			text = "6";
			x = 0.507344 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess6";
		};
		class 8_BTN: RscButton
		{
			idc = 1607;
			text = "8";
			x = 0.5661 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess8";
		};
		class 9_BTN: RscButton
		{
			idc = 1608;
			text = "9";
			x = 0.595478 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess9";
		};
		class 10_BTN: RscButton
		{
			idc = 1609;
			text = "10";
			x = 0.624856 * safezoneW + safezoneX;
			y = 0.347175 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_guess10";
		};
		class yourguess_TXT: RscText
		{
			idc = 1000;
			text = "Your Guess";
			x = 0.360455 * safezoneW + safezoneX;
			y = 0.5 * safezoneH + safezoneY;
			w = 0.0734251 * safezoneW;
			h = 0.0213036 * safezoneH;
		};
		class play_BTN: RscButton
		{
			idc = 1610;
			text = "PLAY";
			x = 0.373968 * safezoneW + safezoneX;
			y = 0.551438 * safezoneH + safezoneY;
			w = 0.0470045 * safezoneW;
			h = 0.0470232 * safezoneH;
			action = "_nil=[]Spawn fnc_playgame";
		};
		class exit_BTN: RscButton
		{
			idc = 1611;
			text = "Exit";
			x = 0.573968 * safezoneW + safezoneX;
			y = 0.551438 * safezoneH + safezoneY;
			w = 0.0470045 * safezoneW;
			h = 0.0470232 * safezoneH;
			action = "closeDialog 0;_nil=[]Spawn fnc_exitgame";
		};
		class house_TXT: RscText
		{
			idc = 1001;
			text = "House";
			x = 0.592872 * safezoneW + safezoneX;
			y = 0.501286 * safezoneH + safezoneY;
			w = 0.0734251 * safezoneW;
			h = 0.0213036 * safezoneH;
		};
		class playerguess_TXT: RscText
		{
			idc = 1002;
			text = "0";
			x = 0.389833 * safezoneW + safezoneX;
			y = 0.523512 * safezoneH + safezoneY;
			w = 0.0198068 * safezoneW;
			h = 0.0444512 * safezoneH;
		};
		class houseresult_TXT: RscText
		{
			idc = 1003;
			text = "0";
			x = 0.602822 * safezoneW + safezoneX;
			y = 0.523512 * safezoneH + safezoneY;
			w = 0.0205839 * safezoneW;
			h = 0.0483092 * safezoneH;
		};
		class 10oz: RscButton
		{
			idc = 1611;
			text = "10";
			x = 0.353111 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet10";
		};
		class 20oz: RscButton
		{
			idc = 1612;
			text = "20";
			x = 0.382489 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet20";
		};
		class 30oz: RscButton
		{
			idc = 1613;
			text = "30";
			x = 0.411867 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet30";
		};
		class 40oz: RscButton
		{
			idc = 1614;
			text = "40";
			x = 0.441244 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet40";
		};
		class 50oz: RscButton
		{
			idc = 1615;
			text = "50";
			x = 0.470622 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet50";
		};
		class 60oz: RscButton
		{
			idc = 1616;
			text = "60";
			x = 0.507344 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet60";
		};
		class 70oz: RscButton
		{
			idc = 1617;
			text = "70";
			x = 0.536722 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet70";
		};
		class 80oz: RscButton
		{
			idc = 1618;
			text = "80";
			x = 0.5661 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet80";
		};
		class 90oz: RscButton
		{
			idc = 1619;
			text = "90";
			x = 0.595478 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet90";
		};
		class 100oz: RscButton
		{
			idc = 1620;
			text = "100";
			x = 0.624856 * safezoneW + safezoneX;
			y = 0.417709 * safezoneH + safezoneY;
			w = 0.0220334 * safezoneW;
			h = 0.0352674 * safezoneH;
			action = "_nil=[]Spawn fnc_bet100";
		};
		class pickanumber_TXT: RscText
		{
			idc = 1004;
			text = "Pick a number";
			x = 0.470622 * safezoneW + safezoneX;
			y = 0.311907 * safezoneH + safezoneY;
			w = 0.0734251 * safezoneW;
			h = 0.0213036 * safezoneH;
		};
		class betamount_TXT: RscText
		{
			idc = 1005;
			text = "Bet Amount (in briefcase Oz's )";
			x = 0.425012 * safezoneW + safezoneX;
			y = 0.391977 * safezoneH + safezoneY;
			w = 0.182993 * safezoneW;
			h = 0.0213036 * safezoneH;
		};
		class currentbet_TXT: RscText
		{
			idc = 1006;
			text = "Current Bet";
			x = 0.46596 * safezoneW + safezoneX;
			y = 0.470058 * safezoneH + safezoneY;
			w = 0.0695397 * safezoneW;
			h = 0.0444512 * safezoneH;
		};
		class bet_TXT: RscText
		{
			idc = 1007;
			text = "0";
			x = 0.492618 * safezoneW + safezoneX;
			y = 0.501286 * safezoneH + safezoneY;
			w = 0.0470045 * safezoneW;
			h = 0.0470232 * safezoneH;
		};
	};
};