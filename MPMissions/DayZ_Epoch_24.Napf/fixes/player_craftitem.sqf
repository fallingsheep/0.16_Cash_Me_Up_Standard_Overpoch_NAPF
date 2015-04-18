/*
	DayZ Epoch Crafting 0.3
	Made for DayZ Epoch && Unleashed by [VB]AWOL please ask permission to use/edit/distrubute email vbawol@veteranbastards.com.
	Thanks to thevisad for help with the spawn call fixes.

USAGE EXAMPLE:
class ItemActions
{
	class Crafting
	{
		text = "Craft Tent";
		script = ";['Crafting','CfgMagazines', _id] spawn player_craftItem;"; // [Class of itemaction,CfgMagazines || CfgWeapons, item]
		neednearby[] = {"workshop","fire"};
		requiretools[] = {"ItemToolbox","ItemKnife"}; // (cfgweapons only)
		output[] = {{"ItemTent",1}}; // (CfgMagazines, qty)
		input[] = {{"ItemCanvas",2},{"ItemPole",2}}; // (CfgMagazines, qty)
		inputstrict = true; // (CfgMagazines input without inheritsFrom) Optional
		inputweapons[] = {"ItemToolbox"}; // consume toolbox (cfgweapons only)
		outputweapons[] = {"ItemToolbox"}; // return toolbox (cfgweapons only)
	};
};
*/
private ["_crafting","_baseClass","_item","_abort","_distance","_reason","_waterLevel","_outputWeapons","_selectedRecipeOutput","_onLadder","_canDo","_needNear","_isNear","_PossShedBuild","_regular","_ShedBuild","_typeOfShed","_maxMagazines","_selectedRecipeTools","_selectedRecipeInput","_selectedRecipeInputStrict","_inputWeapons","_sfx","_randomOutput","_craft_doLoop","_tradeComplete","_temp_removed_array","_missing","_missingTools","_hastoolweapon","_proceed","_itemIn","_countIn","_qty","_missingQty","_animState","_started","_finished","_isMedic","_removed_total","_tobe_removed_total","_waterLevel_lowest","_removed","_configParent","_num_removed","_num_removed_weapons","_selectedWeapon","_selectedMag","_itemOut","_countOut","_textCreate","_textMissing","_maxCanBe","_ETA","_outDone","_recipeOutCount","_noRoom","_shedListActual","_countActual","_cargoActual","_magazineCount","_magazineLeft","_totalRecipeOut","_totalRecipeIn","_recipeInCount","_totalRecipeOutCount","_actualList","_ii","_notPossBuild","_i","_finalCheck","_spaceLeft","_recipeCountArray","_recipeItemsArray","_recipeArrayLikeShed","_countRecipe","_cargoRecipe","_actualRecipeList","_resultQtyInShedArr","_resultQtyRecipeArr","_resultQtyInShed","_resultQtyRecipe","_resultArray1","_countArr","_dividorArr","_counter","_dividor","_lowestNumber","_ArrCount","_selectCount","_tickTime","_lnRoundedString","_lnRounded","_maxTillFull","_compareMagsLeft","_compMagStr","_compMagRounded","_needed","_neededCount","_shedList","_countOld","_cargoOld","_countNeededStr","_cargoNeededStr","_countNeededStr1","_cargoNeededStr1","_countNeededStr2","_cargoNeededStr2","_countNeededStr3","_cargoNeededStr3","_lastIndexOld","_lastIndexOld1","_lastIndexOld2","_lastIndexOld3","_resultOld","_resultNew","_resultOld1","_resultNew1","_resultOld2","_resultNew2","_resultOld3","_resultNew3","_shedListNew","_countNew","_cargoNew","_newList","_totalItemsOut","_textDone"];

if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_63") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

// This is used to find correct recipe based what itemaction was click allows multiple recipes per item.
_crafting = _this select 0;

// This tells the script what type of item we are clicking on
_baseClass = _this select 1;

_item =  _this select 2;

