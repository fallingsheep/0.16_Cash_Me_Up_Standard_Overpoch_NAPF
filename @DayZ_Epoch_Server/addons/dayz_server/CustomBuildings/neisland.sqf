////////////////////////////////////////www.devistationinc.com////////////////////////////////////////////////////
// Custom Map Additions Epoch NapF - By FoRcE
// To Call Mission Side Do The Following:
// Save as napf_neisland1.sqf
// Add A New Folder Named buildings in your dayz_mission folder
// Call the file in your init.sqf in your dayz_missions.pbo
// Add [] ExecVM "buildings\napf_neisland1.sqf";                    //North East Island Small Air Base
// NOTE: If you have custom bases already change the link to yours
// Thanks And Enjoy Visit www.devistationinc.com for more custom map additions.
// To Call Server Side Do The Following:************************************************************************
// Alternately you may add the content server side to reduce mission file size for new players joining your server.
// Install server-side:
// Put the file napf_neisland1.sqf somewhere in your server folder I use a buildings folder but it is what you prefer.
// Open server_functions.sqf and add in this line at the end:
// call compile preProcessFileLineNumbers "\z\addons\dayz_server\buildings\napf_neisland1.sqf";
// Remember to change the path to where you placed the file.
// Copy The Code Below The ///
////////////////////////////////////////www.devistationinc.com////////////////////////////////////////////////////
 if (isServer) then {
 
_vehicle_19 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_beton", [13486.942, 15797.813, 0.00014805794], [], 0, "CAN_COLLIDE"];
  _vehicle_19 = _this;
  _this setDir -43.995461;
  _this setPos [13486.942, 15797.813, 0.00014805794];
};

_vehicle_20 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_dirt_1", [13458.446, 15770.235, -3.1232834e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_20 = _this;
  _this setDir -44.216076;
  _this setPos [13458.446, 15770.235, -3.1232834e-005];
};

_vehicle_21 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_dirt_2", [13402.732, 15827.611, -4.6014786e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_21 = _this;
  _this setDir -44.263504;
  _this setPos [13402.732, 15827.611, -4.6014786e-005];
};

_vehicle_22 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_dirt_3", [13347.669, 15884.188, -3.7193298e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_22 = _this;
  _this setDir -44.386257;
  _this setPos [13347.669, 15884.188, -3.7193298e-005];
};

_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [13291.827, 15941.171, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setDir -44.150341;
  _this setPos [13291.827, 15941.171, 6.6757202e-006];
};

_vehicle_24 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_end33", [13223.281, 16011.778, -4.6730042e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_24 = _this;
  _this setDir -44.141621;
  _this setPos [13223.281, 16011.778, -4.6730042e-005];
};

_vehicle_29 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Hangar_2", [13325.632, 15837.152, -0.012924001], [], 0, "CAN_COLLIDE"];
  _vehicle_29 = _this;
  _this setDir -134.48717;
  _this setPos [13325.632, 15837.152, -0.012924001];
};

_vehicle_53 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_hangar_EP1", [13383.532, 15736.563, 2.8375342], [], 0, "CAN_COLLIDE"];
  _vehicle_53 = _this;
  _this setDir -542.58667;
  _this setPos [13383.532, 15736.563, 2.8375342];
};

_vehicle_54 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_ControlTower_EP1", [13417.519, 15849.827, -7.9154968e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_54 = _this;
  _this setDir 45.654091;
  _this setPos [13417.519, 15849.827, -7.9154968e-005];
};

_vehicle_57 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_poj_L_1", [13395.118, 15808.146, -3.3855438e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_57 = _this;
  _this setDir -44.30938;
  _this setPos [13395.118, 15808.146, -3.3855438e-005];
};

_vehicle_64 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_poj_T_1", [13380.914, 15771.41, 2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_64 = _this;
  _this setDir 86.504776;
  _this setPos [13380.914, 15771.41, 2.2888184e-005];
};

_vehicle_65 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_poj_spoj_2", [13383.31, 15785.511, 0.00012254715], [], 0, "CAN_COLLIDE"];
  _vehicle_65 = _this;
  _this setDir 32.373589;
  _this setPos [13383.31, 15785.511, 0.00012254715];
};

_vehicle_66 = objNull;
if (true) then
{
  _this = createVehicle ["MBG_Warehouse_InEditor", [13475.08, 15863.768, 1.2799067], [], 0, "CAN_COLLIDE"];
  _vehicle_66 = _this;
  _this setDir 46.010742;
  _this setPos [13475.08, 15863.768, 1.2799067];
};

_vehicle_69 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13368.086, 15747.271, -1.1685295], [], 0, "CAN_COLLIDE"];
  _vehicle_69 = _this;
  _this setPos [13368.086, 15747.271, -1.1685295];
};

_vehicle_70 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13369.14, 15712.838, 0.00010299683], [], 0, "CAN_COLLIDE"];
  _vehicle_70 = _this;
  _this setPos [13369.14, 15712.838, 0.00010299683];
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13369.172, 15723.417, -0.44053644], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setPos [13369.172, 15723.417, -0.44053644];
};

_vehicle_72 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13398.44, 15745.088, -0.72473001], [], 0, "CAN_COLLIDE"];
  _vehicle_72 = _this;
  _this setPos [13398.44, 15745.088, -0.72473001];
};

_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13398.824, 15735.066, -0.39594117], [], 0, "CAN_COLLIDE"];
  _vehicle_73 = _this;
  _this setPos [13398.824, 15735.066, -0.39594117];
};

_vehicle_74 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13399.466, 15724.521, -0.32113379], [], 0, "CAN_COLLIDE"];
  _vehicle_74 = _this;
  _this setPos [13399.466, 15724.521, -0.32113379];
};

_vehicle_75 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13399.307, 15714.193, -0.54369706], [], 0, "CAN_COLLIDE"];
  _vehicle_75 = _this;
  _this setPos [13399.307, 15714.193, -0.54369706];
};

_vehicle_76 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13369.02, 15735.538, -0.56573927], [], 0, "CAN_COLLIDE"];
  _vehicle_76 = _this;
  _this setPos [13369.02, 15735.538, -0.56573927];
};

