_debug = getMarkerPos "respawn_west";

_this = createAgent ["Survivor2_DZ",_debug,[],0,"CAN_COLLIDE"];
_this setVehicleInit "this enableSimulation false;this allowDammage false;this disableAI 'FSM';this disableAI 'ANIM';this disableAI 'MOVE';";
_this enableSimulation false;
_this allowDammage false;
_this disableAI "FSM";
_this disableAI "ANIM";
_this disableAI "MOVE"; 
_this disableAI "AUTOTARGET";
_this disableAI "TARGET";
_this setBehaviour "CARELESS";
_this forceSpeed 0;
processInitCommands;