_abort = false;
_distance = 3;
_reason = "";
_waterLevel = 0;
_outputWeapons = [];
_selectedRecipeOutput = [];
_onLadder =	(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
_canDo = (!r_drag_sqf && !r_player_unconscious && !_onLadder);

// Need Near Requirements
_needNear = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "neednearby");
if("fire" in _needNear) then {
	_isNear = {inflamed _x} count (getPosATL player nearObjects _distance);
	if(_isNear == 0) then {
		_abort = true;
		_reason = "fire";
	};
};
if("workshop" in _needNear) then {
	_isNear = count (nearestObjects [player, ["Wooden_shed_DZ","WoodShack_DZ","WorkBench_DZ"], _distance]);
	if(_isNear == 0) then {
		_abort = true;
		_reason = "workshop";
	};
};
if(_abort) exitWith {
	cutText [format[(localize "str_epoch_player_149"),_reason,_distance], "PLAIN DOWN"];
	DZE_ActionInProgress = false;
};

// diag_log format["Checking for fire: %1", _isFireNear];

if (_canDo) then {

/////////////////////////////// Craft in Shed
_PossShedBuildArr = ["Wooden_shed_DZ","WoodShack_DZ","StorageShed_DZ","GunRack_DZ","VaultStorage"];    //add here possible "Sheds"
_PossShedBuildSpaceArr = [200,          100,            400,             10,           200];           //add here the max magazine Inventory space of the newly added "Sheds"

_notPossBuild = ["ItemBriefcase_Base","ItemBriefcase10oz","ItemBriefcase20oz","ItemBriefcase30oz","ItemBriefcase40oz","ItemBriefcase50oz","ItemBriefcase60oz","ItemBriefcase70oz","ItemBriefcase80oz","ItemBriefcase90oz","ItemBriefcase100oz","ItemBriefcaseS10oz","ItemBriefcaseS20oz","ItemBriefcaseS30oz","ItemBriefcaseS40oz","ItemBriefcaseS50oz","ItemBriefcaseS60oz","ItemBriefcaseS70oz","ItemBriefcaseS80oz","ItemBriefcaseS90oz","ItemBriefcaseS100oz"]; //denied item Array

_tickTime = 7;   
                                                                                                       //change the needed time per craft //below 6 wont work cause of the medicanim
_ShedBuild = cursorTarget;
_PossShedBuild = typeOf _ShedBuild in _PossShedBuildArr;

//////////////////////////////
	_selectedRecipeTools = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "requiretools");
	_selectedRecipeOutput = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "output");
	_selectedRecipeInput = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "input");
	_selectedRecipeInputStrict = if ((isNumber (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "inputstrict")) && (getNumber (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "inputstrict") > 0)) then {true} else {false};
	_outputWeapons = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "outputweapons");
	_inputWeapons = getArray (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "inputweapons");

	_sfx = getText(configFile >> _baseClass >> _item >> "sfx");
