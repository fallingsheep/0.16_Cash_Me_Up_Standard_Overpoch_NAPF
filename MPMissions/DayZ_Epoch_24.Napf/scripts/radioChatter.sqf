waitUntil {!isNil ("dayz_animalCheck")};
sleep 10;

While {alive player} do {

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Init Variables
_msgChance =         _this select 0;
_sleepTimer =         _this select 1;
vanillaDayz =         _this select 2;


_itemsPlayer =         items player;
//_hasRadio =         "ItemRadio" in _itemsPlayer;
_hasRadio = true; // always randomly play sound regardless of radio
_radioOff =         player getVariable ["radioOn",false];
_vanillaMsg =         ["radio_static","radio_transmission_russian","radio_transmission_wombat"] call BIS_fnc_selectRandom;
_crueMsg =             ["radio1","radio2","radio3","radio4"] call BIS_fnc_selectRandom;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Make sure player has a radio
if (_hasRadio) then {

    //Make sure the radio is turned on
    if (!_radioOff) then {
    
        //Chance Variables
        _spawnRoll = random 1;
        
        //Roll chance to see if message will be played
        if (_spawnRoll <= _msgChance) then {
        
            //Message is going to be played. Notify the player. Comment out to disable notification.
            cutText ["Your radio is picking up a transmission.","PLAIN DOWN"];
            sleep 3;
            
            //message counter
            _msgCounter = 0;
            
            //Change < Num to make sound play more than once. Also adjust sleep time after each message played if you play more than once.
            While {_msgCounter < 1} do {
                
                //Play message for default
                if (vanillaDayz) then {
                    //Play message to player only
                    playSound _vanillaMsg;
                    sleep 60;
                } else {
                    //Play message to player only
                    playSound _crueMsg;
                    sleep 60;
                };
            //Plus one to counter after each loop. 
            _msgCounter = _msgCounter + 1;
            };
        };
    };
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Sleep timer. Set in init.sqf
sleep _sleepTimer;
};
};//end loop and restart