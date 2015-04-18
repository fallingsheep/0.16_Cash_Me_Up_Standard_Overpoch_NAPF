//Black Jack build 0.1 - Created by Fallingsheep

//variables setup
// H = hearts
// D = diamonds
// S = spades
// C = clubs

cardArray = [
"AH","KH","QH","JH","10H","9H","8H","7H","6H","5H","4H","3H","2H",
"AD","KD","QD","JD","10D","9D","8D","7D","6D","5D","4D","3D","2D",
"AS","KS","QS","JS","10S","9S","8S","7S","6S","5S","4S","3S","2S",
"AC","KC","QC","JC","10C","9C","8C","7C","6C","5C","4C","3C","2C"
];

dealerCard1 = [];
dealerCard2 = [];
dealerCard3 = [];
dealerCard4 = [];
dealerCard5 = [];
dealerCard6 = [];

playerCard1 = [];
playerCard2 = [];
playerCard3 = [];
playerCard4 = [];
playerCard5 = [];
playerCard6 = [];


dealerCard1val = 0;
dealerCard2val = 0;
dealerCard3val = 0;
dealerCard4val = 0;
dealerCard5val = 0;
dealerCard6val = 0;

playerCard1val = 0;
playerCard2val = 0;
playerCard3val = 0;
playerCard4val = 0;
playerCard5val = 0;
playerCard6val = 0;


aces1 = false;
blackjackBet = "";

	
//check if player has any Aces
fnc_checkAces = {
	if (playerCard1 == "AH") ||(playerCard1 == "AD") ||(playerCard1 == "AS") ||(playerCard1 == "AC") ||(playerCard2 == "AH") ||(playerCard2 == "AD") ||(playerCard2 == "AS") ||(playerCard2 == "AC") ||(playerCard3 == "AH") ||(playerCard3 == "AD") ||(playerCard3 == "AS") ||(playerCard3 == "AC")||(playerCard4 == "AH") ||(playerCard4 == "AD") ||(playerCard4 == "AS") ||(playerCard4 == "AC")||(playerCard5 == "AH") ||(playerCard5 == "AD") ||(playerCard5 == "AS") ||(playerCard5 == "AC")||(playerCard6 == "AH") ||(playerCard6 == "AD") ||(playerCard6 == "AS") ||(playerCard6 == "AC")then {
		//show aces choice dialog		
	};
};
//Aces = 1
fnc_ace1 = {
	aces1 = true;
};
//Aces = 11
fnc_ace11 = {
	aces1 = false;
};

fnc_hit_stay = {

//Hit

//Stay
	if (dealerTotal < 16) then {
		dealerCard3 = cardArray call BIS_fnc_selectRandom;
		dealerTotal = dealerTotal + dealerCard3val
	}else{
		call fnc_WinLose;
	};
};
//Deal cards
fnc_deal_cards = {
	dealerCard1 = cardArray call BIS_fnc_selectRandom;
	ctrlSetText[1001, format ["%1" ,dealerCard1]];
	call fnc_remove_card;
	dealerCard2 = cardArray call BIS_fnc_selectRandom;
	ctrlSetText[1002, format ["%1" ,dealerCard2]];
	call fnc_remove_card;
	playerCard1 = cardArray call BIS_fnc_selectRandom;
	ctrlSetText[1003, format ["%1" ,playerCard1]];
	call fnc_remove_card;
	playerCard2 = cardArray call BIS_fnc_selectRandom;
	ctrlSetText[1004, format ["%1" ,playerCard2]];
	call fnc_remove_card;
	//Check for aces in players hand
	call fnc_checkAces;
	call fnc_check_totals;
	call fnc_hit_stay;
};
//lose
fnc_playerLose = {
	call fnc_reset_cards;
	titleText ["You lost!","PLAIN DOWN"]; titleFadeOut 3;
};
//Win
fnc_playerWin = {
	call fnc_reset_cards;
	titleText ["You Won!","PLAIN DOWN"]; titleFadeOut 3;
};
//check if win or lose
fnc_WinLose = {
	if (dealerTotal < playerTotal)then {
		call fnc_playerLose;
	};
	if (dealerTotal > playerTotal)then {
		call fnc_playerWin;
	};
};
//remove cards from array
fnc_remove_card = {
	cardArray = cardArray - dealerCard1;
	cardArray = cardArray - dealerCard2;
	cardArray = cardArray - playerCard1;
	cardArray = cardArray - playerCard2;
};
//Check totals
fnc_check_totals = {
	dealerTotal = dealerCard1val + dealerCard2val ;
	playerTotal = playerCard1val + playerCard2val;
	//check if dealer has 21
	if (dealerTotal == 21) then {
		call fnc_playerLose;
	};
	if (dealerTotal < 21) && (playerTotal == 21)then {
		call fnc_playerWin;
	};
};

