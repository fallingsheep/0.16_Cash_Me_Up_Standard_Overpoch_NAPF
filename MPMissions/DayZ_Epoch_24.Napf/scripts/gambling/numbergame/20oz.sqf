//Sheeps random number game
Private["_randomnumber","_result","_number","_win"];
_20ozBet = false;
if ("ItemBriefcase20oz" in magazines player) then {
    _20ozBet = true;
} else {
    _20ozBet = false;
};
if (_20ozBet) then {  

//remove bet
player removeMagazine "ItemBriefcase20oz";
sleep 0.01;
//inform player of bet amount
titleText ["You Bet 20oz briefcase.","PLAIN DOWN"]; titleFadeOut 5;

//house rolled
_randomnumber = random 20; 
//players rolled
_number = random 20;
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
titleText ["You won 3x 20oz briefcase.","PLAIN DOWN"]; titleFadeOut 5;
}else{
	_win = false;
	//alert player they have lost
titleText ["You lost.","PLAIN DOWN"]; titleFadeOut 5;
};
//Pay player if they win
if(_win)then{
player addMagazine "ItemBriefcase20oz";
player addMagazine "ItemBriefcase20oz";
player addMagazine "ItemBriefcase20oz";
};
}else{
	titleText ["You need 1x 20oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
};