_vehicle_77 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13378.829, 15713.774, -0.82699722], [], 0, "CAN_COLLIDE"];
  _vehicle_77 = _this;
  _this setPos [13378.829, 15713.774, -0.82699722];
};

_vehicle_78 = objNull;
if (true) then
{
  _this = createVehicle ["land_nav_pier_F_17", [13388.541, 15713.357, -0.55539459], [], 0, "CAN_COLLIDE"];
  _vehicle_78 = _this;
  _this setPos [13388.541, 15713.357, -0.55539459];
};

_vehicle_83 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_PowerGenerator", [13366.295, 15758.579, -9.5844269e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_83 = _this;
  _this setPos [13366.295, 15758.579, -9.5844269e-005];
};

_vehicle_102 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13367.135, 15754.527, -2.0675759], [], 0, "CAN_COLLIDE"];
  _vehicle_102 = _this;
  _this setDir -92.860504;
  _this setPos [13367.135, 15754.527, -2.0675759];
};

_vehicle_103 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13367.404, 15749.025, -1.5749032], [], 0, "CAN_COLLIDE"];
  _vehicle_103 = _this;
  _this setDir -92.662598;
  _this setPos [13367.404, 15749.025, -1.5749032];
};

_vehicle_104 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13367.602, 15743.631, -0.84536374], [], 0, "CAN_COLLIDE"];
  _vehicle_104 = _this;
  _this setDir -92.720322;
  _this setPos [13367.602, 15743.631, -0.84536374];
};

_vehicle_105 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13367.828, 15738.288, -0.50062084], [], 0, "CAN_COLLIDE"];
  _vehicle_105 = _this;
  _this setDir 87.394211;
  _this setPos [13367.828, 15738.288, -0.50062084];
};

_vehicle_106 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13368.093, 15732.748, -0.49094492], [], 0, "CAN_COLLIDE"];
  _vehicle_106 = _this;
  _this setDir -92.514259;
  _this setPos [13368.093, 15732.748, -0.49094492];
};

_vehicle_107 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13368.319, 15727.383, -0.37486482], [], 0, "CAN_COLLIDE"];
  _vehicle_107 = _this;
  _this setDir -92.811615;
  _this setPos [13368.319, 15727.383, -0.37486482];
};

_vehicle_108 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13368.568, 15721.885, -0.29639828], [], 0, "CAN_COLLIDE"];
  _vehicle_108 = _this;
  _this setDir -92.678177;
  _this setPos [13368.568, 15721.885, -0.29639828];
};

_vehicle_109 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13368.82, 15716.392, -0.35000485], [], 0, "CAN_COLLIDE"];
  _vehicle_109 = _this;
  _this setDir -92.59317;
  _this setPos [13368.82, 15716.392, -0.35000485];
};

_vehicle_110 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13368.904, 15714.842, -0.37109429], [], 0, "CAN_COLLIDE"];
  _vehicle_110 = _this;
  _this setDir 87.993652;
  _this setPos [13368.904, 15714.842, -0.37109429];
};

_vehicle_111 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13371.81, 15712.342, -0.55686903], [], 0, "CAN_COLLIDE"];
  _vehicle_111 = _this;
  _this setDir -2.4075947;
  _this setPos [13371.81, 15712.342, -0.55686903];
};

_vehicle_112 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13377.206, 15712.621, -0.70012587], [], 0, "CAN_COLLIDE"];
  _vehicle_112 = _this;
  _this setDir -3.1048441;
  _this setPos [13377.206, 15712.621, -0.70012587];
};

_vehicle_113 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13382.684, 15712.839, -0.80127263], [], 0, "CAN_COLLIDE"];
  _vehicle_113 = _this;
  _this setDir -2.584516;
  _this setPos [13382.684, 15712.839, -0.80127263];
};

_vehicle_114 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13388.253, 15713.054, -0.89307779], [], 0, "CAN_COLLIDE"];
  _vehicle_114 = _this;
  _this setDir -2.946162;
  _this setPos [13388.253, 15713.054, -0.89307779];
};

_vehicle_115 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13393.758, 15713.316, -0.91498977], [], 0, "CAN_COLLIDE"];
  _vehicle_115 = _this;
  _this setDir -2.753129;
  _this setPos [13393.758, 15713.316, -0.91498977];
};

_vehicle_116 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13397.577, 15713.493, -0.88419807], [], 0, "CAN_COLLIDE"];
  _vehicle_116 = _this;
  _this setDir -2.6372075;
  _this setPos [13397.577, 15713.493, -0.88419807];
};

_vehicle_117 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13400.061, 15716.208, -0.68356609], [], 0, "CAN_COLLIDE"];
  _vehicle_117 = _this;
  _this setDir 87.259605;
  _this setPos [13400.061, 15716.208, -0.68356609];
};

_vehicle_118 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13399.813, 15721.559, -0.60165948], [], 0, "CAN_COLLIDE"];
  _vehicle_118 = _this;
  _this setDir -92.684563;
  _this setPos [13399.813, 15721.559, -0.60165948];
};

_vehicle_119 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13399.586, 15726.96, -0.60392678], [], 0, "CAN_COLLIDE"];
  _vehicle_119 = _this;
  _this setDir -92.483955;
  _this setPos [13399.586, 15726.96, -0.60392678];
};

_vehicle_120 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13399.34, 15732.351, -0.71110177], [], 0, "CAN_COLLIDE"];
  _vehicle_120 = _this;
  _this setDir 87.370949;
  _this setPos [13399.34, 15732.351, -0.71110177];
};

_vehicle_121 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13399.086, 15737.76, -0.77449232], [], 0, "CAN_COLLIDE"];
  _vehicle_121 = _this;
  _this setDir -92.647133;
  _this setPos [13399.086, 15737.76, -0.77449232];
};

_vehicle_122 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13398.846, 15743.216, -0.74523443], [], 0, "CAN_COLLIDE"];
  _vehicle_122 = _this;
  _this setDir -92.817909;
  _this setPos [13398.846, 15743.216, -0.74523443];
};

_vehicle_123 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13398.602, 15748.421, -1.3562108], [], 0, "CAN_COLLIDE"];
  _vehicle_123 = _this;
  _this setDir -92.905434;
  _this setPos [13398.602, 15748.421, -1.3562108];
};

