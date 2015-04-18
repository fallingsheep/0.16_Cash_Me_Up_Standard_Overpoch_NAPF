// BSRbridge North bridges
// by BraveSirRobin

 
////www.wtf-gaming.co.uk////
//http://killzonekid.com/arma-building-bridges/


//The script to build objects//
//Do not alter, unless you know what your doing//
// You need to have a FUNTIONS MODULE added to your mission file//


//START//

if (isNil "oneTime") then { 

oneTime = true; 


fnc_bridgeA2 = { 
    private ["_start","_obj"]; 
    _start = createVehicle [ 
            _this select 2, 
            _this select 0, 
            [], 
            0, "
            CAN_COLLIDE" 
    ]; 
    _start setVectorUp [0,0,1]; 
    _start setDir (_this select 1); 
    _start setPosATL (_this select 0); 
    for "_i" from 1 to (_this select 3) do { 
    _obj = createVehicle [ 
            _this select 2, 
            _this select 0, 
            [], 
            0, 
            "CAN_COLLIDE" 
        ]; 
        _obj attachTo [_start, [ 
            _i*(_this select 4), 
            _i*(_this select 5), 
            _i*(_this select 6) 
        ]]; 
    }; 
};

//END//



//Placement of objects//
//[startingPosition, direction, objectClass, repeats, offsetX, offsetY, offsetZ]

[ [13250.908, 15714.241, 0.5], -3.0, "MAP_bridge_asf1_25", 16, 25, 0, 0 ] call fnc_bridgeA2;
[ [13191.9, 14959.3, 0.001], 43.0, "MAP_bridge_asf1_25", 11, 25, 0, 0 ] call fnc_bridgeA2;



};
 
 