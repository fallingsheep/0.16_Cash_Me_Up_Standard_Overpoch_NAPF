/*
	Adjusts a player's rating so survivors won't fire on them, uses humanity so a bandit will be shot by companions,
	to make it so it will work for all players change
	if(_r != _h) then {
		_ra = _h - _r;
	to this
	if(_r < 0) then {
		_ra = abs _r;
*/

private ["_r","_ra","_h"];

waitUntil {(alive player)};

while {(alive player)} do {
	_r = rating player;
	_h = round (player getVariable["humanity",0]);
	if(_r != _h) then {
		_ra = _h - _r;
		player addRating _ra;
		_r = rating player;
		diag_log format ["Player rating adjusted to %1",_r];
	};
	sleep 0.02;
};
