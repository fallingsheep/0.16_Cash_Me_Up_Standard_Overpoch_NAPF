//Fishing Actions
notified = false;
_hasFishpole =  false;
notifiedtext = "";
while {true} do {
	private ["_pos","_fishNodes","_inRange","_trigger","_hasFishpole","_inventory","_currentWeapon"];
	_spawnveh = []; // change to markers on map
	
	//Check fish type
	if (player distance (getMarkerPos "fishtrout") < 100) then {
		nearTrout = true;
	}else{
		nearTrout = false;
	};
	if (player distance (getMarkerPos "fishseabass") < 100) then {
		nearSeabass = true;
	}else{
		nearSeabass = false;
	};
	if (player distance (getMarkerPos "fishtuna") < 100) then {
		nearTuna = true;
	}else{
		nearTuna = false;
	};
	
	
	_pos = getPosATL player;
	_inventory = items player;
	_currentWeapon = primaryWeapon player;
	_hasFishpole = false;

	
	//Check for fishpole in hand or in inventory													
	if ((_currentWeapon == "MeleeFishingPole") || ("ItemFishingPole" in _inventory)) then {			
		_hasFishpole=true;																			
	};																								
	
	if ((nearTrout) || (nearTuna) ||(nearSeabass)) then {
		if (!notified) then {
			if(nearTrout)then{
				notifiedtext = "Trout Fishing Area";
			};
			if(nearSeabass)then{
				notifiedtext = "Seabass Fishing Area";
			};
			if(nearTuna)then{
				notifiedtext = "Tuna Fishing Area";
			};
			cutText ['Fishing Area: To fish you must equip a Fishing Pole, then pick start fishing from your scroll menu.', 'PLAIN'];
			notified = true;
		};
	} else { 
		notifiedtext = "";
		notified = false; 
	};

	if (_inRange && _hasFishpole) then {
	
		if (s_player_fish < 0 && !isFishing) then { s_player_fish = player addaction [("<t color=""#0074E8"">" + ("Start Fishing") +"</t>"),"scripts\fishing\start.sqf","",5,false,true,"",""]; };
		if (s_player_fishing < 0 && isFishing) then {	s_player_fishing = player addaction [("<t color=""#0074E8"">" + ("Stop Fishing") +"</t>"),"scripts\fishing\stop.sqf","",5,false,true,"",""]; };
	} else {
		player removeAction s_player_fishing;
		player removeAction s_player_fish;
		s_player_fishing = -1;
		s_player_fish = -1;
		isFishing = false;
	};
	sleep 2;
};
