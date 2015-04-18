if ((call TFV_getTotalCurrency) <= 0) exitWith {systemChat "You have no money to combine.";};

TFV_INWORK = true;

private ["_startedCC","_loopCC"];
_startedCC = false;
_loopCC = true;
player playActionNow "Medic";
titleText ["Combining your money.","PLAIN DOWN"];

while {_loopCC} do {
    if (["medic",(animationState player)] call TFV_inString) then {_startedCC = true;};
	if (_startedCC) then {
	    waitUntil {!(["medic",(animationState player)] call TFV_inString)};
		_loopCC = false;
	};
};

call TFV_currencyCompact;
titleText ["Your money has been combined.","PLAIN DOWN"];
TFV_INWORK = false;