_vehicle_124 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13398.354, 15753.748, -1.8909624], [], 0, "CAN_COLLIDE"];
  _vehicle_124 = _this;
  _this setDir -92.768875;
  _this setPos [13398.354, 15753.748, -1.8909624];
};

_vehicle_125 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13500.659, 15862.265, -0.11396276], [], 0, "CAN_COLLIDE"];
  _vehicle_125 = _this;
  _this setDir 46.098434;
  _this setPos [13500.659, 15862.265, -0.11396276];
};

_vehicle_126 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13500.493, 15858.458, 0.00023365021], [], 0, "CAN_COLLIDE"];
  _vehicle_126 = _this;
  _this setDir -44.061798;
  _this setPos [13500.493, 15858.458, 0.00023365021];
};

_vehicle_127 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13496.572, 15854.681, 4.4822693e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_127 = _this;
  _this setDir -43.802151;
  _this setPos [13496.572, 15854.681, 4.4822693e-005];
};

_vehicle_128 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13492.648, 15850.891, 3.0994415e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_128 = _this;
  _this setDir -43.883278;
  _this setPos [13492.648, 15850.891, 3.0994415e-006];
};

_vehicle_129 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13488.684, 15847.069, -8.6545944e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_129 = _this;
  _this setDir -44.101139;
  _this setPos [13488.684, 15847.069, -8.6545944e-005];
};

_vehicle_130 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13484.724, 15843.244, 0.00010156631], [], 0, "CAN_COLLIDE"];
  _vehicle_130 = _this;
  _this setDir -43.966743;
  _this setPos [13484.724, 15843.244, 0.00010156631];
};

_vehicle_131 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13480.819, 15839.472, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_131 = _this;
  _this setDir -43.87949;
  _this setPos [13480.819, 15839.472, -8.5830688e-006];
};

_vehicle_132 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13479.326, 15838.056, 3.2663345e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_132 = _this;
  _this setDir -44.354645;
  _this setPos [13479.326, 15838.056, 3.2663345e-005];
};

_vehicle_133 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13475.625, 15838.186, -6.1988831e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_133 = _this;
  _this setDir 45.927406;
  _this setPos [13475.625, 15838.186, -6.1988831e-006];
};

_vehicle_134 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13471.832, 15842.141, 2.2649765e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_134 = _this;
  _this setDir 46.064022;
  _this setPos [13471.832, 15842.141, 2.2649765e-005];
};

_vehicle_135 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [13468.07, 15846.011, -0.00011110306], [], 0, "CAN_COLLIDE"];
  _vehicle_135 = _this;
  _this setDir 46.011372;
  _this setPos [13468.07, 15846.011, -0.00011110306];
};

_vehicle_137 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_poj_T_1", [13338.872, 15850.107, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_137 = _this;
  _this setDir 135.34995;
  _this setPos [13338.872, 15850.107, 6.6757202e-006];
};

_vehicle_140 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_TankSmall2", [13351.894, 15823.969, 5.6743622e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_140 = _this;
  _this setDir 46.828495;
  _this setPos [13351.894, 15823.969, 5.6743622e-005];
};

_vehicle_144 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Ind_Garage01", [13313.652, 15861.382, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_144 = _this;
  _this setDir 134.71138;
  _this setPos [13313.652, 15861.382, -8.5830688e-006];
};

_vehicle_145 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_FuelStation_Feed", [13434.383, 15858.308, 2.2411346e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_145 = _this;
  _this setDir -42.36927;
  _this setPos [13434.383, 15858.308, 2.2411346e-005];
};

_vehicle_146 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_FuelStation_Feed", [13406.625, 15793.886, 0.00010156631], [], 0, "CAN_COLLIDE"];
  _vehicle_146 = _this;
  _this setDir 46.080265;
  _this setPos [13406.625, 15793.886, 0.00010156631];
};

_vehicle_147 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13407.249, 15794.409, 6.5088272e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_147 = _this;
  _this setDir -132.50839;
  _this setPos [13407.249, 15794.409, 6.5088272e-005];
};

_vehicle_148 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13406.15, 15793.437, -0.00013303757], [], 0, "CAN_COLLIDE"];
  _vehicle_148 = _this;
  _this setDir 45.969257;
  _this setPos [13406.15, 15793.437, -0.00013303757];
};

_vehicle_149 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13434.73, 15857.658, 5.9843063e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_149 = _this;
  _this setDir -42.978409;
  _this setPos [13434.73, 15857.658, 5.9843063e-005];
};

_vehicle_150 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13433.84, 15858.757, 0.00010728836], [], 0, "CAN_COLLIDE"];
  _vehicle_150 = _this;
  _this setDir 136.54721;
  _this setPos [13433.84, 15858.757, 0.00010728836];
};

_vehicle_152 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [13456.207, 15857.409, 4.2915344e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_152 = _this;
  _this setDir 44.924976;
  _this setPos [13456.207, 15857.409, 4.2915344e-005];
};

_vehicle_153 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierUSA", [13406.955, 15791.838, 1.3828278e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_153 = _this;
  _this setPos [13406.955, 15791.838, 1.3828278e-005];
};

_vehicle_154 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_IlluminantTower", [13360.21, 15759.289, -3.528595e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_154 = _this;
  _this setDir 78.16404;
  _this setPos [13360.21, 15759.289, -3.528595e-005];
};

_vehicle_155 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_IlluminantTower", [13317.277, 15855.441, 4.529953e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_155 = _this;
  _this setDir 45.405544;
  _this setPos [13317.277, 15855.441, 4.529953e-005];
};

_vehicle_157 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_IlluminantTower", [13432.434, 15859.856, 1.1205673e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_157 = _this;
  _this setDir -42.662628;
  _this setPos [13432.434, 15859.856, 1.1205673e-005];
};

_vehicle_159 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13382.13, 15773.315, -2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_159 = _this;
  _this setPos [13382.13, 15773.315, -2.0980835e-005];
};

_vehicle_160 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13387.479, 15789.194, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_160 = _this;
  _this setPos [13387.479, 15789.194, -3.8146973e-006];
};

_vehicle_161 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13384.857, 15784.092, 2.4318695e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_161 = _this;
  _this setPos [13384.857, 15784.092, 2.4318695e-005];
};

