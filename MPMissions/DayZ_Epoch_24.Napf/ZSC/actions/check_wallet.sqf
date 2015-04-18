private ["_body", "_hisMoney", "_myMoney", "_killsH", "_test2", "_headShots", "_test","_playeridke","_humanity"];

_body = _this select 3;

_PlayerNear = _body call dze_isnearest_player;
if (_PlayerNear) exitWith {cutText [localize "str_pickup_limit_4", "PLAIN DOWN"]};

_name = _body getVariable ["bodyName","unknown"];
_hisMoney = _body getVariable ["cashMoney",0];
_myMoney = player getVariable ["cashMoney",0];
_myMoney = _myMoney + _hisMoney;
_body setVariable ["cashMoney", 0 , true];

if(typeName (_myMoney) == "SCALAR")then{
    player setVariable ["cashMoney", _myMoney , true];
};
systemChat format ['You took %1 coins, ID says %2 !',_hisMoney,_name];
