private ["_humanity", "_pic", "_info_player"];



fnc_debug = {

	while {debugMonitor} do {
	
		//Area
		_nearestCity = nearestLocations [getPos player, ["NameCityCapital","NameCity","NameVillage","NameLocal"],650];
		_textCity = "Wilderness";
		
		 if (count _nearestCity > 0) then {
			if (notified) then{
				_textCity = notifiedtext;
			}else{
				_textCity = text (_nearestCity select 0);
			};
		 };    

		
		
		
		
		
		//Title
		_currentHUM = (player getVariable["humanity",0]);
		_title = "Survivor";
		if (_currentHUM > 30000) then {
			_title = "Godly Hero";
		};
		if (( _currentHUM < 29999 ) && (_currentHUM > 20000)) then {
			_title = "Epic Hero";
		};
		if (( _currentHUM < 19999 ) && (_currentHUM > 10000)) then {
			_title = "Legendary Hero";
		};
		if (( _currentHUM < 9999 ) && (_currentHUM > 8000)) then {
			_title = "Military Hero";
		};
		if (( _currentHUM < 7999 ) && (_currentHUM > 6000)) then {
			_title = "Wasteland Hero";
		};
		if (( _currentHUM < 5999 ) && (_currentHUM > 5000)) then {
			_title = "Hero";
		};
		if (( _currentHUM < 4999 ) && (_currentHUM > 4000)) then {
			_title = "Enforcer";
		};
		if (( _currentHUM < 3999 ) && (_currentHUM > 3000)) then {
			_title = "Protector";
		};
		if (( _currentHUM < 2999 ) && (_currentHUM > 2500)) then {
			_title = "GoodGuy";
		};
		if (( _currentHUM < 2499 ) && (_currentHUM > 0 )) then {
			_title = "Survivor";
		};
		if (( (_currentHUM > -1) ) && (_currentHUM < -2499)) then {
			_title = "BadGuy";
		};
		if (( (_currentHUM > -2500) ) && (_currentHUM < -2999)) then {
			_title = "Criminal";
		};
		if (( (_currentHUM > -3000) ) && (_currentHUM < -3999)) then {
			_title = "Assassin";
		};
		if (( (_currentHUM > -4000) ) && (_currentHUM < -4999)) then {
			_title = "Bandit";
		};
		if (( (_currentHUM > -5000) ) && (_currentHUM < -5999)) then {
			_title = "Experienced Bandit";
		};
		if (( (_currentHUM > -6000) ) && (_currentHUM < -6999)) then {
			_title = "Hardened Bandit";
		};
		if (( (_currentHUM > -10000) ) && (_currentHUM < -9999)) then {
			_title = "Legendary Bandit";
		};
		if (( (_currentHUM > -20000) ) && (_currentHUM < -19999)) then {
			_title = "Epic Bandit";
		};
		if (( (_currentHUM > -30000) ) && (_currentHUM < -29999)) then {
			_title = "Godly Bandit";
		};	
				
		_pic = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'picture'));
		if (player == vehicle player) then {
			_pic = (getText (configFile >> 'CfgWeapons' >> (currentWeapon player) >> 'picture'));
		}else{
		_pic = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'picture'));
		};
					
		_txt = '';
		_txt = (getText (configFile >> 'CfgVehicles' >> (typeOf vehicle player) >> 'displayName'));
		hintSilent parseText format ["
			<t size='1' font='Bitstream' align='center' color='#5882FA'>Survived %11 Days</t><br/>
			<t size='1' font='Bitstream' align='Center' >%1</t><br/>
			<br/>
			<t size='1' font='Bitstream' color='#0066CC'>Title:</t><t size='1' font='Bitstream'>%14</t><br/>
			<t size='1' font='Bitstream' color='#0066CC'>Area:</t><t size='1' font='Bitstream'>%15</t><br/>
			<br/>
			<img size='4.75' image='%2'/><br/>
			<t size='1' font='Bitstream' align='left' color='#CC0000'>Blood: </t><t size='1' font='Bitstream' align='right'>%10</t><br/>
			<t size='1' font='Bitstream' align='left' color='#0066CC'>Altitude: </t><t size='1' font='Bitstream' align='right'>%13</t><br/>
			<t size='1' font='Bitstream' align='left' color='#0066CC'>Speed: </t><t size='1' font='Bitstream' align='right'>%12KPH</t><br/>
			<t size='1' font='Bitstream' align='left' color='#0066CC'>Humanity: </t><t size='1' font='Bitstream' align='right'>%6</t><br/>
			<br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>Players Online: </t><t size='1 'font='Bitstream' align='right'>%3</t><br/>
	        <t size='1' font='Bitstream' align='left' color='#FFBF00'>Murders: </t><t size='1' font='Bitstream' align='right'>%8</t><br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>Bandits Killed: </t><t size='1' font='Bitstream' align='right'>%9</t><br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>Zombies Killed: </t><t size='1' font='Bitstream' align='right'>%7</t><br/>
			<t size='1' font='Bitstream' align='left' color='#FFBF00'>FPS: </t><t size='1' font='Bitstream' align='right'>%4</t><br/>
			<br/>
			<t size='1' font='Bitstream' align='center' color='#FFBF00'>Server Restart: </t><t size='1' font='Bitstream' align='right'>%5min</t><br/>
			<t size='1'font='Bitstream'align='center' color='#104E8B' >Press F10 to Toggle Debug</t><br/>
			",
			_txt,// %1 Vehicle/weapon name
			_pic, // %2 vehicle/weapon pic
			(count playableUnits), // %3Players Online
			round(diag_fps), // %4 FPS
			(round(240-(serverTime)/60)), // %5 restart time
			(player getVariable["humanity",0]), // %6 Humanity
			(player getVariable["zombieKills",0]), //  %7 Zombie Kills
			(player getVariable["humanKills",0]), // %8 Murders
			(player getVariable["banditKills",0]), // %9 Bandit kills
			round (r_player_blood), // %10 blood
			(dayz_Survived), // %11 days survived
			round(speed (vehicle player)),// %12 player speed
			round(getPos player select 2),// %13 Altitude
			_title, // %14 Humanity title
			_textCity // %15 Gathering area
		];
		sleep 1;
	};
};
[] spawn fnc_debug;
