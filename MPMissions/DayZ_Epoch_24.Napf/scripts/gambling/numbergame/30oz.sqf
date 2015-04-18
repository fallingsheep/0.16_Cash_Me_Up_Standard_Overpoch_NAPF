//Sheeps random number game
Private["_randomnumber","_result","_number","_win"];
_30ozBet = false;
if ("ItemBriefcase30oz" in magazines player) then {
    _30ozBet = true;
} else {
    _30ozBet = false;
};
if (_30ozBet) then {  

//remove bet
player removeMagazine "ItemBriefcase30oz";
sleep 0.01;
//inform player of bet amount
titleText ["You Bet 30oz briefcase.","PLAIN DOWN"]; titleFadeOut 5;

//house rolled
_randomnumber = random 30; 
//players rolled
_number = random 30;
//round off numbers
_result1 = round _randomnumber;
_result2 = round _number;

//alert player of house roll
cutText [format["\n House Rolled: %1", _result1],"PLAIN DOWN"];
systemChat format ["House Rolled: %1", _result1];
//wait before showing player roll
sleep 4;
//alert player of house roll
cutText [format["\n You Rolled: %1", _result2],"PLAIN DOWN"];
systemChat format ["You Rolled: %1", _result2];
sleep 4;
//check if numbers match
if (_result1 == _result2)then{
	_win = true;
	//alert player they have won
titleText ["You won 3x 30oz briefcase.","PLAIN DOWN"]; titleFadeOut 5;
}else{
	_win = false;
	//alert player they have lost
titleText ["You lost.","PLAIN DOWN"]; titleFadeOut 5;
};
//Pay player if they win
if(_win)then{
player addMagazine "ItemBriefcase30oz";
player addMagazine "ItemBriefcase30oz";
player addMagazine "ItemBriefcase30oz";
};
}else{
	titleText ["You need 1x 30oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
};