fnc_check_card_values = {
//dealer card 1
	if (dealerCard1 == "AH") ||(dealerCard1 == "AD") ||(dealerCard1 == "AS") ||(dealerCard1 == "AC") then {
		dealerCard1val = 11;
	};
	if (dealerCard1 == "KH") || (dealerCard1 == "KD") || (dealerCard1 == "KS") || (dealerCard1 == "KC") ||(dealerCard1 == "QH") || (dealerCard1 == "QD") || (dealerCard1 == "QS") || (dealerCard1 == "QC") ||(dealerCard1 == "JH") || (dealerCard1 == "JD") || (dealerCard1 == "JS") || (dealerCard1 == "JC") ||(dealerCard1 == "10H") || (dealerCard1 == "10D") || (dealerCard1 == "10S") || (dealerCard1 == "10C") then {
		dealerCard1val = 10;
	};
	if (dealerCard1 == "9H") ||(dealerCard1 == "9D") ||(dealerCard1 == "9S") ||(dealerCard1 == "9C") then {
		dealerCard1val = 9;
	};
	if (dealerCard1 == "8H") ||(dealerCard1 == "8D") ||(dealerCard1 == "8S") ||(dealerCard1 == "8C") then {
		dealerCard1val = 8;
	};
	if (dealerCard1 == "7H") ||(dealerCard1 == "7D") ||(dealerCard1 == "7S") ||(dealerCard1 == "7C") then {
		dealerCard1val = 7;
	};
	if (dealerCard1 == "6H") ||(dealerCard1 == "6D") ||(dealerCard1 == "6S") ||(dealerCard1 == "6C") then {
		dealerCard1val = 6;
	};
	if (dealerCard1 == "5H") ||(dealerCard1 == "5D") ||(dealerCard1 == "5S") ||(dealerCard1 == "5C") then {
		dealerCard1val = 5;
	};
	if (dealerCard1 == "4H") ||(dealerCard1 == "4D") ||(dealerCard1 == "4S") ||(dealerCard1 == "4C") then {
		dealerCard1val = 4;
	};
	if (dealerCard1 == "3H") ||(dealerCard1 == "3D") ||(dealerCard1 == "3S") ||(dealerCard1 == "3C") then {
		dealerCard1val = 3;
	};
	if (dealerCard1 == "2H") ||(dealerCard1 == "2D") ||(dealerCard1 == "2S") ||(dealerCard1 == "2C") then {
		dealerCard1val = 2;
	};
	//dealer card 2
	if (dealerCard2 == "AH") ||(dealerCard2 == "AD") ||(dealerCard2 == "AS") ||(dealerCard2 == "AC") then {
		dealerCard2val = 11;
	};
	if (dealerCard2 == "KH") || (dealerCard2 == "KD") || (dealerCard2 == "KS") || (dealerCard2 == "KC") ||(dealerCard2 == "QH") || (dealerCard2 == "QD") || (dealerCard2 == "QS") || (dealerCard2 == "QC") ||(dealerCard2 == "JH") || (dealerCard2 == "JD") || (dealerCard2 == "JS") || (dealerCard2 == "JC") ||(dealerCard2 == "10H") || (dealerCard2 == "10D") || (dealerCard2 == "10S") || (dealerCard2 == "10C") then {
		dealerCard2val = 10;
	};
	if (dealerCard2 == "9H") ||(dealerCard2 == "9D") ||(dealerCard2 == "9S") ||(dealerCard2 == "9C") then {
		dealerCard2val = 9;
	};
	if (dealerCard2 == "8H") ||(dealerCard2 == "8D") ||(dealerCard2 == "8S") ||(dealerCard2 == "8C") then {
		dealerCard2val = 8;
	};
	if (dealerCard2 == "7H") ||(dealerCard2 == "7D") ||(dealerCard2 == "7S") ||(dealerCard2 == "7C") then {
		dealerCard2val = 7;
	};
	if (dealerCard2 == "6H") ||(dealerCard2 == "6D") ||(dealerCard2 == "6S") ||(dealerCard2 == "6C") then {
		dealerCard2val = 6;
	};
	if (dealerCard2 == "5H") ||(dealerCard2 == "5D") ||(dealerCard2 == "5S") ||(dealerCard2 == "5C") then {
		dealerCard2val = 5;
	};
	if (dealerCard2 == "4H") ||(dealerCard2 == "4D") ||(dealerCard2 == "4S") ||(dealerCard2 == "4C") then {
		dealerCard2val = 4;
	};
	if (dealerCard2 == "3H") ||(dealerCard2 == "3D") ||(dealerCard2 == "3S") ||(dealerCard2 == "3C") then {
		dealerCard2val = 3;
	};
	if (dealerCard2 == "2H") ||(dealerCard2 == "2D") ||(dealerCard2 == "2S") ||(dealerCard2 == "2C") then {
		dealerCard2val = 2;
	};
	//player card 1
	if (playerCard1 == "AH") ||(playerCard1 == "AD") ||(playerCard1 == "AS") ||(playerCard1 == "AC") then {
		if (aces1)then{
			playerCard1val = 1;
		}else{
			playerCard1val = 11;
		};
	};
	if (playerCard1 == "KH") || (playerCard1 == "KD") || (playerCard1 == "KS") || (playerCard1 == "KC") ||(playerCard1 == "QH") || (playerCard1 == "QD") || (playerCard1 == "QS") || (playerCard1 == "QC") ||(playerCard1 == "JH") || (playerCard1 == "JD") || (playerCard1 == "JS") || (playerCard1 == "JC") ||(playerCard1 == "10H") || (playerCard1 == "10D") || (playerCard1 == "10S") || (playerCard1 == "10C") then {
		playerCard1val = 10;
	};
	if (playerCard1 == "9H") ||(playerCard1 == "9D") ||(playerCard1 == "9S") ||(playerCard1 == "9C") then {
		playerCard1val = 9;
	};
	if (playerCard1 == "8H") ||(playerCard1 == "8D") ||(playerCard1 == "8S") ||(playerCard1 == "8C") then {
		playerCard1val = 8;
	};
	if (playerCard1 == "7H") ||(playerCard1 == "7D") ||(playerCard1 == "7S") ||(playerCard1 == "7C") then {
		playerCard1val = 7;
	};
	if (playerCard1 == "6H") ||(playerCard1 == "6D") ||(playerCard1 == "6S") ||(playerCard1 == "6C") then {
		playerCard1val = 6;
	};
	if (playerCard1 == "5H") ||(playerCard1 == "5D") ||(playerCard1 == "5S") ||(playerCard1 == "5C") then {
		playerCard1val = 5;
	};
	if (playerCard1 == "4H") ||(playerCard1 == "4D") ||(playerCard1 == "4S") ||(playerCard1 == "4C") then {
		playerCard1val = 4;
	};
	if (playerCard1 == "3H") ||(playerCard1 == "3D") ||(playerCard1 == "3S") ||(playerCard1 == "3C") then {
		playerCard1val = 3;
	};
	if (playerCard1 == "2H") ||(playerCard1 == "2D") ||(playerCard1 == "2S") ||(playerCard1 == "2C") then {
		playerCard1val = 2;
	};
	//player card 2
	if (playerCard2 == "AH") ||(playerCard2 == "AD") ||(playerCard2 == "AS") ||(playerCard2 == "AC") then {
		if (aces1)then{
			playerCard1val = 1;
		}else{
			playerCard1val = 11;
		};
	};
	if (playerCard2 == "KH") || (playerCard2 == "KD") || (playerCard2 == "KS") || (playerCard2 == "KC") ||(playerCard2 == "QH") || (playerCard2 == "QD") || (playerCard2 == "QS") || (playerCard2 == "QC") ||(playerCard2 == "JH") || (playerCard2 == "JD") || (playerCard2 == "JS") || (playerCard2 == "JC") ||(playerCard2 == "10H") || (playerCard2 == "10D") || (playerCard2 == "10S") || (playerCard2 == "10C") then {
		playerCard2val = 10;
	};
	if (playerCard2 == "9H") ||(playerCard2 == "9D") ||(playerCard2 == "9S") ||(playerCard2 == "9C") then {
		playerCard2val = 9;
	};
	if (playerCard2 == "8H") ||(playerCard2 == "8D") ||(playerCard2 == "8S") ||(playerCard2 == "8C") then {
		playerCard2val = 8;
	};
	if (playerCard2 == "7H") ||(playerCard2 == "7D") ||(playerCard2 == "7S") ||(playerCard2 == "7C") then {
		playerCard2val = 7;
	};
	if (playerCard2 == "6H") ||(playerCard2 == "6D") ||(playerCard2 == "6S") ||(playerCard2 == "6C") then {
		playerCard2val = 6;
	};
	if (playerCard2 == "5H") ||(playerCard2 == "5D") ||(playerCard2 == "5S") ||(playerCard2 == "5C") then {
		playerCard2val = 5;
	};
	if (playerCard2 == "4H") ||(playerCard2 == "4D") ||(playerCard2 == "4S") ||(playerCard2 == "4C") then {
		playerCard2val = 4;
	};
	if (playerCard2 == "3H") ||(playerCard2 == "3D") ||(playerCard2 == "3S") ||(playerCard2 == "3C") then {
		playerCard2val = 3;
	};
	if (playerCard2 == "2H") ||(playerCard2 == "2D") ||(playerCard2 == "2S") ||(playerCard2 == "2C") then {
		playerCard2val = 2;
	};
	
};

