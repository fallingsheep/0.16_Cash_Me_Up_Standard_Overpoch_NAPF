	private ["_axeBusUnit","_firstRun","_dir","_axWPZ","_unitpos","_rndLOut","_ailoadout","_aiwep","_aiammo","_axeBus","_axeBusGroup","_axeBuspawnpos","_axeBusWPradius","_axeBusWPIndex","_axeBusFirstWayPoint","_axeBusWP","_axeBusRouteWaypoints","_axeBusDriver","_axeBusLogicGroup","_axeBusLogicCenter"];
	_axeBusUnit = objNull;
	_axeBusGroup = createGroup west;
	_axeBuspawnpos = [15437.7,13230.4,0];
	_unitpos = [15433.6,13223.0];
	_axeBusWPradius = 2;//waypoint radius
	
	_axeBusDriver = objNull;
	
	//Set Sides
	_firstRun = _this select 0;
	if(_firstRun)then{
	createCenter RESISTANCE;
	RESISTANCE setFriend [WEST,1];//Like Survivors..
	RESISTANCE setFriend [EAST,0];//Don't like banditos !
	WEST setFriend [RESISTANCE,1];
	EAST setFriend [RESISTANCE,0];
	};
	
	//Load Bus Route
	_axWPZ=0;
	_axeBusWPIndex = 2;
	_axeBusFirstWayPoint = [15302.6,13366.7,_axWPZ];
	_axeBusWP = _axeBusGroup addWaypoint [_axeBusFirstWayPoint, _axeBusWPradius,_axeBusWPIndex];
	_axeBusWP setWaypointType "MOVE";
	_axeBusRouteWaypoints = [[14156.7,13911.9,_axWPZ],[14207.1,13991.9,_axWPZ],[13949.8,14130.1,_axWPZ],
	[13891.5,14152.7,_axWPZ],[13891.5,14152.7,_axWPZ],[9649.65,15639.4,_axWPZ],[8266.42,15451.6,_axWPZ],
	[7262.25,14831.7,_axWPZ],[6322.41,13708.4,_axWPZ],[6152.84,11584.5,_axWPZ],[6433.06,10591.8,_axWPZ],[6467.9,9817.13,_axWPZ],
	[6692.51,9708.9,_axWPZ],[7644.33,9470.89,_axWPZ],[7847.07,9241.27,_axWPZ],[8146.51,8915.45,_axWPZ],[10945.0,8593.94,_axWPZ],
	[12685.7,9691.02,_axWPZ],[14272.1,12649.1,_axWPZ],[14409.5,13277.7,_axWPZ],[14545.5,13648.4,_axWPZ],[15290.4,13384.8,_axWPZ],	
	[15436.7,13230.4,_axWPZ]];
	
	{
	_axeBusWPIndex=_axeBusWPIndex+1;
	_axeBusWP = _axeBusGroup addWaypoint [_x, _axeBusWPradius,_axeBusWPIndex];
	_axeBusWP setWaypointType "MOVE";
	_axeBusWP setWaypointTimeout [20, 30, 35];
	diag_log format ["BUS:Waypoint Added: %2 at %1",_x,_axeBusWP];
	} forEach _axeBusRouteWaypoints;
	
	//Create Loop Waypoint
	_axeBusWP = _axeBusGroup addWaypoint [_axeBusFirstWayPoint, _axeBusWPradius,_axeBusWPIndex+1];
	_axeBusWP setWaypointType "CYCLE";
	
	//Create Bus
	_dir = 244;
	_axeBus = "Ikarus_TK_CIV_EP1" createVehicle _axeBuspawnpos;
	_axeBus setDir _dir;
    _axeBus setPos getPos _axeBus;
    _axeBus setVariable ["ObjectID", [_dir,getPos _axeBus] call dayz_objectUID2, true];
    _axeBus setFuel .3;
	_axeBus allowDammage false;
	//Uncomment for normal dayZ
	//dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_axeBus];
	//For Epoch - Comment out for normal dayZ | Credit to Flenz
	PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_axeBus];
	[_axeBus,"Ikarus_TK_CIV_EP1"] spawn server_updateObject;
	
	//Make Permanent on some builds.. No Need really,
	//dayzSaveVehicle = _axeBus;
	//publicVariable "dayzSaveVehicle";
	
	_axeBus addEventHandler ["HandleDamage", {false}];	
	_axeBus setVariable ["axBusGroup",_axeBusGroup,true];
	_axeBus setVariable ["isAxeAIBus",1,true];
	_axeBus setVariable ["MalSar",1,true];
	_axeBus setVariable ["Sarge",1,true];
	
	//Create Driver and Drivers Mate
	for [{ x=1 },{ x <3 },{ x = x + 1; }] do {
		_rndLOut=floor(random 3);
		_ailoadout=
		switch (_rndLOut) do 
		{ 
		  case 0: {["AK_47_M","30Rnd_762x39_AK47"]}; 
		  case 1: {["M4A1_AIM_SD_camo","30Rnd_556x45_StanagSD"]}; 
		  case 2: {["Remington870_lamp","8Rnd_B_Beneli_74Slug"]}; 
		};
		
		"BAF_Soldier_L_DDPM" createUnit [_unitpos, _axeBusGroup, "_axeBusUnit=this;",0.6,"Private"];
		
		_axeBusUnit enableAI "TARGET";
		_axeBusUnit enableAI "AUTOTARGET";
		_axeBusUnit enableAI "MOVE";
		_axeBusUnit enableAI "ANIM";
		_axeBusUnit enableAI "FSM";
		//stop AI attacking bus
		_axeBusUnit setCaptive true;
		_axeBusUnit allowDammage true;

		_axeBusUnit setCombatMode "GREEN";
		_axeBusUnit setBehaviour "CARELESS";
		//clear default weapons / ammo
		removeAllWeapons _axeBusUnit;
		//add random selection
		_aiwep = _ailoadout select 0;
		_aiammo = _ailoadout select 1;
		_axeBusUnit addweapon _aiwep;
		_axeBusUnit addMagazine _aiammo;
		_axeBusUnit addMagazine _aiammo;
		_axeBusUnit addMagazine _aiammo;

		//set skills
		_axeBusUnit setSkill ["aimingAccuracy",1];
		_axeBusUnit setSkill ["aimingShake",1];
		_axeBusUnit setSkill ["aimingSpeed",1];
		_axeBusUnit setSkill ["endurance",1];
		_axeBusUnit setSkill ["spotDistance",0.6];
		_axeBusUnit setSkill ["spotTime",1];
		_axeBusUnit setSkill ["courage",1];
		_axeBusUnit setSkill ["reloadSpeed",1];
		_axeBusUnit setSkill ["commanding",1];
		_axeBusUnit setSkill ["general",1];
		
		if(x==1)then{
		_axeBusUnit assignAsCargo _axeBus;
		_axeBusUnit moveInCargo _axeBus;
		_axeBusUnit addEventHandler ["HandleDamage", {false}];
		}
		else{
		_axeBusGroup selectLeader _axeBusUnit;
		_axeBusDriver = _axeBusUnit;
		_axeBusDriver addEventHandler ["HandleDamage", {false}];
		_axeBus addEventHandler ["killed", {[false] execVM "scripts\busroute\init_bus.sqf"}];//Shouldn't be required
		
		//Test - Allow dev time to get in bus
		sleep 36;
		
		_axeBusUnit assignAsDriver _axeBus;
		_axeBusUnit moveInDriver _axeBus;
		};
	};
	
	waitUntil{!isNull _axeBus};
	//diag_log format ["AXLOG:BUS: Bus Spawned:%1 | Group:%2",_axeBus,_axeBusGroup];
	
	//Monitor Bus
	while {alive _axeBus} do {
	//diag_log format ["AXLOG:BUS: Tick:%1",time];
		//Fuel Bus
		if(fuel _axeBus < 0.2)then{
		_axeBus setFuel 0.3;
		//diag_log format ["AXLOG:BUS: Fuelling Bus:%1 | Group:%2",_axeBus,_axeBusGroup];
		};
		
		//Keep Bus Alive - Shouldn't be required.
		if(damage _axeBus>0.4)then{
		_axeBus setDamage 0;
		//diag_log format ["AXLOG:BUS: Repairing Bus:%1 | Group:%2",_axeBus,_axeBusGroup];
		};
		
		//Monitor Driver
		if((driver _axeBus != _axeBusDriver)||(driver _axeBus != _axeBusUnit))then{
		//diag_log format ["AXLOG:BUS: Driver Required:%1",driver _axeBus];
		units _axeBusGroup select 0 assignAsDriver _axeBus;
		units _axeBusGroup select 0 moveInDriver _axeBus;
		};
		if(BUSmarkerScript)then{
		//Create marker for bus
		deleteMarker "BUSMarker";
		_BUSMarker = createmarker ["BUSMarker", position _axeBus];
		_BUSMarker setMarkerText "Bus";
		_BUSMarker setMarkerType "DOT";
		_BUSMarker setMarkerColor "ColorRed";
		_BUSMarker setMarkerBrush "Solid";
		_BUSMarker setMarkerSize [1, 1];
		BUSMarker = _BUSMarker;
		};

	sleep 3;
	};
	
	
	
	
