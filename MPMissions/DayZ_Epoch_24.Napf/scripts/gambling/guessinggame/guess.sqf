//variables
HOUSEGUESS = 0;
GUESSBET = 0;
GUESSBETTEXT = "0";
GUESSBETPLACED = false;
GUESSPLACED = false;

//bets
fnc_bet10 = {
	if ("ItemBriefcase10oz" in magazines player) then {
		GUESSBET = "ItemBriefcase10oz";
		GUESSBETTEXT = "10oz";
		ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
		GUESSBETPLACED = true;
		player removeMagazine "ItemBriefcase10oz";
	}else{
		titleText ["You need 1x 10oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet20 = {
	if ("ItemBriefcase20oz" in magazines player) then {
	GUESSBET = "ItemBriefcase20oz";
	GUESSBETTEXT = "20oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase12oz";
	}else{
		titleText ["You need 1x 20oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet30 = {
	if ("ItemBriefcase30oz" in magazines player) then {
	GUESSBET = "ItemBriefcase30oz";
	GUESSBETTEXT = "30oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase30oz";
	}else{
		titleText ["You need 1x 30oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet40 = {
	if ("ItemBriefcase40oz" in magazines player) then {
	GUESSBET = "ItemBriefcase40oz";
	GUESSBETTEXT = "40oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase40oz";
	}else{
		titleText ["You need 1x 40oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet50 = {
	if ("ItemBriefcase50oz" in magazines player) then {
	GUESSBET = "ItemBriefcase50oz";
	GUESSBETTEXT = "50oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase50oz";
	}else{
		titleText ["You need 1x 50oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet60 = {
	if ("ItemBriefcase60oz" in magazines player) then {
	GUESSBET = "ItemBriefcase60oz";
	GUESSBETTEXT = "60oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase60oz";
	}else{
		titleText ["You need 1x 60oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet70 = {
	if ("ItemBriefcase70oz" in magazines player) then {
	GUESSBET = "ItemBriefcase70oz";
	GUESSBETTEXT = "70oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase70oz";
	}else{
		titleText ["You need 1x 70oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet80 = {
	if ("ItemBriefcase80oz" in magazines player) then {
	GUESSBET = "ItemBriefcase80oz";
	GUESSBETTEXT = "80oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase80oz";
	}else{
		titleText ["You need 1x 80oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet90 = {
	if ("ItemBriefcase90oz" in magazines player) then {
	GUESSBET = "ItemBriefcase90oz";
	GUESSBETTEXT = "90oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase90oz";
	}else{
		titleText ["You need 1x 90oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};
fnc_bet100 = {
	if ("ItemBriefcase100oz" in magazines player) then {
	GUESSBET = "ItemBriefcase100oz";
	GUESSBETTEXT = "100oz";
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
	GUESSBETPLACED = true;
	player removeMagazine "ItemBriefcase100oz";
	}else{
		titleText ["You need 1x 100oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
	};
};

//numbers
fnc_guess1 = {
	GUESS = 1;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess2 = {
	GUESS = 2;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess3 = {
	GUESS = 3;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess4 = {
	GUESS = 4;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess5 = {
	GUESS = 5;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess6 = {
	GUESS = 6;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess7 = {
	GUESS = 7;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess8 = {
	GUESS = 8;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess9 = {
	GUESS = 9;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_guess10 = {
	GUESS = 10;
	ctrlSetText[1002, format ["%1" ,GUESS]];
	GUESSPLACED = true;
};
fnc_reset_guess = {
	HOUSEGUESS = 0;
	GUESSBET = 0;
	GUESSBETTEXT = "0";
	GUESSBETPLACED = false;
	GUESSPLACED = false;
	//reset texts
	ctrlSetText[1003, format ["%1" ,HOUSEGUESS]];
	ctrlSetText[1002, format ["%1" ,GUESS]];
	ctrlSetText[1007, format ["%1" ,GUESSBETTEXT]];
};

//playgame
fnc_playgame = {
	if (GUESSBETPLACED) then {
		if (GUESSPLACED) then {
		
			HOUSEGUESS = round((random 9) +1);
			ctrlSetText[1003, format ["%1" ,HOUSEGUESS]];
			//check if number match
			if(HOUSEGUESS == GUESS)then{
				titleText [format["You win 2x %1 !", GUESSBET],"PLAIN DOWN"]; titleFadeOut 3;
				//add winnings
				player addMagazine GUESSBET;
				player addMagazine GUESSBET;
				//reset variables
				sleep 5;
				call fnc_reset_guess;
			}else{
				titleText ["You lost.","PLAIN DOWN"]; titleFadeOut 3;
				sleep 5;
				call fnc_reset_guess;
			};
		}else{
			titleText ["You have not guessed a number!","PLAIN DOWN"]; titleFadeOut 3;
		};
	}else{
		titleText ["No bet placed!","PLAIN DOWN"]; titleFadeOut 3;
	};
};

//Exit game
fnc_exitgame = {
	if (GUESSBETPLACED) then {
		player addMagazine GUESSBET;
		titleText ["Bet refunded.","PLAIN DOWN"]; titleFadeOut 3;
		call fnc_reset_guess;
	}else{
		call fnc_reset_guess;
	};
};