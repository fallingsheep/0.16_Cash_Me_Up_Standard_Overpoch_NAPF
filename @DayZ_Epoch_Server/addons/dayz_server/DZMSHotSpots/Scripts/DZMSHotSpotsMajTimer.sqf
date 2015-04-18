/*
	DayZ Mission System Timer by Vampire
	Based on fnc_hTime by TAW_Tonic and SMFinder by Craig
	This function is launched by the Init and runs continuously.
*/
private["_run","_timeDiff","_timeVar","_wait","_cntMis","_ranMis","_varName"];

//Let's get our time Min and Max
_timeDiff = DZMSHotSpotsMajorMax - DZMSHotSpotsMajorMin;
_timeVar = _timeDiff + DZMSHotSpotsMajorMin;

diag_log text format ["[DZMSHotSpots]: Major Mission Clock Starting!"];

//Lets get the loop going
_run = true;

//Let's check that there are missions in the array.
//If there are none, lets end the timer.
_cntMis = count DZMSHotSpotsMajorArray;
if (_cntMis == 0) then { _run = false; };

while {_run} do
{
	//Lets wait the random time
	_wait  = round(random _timeVar);
    [_wait,5] call DZMSHotSpotsSleep;
	
	//Lets pick a mission
	_ranMis = floor (random _cntMis);
	_varName = DZMSHotSpotsMajorArray select _ranMis;
    
    // clean up all the existing units before starting a new one
    {if (alive _x) then {_x call DZMSHotSpotsPurgeObject;};} forEach DZMSHotSpotsUnitsMajor;
    
    // rebuild the array for the next mission
    DZMSHotSpotsUnitsMajor = [];
    
	// set the flag for mission markers
	DZMSHotSpotsShowMarkers = true;
	//diag_log text format ["[DZMSHotSpots]: set DZMSHotSpotsShowMarkers to true"];
	
	//Let's Run the Mission
	[] execVM format ["\z\addons\dayz_server\DZMSHotSpots\Missions\Major\%1.sqf",_varName];
	diag_log text format ["[DZMSHotSpots]: Running Major Mission %1.",_varName];
	
	//Let's wait for it to finish or timeout
	waitUntil {DZMSHotSpotsMajDone};
	DZMSHotSpotsMajDone = false;

	// remove the flag for mission markers
	DZMSHotSpotsShowMarkers = false;
	//diag_log text format ["[DZMSHotSpots]: set DZMSHotSpotsShowMarkers to false"];	
};