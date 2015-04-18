//debugging
blackjackDebug = true;

//variables
cardarray = ["2","3","4","5","6","7","8","9","10","11"];
playerCard = [];
playerHand = [];
dealerCard = [];
dealerHand = [];

//deal cards
fnc_deal_cards = {
	//pick random card from array
	playerCard = cardarray call BIS_fnc_selectRandom;
	//remove card from array
	cardarray = cardarray - playerCard;
	//add card to hand
	playerHand = playerHand + playerCard;
	sleep 0.01;
	//repeat for second card
	playerCard = cardarray call BIS_fnc_selectRandom;
	//remove card from array
	cardarray = cardarray - playerCard;
	//add card to hand
	playerHand = playerHand + playerCard;
	sleep 0.01;
	// do same for dealer
	dealerCard = cardarray call BIS_fnc_selectRandom;
	//remove card from array
	cardarray = cardarray - dealerCard;
	//add card to hand
	dealerHand = dealerHand + dealerCard;
	sleep 0.01;
	//repeat for second card
	dealerCard = cardarray call BIS_fnc_selectRandom;
	//remove card from array
	cardarray = cardarray - dealerCard;
	//add card to hand
	dealerHand = dealerHand + dealerCard;
	sleep 0.01;
};


//debug display
fnc_debug_blackjack = {
	while {blackjackDebug} do {
		hintSilent parseText format ["
			<t size='1' font='Bitstream' align='center' color='#5882FA'>PlayerHand: %1 </t><br/>
			<t size='1' font='Bitstream' align='center' color='#5882FA'>DealerHand: %1 </t><br/>
			",
			playerHand,
			dealerHand
		];
		sleep 1;	
	};
};
//spawn debug if on
if(blackjackDebug) then{
	[] spawn fnc_debug_blackjack;
};