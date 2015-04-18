BTC_deploy_rope = //function to deploy the rope
{
    titleText ["Rope Deployed!","PLAIN DOWN"]; titleFadeOut 4; //tell the pilot that the rope is deployed
    _veh = vehicle player; //assign pilot's vehicle to _veh
    _veh setVariable ["BTC_rope",1,true]; //set rope as deployed
    if (BTC_AI_fast_rope_on_deploy == 1) then {_fast_rope = [_veh] spawn BTC_AI_fast_rope}; //give ai the ability to fast rope
    WaitUntil {!Alive _veh || !Alive player || (((getPos player) select 2) > BTC_fast_rope_h) || format ["%1",_veh getVariable "BTC_rope"] != "1"}; //wait until something happens to the pilot, the variable, or the helicopter
    _veh setVariable ["BTC_rope",0,true]; //rope is cut
};
BTC_cut_rope = //function to cut the rope
{
    titleText ["Rope Cut!","PLAIN DOWN"]; titleFadeOut 4; //tell the pilot that the rope is cut
    _veh = vehicle player; //assign pilot's vehicle to _veh
    _veh setVariable ["BTC_rope",0,true]; //set rope as cut
};
BTC_fast_rope = // function to fast rope
{
    _unit = player; //_this select 0; select the player
    _veh = vehicle _unit; //assign the vehicle to _veh
    _unit action ["EJECT",_veh]; //eject the unit out of the vehicle
    _unit setPos (_veh modelToWorld [2,1,-2]); //set unit's position beside the vehicle
    _unit setDir (getDir _veh - 90); //set unit facing to the heli
    if(typeOf _veh == "MH60S") then {
        _unit setPos (_veh modelToWorld[-2, 2,-2]);
        _unit setDir (getDir _veh + 90); //set unit facing to the heli
    };
    if(typeOf _veh == "MV22") then {
        _unit setPos (_veh modelToWorld[3, -1, -2]);
        _unit setDir (getDir _veh-90); //set unit facing to the heli
    };
    unassignVehicle _unit; //detach the unit from the vehicle
    _unit switchMove "LadderRifleStatic"; //switch to animation
    WaitUntil {!Alive _unit || (((getPos _unit) select 2) < 2.4)};
    if ((((getPos _veh) select 2) < BTC_fast_rope_h) && speed _veh < 20) then
    {
        _unit setVelocity [0,0,0];//make sure the unit doesn't fly or get shot into another direction
        _unit playMove "LadderRifleDownOff"; //animate the player
        if !(isPlayer _unit) then {_unit move [((getPos _unit) select 0) + 3,((getPos _unit) select 1) + 3,0];}; //lower the unit
    };
    if (((getPos _veh) select 2) > BTC_fast_rope_h) then {titleText["The chopper flew away! The rope has been cut!","PLAIN DOWN"]; titleFadeOut 4;}; //cut the rope if the heli is too high
};
BTC_AI_fast_rope =
{
    _veh = _this select 0;
    _veh flyInHeight (BTC_fast_rope_h - 2);
    _time = time + 60;
    WaitUntil {!Alive _veh || !Alive driver _veh || (((getPos _veh) select 2) <= BTC_fast_rope_h) || _time < time};
    doStop _veh;
    if (Alive _veh && Alive driver _veh && (((getPos _veh) select 2) <= (BTC_fast_rope_h + 1))) then
    {
        {
            if !(isPlayer _x) then {_fast_rope = [_x] spawn BTC_fast_rope;sleep 3;};
        } foreach assignedCargo _veh;
    };
    sleep 3;
    _veh move position _veh;
};