_vehicle_162 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13375.523, 15769.211, -8.058548e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_162 = _this;
  _this setPos [13375.523, 15769.211, -8.058548e-005];
};

_vehicle_163 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13392.88, 15768.043, 4.9829483e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_163 = _this;
  _this setPos [13392.88, 15768.043, 4.9829483e-005];
};

_vehicle_164 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13387.856, 15803.225, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_164 = _this;
  _this setPos [13387.856, 15803.225, -1.1444092e-005];
};

_vehicle_165 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13399.342, 15798.25, 0.00013113022], [], 0, "CAN_COLLIDE"];
  _vehicle_165 = _this;
  _this setPos [13399.342, 15798.25, 0.00013113022];
};

_vehicle_166 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13402.697, 15809.948, -2.4318695e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_166 = _this;
  _this setPos [13402.697, 15809.948, -2.4318695e-005];
};

_vehicle_167 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13423.191, 15826.822, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_167 = _this;
  _this setPos [13423.191, 15826.822, 1.335144e-005];
};

_vehicle_168 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13407.869, 15823.788, -4.529953e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_168 = _this;
  _this setPos [13407.869, 15823.788, -4.529953e-006];
};

_vehicle_169 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13415.536, 15798.252, -1.9311905e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_169 = _this;
  _this setPos [13415.536, 15798.252, -1.9311905e-005];
};

_vehicle_170 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13419.109, 15812.44, -5.7935715e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_170 = _this;
  _this setPos [13419.109, 15812.44, -5.7935715e-005];
};

_vehicle_171 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13437.19, 15814.231, 4.5061111e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_171 = _this;
  _this setPos [13437.19, 15814.231, 4.5061111e-005];
};

_vehicle_172 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13431.031, 15800.067, -3.6239624e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_172 = _this;
  _this setPos [13431.031, 15800.067, -3.6239624e-005];
};

_vehicle_173 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13426.67, 15786.377, 0.00012016296], [], 0, "CAN_COLLIDE"];
  _vehicle_173 = _this;
  _this setPos [13426.67, 15786.377, 0.00012016296];
};

_vehicle_174 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13436.632, 15775.34, -8.9645386e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_174 = _this;
  _this setPos [13436.632, 15775.34, -8.9645386e-005];
};

_vehicle_175 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13444.336, 15771.441, 2.1934509e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_175 = _this;
  _this setPos [13444.336, 15771.441, 2.1934509e-005];
};

_vehicle_176 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13442.579, 15788.378, 9.2029572e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_176 = _this;
  _this setPos [13442.579, 15788.378, 9.2029572e-005];
};

_vehicle_177 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13447.636, 15800.8, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_177 = _this;
  _this setPos [13447.636, 15800.8, 7.6293945e-006];
};

_vehicle_178 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13456.526, 15784.415, 3.1471252e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_178 = _this;
  _this setPos [13456.526, 15784.415, 3.1471252e-005];
};

_vehicle_179 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13453.438, 15776.038, -2.8848648e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_179 = _this;
  _this setPos [13453.438, 15776.038, -2.8848648e-005];
};

_vehicle_180 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13467.159, 15789.795, -3.2663345e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_180 = _this;
  _this setPos [13467.159, 15789.795, -3.2663345e-005];
};

_vehicle_181 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13475.126, 15800.319, 6.6995621e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_181 = _this;
  _this setPos [13475.126, 15800.319, 6.6995621e-005];
};

_vehicle_182 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13481.409, 15804.661, 0.00013041496], [], 0, "CAN_COLLIDE"];
  _vehicle_182 = _this;
  _this setPos [13481.409, 15804.661, 0.00013041496];
};

_vehicle_183 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13481.389, 15801.038, 1.6450882e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_183 = _this;
  _this setPos [13481.389, 15801.038, 1.6450882e-005];
};

_vehicle_184 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13460.734, 15802.571, 0.00011467934], [], 0, "CAN_COLLIDE"];
  _vehicle_184 = _this;
  _this setPos [13460.734, 15802.571, 0.00011467934];
};

_vehicle_185 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13449.291, 15814.778, 7.3432922e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_185 = _this;
  _this setPos [13449.291, 15814.778, 7.3432922e-005];
};

_vehicle_186 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13458.669, 15825.678, 1.001358e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_186 = _this;
  _this setPos [13458.669, 15825.678, 1.001358e-005];
};

_vehicle_187 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13465.013, 15834.045, 4.7445297e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_187 = _this;
  _this setPos [13465.013, 15834.045, 4.7445297e-005];
};

_vehicle_188 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13475.516, 15823.616, 0.00010848045], [], 0, "CAN_COLLIDE"];
  _vehicle_188 = _this;
  _this setPos [13475.516, 15823.616, 0.00010848045];
};

_vehicle_189 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13480.686, 15815.948, 5.6028366e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_189 = _this;
  _this setPos [13480.686, 15815.948, 5.6028366e-005];
};

_vehicle_190 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13464.738, 15812.557, -1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_190 = _this;
  _this setPos [13464.738, 15812.557, -1.7166138e-005];
};

_vehicle_191 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13422.698, 15834.795, 3.6478043e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_191 = _this;
  _this setPos [13422.698, 15834.795, 3.6478043e-005];
};

_vehicle_192 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13431.503, 15843.052, -8.4400177e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_192 = _this;
  _this setPos [13431.503, 15843.052, -8.4400177e-005];
};

_vehicle_193 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13439.978, 15853.566, -8.9168549e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_193 = _this;
  _this setPos [13439.978, 15853.566, -8.9168549e-005];
};

_vehicle_194 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13446.611, 15858.439, 1.1205673e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_194 = _this;
  _this setPos [13446.611, 15858.439, 1.1205673e-005];
};

_vehicle_195 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13456.92, 15848.329, -8.225441e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_195 = _this;
  _this setPos [13456.92, 15848.329, -8.225441e-005];
};

_vehicle_196 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13464.486, 15841.531, -5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_196 = _this;
  _this setPos [13464.486, 15841.531, -5.7220459e-005];
};

_vehicle_197 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13448.392, 15831.628, -2.1219254e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_197 = _this;
  _this setPos [13448.392, 15831.628, -2.1219254e-005];
};

_vehicle_198 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13444.18, 15839.64, 2.5272369e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_198 = _this;
  _this setPos [13444.18, 15839.64, 2.5272369e-005];
};

