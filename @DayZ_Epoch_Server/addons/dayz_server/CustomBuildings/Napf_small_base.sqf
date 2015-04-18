/*
Epoch NapF Custom Map Addition [napf_magden.sqf]
Vers. 1.0aâ€‹

This adds a custom base in Magden that can be used by player or admin, easy to finish securing with Epoch Modular Building System. Walls fortified around the building, added roads, warehouse and a boat facility!!  Enjoy 

Requirements (Listed. Tools(download link) - Difficulty / Expected Time)

    Moderate <10
    Notepad++     (I recommend this one: Download)
    A PBO-Manager (I recommend this one: Download)
    	
Installation Steps Mission File:

    Download the Files.
	Unpack your mission_file.pbo or open your mission_files folder.
    Make a folder in your mission root folder called:  buildings
	Open your init.sqf file in: Notepad ++
	At The Bottom Add: 
	[] execVM "buildings\napf_magden.sqf";                          //NapF Magden Base Add-on By FoRcE72
	Now repack your mission_file.pbo or re-upload your mission files and your done!!
	
Installation Steps Server File:
	
    Download the Files.
	Unpack your dayz_server.pbo or open your dayz_server folder.
    Make a folder in your dayz_server root folder called:  buildings
	Open your dayz_server\init\server_functions.sqf file in: Notepad ++
	At The Bottom Add: 
	call compile preProcessFileLineNumbers "\z\addons\dayz_server\buildings\napf_magden.sqf";                          //NapF Magden Base Add-on By FoRcE72
	Now repack your dayz_server.pbo and re-upload it to your server and your done!!
*/
if (isServer) then {

_vehicle_3 = objNull;
if (true) then
{
  _this = createVehicle ["Land_pumpa", [6384.4326, 14532.343, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_3 = _this;
  _this setDir -108.95656;
  _this setPos [6384.4326, 14532.343, -3.8146973e-006];
};

_vehicle_28 = objNull;
if (true) then
{
  _this = createVehicle ["hruzdum", [6383.4619, 14527.498, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_28 = _this;
  _this setDir -58.529819;
  _this setPos [6383.4619, 14527.498, -7.6293945e-006];
};

_vehicle_34 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_SideRoof", [6387.7065, 14545.13, 0.93693966], [], 0, "CAN_COLLIDE"];
  _vehicle_34 = _this;
  _this setDir 216.36929;
  _this setPos [6387.7065, 14545.13, 0.93693966];
};

_vehicle_46 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_komin", [6387.6606, 14531.634, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_46 = _this;
  _this setDir -58.788361;
  _this setPos [6387.6606, 14531.634, -1.1444092e-005];
};

_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_SideRoof", [6387.3179, 14544.835, 0.89879167], [], 0, "CAN_COLLIDE"];
  _vehicle_73 = _this;
  _this setDir 36.720268;
  _this setPos [6387.3179, 14544.835, 0.89879167];
};

_vehicle_87 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_hospital_bench", [6387.1206, 14521.777, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_87 = _this;
  _this setDir -96.1166;
  _this setPos [6387.1206, 14521.777, -7.6293945e-006];
};

_vehicle_88 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_hospital_bench", [6389.0996, 14521.958, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_88 = _this;
  _this setDir 83.037048;
  _this setPos [6389.0996, 14521.958, 9.5367432e-006];
};

_vehicle_90 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_kitchen_table_a", [6388.2104, 14521.861, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_90 = _this;
  _this setDir -5.6143045;
  _this setPos [6388.2104, 14521.861, -2.4795532e-005];
};

_vehicle_91 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_lobby_table", [6388.2124, 14520.531, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_91 = _this;
  _this setDir -8.6009026;
  _this setPos [6388.2124, 14520.531, -2.2888184e-005];
};

_vehicle_95 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_PostBox", [6386.5479, 14525.695, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_95 = _this;
  _this setDir 124.94012;
  _this setPos [6386.5479, 14525.695, -5.7220459e-006];
};

_vehicle_96 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_PowerGenerator", [6383.4189, 14522.756, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_96 = _this;
  _this setDir 120.43524;
  _this setPos [6383.4189, 14522.756, -3.8146973e-006];
};

_vehicle_99 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Heli_H_army", [6398.8247, 14512.444, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_99 = _this;
  _this setDir -57.533321;
  _this setPos [6398.8247, 14512.444, 3.8146973e-006];
};

_vehicle_102 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bags_stack_EP1", [6385.4766, 14520.751, 2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_102 = _this;
  _this setPos [6385.4766, 14520.751, 2.6702881e-005];
};

_vehicle_103 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6368.4102, 14524.519, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_103 = _this;
  _this setDir -54.427773;
  _this setPos [6368.4102, 14524.519, 1.1444092e-005];
};

