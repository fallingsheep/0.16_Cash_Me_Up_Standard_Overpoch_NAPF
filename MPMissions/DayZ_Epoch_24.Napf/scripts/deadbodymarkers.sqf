//deadbody show
while {true} do {
    if (visibleMap || (!isNull (findDisplay 88890))) then {
        {
            if (!isNull _x) then {
                _name = _x getVariable["bodyName","unknown"];
                if (_name == name player) then {_name = "My body";};
                _pPos = getPosATL _x;
                _nameID = _name + str(_pPos);
                if (_name == "My body") then {
                    deleteMarkerLocal _nameID;
                    _mrkr = createMarkerLocal [_nameID,_pPos];
                    _mrkr setMarkerTypeLocal "DestroyedVehicle";
                    _mrkr setMarkerTextLocal format ["%1",_name];
                    _mrkr setMarkerColorLocal "ColorRed";
                } else {
                    deleteMarkerLocal _nameID;
                };
            };
        } count allDead;
    };
    uiSleep 2;
};