_vehicle_199 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13436.923, 15827.075, 3.0994415e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_199 = _this;
  _this setPos [13436.923, 15827.075, 3.0994415e-005];
};

_vehicle_200 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13409.953, 15837.637, -6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_200 = _this;
  _this setPos [13409.953, 15837.637, -6.6757202e-006];
};

_vehicle_201 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13397.792, 15846.585, 2.5272369e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_201 = _this;
  _this setPos [13397.792, 15846.585, 2.5272369e-005];
};

_vehicle_202 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13393.318, 15831.595, 1.8835068e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_202 = _this;
  _this setPos [13393.318, 15831.595, 1.8835068e-005];
};

_vehicle_203 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13394.181, 15818.384, -9.6797943e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_203 = _this;
  _this setPos [13394.181, 15818.384, -9.6797943e-005];
};

_vehicle_204 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13379.048, 15784.756, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_204 = _this;
  _this setPos [13379.048, 15784.756, 0];
};

_vehicle_205 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13385.433, 15830.221, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_205 = _this;
  _this setPos [13385.433, 15830.221, -3.3378601e-006];
};

_vehicle_206 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13377.539, 15841.015, 5.531311e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_206 = _this;
  _this setPos [13377.539, 15841.015, 5.531311e-005];
};

_vehicle_207 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13368.008, 15850.677, 7.9631805e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_207 = _this;
  _this setPos [13368.008, 15850.677, 7.9631805e-005];
};

_vehicle_208 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13386.423, 15849.984, -3.7670135e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_208 = _this;
  _this setPos [13386.423, 15849.984, -3.7670135e-005];
};

_vehicle_209 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13385.954, 15856.79, 3.194809e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_209 = _this;
  _this setPos [13385.954, 15856.79, 3.194809e-005];
};

_vehicle_210 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13373.938, 15864.622, -3.0040741e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_210 = _this;
  _this setPos [13373.938, 15864.622, -3.0040741e-005];
};

_vehicle_211 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13380.8, 15865.211, -8.4877014e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_211 = _this;
  _this setPos [13380.8, 15865.211, -8.4877014e-005];
};

_vehicle_212 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13372.201, 15873.798, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_212 = _this;
  _this setPos [13372.201, 15873.798, -1.4305115e-006];
};

_vehicle_213 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13363.127, 15879.469, -0.00015115738], [], 0, "CAN_COLLIDE"];
  _vehicle_213 = _this;
  _this setPos [13363.127, 15879.469, -0.00015115738];
};

_vehicle_214 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13357.922, 15887.368, -8.2015991e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_214 = _this;
  _this setPos [13357.922, 15887.368, -8.2015991e-005];
};

_vehicle_215 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13347.135, 15896.312, -6.1988831e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_215 = _this;
  _this setPos [13347.135, 15896.312, -6.1988831e-005];
};

_vehicle_216 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13341.313, 15905.602, 3.194809e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_216 = _this;
  _this setPos [13341.313, 15905.602, 3.194809e-005];
};

_vehicle_217 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13331.222, 15913.574, -5.865097e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_217 = _this;
  _this setPos [13331.222, 15913.574, -5.865097e-005];
};

_vehicle_218 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13319.823, 15923.852, -3.3378601e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_218 = _this;
  _this setPos [13319.823, 15923.852, -3.3378601e-005];
};

_vehicle_219 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13356.397, 15854.051, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_219 = _this;
  _this setPos [13356.397, 15854.051, 6.6757202e-006];
};

_vehicle_220 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13346.523, 15847.54, 4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_220 = _this;
  _this setPos [13346.523, 15847.54, 4.7683716e-006];
};

_vehicle_221 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13345.698, 15840.951, 1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_221 = _this;
  _this setPos [13345.698, 15840.951, 1.0490417e-005];
};

_vehicle_222 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13335.376, 15853.632, -2.0503998e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_222 = _this;
  _this setPos [13335.376, 15853.632, -2.0503998e-005];
};

_vehicle_223 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13325.432, 15857.499, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_223 = _this;
  _this setPos [13325.432, 15857.499, -4.2915344e-006];
};

_vehicle_224 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13349.637, 15862.272, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_224 = _this;
  _this setPos [13349.637, 15862.272, -8.5830688e-006];
};

_vehicle_225 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13361.929, 15868.102, 4.2915344e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_225 = _this;
  _this setPos [13361.929, 15868.102, 4.2915344e-005];
};

_vehicle_226 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13349.969, 15877.105, 5.197525e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_226 = _this;
  _this setPos [13349.969, 15877.105, 5.197525e-005];
};

_vehicle_227 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13341.887, 15873.648, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_227 = _this;
  _this setPos [13341.887, 15873.648, 7.6293945e-006];
};

_vehicle_228 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13332.983, 15885.115, -3.1471252e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_228 = _this;
  _this setPos [13332.983, 15885.115, -3.1471252e-005];
};

_vehicle_229 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13343.908, 15886.952, -4.6253204e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_229 = _this;
  _this setPos [13343.908, 15886.952, -4.6253204e-005];
};

_vehicle_230 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13330.609, 15898.922, -7.9631805e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_230 = _this;
  _this setPos [13330.609, 15898.922, -7.9631805e-005];
};

_vehicle_231 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13321.413, 15896.326, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_231 = _this;
  _this setPos [13321.413, 15896.326, -2.4795532e-005];
};

_vehicle_232 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13314.505, 15907.982, -9.3460083e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_232 = _this;
  _this setPos [13314.505, 15907.982, -9.3460083e-005];
};

_vehicle_233 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13300.367, 15917.009, -4.7683716e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_233 = _this;
  _this setPos [13300.367, 15917.009, -4.7683716e-005];
};

_vehicle_234 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13308.315, 15906.313, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_234 = _this;
  _this setPos [13308.315, 15906.313, -5.7220459e-006];
};

_vehicle_235 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13310.408, 15926.41, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_235 = _this;
  _this setPos [13310.408, 15926.41, -3.3378601e-006];
};

_vehicle_236 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13313.41, 15932.635, -0.00010108948], [], 0, "CAN_COLLIDE"];
  _vehicle_236 = _this;
  _this setPos [13313.41, 15932.635, -0.00010108948];
};

