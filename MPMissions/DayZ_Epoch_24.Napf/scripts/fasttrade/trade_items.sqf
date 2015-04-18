private ["_part_out","_part_in","_qty_out","_qty_in","_qty","_buy_o_sell","_textPartIn","_textPartOut","_bos","_needed","_started","_finished","_animState","_isMedic","_total_parts_out","_abort","_removed","_activatingPlayer","_traderID","_done"];
// [part_out,part_in, qty_out, qty_in,];
 
if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_103") , "PLAIN DOWN"] };
DZE_ActionInProgress = true;
 
_activatingPlayer = player;
 
_part_out = (_this select 3) select 0;
_part_in = (_this select 3) select 1;
_qty_out = (_this select 3) select 2;
_qty_in = (_this select 3) select 3;
_buy_o_sell = (_this select 3) select 4;
_textPartIn = (_this select 3) select 5;
_textPartOut = (_this select 3) select 6;
_traderID = (_this select 3) select 7;
 
_bos = 0;
if(_buy_o_sell == "sell") then {
        _bos = 1;
};
 
_abort = false;
 
// perform number of total trades
r_autoTrade = true;
while {r_autoTrade} do {
 
        _removed = 0;
        cutText [(localize "str_epoch_player_105"), "PLAIN DOWN"];
         
      r_interrupt = false;
        r_doLoop = true;
        _started = false;
        _finished = false;
       
 
        //////////////
       
            _position = getPos player; // gets the position [x,y,z]
        _posX = _position select 0; // 1th element -> x
        _posY = _position select 1; // 2nd element -> y
 
        _counter = 0.0; // animation duration checker
       
        while {r_doLoop} do {
                _positionCheck = getPos player;
                _newX = _positionCheck select 0; // 1th element -> x
                _newY = _positionCheck select 1; // 2nd element -> y
 
                _counter = _counter + 0.1; // same as the sleep timer: 0.1 sec
 
                if (_counter >  1.5) then { // amount of secs the animation takes estimated ? 2 secs?
                        r_doLoop = false;
                                                _counter = 0.0;
                        _finished = true;
                                               
                };
                if (_newX != _posX || _newY != _posY) then {
                                               
                        r_doLoop = false;
                };
                sleep 0.1;
        };
        r_doLoop = false;
 
        if (!_finished) exitWith {
                r_interrupt = false;
                if (vehicle player == player) then {
                        [objNull, player, rSwitchMove,""] call RE;
                        player playActionNow "stop";
                };
                cutText [(localize "str_epoch_player_106") , "PLAIN DOWN"];
        };
 
        if (_finished) then {
               
                _canAfford = false;
                if(_bos == 1) then {
                       
                        //sell
                        _qty = {_x == _part_in} count magazines player;
                        if (_qty >= _qty_in) then {
                                _part_inClass =  configFile >> "CfgMagazines" >> _part_in;
                                _removed = _removed + ([player,_part_inClass,_qty_in] call BIS_fnc_invRemove);
                                if (_removed == _qty_in) then {
                                        _canAfford = [[[_part_out,_qty_out]],1] call epoch_returnChange;
                                };
                        };
 
                } else {
                       
                        //buy
                        _trade_total = [[_part_in,_qty_in]] call epoch_itemCost;
                        _total_currency = call epoch_totalCurrency;
                        _return_change = _total_currency - _trade_total;
                        if (_return_change >= 0) then {
                                _canAfford = true;
                        };
                };
 
                diag_log format["DEBUG TRADER DONE?: %1", _canAfford];
               
                if (_canAfford) then {
                       
                        // Continue with trade.
                        if (isNil "_part_in") then { _part_in = "Unknown Item" };
                        if (isNil "inTraderCity") then { inTraderCity = "Unknown Trader City" };
                        if(_bos == 1) then {
                                // Selling
                                PVDZE_obj_Trade = [_activatingPlayer,_traderID,_bos,_part_in,inTraderCity,_part_out,_qty_out];
                        } else {
                                // Buying
                                PVDZE_obj_Trade = [_activatingPlayer,_traderID,_bos,_part_out,inTraderCity,_part_in,_qty_in];
                        };
                        publicVariableServer  "PVDZE_obj_Trade";
 
                        if(_bos == 0) then {
                                // only wait for result when buying
                                waitUntil {!isNil "dayzTradeResult"};
                                if(dayzTradeResult == "PASS") then {
                                        _done = [[[_part_in,_qty_in]],0] call epoch_returnChange;
                                        if (_done) then {
                                                for "_x" from 1 to _qty_out do {
                                                        player addMagazine _part_out;
                                                };
                                                cutText [format[(localize "str_epoch_player_186"),_qty_in,_textPartIn,_qty_out,_textPartOut], "PLAIN DOWN"];
                                        };
                                } else {
                                        _abort = true;
                                        cutText [format[(localize "str_epoch_player_183"),_textPartOut] , "PLAIN DOWN"];
                                };
                        } else {
                                cutText [format[(localize "str_epoch_player_186"),_qty_in,_textPartIn,_qty_out,_textPartOut], "PLAIN DOWN"];
                        };
                        dayzTradeResult = nil;
                       
                } else {
                        _qty = {_x == _part_in} count magazines player;
                        _needed =  _qty_in - _qty;
                        cutText [format[(localize "str_epoch_player_184"),_needed,_textPartIn] , "PLAIN DOWN"];
                        _abort = true;
                };
        };
        if(_abort) exitWith {r_autoTrade = false};
       
        sleep 1;
};
 
DZE_ActionInProgress = false;