_vehicle_104 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6376.8345, 14536.351, 9.9182129e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_104 = _this;
  _this setDir -53.776279;
  _this setPos [6376.8345, 14536.351, 9.9182129e-005];
};

_vehicle_105 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6385.6748, 14548.449, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_105 = _this;
  _this setDir -53.885433;
  _this setPos [6385.6748, 14548.449, -1.9073486e-006];
};

_vehicle_106 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6395.5835, 14548.969, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_106 = _this;
  _this setDir 34.423119;
  _this setPos [6395.5835, 14548.969, 1.335144e-005];
};

_vehicle_107 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6408.0444, 14540.35, 2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_107 = _this;
  _this setDir 34.60968;
  _this setPos [6408.0444, 14540.35, 2.4795532e-005];
};

_vehicle_109 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6370.2959, 14514.898, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_109 = _this;
  _this setDir 31.462669;
  _this setPos [6370.2959, 14514.898, 3.0517578e-005];
};

_vehicle_110 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6383.5776, 14506.804, -5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_110 = _this;
  _this setDir 31.534594;
  _this setPos [6383.5776, 14506.804, -5.3405762e-005];
};

_vehicle_111 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6396.8745, 14498.634, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_111 = _this;
  _this setDir 31.931553;
  _this setPos [6396.8745, 14498.634, 3.8146973e-006];
};

_vehicle_112 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6415.8545, 14513.834, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_112 = _this;
  _this setDir -57.832317;
  _this setPos [6415.8545, 14513.834, 1.335144e-005];
};

_vehicle_113 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6407.7651, 14501.116, -0.00010871887], [], 0, "CAN_COLLIDE"];
  _vehicle_113 = _this;
  _this setDir -57.762188;
  _this setPos [6407.7651, 14501.116, -0.00010871887];
};

_vehicle_114 = objNull;
if (true) then
{
  _this = createVehicle ["WarfareBunkerSign", [6419.8589, 14518.575, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_114 = _this;
  _this setDir -56.250523;
  _this setPos [6419.8589, 14518.575, -1.9073486e-006];
};

_vehicle_118 = objNull;
if (true) then
{
  _this = createVehicle ["Base_WarfareBBarrier10xTall", [6419.7563, 14532.248, -0.00015830994], [], 0, "CAN_COLLIDE"];
  _vehicle_118 = _this;
  _this setDir 34.916603;
  _this setPos [6419.7563, 14532.248, -0.00015830994];
};

_vehicle_123 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Campfire_burning", [6387.7749, 14523.708, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_123 = _this;
  _this setPos [6387.7749, 14523.708, 9.5367432e-006];
};

_vehicle_124 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierUSA", [6390.4126, 14542.67, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_124 = _this;
  _this setPos [6390.4126, 14542.67, -1.1444092e-005];
};

_vehicle_126 = objNull;
if (true) then
{
  _this = createVehicle ["Pile_of_wood", [6382.4956, 14523.408, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_126 = _this;
  _this setDir 122.46329;
  _this setPos [6382.4956, 14523.408, 1.9073486e-005];
};

_vehicle_127 = objNull;
if (true) then
{
  _this = createVehicle ["Axe_woodblock", [6381.4761, 14521.729, 3.6239624e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_127 = _this;
  _this setPos [6381.4761, 14521.729, 3.6239624e-005];
};

_vehicle_128 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_Timbers", [6370.1538, 14518.055, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_128 = _this;
  _this setDir -57.273792;
  _this setPos [6370.1538, 14518.055, 3.8146973e-006];
};

_vehicle_129 = objNull;
if (true) then
{
  _this = createVehicle ["Land_psi_bouda", [6389.1909, 14529.073, -5.531311e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_129 = _this;
  _this setDir 28.528027;
  _this setPos [6389.1909, 14529.073, -5.531311e-005];
};

_vehicle_130 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [6390.5825, 14532.38, 4.9591064e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_130 = _this;
  _this setDir 63.561886;
  _this setPos [6390.5825, 14532.38, 4.9591064e-005];
};

_vehicle_131 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [6378.583, 14526.346, -3.2424927e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_131 = _this;
  _this setDir -92.24929;
  _this setPos [6378.583, 14526.346, -3.2424927e-005];
};

_vehicle_132 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [6419.2285, 14520.75, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_132 = _this;
  _this setDir -67.182411;
  _this setPos [6419.2285, 14520.75, -3.4332275e-005];
};

_vehicle_133 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [6384.5918, 14522.621, -2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_133 = _this;
  _this setDir 164.94569;
  _this setPos [6384.5918, 14522.621, -2.0980835e-005];
};

_vehicle_134 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [6383.0435, 14538.977, 2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_134 = _this;
  _this setDir -149.39522;
  _this setPos [6383.0435, 14538.977, 2.0980835e-005];
};
};