_vehicle_237 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13303.643, 15942.095, -7.8678131e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_237 = _this;
  _this setPos [13303.643, 15942.095, -7.8678131e-005];
};

_vehicle_238 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13298.08, 15930.177, 4.0054321e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_238 = _this;
  _this setPos [13298.08, 15930.177, 4.0054321e-005];
};

_vehicle_239 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13289.963, 15928.495, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_239 = _this;
  _this setPos [13289.963, 15928.495, 4.2915344e-006];
};

_vehicle_240 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13280.945, 15941.661, 5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_240 = _this;
  _this setPos [13280.945, 15941.661, 5.2452087e-006];
};

_vehicle_241 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13294.168, 15945.197, -5.4359436e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_241 = _this;
  _this setPos [13294.168, 15945.197, -5.4359436e-005];
};

_vehicle_242 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13297.064, 15953.27, -0.00022506714], [], 0, "CAN_COLLIDE"];
  _vehicle_242 = _this;
  _this setPos [13297.064, 15953.27, -0.00022506714];
};

_vehicle_243 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13285.735, 15963.262, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_243 = _this;
  _this setPos [13285.735, 15963.262, 0.00012207031];
};

_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13281.495, 15952.098, -0.00013923645], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setPos [13281.495, 15952.098, -0.00013923645];
};

_vehicle_245 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13271.823, 15945.266, -1.6689301e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_245 = _this;
  _this setPos [13271.823, 15945.266, -1.6689301e-005];
};

_vehicle_246 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13263.462, 15955.658, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_246 = _this;
  _this setPos [13263.462, 15955.658, 9.5367432e-007];
};

_vehicle_247 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13271.891, 15962.587, -1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_247 = _this;
  _this setPos [13271.891, 15962.587, -1.335144e-005];
};

_vehicle_248 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13274.636, 15972.355, -7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_248 = _this;
  _this setPos [13274.636, 15972.355, -7.2479248e-005];
};

_vehicle_249 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13270.039, 15981.654, 8.7738037e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_249 = _this;
  _this setPos [13270.039, 15981.654, 8.7738037e-005];
};

_vehicle_250 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13261.468, 15971.503, 2.0027161e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_250 = _this;
  _this setPos [13261.468, 15971.503, 2.0027161e-005];
};

_vehicle_251 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13255.115, 15965.466, 2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_251 = _this;
  _this setPos [13255.115, 15965.466, 2.4795532e-005];
};

_vehicle_252 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13245.486, 15976.105, -1.8119812e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_252 = _this;
  _this setPos [13245.486, 15976.105, -1.8119812e-005];
};

_vehicle_253 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13257.481, 15986.409, -9.3460083e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_253 = _this;
  _this setPos [13257.481, 15986.409, -9.3460083e-005];
};

_vehicle_254 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13258.604, 15989.242, 0.00012588501], [], 0, "CAN_COLLIDE"];
  _vehicle_254 = _this;
  _this setPos [13258.604, 15989.242, 0.00012588501];
};

_vehicle_255 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13253.446, 15999.106, 0.00012302399], [], 0, "CAN_COLLIDE"];
  _vehicle_255 = _this;
  _this setPos [13253.446, 15999.106, 0.00012302399];
};

_vehicle_256 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13245.35, 15991.588, -1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_256 = _this;
  _this setPos [13245.35, 15991.588, -1.7166138e-005];
};

_vehicle_257 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13236.642, 15982.085, 1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_257 = _this;
  _this setPos [13236.642, 15982.085, 1.9073486e-006];
};

_vehicle_258 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13227.615, 15991.021, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_258 = _this;
  _this setPos [13227.615, 15991.021, -1.5258789e-005];
};

_vehicle_259 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13237.479, 16001.411, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_259 = _this;
  _this setPos [13237.479, 16001.411, -8.5830688e-006];
};

_vehicle_260 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13240.802, 16010.771, 0.00015544891], [], 0, "CAN_COLLIDE"];
  _vehicle_260 = _this;
  _this setPos [13240.802, 16010.771, 0.00015544891];
};

_vehicle_261 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13232.72, 16021.522, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_261 = _this;
  _this setPos [13232.72, 16021.522, 3.4332275e-005];
};

_vehicle_262 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13226.566, 16012.496, 4.1007996e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_262 = _this;
  _this setPos [13226.566, 16012.496, 4.1007996e-005];
};

_vehicle_263 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13220.394, 16003.599, -9.5367432e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_263 = _this;
  _this setPos [13220.394, 16003.599, -9.5367432e-005];
};

_vehicle_264 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13209.534, 16012.175, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_264 = _this;
  _this setPos [13209.534, 16012.175, 9.5367432e-007];
};

_vehicle_265 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13217.744, 16021.864, -8.8691711e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_265 = _this;
  _this setPos [13217.744, 16021.864, -8.8691711e-005];
};

_vehicle_266 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13221.532, 16030.835, -0.00016498566], [], 0, "CAN_COLLIDE"];
  _vehicle_266 = _this;
  _this setPos [13221.532, 16030.835, -0.00016498566];
};

_vehicle_267 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13213.236, 16041.393, -9.727478e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_267 = _this;
  _this setPos [13213.236, 16041.393, -9.727478e-005];
};

_vehicle_268 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13205.098, 16030.398, 2.1934509e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_268 = _this;
  _this setPos [13205.098, 16030.398, 2.1934509e-005];
};

_vehicle_269 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13196.026, 16021.36, -0.00011825562], [], 0, "CAN_COLLIDE"];
  _vehicle_269 = _this;
  _this setPos [13196.026, 16021.36, -0.00011825562];
};

_vehicle_270 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13366.73, 15765.934, 3.7670135e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_270 = _this;
  _this setPos [13366.73, 15765.934, 3.7670135e-005];
};

_vehicle_271 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13453.516, 15779.326, -4.029274e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_271 = _this;
  _this setPos [13453.516, 15779.326, -4.029274e-005];
};

_vehicle_272 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13477.963, 15802.718, 0.00012588501], [], 0, "CAN_COLLIDE"];
  _vehicle_272 = _this;
  _this setPos [13477.963, 15802.718, 0.00012588501];
};

