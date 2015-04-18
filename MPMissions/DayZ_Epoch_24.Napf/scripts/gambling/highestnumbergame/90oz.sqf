//Sheeps random number game
Private["_randomnumber","_result","_number","_win"];
_90ozBet = false;
if ("ItemBriefcase90oz" in magazines player) then {
    _90ozBet = true;
} else {
    _90ozBet = false;
};
if (_90ozBet) then {  

//remove bet
player removeMagazine "ItemBriefcase90oz";
sleep 0.01;
//inform player of bet amount
titleText ["You Bet 90oz briefcase.","PLAIN DOWN"]; titleFadeOut 5;

//house rolled
_randomnumber = random 90; 
//players rolled
_number = random 90;
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
//check if house is less than player
if (_result1 < _result2)then{
	_win = true;
	//alert player they have won
titleText ["You won 2x 90oz briefcase.","PLAIN DOWN"]; titleFadeOut 5;
}else{
	_win = false;
	//alert player they have lost
titleText ["You lost.","PLAIN DOWN"]; titleFadeOut 5;
};
//Pay player if they win
if(_win)then{
player addMagazine "ItemBriefcase90oz";
player addMagazine "ItemBriefcase90oz";
};
}else{
	titleText ["You need 1x 90oz briefcase to place this bet!","PLAIN DOWN"]; titleFadeOut 5;
};
