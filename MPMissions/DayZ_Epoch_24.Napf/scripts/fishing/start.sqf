//Fishing Start
private ["_Fishing_Counter","_rand","_randGem","_hasSledge","_hasToolbox","_inventory","_currentWeapon","_Fishing_message","_has_free_space","_cursorTarget"];

isFishing = true;
_has_free_space = true;
_cursorTarget = cursorTarget;
_Fishing_message = "**Fishing**";
systemChat("Fishing Started");

player removeAction s_player_fish;
s_player_fishing = -1;

//checks player's current weapon and exist with message if they do not have a fishing pole equipped			//
//adds eventhandler so that if the player looks away from the rock they break out of the Fishing action	//
_currentWeapon = primaryWeapon player;																	//	hogscraper
																										//
if (_currentWeapon == "MeleeFishingPole") then {																//
	r_interrupt=false;																					//
	
	while {isFishing} do {
		_inventory = magazines player;
		_Fishing_Counter=100; //can fish 100 times (not really needed just lets you fish for ages
		systemChat(_Fishing_message);
		[10,10] call dayz_HungerThirst;
		
		//set up quick loop that swings the fishing pole and if player moves it breaks out of the Fishing action 					//
		while {_Fishing_Counter > 0} do {																					//
			_cursorTarget = cursorTarget;
			if((r_interrupt)) exitWith { isFishing=false };
			if ((currentWeapon player)!="MeleeFishingPole") exitWith {
				isFishing = false;
				systemChat("Fishing Pole must be the current weapon.");
			};
			player playActionNow "GestureSwing";																			//	hogscraper
			sleep 4;																										//
			_Fishing_Counter = _Fishing_Counter - 1;																			//
			closeDialog 0;																									//
		};																													//

		if (isFishing) then {
			private ["_rand","_randGem"];
			_rand = floor(random 100);
			if (_rand < 19) then {
				_Fishing_message="Caught nothing.";
			};
			if ((_rand > 30) && (nearTrout))then {
				_has_free_space=[player,"ItemTrout",false] call BIS_fnc_invAdd;
				_Fishing_message="Caught 1 Trout.";
			};
			if ((_rand > 50) && (nearSeabass)) then {
				_has_free_space=[player,"ItemSeaBass",false] call BIS_fnc_invAdd;
				_Fishing_message="Caught 1 Sea Bass.";
			};
			if ((_rand > 75) && (nearTuna)) then {
				_has_free_space=[player,"ItemTuna",false] call BIS_fnc_invAdd;
				_Fishing_message="Caught 1 Tuna.";
			};
		} else {
			systemChat("Fishing Cycle Cancelled");
			player removeAction s_player_Fishing;
			s_player_fish = -1;		
		};
		
		if (!_has_free_space) exitWith {
			isFishing = false;
			player removeAction s_player_Fishing;
			s_player_fish = -1;
			systemChat ("Your inventory is full.");
		}; 
	};
} else {
	systemChat("You must have your Fishing Pole equipped to fish!");
	isFishing = false;
	player removeAction s_player_Fishing;
	s_player_fish = -1;		
};