_vehicle_273 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13482.249, 15801.49, 5.6028366e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_273 = _this;
  _this setPos [13482.249, 15801.49, 5.6028366e-005];
};

_vehicle_274 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [13371.286, 15839.863, 9.059906e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_274 = _this;
  _this setPos [13371.286, 15839.863, 9.059906e-006];
};

_vehicle_275 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fortified_nest_small_EP1", [13370.248, 15781.976, 2.8610229e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_275 = _this;
  _this setDir 89.284073;
  _this setPos [13370.248, 15781.976, 2.8610229e-005];
};

_vehicle_276 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHRescue", [13301.268, 15882.163, 4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_276 = _this;
  _this setDir 45.366417;
  _this setPos [13301.268, 15882.163, 4.196167e-005];
};

_vehicle_277 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHRescue", [13289.25, 15894.293, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_277 = _this;
  _this setDir 45.624588;
  _this setPos [13289.25, 15894.293, -4.7683716e-006];
};

_vehicle_278 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13294.842, 15887.517, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_278 = _this;
  _this setDir 45.846077;
  _this setPos [13294.842, 15887.517, 1.1444092e-005];
};

_vehicle_279 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13296.782, 15889.454, -9.059906e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_279 = _this;
  _this setDir -133.87827;
  _this setPos [13296.782, 15889.454, -9.059906e-006];
};

_vehicle_280 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [13295.894, 15888.609, -1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_280 = _this;
  _this setDir 45.116867;
  _this setPos [13295.894, 15888.609, -1.7166138e-005];
};

_vehicle_282 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [13359.918, 15807.085, 3.9100647e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_282 = _this;
  _this setDir -80.000755;
  _this setPos [13359.918, 15807.085, 3.9100647e-005];
};

_vehicle_283 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHCivil", [13355.441, 15790.104, 7.5817108e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_283 = _this;
  _this setDir -81.888962;
  _this setPos [13355.441, 15790.104, 7.5817108e-005];
};

_vehicle_284 = objNull;
if (true) then
{
  _this = createVehicle ["FuelPump_DZ", [13357.527, 15798.313, -2.8610229e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_284 = _this;
  _this setDir -73.972847;
  _this setPos [13357.527, 15798.313, -2.8610229e-006];
};

_vehicle_285 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13358.708, 15797.96, 9.2029572e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_285 = _this;
  _this setDir -76.092484;
  _this setPos [13358.708, 15797.96, 9.2029572e-005];
};

_vehicle_286 = objNull;
if (true) then
{
  _this = createVehicle ["Land_BagFenceRound", [13356.527, 15798.523, -5.2452087e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_286 = _this;
  _this setDir 102.97811;
  _this setPos [13356.527, 15798.523, -5.2452087e-006];
};

_vehicle_287 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13458.438, 15770.323, 4.0054321e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_287 = _this;
  _this setPos [13458.438, 15770.323, 4.0054321e-005];
};

_vehicle_288 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13429.895, 15799.386, 1.8119812e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_288 = _this;
  _this setPos [13429.895, 15799.386, 1.8119812e-005];
};

_vehicle_289 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13388.893, 15841.8, 1.001358e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_289 = _this;
  _this setPos [13388.893, 15841.8, 1.001358e-005];
};

_vehicle_290 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13334.859, 15896.768, -5.4836273e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_290 = _this;
  _this setPos [13334.859, 15896.768, -5.4836273e-005];
};

_vehicle_291 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13302.428, 15930.631, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_291 = _this;
  _this setPos [13302.428, 15930.631, -1.4305115e-006];
};

_vehicle_292 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13270.461, 15963.088, -0.00010871887], [], 0, "CAN_COLLIDE"];
  _vehicle_292 = _this;
  _this setPos [13270.461, 15963.088, -0.00010871887];
};

_vehicle_293 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13240.264, 15994.243, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_293 = _this;
  _this setPos [13240.264, 15994.243, -0.00015258789];
};

_vehicle_294 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13195.938, 16039.928, -0.00035095215], [], 0, "CAN_COLLIDE"];
  _vehicle_294 = _this;
  _this setPos [13195.938, 16039.928, -0.00035095215];
};

_vehicle_295 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13209.578, 16054.266, -0.00025367737], [], 0, "CAN_COLLIDE"];
  _vehicle_295 = _this;
  _this setPos [13209.578, 16054.266, -0.00025367737];
};

_vehicle_296 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13206.774, 16051.35, 8.4877014e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_296 = _this;
  _this setPos [13206.774, 16051.35, 8.4877014e-005];
};

_vehicle_297 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13204.141, 16048.811, -4.0054321e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_297 = _this;
  _this setPos [13204.141, 16048.811, -4.0054321e-005];
};

_vehicle_298 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13201.244, 16045.869, -1.4305115e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_298 = _this;
  _this setPos [13201.244, 16045.869, -1.4305115e-005];
};

_vehicle_299 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13196.101, 16040.906, 0.00012683868], [], 0, "CAN_COLLIDE"];
  _vehicle_299 = _this;
  _this setPos [13196.101, 16040.906, 0.00012683868];
};

_vehicle_300 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13193.559, 16038.36, -0.0003118515], [], 0, "CAN_COLLIDE"];
  _vehicle_300 = _this;
  _this setPos [13193.559, 16038.36, -0.0003118515];
};

_vehicle_301 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13189.948, 16035.002, -0.00012588501], [], 0, "CAN_COLLIDE"];
  _vehicle_301 = _this;
  _this setPos [13189.948, 16035.002, -0.00012588501];
};

_vehicle_302 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13186.509, 16031.64, -1.8119812e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_302 = _this;
  _this setPos [13186.509, 16031.64, -1.8119812e-005];
};

_vehicle_303 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13181.304, 16026.706, -1.0490417e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_303 = _this;
  _this setPos [13181.304, 16026.706, -1.0490417e-005];
};

_vehicle_304 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13203.542, 16003.344, 5.531311e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_304 = _this;
  _this setPos [13203.542, 16003.344, 5.531311e-005];
};

_vehicle_305 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13232.926, 16030.545, -0.00029754639], [], 0, "CAN_COLLIDE"];
  _vehicle_305 = _this;
  _this setPos [13232.926, 16030.545, -0.00029754639];
};

