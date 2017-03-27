disableserialization;
_layer = 100;
while {true} do {
sleep 2.5;
if (_layer == 100) then {_layer = 101;} else { _layer = 100;};
_layer cutrsc ["weaponHud","Plain",1];
};