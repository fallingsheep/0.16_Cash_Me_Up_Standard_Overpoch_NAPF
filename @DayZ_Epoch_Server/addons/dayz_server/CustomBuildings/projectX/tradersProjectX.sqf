//Gambler test
_unit_10000 = objNull;
if (true) then
{
  _this = createAgent ["Hooker4", [6473.39, 14292.2, 3.0], [], 0, "CAN_COLLIDE"];
  _unit_10000 = _this;
  _this setDir 422.9967;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

  //Bartender
_unit_10001 = objNull;
if (true) then
{
  _this = createAgent ["Hooker2", [6480.47, 14297.2, 3.0], [], 0, "CAN_COLLIDE"];
  _unit_10001 = _this;
  _this setDir 422.9967;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

  //Drug dealer
_unit_10002 = objNull;
if (true) then
{
  _this = createAgent ["Hooker1", [6475.19, 14270.5, 3.0], [], 0, "CAN_COLLIDE"];
  _unit_10002 = _this;
  _this setDir 422.9967;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;};

    //Dance tests
_unit_10003 = objNull;
if (true) then
{
  _this = createAgent ["Hooker3", [6474.19, 14270.5, 3.0], [], 0, "CAN_COLLIDE"];
  _unit_10003 = _this;
  _this setDir 422.9967;
  _this setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
  _this setUnitAbility 0.60000002;
  _this allowDammage false; _this disableAI 'FSM'; _this disableAI 'MOVE'; _this disableAI 'AUTOTARGET'; _this disableAI 'TARGET'; _this setBehaviour 'CARELESS'; _this forceSpeed 0;_this enableSimulation false;
  _unit_10003 playMoveNow "ActsPercMstpSnonWnonDnon_DancingStefan";
  };

processInitCommands;