if (_canDo && !_PossShedBuild) then {
	if(_sfx == "") then {
		_sfx = "repair";
	};

	_randomOutput = 0;
	if(isNumber (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "randomOutput")) then {
		_randomOutput = getNumber(configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "randomOutput");
	};

	_craft_doLoop = true;
	_tradeComplete = 0;

	while {_craft_doLoop} do {

		_temp_removed_array = [];

		_missing = "";
		_missingTools = false;
		{
			_hastoolweapon = _x in weapons player;
			if(!_hastoolweapon) exitWith { _craft_doLoop = false; _missingTools = true; _missing = _x; };
		} forEach _selectedRecipeTools;

		if(!_missingTools) then {


			// Dry run to see if all parts are available.
			_proceed = true;
			if (count _selectedRecipeInput > 0) then {
				{
					_itemIn = _x select 0;
					_countIn = _x select 1;

					_qty = { (_x == _itemIn) || (!_selectedRecipeInputStrict && configName(inheritsFrom(configFile >> "cfgMagazines" >> _x)) == _itemIn) } count magazines player;

					if(_qty < _countIn) exitWith { _missing = _itemIn; _missingQty = (_countIn - _qty); _proceed = false; };

				} forEach _selectedRecipeInput;
			};

			// If all parts proceed
			if (_proceed) then {

				cutText [(localize "str_epoch_player_62"), "PLAIN DOWN"];

				[1,1] call dayz_HungerThirst;
				player playActionNow "Medic";

				[player,_sfx,0,false] call dayz_zombieSpeak;
				[player,50,true,(getPosATL player)] spawn player_alertZombies;

				r_interrupt = false;
				_animState = animationState player;
				r_doLoop = true;
				_started = false;
				_finished = false;

				while {r_doLoop} do {
					_animState = animationState player;
					_isMedic = ["medic",_animState] call fnc_inString;
					if (_isMedic) then {
						_started = true;
					};
					if (_started && !_isMedic) then {
						r_doLoop = false;
						_finished = true;
					};
					if (r_interrupt) then {
						r_doLoop = false;
					};
					sleep 0.1;
				};
				r_doLoop = false;

				if (_finished) then {

					_removed_total = 0; // count total of removed items
					_tobe_removed_total = 0; // count total of all to be removed items
					_waterLevel_lowest = 0; // find the lowest _waterLevel
					// Take items
					{
						_removed = 0;
						_itemIn = _x select 0;
						_countIn = _x select 1;
						// diag_log format["Recipe Finish: %1 %2", _itemIn,_countIn];
						_tobe_removed_total = _tobe_removed_total + _countIn;

						// Preselect the item
						{
							_configParent = configName(inheritsFrom(configFile >> "cfgMagazines" >> _x));
							if ((_x == _itemIn) || (!_selectedRecipeInputStrict && _configParent == _itemIn)) then {
								// Get lowest waterlevel
								if ((_x == "ItemWaterbottle") ||( _configParent == "ItemWaterbottle")) then {
									_waterLevel = getNumber(configFile >> "CfgMagazines" >> _x >> "wateroz");
									if (_waterLevel_lowest == 0 || _waterLevel < _waterLevel_lowest) then {
										_waterLevel_lowest = _waterLevel;
									};
								};
							};
						} forEach (magazines player);

						{
							_configParent = configName(inheritsFrom(configFile >> "cfgMagazines" >> _x));
							if( (_removed < _countIn) && ((_x == _itemIn) || (!_selectedRecipeInputStrict && _configParent == _itemIn))) then {
								if ((_waterLevel_lowest == 0) || ((_waterLevel_lowest > 0) && (getNumber(configFile >> "CfgMagazines" >> _x >> "wateroz") == _waterLevel_lowest))) then {
									_num_removed = ([player,_x] call BIS_fnc_invRemove);
								}
								else {
									_num_removed = 0;
								};
								_removed = _removed + _num_removed;
								_removed_total = _removed_total + _num_removed;
								if(_num_removed >= 1) then {
									//diag_log format["debug remove: %1 of: %2", _configParent, _x];
									if (_x == "ItemWaterbottle" || _configParent == "ItemWaterbottle") then {
										_waterLevel = floor((getNumber(configFile >> "CfgMagazines" >> _x >> "wateroz")) - 1);
									};
									_temp_removed_array set [count _temp_removed_array,_x];
								};
							};
						} forEach (magazines player);

					} forEach _selectedRecipeInput;

					//diag_log format["removed: %1 of: %2", _removed, _tobe_removed_total];

					// Only proceed if all parts were removed successfully
					if(_removed_total == _tobe_removed_total) then {
						_num_removed_weapons = 0;
						{
							_num_removed_weapons = _num_removed_weapons + ([player,_x] call BIS_fnc_invRemove);
						} forEach _inputWeapons;
						if (_num_removed_weapons == (count _inputWeapons)) then {
							if(_randomOutput == 1) then {
								if (!isNil "_outputWeapons" && count _outputWeapons > 0) then {
									_selectedWeapon = _outputWeapons call BIS_fnc_selectRandom;
									_outputWeapons = [_selectedWeapon];
								};
								if (!isNil "_selectedRecipeOutput" && count _selectedRecipeOutput > 0) then {
									_selectedMag = _selectedRecipeOutput call BIS_fnc_selectRandom;
									_selectedRecipeOutput = [_selectedMag];
								};
								// exit loop
								_craft_doLoop = false;
							};
							{
								player addWeapon _x;
							} forEach _outputWeapons;
							{

								_itemOut = _x select 0;
								_countOut = _x select 1;

								if (_itemOut == "ItemWaterbottleUnfilled") then {

									if (_waterLevel > 0) then {
										_itemOut = format["ItemWaterbottle%1oz",_waterLevel];
									};

								};

								// diag_log format["Checking for water level: %1", _waterLevel];

								for "_x" from 1 to _countOut do {
									player addMagazine _itemOut;
								};

								_textCreate = getText(configFile >> "CfgMagazines" >> _itemOut >> "displayName");

								// Add crafted item
								cutText [format[(localize "str_epoch_player_150"),_textCreate,_countOut], "PLAIN DOWN"];
								// sleep here
								sleep 1;

							} forEach _selectedRecipeOutput;

							_tradeComplete = _tradeComplete+1;
						};

					} else {
						// Refund parts since we failed
						{player addMagazine _x; } forEach _temp_removed_array;

						cutText [format[(localize "str_epoch_player_151"),_removed_total,_tobe_removed_total], "PLAIN DOWN"];
					};

				} else {
					r_interrupt = false;
					if (vehicle player == player) then {
						[objNull, player, rSwitchMove,""] call RE;
						player playActionNow "stop";
					};
					cutText [(localize "str_epoch_player_64"), "PLAIN DOWN"];
					_craft_doLoop = false;
				};

			} else {
				_textMissing = getText(configFile >> "CfgMagazines" >> _missing >> "displayName");
				cutText [format[(localize "str_epoch_player_152"),_missingQty, _textMissing,_tradeComplete], "PLAIN DOWN"];
				_craft_doLoop = false;
			};
		} else {
			_textMissing = getText(configFile >> "CfgWeapons" >> _missing >> "displayName");
			cutText [format[(localize "STR_EPOCH_PLAYER_137"),_textMissing], "PLAIN DOWN"];
			_craft_doLoop = false;
		};
	};
	} else {
	///////////////////////////////////////////////////////////// Shed Crafting Start///////////////////////////////////////////////////////////////

	
//_maxMagazines =	getNumber (configFile >> "CfgVehicles" >> _typeOfShed >> "transportMaxMagazines"); //somehow dont works, always return 2
_typeOfShed = typeOf _ShedBuild;
_posInSpaceArr = _PossShedBuildArr find _typeOfShed;
_maxMagazines = _PossShedBuildSpaceArr select _PosInSpaceArr;

_regular = true;

	cutText [format["\n\n You are crafting now within %1 ! ", _typeOfShed], "PLAIN DOWN"];

	
	if(_sfx == "") then {
		_sfx = "repair";
	};

	_randomOutput = 0;
	if(isNumber (configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "randomOutput")) then {
		_randomOutput = getNumber(configFile >> _baseClass >> _item >> "ItemActions" >> _crafting >> "randomOutput");
	};

    _maxCanBe = 0;
	_ETA = 0;
		
	_outDone = "";
	_missing = "";
	
	
	_tradeComplete = 0;	
    _totalItemsOut = 0;	
	_craft_doLoop = true;



	
	while {_craft_doLoop} do {
	                  _startTime = diag_tickTime;
					  _recipeOutCount = 0;
			          _proceed = true;
		              _noRoom = false;					  

					_shedListActual =	getMagazineCargo _ShedBuild;
					_countActual = _shedListActual select 1;
					_cargoActual = _shedListActual select 0;			
			
				

		_missingTools = false;
		{
			_hastoolweapon = _x in weapons player;

			if(!_hastoolweapon) exitWith { _craft_doLoop = false; _missingTools = true; _missing = _x; };
		} forEach _selectedRecipeTools;

		
		if(!_missingTools) then {


///////////// Dry run to see if all parts are available.


			if (count _selectedRecipeInput > 0) then {
			
			
			     findDisplay 106 closeDisplay 3000;
				 /*
				 _gearDialog = findDisplay 106;
				 _gearDialog closeDisplay 3000;
			     */
					/////////check if enough room left in shed to craft
				

                 _magazineCount = (_shedListActual select 1) call vehicle_gear_count;
				 
                 _magazineLeft = _maxMagazines - _magazineCount;
                 _totalRecipeOut = count _selectedRecipeOutput ;
				 _totalRecipeIn = count _selectedRecipeInput;
				 
                
				{
				
				_countOut = _x select 1;
				for "_x" from 1 to _totalRecipeOut do {
			
				_recipeOutCount = _recipeOutCount + _countOut;
								
				};
                } forEach _selectedRecipeOutput;
				
				_recipeInCount = 0;
				{
				
				_countIn = _x select 1;
				for "_x" from 1 to _totalRecipeIn do {
			
				_recipeInCount = _recipeInCount + _countIn;
								
				};
                } forEach _selectedRecipeInput;
				
				_totalRecipeOutCount = _recipeOutCount - _recipeInCount ; 
								

				 
                if ( _magazineLeft < _totalRecipeOutCount) then {
				
				_proceed = false;
				_noRoom = true;
				_regular = false;				
				  };
				
						
								
					_actualList = [];                          
					{
                     _ii = _cargoActual find _x;
                     for "_i" from 1 to (_countActual select _ii) do {                     //// array format now ["Stanag","Stanag","Granade"]
	                 _actualList set [(count _actualList),_x];
                    };
                    } forEach _cargoActual;		
			
			
				{
					_itemIn = _x select 0;
					_countIn = _x select 1;			
					
                      _qty = { (_x == _itemIn) || (!_selectedRecipeInputStrict && configName(inheritsFrom(configFile >> "cfgMagazines" >> _x)) == _itemIn) } count _actualList; 
					if(_qty < _countIn) exitWith { _missing = _itemIn; _missingQty = (_countIn - _qty); _proceed = false; };

				} forEach _selectedRecipeInput;
			
				
			
////////////Check for denied Items to build						


			
		{			
   
		    for "_i" from 0 to count _selectedRecipeInput - 1 do {
	        if (_x in (_selectedRecipeInput select _i)) exitWith {                       //if Item in _notPossBuild and in _selectedRecipeInput then cancel
						  	

						    _proceed = false;
							_regular = false;
	                        cutText [format["\n\n %1 can´t be used within a Shed! ", _x], "PLAIN DOWN"];
							sleep 3;
				            };			       
		    };
	    } forEach _notPossBuild;
		
	  			
				if (count _outputWeapons > 0) exitWith {
                        
					{
							
					_proceed = false;
					_regular = false;
                    cutText [format["\n\n %1 can´t be build within a Shed! ", _x], "PLAIN DOWN"];
					sleep 3;
				    } forEach _outputWeapons;
					
				  };				  
		    };
	

	
			// If all parts proceed
			if (_proceed) then {
				

				[1,1] call dayz_HungerThirst;
				player playActionNow "Medic";

				[player,_sfx,0,false] call dayz_zombieSpeak;
				[player,50,true,(getPosATL player)] spawn player_alertZombies;

				r_interrupt = false;
				_animState = animationState player;
				r_doLoop = true;
				_started = false;
				_finished = false;

				while {r_doLoop} do {
								
					_animState = animationState player;
					_isMedic = ["medic",_animState] call fnc_inString;
					if (_isMedic) then {
						_started = true;
					};
					if (_started && !_isMedic) then {
						r_doLoop = false;
						_finished = true;
					};
					if (r_interrupt) then {
						r_doLoop = false;
					};
					sleep 0.1;
				};
				r_doLoop = false;
		
				
				
				
				if (_finished) then {
				
				
	////// final check if needed Items still in shed + clocking		
				_finalCheck = true;
		        _spaceLeft = true;
                _recipeOutCount = 0;			    
				_countSelectedRecipeInput = count _selectedRecipeInput;
				
				
					_shedListActual =	getMagazineCargo _ShedBuild;                  // shed format [["Stanag","Granade"],[2,1]]	
					_countActual = _shedListActual select 1;
					_cargoActual = _shedListActual select 0;
					
					
					_actualList = []; 
					{
                     _ii = _cargoActual find _x;
                     for "_i" from 1 to (_countActual select _ii) do {                     //// Shed array format now equal to player magazine format = ["Stanag","Stanag","Granade"]
	                 _actualList set [(count _actualList),_x];
                    };
                    } forEach _cargoActual;	
				
				
				
				{
					_itemIn = _x select 0;
					_countIn = _x select 1;
					
				    _qty = { (_x == _itemIn) || (!_selectedRecipeInputStrict && configName(inheritsFrom(configFile >> "cfgMagazines" >> _x)) == _itemIn) } count _actualList; 
										
					if(_qty < _countIn) exitWith { 
					_countSelectedRecipeInput = 0;
					_missing = _itemIn; 
					_missingQty = (_countIn - _qty);
					_finalCheck = false;
	
					};
						
				} forEach _selectedRecipeInput;
				
							
				
				
               if (_countSelectedRecipeInput > 0) then {                              // recipe Array format [["Stanag",2],["Granade",1]]
				
				
				_recipeCountArray = [];   
			    _recipeItemsArray = [];				
				{
				
	                 _recipeCountArray set [(count _recipeCountArray),_x select 1];	    // _recipeCountArray format now = [2,1]  /////Get and compare recipeValue / recipeValueInShed step 0
					 _recipeItemsArray set [(count _recipeItemsArray),_x select 0];	    // _recipeItemsArray format now = ["Stanag","Granade"]

					
				} forEach _selectedRecipeInput;
													
				  //  ["conGreen",format ["_recipeCountArray = %1", _recipeCountArray]] call diagLog;
							
/////Get and compare recipeValue / recipeValueInShed step 1	

				/////// formating recipe array to array format equal shed
					_recipeArrayLikeShed = [];
					_recipeArrayLikeShed set [0,_recipeItemsArray]; 
					_recipeArrayLikeShed set [1,_recipeCountArray];    // format now equal to shed format [["Stanag","Granade"],[2,1]]	
					
			  ////// formatting formated recipe array equal to playermagazines format		
					_countRecipe = _recipeArrayLikeShed select 1;
					_cargoRecipe = _recipeArrayLikeShed select 0;
					_actualRecipeList = []; 
					{
                     _ii = _cargoRecipe find _x;   //searches for _x returns pos
                     for "_i" from 1 to (_countRecipe select _ii) do {             //// recipe array format now equal to player magazine format = ["Stanag","Stanag","Granade"]
	                 _actualRecipeList set [(count _actualRecipeList),_x];
                    };
                    } forEach _cargoRecipe;	


					
					
/////Get and compare recipeValue / recipeValueInShed step 2
// get amount of needed items in ShedArray
					_resultQtyInShedArr = [];
					_resultQtyRecipeArr = [];
                    {
					_itemIn = _x select 0;
					
					_resultQtyInShed = { (_x == _itemIn) } count _actualList;
					_resultQtyRecipe = { (_x == _itemIn) } count _actualRecipeList;
					
					
					_resultQtyInShedArr set [(count _resultQtyInShedArr),_resultQtyInShed];
				    _resultQtyRecipeArr set [(count _resultQtyRecipeArr),_resultQtyRecipe];

					} forEach _selectedRecipeInput;			
					

/////Get and compare recipeValue / recipeValueInShed step 3
// divide pos 1 in array 1 with pos 1 in array2				 
				  
					_dividorArr = [];
					_counter = -1;					
					{

					 _countIn = _x;
                     _counter = _counter + 1;
					 					
					_dividor = _countIn / (_resultQtyRecipeArr select _counter);
					_dividorArr set [(count _dividorArr),_dividor]; 
					
                    } forEach _resultQtyInShedArr;	
																

/////Get and compare recipeValue / recipeValueInShed step 4	
//find lowest Value in array | array format = [1,2,3]				
					_lowestNumber = 0;
					_counter = -1;					
					_ArrCount = count _dividorArr;

					for "_i" from 0 to 1 step 0 do {    //infinite till condition is met
					_counter = _counter + 1;
					_selectCount = -1;
					
									
					for "_i" from 1 to _ArrCount do {
					_selectCount = _selectCount + 1;
					
					if ( _counter >= (_dividorArr select _selectCount)) exitWith {
					    _lowestNumber = (_dividorArr select _selectCount);

					};					
					};
			
					if (_lowestNumber > 0) exitWith {};                    
					};					
						
                    				
											
				////////check if still enough room left in shed to craft


                 _magazineCount = (_shedListActual select 1) call vehicle_gear_count;
                 _magazineLeft = _maxMagazines - _magazineCount;
                 _totalRecipeOut = count _selectedRecipeOutput ;
				 _totalRecipeIn = count _selectedRecipeInput;
				 

				{
				_itemOut = _x select 0;
				_countOut = _x select 1;
				for "_x" from 1 to _totalRecipeOut do {
			
				_recipeOutCount = _recipeOutCount + _countOut;
								
				};
                } forEach _selectedRecipeOutput;
				
				_recipeInCount = 0;
				{
				_itemIn = _x select 0;
				_countIn = _x select 1;
				for "_x" from 1 to _totalRecipeIn do {
			
				_recipeInCount = _recipeInCount + _countIn;
								
				};
                } forEach _selectedRecipeInput;
				
				_totalRecipeOutCount = _recipeOutCount - _recipeInCount ; 
				 
                if ( _magazineLeft < _totalRecipeOutCount) then {
				
				_finalCheck = false;
				_spaceLeft = false;				
				  };
				  
				  
				  
				  
/////Get and compare recipeValue / recipeValueInShed 2nd Part	  
			 
			         
					 
					 _lnRoundedString = str (_lowestNumber - _lowestNumber % 1); // rounded down number | return = string
					 _lnRounded = parseNumber _lnRoundedString;    // string back to number
					 _ETA = _lnRounded * _tickTime - _tickTime;  //- _tickTime cause first item is already done
					 _maxCanBe = _lnRounded * _recipeOutCount - _recipeOutCount; //- _recipeOutCount cause first output is already done
                     _maxTillFull = 0;
					 
					 if (_totalRecipeOutCount < 0) then {      // cause _totalRecipeOutCount can be negative value
					   					   
					   _maxTillFull = _maxCanBe ;  
					   
					  } else {
					  
					 _compareMagsLeft = _magazineLeft  / _totalRecipeOutCount;  		 
					 _compMagStr = str (_compareMagsLeft - _compareMagsLeft % 1);					 
					 _compMagRounded = parseNumber _compMagStr;
					 _maxTillFull = _compMagRounded * _recipeOutCount;
					 };
					 
					 if ( _maxCanBe > _maxTillFull) then {
					 
					 _maxCanBe = _maxTillFull - _recipeOutCount ;
					 
					 
					 
					 _ETA = (_maxCanBe / _recipeOutCount) * _tickTime;
					 };
					 
					 
					 //// Clock
					 
					 			_playtime = (_ETA / 3600);
			
			                    _m = ((_playtime % 1)*60)-((_playtime % 1)*60) % 1;
                                _s = (((_playtime % 1)*3600)-((_playtime % 1)*3600) % 1) - (_m*60);
 
                                _mm = "";
                                if (_m < 10) then {_mm = "0"};
                                _ss = "";
                                if (_s < 10) then {_ss = "0"};
                                _ETA = format ["%1%2:%3%4/mins",_mm,_m,_ss,_s];
					 			 
				};
				
		
				
     if (_finalCheck) then {


	
				if (!isNil "_selectedRecipeOutput" && count _selectedRecipeOutput > 0) then {
		        _selectedMag = _selectedRecipeOutput call BIS_fnc_selectRandom;
				_selectedRecipeOutput = [_selectedMag];
				};
					

					
				    _countNeededArrInShed = []; 
				    _ItemPosArrInShed = [];
					_countNeededArr = []; 
					{
					_itemIn = _x select 0;
					_countIn = _x select 1;
					
					_countNeededArr set [(count _countNeededArr), _countIn];
					
				    _ItemPosInShed = (_shedListActual select 0) find _itemIn;
				    _ItemPosArrInShed set [(count _ItemPosArrInShed), _ItemPosInShed];
					
				    _amount = (_shedlistActual select 1) select _ItemPosInShed;
				    _countNeededArrInShed set [(count _countNeededArrInShed), _amount];	
					
					} forEach _selectedRecipeInput;

				   
					_ResultArr = [];
					_counter = -1;					
					{

					 _countIn = _x;
                     _counter = _counter + 1;
					 					
					_new = _countIn - (_countNeededArr select _counter);
					_ResultArr set [(count _ResultArr),_new]; 
					
                    } forEach _countNeededArrInShed;	
				
                     _counter = -1; 
                    {
                     _counter = _counter + 1;
                     _countActual   set [_ItemPosArrInShed select _counter , _x ];		//clear old amount of items and set new amount [pos in array,value]
		 
                    } forEach _ResultArr;
				
		
                       _shedListNew = [] + _shedListActual;     // new parent independent array 
                       _shedListNew set [1,_countActual];	   //set pos 1 in array value _countActual


				      _countNew = _shedListNew select 1;
					  _cargoNew = _shedListNew select 0;
				      _newList = []; 
                     {
                      _ii = _cargoNew find _x;
                       for "_i" from 1 to (_countNew select _ii) do {
	                   _newList set [(count _newList ),_x];                   //  array format is now ["Stanag","Stanag","Granade"]
                       };
                     } forEach _cargoNew;	

					 
	                            clearMagazineCargoGlobal _ShedBuild;
			                   { _ShedBuild addMagazineCargoGlobal [_x,1]; } forEach _newList;  						   
							  						   
		       
	                           {                                                      
								_itemOut = _x select 0;
								_countOut = _x select 1;
								_outDone = _itemOut;			       
  
			  					for "_i" from 1 to _countOut do {   
								_ShedBuild addMagazineCargoGlobal [_itemOut,1];
								};
										  
			                    	
	                           } forEach _selectedRecipeOutput;
	
	
								
			_tradeComplete = _tradeComplete+1;
			
		    _totalItemsOut = _tradeComplete * _recipeOutCount;										
			_textDone = getText(configFile >> "CfgMagazines" >> _outDone >> "displayName");	

			waitUntil {  (diag_tickTime - _startTime) >= _tickTime; };
			
			cutText [format["\n\n%1 %3 left to craft, time till finished %2 !", _maxCanBe, _ETA, _textDone], "PLAIN DOWN"]; 
			titleText [format["\n\n\n\n\n\n\n\n\n\n\n\n Crafted %3 %1, total till now: %2 !", _textDone,_totalItemsOut,_recipeOutCount], "PLAIN",2];
			
					
				} else {   ///finalCheck else

				if (_spaceLeft) then {
					
				_textMissing = getText(configFile >> "CfgMagazines" >> _missing >> "displayName");
				cutText [format[(localize "str_epoch_player_152"),_missingQty, _textMissing,_tradeComplete], "PLAIN DOWN"];					
						_craft_doLoop = false;
				   
				} else {
				
                cutText [format["\n\n You do not have enough room left, in your %1 ! ", _typeOfShed], "PLAIN DOWN"];
				sleep 2;
													
				_textDone = getText(configFile >> "CfgMagazines" >> _outDone >> "displayName");				
				cutText [format["\n\n Crafted %2 %1 !", _textDone,_totalItemsOut], "PLAIN DOWN"];
					
				_craft_doLoop = false;

				};
                  };		
			
				} else { // if finished else
				
					r_interrupt = false;
					if (vehicle player == player) then {
						[objNull, player, rSwitchMove,""] call RE;
						player playActionNow "stop";
					};
					
					cutText [(localize "str_epoch_player_64"), "PLAIN DOWN"];
					_craft_doLoop = false;
					
				};

			} else {    			//if proceed else
			if (_noRoom) then {
                cutText [format["\n\n You do not have enough room left, in your %1 ! ", _typeOfShed], "PLAIN DOWN"];
				sleep 2;
														
				_textDone = getText(configFile >> "CfgMagazines" >> _outDone >> "displayName");				
				cutText [format["\n\n Crafted %2 %1 !", _textDone,_totalItemsOut], "PLAIN DOWN"];
					
				_craft_doLoop = false;

				};					
			
			if (_regular) then {
			
				_textMissing = getText(configFile >> "CfgMagazines" >> _missing >> "displayName");
				cutText [format[(localize "str_epoch_player_152"),_missingQty, _textMissing,_tradeComplete], "PLAIN DOWN"];
				_craft_doLoop = false;
			} else {
			_craft_doLoop = false;		
			};
			};
						
			
		} else {  //if !missingtools else
			_textMissing = getText(configFile >> "CfgWeapons" >> _missing >> "displayName");
			cutText [format[(localize "STR_EPOCH_PLAYER_137"),_textMissing], "PLAIN DOWN"];
			_craft_doLoop = false;
		};
	};		// while craft loop 
	};     // shedbuild true 
		
} else {   // if cando else
	cutText [(localize "str_epoch_player_64"), "PLAIN DOWN"];
};
DZE_ActionInProgress = false;