_vehicle_306 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13270.502, 15991.96, -6.0081482e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_306 = _this;
  _this setPos [13270.502, 15991.96, -6.0081482e-005];
};

_vehicle_307 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13239.084, 15966.827, -5.4359436e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_307 = _this;
  _this setPos [13239.084, 15966.827, -5.4359436e-005];
};

_vehicle_308 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13295.658, 15908.763, -2.6226044e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_308 = _this;
  _this setPos [13295.658, 15908.763, -2.6226044e-005];
};

_vehicle_309 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13326.788, 15934.18, 7.9154968e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_309 = _this;
  _this setPos [13326.788, 15934.18, 7.9154968e-005];
};

_vehicle_310 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13382.327, 15877.326, 3.5762787e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_310 = _this;
  _this setPos [13382.327, 15877.326, 3.5762787e-005];
};

_vehicle_311 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13353.354, 15849.573, 2.3365021e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_311 = _this;
  _this setPos [13353.354, 15849.573, 2.3365021e-005];
};

_vehicle_312 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13379.825, 15822.245, -4.0054321e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_312 = _this;
  _this setPos [13379.825, 15822.245, -4.0054321e-005];
};

_vehicle_313 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13412.154, 15846.312, -5.6266785e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_313 = _this;
  _this setPos [13412.154, 15846.312, -5.6266785e-005];
};

_vehicle_314 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13444.429, 15756.836, -0.00013291836], [], 0, "CAN_COLLIDE"];
  _vehicle_314 = _this;
  _this setPos [13444.429, 15756.836, -0.00013291836];
};

_vehicle_315 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13447.199, 15759.376, -0.00017237663], [], 0, "CAN_COLLIDE"];
  _vehicle_315 = _this;
  _this setPos [13447.199, 15759.376, -0.00017237663];
};

_vehicle_316 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13451.002, 15762.996, -8.4638596e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_316 = _this;
  _this setPos [13451.002, 15762.996, -8.4638596e-005];
};

_vehicle_317 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13456.747, 15768.578, -4.7206879e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_317 = _this;
  _this setPos [13456.747, 15768.578, -4.7206879e-005];
};

_vehicle_318 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13461.493, 15773.275, 5.4121017e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_318 = _this;
  _this setPos [13461.493, 15773.275, 5.4121017e-005];
};

_vehicle_319 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13467.881, 15779.498, -0.00017118454], [], 0, "CAN_COLLIDE"];
  _vehicle_319 = _this;
  _this setPos [13467.881, 15779.498, -0.00017118454];
};

_vehicle_320 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13472.378, 15783.6, -7.6055527e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_320 = _this;
  _this setPos [13472.378, 15783.6, -7.6055527e-005];
};

_vehicle_321 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13297.137, 15878.137, 5.0067902e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_321 = _this;
  _this setPos [13297.137, 15878.137, 5.0067902e-005];
};

_vehicle_322 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13305.694, 15878.427, 7.8201294e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_322 = _this;
  _this setPos [13305.694, 15878.427, 7.8201294e-005];
};

_vehicle_323 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13297.807, 15886.882, -5.0544739e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_323 = _this;
  _this setPos [13297.807, 15886.882, -5.0544739e-005];
};

_vehicle_324 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13305.471, 15886.226, -9.3460083e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_324 = _this;
  _this setPos [13305.471, 15886.226, -9.3460083e-005];
};

_vehicle_325 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13293.436, 15898.291, -2.4795532e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_325 = _this;
  _this setPos [13293.436, 15898.291, -2.4795532e-005];
};

_vehicle_326 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13292.979, 15889.863, -1.7642975e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_326 = _this;
  _this setPos [13292.979, 15889.863, -1.7642975e-005];
};

_vehicle_327 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13284.839, 15898.125, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_327 = _this;
  _this setPos [13284.839, 15898.125, -3.4332275e-005];
};

_vehicle_328 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13285.347, 15890.067, -9.1075897e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_328 = _this;
  _this setPos [13285.347, 15890.067, -9.1075897e-005];
};

_vehicle_329 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13301.304, 15882.153, -5.9127808e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_329 = _this;
  _this setPos [13301.304, 15882.153, -5.9127808e-005];
};

_vehicle_330 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13289.201, 15894.259, -3.4809113e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_330 = _this;
  _this setPos [13289.201, 15894.259, -3.4809113e-005];
};

_vehicle_331 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13360.108, 15807.086, -5.9604645e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_331 = _this;
  _this setPos [13360.108, 15807.086, -5.9604645e-005];
};

_vehicle_332 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_YellowlightB", [13355.53, 15789.905, 5.7697296e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_332 = _this;
  _this setPos [13355.53, 15789.905, 5.7697296e-005];
};

_vehicle_333 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13349.542, 15791.247, -3.4809113e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_333 = _this;
  _this setPos [13349.542, 15791.247, -3.4809113e-005];
};

_vehicle_334 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13355.262, 15784.187, -0.00020170212], [], 0, "CAN_COLLIDE"];
  _vehicle_334 = _this;
  _this setPos [13355.262, 15784.187, -0.00020170212];
};

_vehicle_335 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13357.082, 15795.846, -7.4386597e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_335 = _this;
  _this setPos [13357.082, 15795.846, -7.4386597e-005];
};

_vehicle_336 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13361.339, 15789.311, -0.0001540184], [], 0, "CAN_COLLIDE"];
  _vehicle_336 = _this;
  _this setPos [13361.339, 15789.311, -0.0001540184];
};

_vehicle_337 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13358.626, 15801.327, -2.5272369e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_337 = _this;
  _this setPos [13358.626, 15801.327, -2.5272369e-005];
};

_vehicle_338 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13354.071, 15808.35, -5.1021576e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_338 = _this;
  _this setPos [13354.071, 15808.35, -5.1021576e-005];
};

_vehicle_339 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13362.052, 15812.677, -5.5789948e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_339 = _this;
  _this setPos [13362.052, 15812.677, -5.5789948e-005];
};

_vehicle_340 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_runway_BluelightB", [13365.677, 15806.094, 2.5272369e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_340 = _this;
  _this setPos [13365.677, 15806.094, 2.5272369e-005];
};
};
//Visit www.devistationinc.com For More Map Customization, napf_neisland1.sqf Created by FoRcE