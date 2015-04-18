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

_vehicle_0 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10989.253, 17018.33, 0.00027084351], [], 0, "CAN_COLLIDE"];
  _vehicle_0 = _this;
  _this setDir -137.05301;
  _this setPos [10989.253, 17018.33, 0.00027084351];
};

_vehicle_1 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10982.423, 17025.111, 0.00011825562], [], 0, "CAN_COLLIDE"];
  _vehicle_1 = _this;
  _this setDir -140.75832;
  _this setPos [10982.423, 17025.111, 0.00011825562];
};

_vehicle_2 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10975.693, 17031.795, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_2 = _this;
  _this setDir -170.77045;
  _this setPos [10975.693, 17031.795, 7.6293945e-006];
};

_vehicle_3 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10966.087, 17031.377, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_3 = _this;
  _this setDir -180.02095;
  _this setPos [10966.087, 17031.377, 7.6293945e-005];
};

_vehicle_4 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10956.481, 17031.119, 7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_4 = _this;
  _this setDir 170.3116;
  _this setPos [10956.481, 17031.119, 7.6293945e-006];
};

_vehicle_5 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10948.48, 17027.326, 5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_5 = _this;
  _this setDir 130.63353;
  _this setPos [10948.48, 17027.326, 5.7220459e-005];
};

_vehicle_6 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10941.823, 17020.441, 0.00011444092], [], 0, "CAN_COLLIDE"];
  _vehicle_6 = _this;
  _this setDir 128.10825;
  _this setPos [10941.823, 17020.441, 0.00011444092];
};

_vehicle_7 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10934.951, 17013.678, 8.7738037e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_7 = _this;
  _this setDir 129.66447;
  _this setPos [10934.951, 17013.678, 8.7738037e-005];
};

_vehicle_8 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10931.79, 17010.232, 5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_8 = _this;
  _this setDir 101.42788;
  _this setPos [10931.79, 17010.232, 5.3405762e-005];
};

_vehicle_9 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10931.62, 17000.635, 7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_9 = _this;
  _this setDir 82.497993;
  _this setPos [10931.62, 17000.635, 7.2479248e-005];
};

_vehicle_10 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10931.541, 16991.145, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_10 = _this;
  _this setDir 63.326275;
  _this setPos [10931.541, 16991.145, -3.0517578e-005];
};

_vehicle_11 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10938.484, 16984.518, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_11 = _this;
  _this setDir 42.892132;
  _this setPos [10938.484, 16984.518, -0.00016784668];
};

_vehicle_12 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10951.688, 16971.719, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_12 = _this;
  _this setDir -150.70454;
  _this setPos [10951.688, 16971.719, 1.9073486e-005];
};

_vehicle_13 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10945.353, 16977.789], [], 0, "CAN_COLLIDE"];
  _vehicle_13 = _this;
  _this setDir -147.28154;
  _this setPos [10945.353, 16977.789];
};

_vehicle_14 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10989.32, 17018.354, -0.00031280518], [], 0, "CAN_COLLIDE"];
  _vehicle_14 = _this;
  _this setDir 40.225468;
  _this setPos [10989.32, 17018.354, -0.00031280518];
};

_vehicle_15 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10993.506, 17013.867, -3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_15 = _this;
  _this setDir 36.908051;
  _this setPos [10993.506, 17013.867, -3.8146973e-005];
};

_vehicle_16 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10993.438, 17013.84, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_16 = _this;
  _this setDir 222.32512;
  _this setPos [10993.438, 17013.84, 3.8146973e-006];
};

_vehicle_17 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [11000.409, 17007.23, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_17 = _this;
  _this setDir -139.86177;
  _this setPos [11000.409, 17007.23, 3.4332275e-005];
};

_vehicle_18 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10951.744, 16971.717, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_18 = _this;
  _this setDir 36.556625;
  _this setPos [10951.744, 16971.717, -1.1444092e-005];
};

_vehicle_19 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10945.406, 16977.783, -2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_19 = _this;
  _this setDir 37.410629;
  _this setPos [10945.406, 16977.783, -2.6702881e-005];
};

_vehicle_20 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [11007.281, 17000.479, -5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_20 = _this;
  _this setDir -122.84564;
  _this setPos [11007.281, 17000.479, -5.7220459e-005];
};

_vehicle_21 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [11007.664, 16990.965, -5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_21 = _this;
  _this setDir -98.44693;
  _this setPos [11007.664, 16990.965, -5.7220459e-005];
};

_vehicle_22 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [11007.984, 16981.379, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_22 = _this;
  _this setDir -96.936043;
  _this setPos [11007.984, 16981.379, -7.6293945e-005];
};

_vehicle_23 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [11004.936, 16973.139], [], 0, "CAN_COLLIDE"];
  _vehicle_23 = _this;
  _this setDir -47.598347;
  _this setPos [11004.936, 16973.139];
};

_vehicle_24 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10998.292, 16966.184, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_24 = _this;
  _this setDir -53.383179;
  _this setPos [10998.292, 16966.184, -2.2888184e-005];
};

_vehicle_25 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10991.523, 16959.293, -0.00010299683], [], 0, "CAN_COLLIDE"];
  _vehicle_25 = _this;
  _this setDir -53.334179;
  _this setPos [10991.523, 16959.293, -0.00010299683];
};

_vehicle_26 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10983.539, 16955.553, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_26 = _this;
  _this setDir -5.243865;
  _this setPos [10983.539, 16955.553, -9.1552734e-005];
};

_vehicle_27 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10973.88, 16955.346, 1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_27 = _this;
  _this setDir -6.4027824;
  _this setPos [10973.88, 16955.346, 1.1444092e-005];
};

_vehicle_28 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10965.56, 16958.313, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_28 = _this;
  _this setDir 38.191051;
  _this setPos [10965.56, 16958.313, -1.1444092e-005];
};

_vehicle_29 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [10958.641, 16965.014, -3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_29 = _this;
  _this setDir 35.98317;
  _this setPos [10958.641, 16965.014, -3.8146973e-005];
};

_vehicle_30 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_FuelStation_Feed", [10988.743, 17017.877, 0.00025558472], [], 0, "CAN_COLLIDE"];
  _vehicle_30 = _this;
  _this setDir 42.550613;
  _this setPos [10988.743, 17017.877, 0.00025558472];
};

_vehicle_31 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_FuelStation_Feed", [10952.087, 16971.947, 4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_31 = _this;
  _this setDir 41.738354;
  _this setPos [10952.087, 16971.947, 4.196167e-005];
};

_vehicle_34 = objNull;
if (true) then
{
  _this = createVehicle ["FlagCarrierUSA", [10994.03, 17013.311, 0.00020217896], [], 0, "CAN_COLLIDE"];
  _vehicle_34 = _this;
  _this setPos [10994.03, 17013.311, 0.00020217896];
};

_vehicle_35 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [11002.947, 17010.936, 6.8664551e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_35 = _this;
  _this setDir 46.80851;
  _this setPos [11002.947, 17010.936, 6.8664551e-005];
};

_vehicle_37 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [11007.474, 17006.246, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_37 = _this;
  _this setDir 46.93018;
  _this setPos [11007.474, 17006.246, 7.6293945e-005];
};

_vehicle_38 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [11010.988, 16998.611, 5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_38 = _this;
  _this setDir 88.516525;
  _this setPos [11010.988, 16998.611, 5.7220459e-005];
};

_vehicle_39 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [11011.315, 16989.23, -0.00011444092], [], 0, "CAN_COLLIDE"];
  _vehicle_39 = _this;
  _this setDir 88.106491;
  _this setPos [11011.315, 16989.23, -0.00011444092];
};

_vehicle_40 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [11011.444, 16980.02, 0.00053787231], [], 0, "CAN_COLLIDE"];
  _vehicle_40 = _this;
  _this setDir 89.348701;
  _this setPos [11011.444, 16980.02, 0.00053787231];
};

_vehicle_41 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [11008.396, 16971.688, -0.15848266], [], 0, "CAN_COLLIDE"];
  _vehicle_41 = _this;
  _this setDir 132.6313;
  _this setPos [11008.396, 16971.688, -0.15848266];
};

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [11002.772, 16965.807, 0.021007085], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir 133.05286;
  _this setPos [11002.772, 16965.807, 0.021007085];
};

_vehicle_43 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10997.01, 16959.484, 0.00017547607], [], 0, "CAN_COLLIDE"];
  _vehicle_43 = _this;
  _this setDir 131.22806;
  _this setPos [10997.01, 16959.484, 0.00017547607];
};

_vehicle_44 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10993.049, 16955.217, 0.29467884], [], 0, "CAN_COLLIDE"];
  _vehicle_44 = _this;
  _this setDir 132.49214;
  _this setPos [10993.049, 16955.217, 0.29467884];
};

_vehicle_45 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10985.436, 16951.678, 0.00049591064], [], 0, "CAN_COLLIDE"];
  _vehicle_45 = _this;
  _this setDir 175.47719;
  _this setPos [10985.436, 16951.678, 0.00049591064];
};

_vehicle_46 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10976.763, 16951.377, -0.00021743774], [], 0, "CAN_COLLIDE"];
  _vehicle_46 = _this;
  _this setDir 181.11444;
  _this setPos [10976.763, 16951.377, -0.00021743774];
};

_vehicle_47 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10970.91, 16951.504, -2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_47 = _this;
  _this setDir 181.73007;
  _this setPos [10970.91, 16951.504, -2.6702881e-005];
};

_vehicle_48 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10963.086, 16954.879, 0.26166844], [], 0, "CAN_COLLIDE"];
  _vehicle_48 = _this;
  _this setDir -136.18102;
  _this setPos [10963.086, 16954.879, 0.26166844];
};

_vehicle_49 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10957.101, 16960.479, -8.0108643e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_49 = _this;
  _this setDir -135.91896;
  _this setPos [10957.101, 16960.479, -8.0108643e-005];
};

_vehicle_50 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10954.12, 16963.275, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_50 = _this;
  _this setDir -135.33205;
  _this setPos [10954.12, 16963.275, 3.4332275e-005];
};

_vehicle_52 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10986.32, 17026.855, -0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_52 = _this;
  _this setDir 45.473976;
  _this setPos [10986.32, 17026.855, -0.00021362305];
};

_vehicle_54 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10980.302, 17032.582, 9.9182129e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_54 = _this;
  _this setDir 44.36525;
  _this setPos [10980.302, 17032.582, 9.9182129e-005];
};

_vehicle_55 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10973.262, 17035.293, 0.00012588501], [], 0, "CAN_COLLIDE"];
  _vehicle_55 = _this;
  _this setDir -3.8108535;
  _this setPos [10973.262, 17035.293, 0.00012588501];
};

_vehicle_56 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10964.627, 17034.98, -0.00018692017], [], 0, "CAN_COLLIDE"];
  _vehicle_56 = _this;
  _this setDir -3.5842543;
  _this setPos [10964.627, 17034.98, -0.00018692017];
};

_vehicle_57 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10956.024, 17034.668, -0.00029754639], [], 0, "CAN_COLLIDE"];
  _vehicle_57 = _this;
  _this setDir -2.4581578;
  _this setPos [10956.024, 17034.668, -0.00029754639];
};

_vehicle_58 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10948.036, 17031.449, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_58 = _this;
  _this setDir -43.412819;
  _this setPos [10948.036, 17031.449, 9.1552734e-005];
};

_vehicle_59 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10941.302, 17025.055, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_59 = _this;
  _this setDir -43.043949;
  _this setPos [10941.302, 17025.055, 1.5258789e-005];
};

_vehicle_60 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10934.406, 17018.707, 8.392334e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_60 = _this;
  _this setDir -42.743702;
  _this setPos [10934.406, 17018.707, 8.392334e-005];
};

_vehicle_61 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10937.188, 16980.742, 6.8664551e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_61 = _this;
  _this setDir -136.07449;
  _this setPos [10937.188, 16980.742, 6.8664551e-005];
};

_vehicle_63 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10931.358, 16986.572], [], 0, "CAN_COLLIDE"];
  _vehicle_63 = _this;
  _this setDir -134.66704;
  _this setPos [10931.358, 16986.572];
};

_vehicle_64 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10927.903, 16994.281, 7.2479248e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_64 = _this;
  _this setDir -94.856972;
  _this setPos [10927.903, 16994.281, 7.2479248e-005];
};

_vehicle_65 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10927.291, 17003.578, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_65 = _this;
  _this setDir -94.635147;
  _this setPos [10927.291, 17003.578, -1.1444092e-005];
};

_vehicle_66 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [10928.686, 17011.279, 8.7738037e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_66 = _this;
  _this setDir -62.515816;
  _this setPos [10928.686, 17011.279, 8.7738037e-005];
};

_vehicle_176 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_0_2000", [10989.01, 17014.234, 0.00029373169], [], 0, "CAN_COLLIDE"];
  _vehicle_176 = _this;
  _this setDir 44.572453;
  _this setPos [10989.01, 17014.234, 0.00029373169];
};

_vehicle_177 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_0_2000", [11001.392, 17026.439, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_177 = _this;
  _this setDir 45.01965;
  _this setPos [11001.392, 17026.439, 1.335144e-005];
};

_vehicle_178 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_1_1000", [11013.668, 17038.617, -5.7220459e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_178 = _this;
  _this setDir 44.001461;
  _this setPos [11013.668, 17038.617, -5.7220459e-005];
};

_vehicle_179 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_10_100", [11036.793, 17064.32, -0.00023460388], [], 0, "CAN_COLLIDE"];
  _vehicle_179 = _this;
  _this setDir -145.51587;
  _this setPos [11036.793, 17064.32, -0.00023460388];
};

_vehicle_183 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_12", [11036.723, 17064.041, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_183 = _this;
  _this setDir 34.533062;
  _this setPos [11036.723, 17064.041, -0.00012207031];
};

_vehicle_184 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_6konec", [10986.405, 17011.564, -6.8664551e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_184 = _this;
  _this setDir 43.352905;
  _this setPos [10986.405, 17011.564, -6.8664551e-005];
};

_vehicle_187 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_60_10", [11043.579, 17074.002, 9.727478e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_187 = _this;
  _this setDir 31.405663;
  _this setPos [11043.579, 17074.002, 9.727478e-005];
};

_vehicle_188 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_6", [11052.297, 17078.91, -4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_188 = _this;
  _this setDir 87.955009;
  _this setPos [11052.297, 17078.91, -4.196167e-005];
};

_vehicle_189 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_30_25", [11048.959, 17086.496, -9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_189 = _this;
  _this setDir -172.48389;
  _this setPos [11048.959, 17086.496, -9.5367432e-006];
};

_vehicle_190 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_30_25", [11048.936, 17086.33, 3.8146973e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_190 = _this;
  _this setDir 9.079752;
  _this setPos [11048.936, 17086.33, 3.8146973e-005];
};

_vehicle_191 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_25", [11054.127, 17097.975, -6.2942505e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_191 = _this;
  _this setDir 36.093166;
  _this setPos [11054.127, 17097.975, -6.2942505e-005];
};

_vehicle_192 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_25", [11083.354, 17079.037, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_192 = _this;
  _this setDir -89.477715;
  _this setPos [11083.354, 17079.037, 1.9073486e-005];
};

_vehicle_193 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_25", [11083.183, 17079.047, 6.2942505e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_193 = _this;
  _this setDir 90.271942;
  _this setPos [11083.183, 17079.047, 6.2942505e-005];
};

_vehicle_195 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_25", [11107.872, 17078.949, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_195 = _this;
  _this setDir 90.102829;
  _this setPos [11107.872, 17078.949, 3.4332275e-005];
};

_vehicle_196 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_15_75", [11151.945, 17081.723, 5.1498413e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_196 = _this;
  _this setDir -105.91039;
  _this setPos [11151.945, 17081.723, 5.1498413e-005];
};

_vehicle_197 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_15_75", [11169.944, 17089.117, -0.00016403198], [], 0, "CAN_COLLIDE"];
  _vehicle_197 = _this;
  _this setDir -120.38594;
  _this setPos [11169.944, 17089.117, -0.00016403198];
};

_vehicle_198 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_0_2000", [11169.84, 17088.965, 0.00012779236], [], 0, "CAN_COLLIDE"];
  _vehicle_198 = _this;
  _this setDir 59.74374;
  _this setPos [11169.84, 17088.965, 0.00012779236];
};

_vehicle_199 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_15_75", [11184.783, 17097.631, -0.00011253357], [], 0, "CAN_COLLIDE"];
  _vehicle_199 = _this;
  _this setDir 61.416466;
  _this setPos [11184.783, 17097.631, -0.00011253357];
};

_vehicle_200 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_15_75", [11221.142, 17111.859, 0.00022888184], [], 0, "CAN_COLLIDE"];
  _vehicle_200 = _this;
  _this setDir -118.99361;
  _this setPos [11221.142, 17111.859, 0.00022888184];
};

_vehicle_201 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_22_50", [11220.993, 17111.723, 0.00020599365], [], 0, "CAN_COLLIDE"];
  _vehicle_201 = _this;
  _this setDir 61.612823;
  _this setPos [11220.993, 17111.723, 0.00020599365];
};

_vehicle_204 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_7_100", [11252.196, 17120.252, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_204 = _this;
  _this setDir -105.88132;
  _this setPos [11252.196, 17120.252, -3.0517578e-005];
};

_vehicle_205 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_60_10", [11259.125, 17127.328, -0.00012111664], [], 0, "CAN_COLLIDE"];
  _vehicle_205 = _this;
  _this setDir -165.32594;
  _this setPos [11259.125, 17127.328, -0.00012111664];
};

_vehicle_206 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_60_10", [11259.128, 17127.26, 0.00013303757], [], 0, "CAN_COLLIDE"];
  _vehicle_206 = _this;
  _this setDir 13.419623;
  _this setPos [11259.128, 17127.26, 0.00013303757];
};

_vehicle_207 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_10_100", [11281.762, 17141.291, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_207 = _this;
  _this setDir -118.08591;
  _this setPos [11281.762, 17141.291, -1.1920929e-005];
};

_vehicle_208 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_10_100", [11281.726, 17141.084, 4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_208 = _this;
  _this setDir 63.242233;
  _this setPos [11281.726, 17141.084, 4.2915344e-006];
};

_vehicle_209 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_10_100", [11297.586, 17147.488, 0.00032711029], [], 0, "CAN_COLLIDE"];
  _vehicle_209 = _this;
  _this setDir 74.119072;
  _this setPos [11297.586, 17147.488, 0.00032711029];
};

_vehicle_210 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_6konec", [11320.856, 17151.445, -7.0095062e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_210 = _this;
  _this setDir -96.540672;
  _this setPos [11320.856, 17151.445, -7.0095062e-005];
};

_vehicle_213 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Bridge_wood_25", [11329.437, 17150.475, -0.70886713], [], 0, "CAN_COLLIDE"];
  _vehicle_213 = _this;
  _this setDir 2.0998709;
  _this setPos [11329.437, 17150.475, -0.70886713];
};

_vehicle_217 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockTower", [11332.779, 17180.129, 0.096811473], [], 0, "CAN_COLLIDE"];
  _vehicle_217 = _this;
  _this setPos [11332.779, 17180.129, 0.096811473];
};

_vehicle_218 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11357.966, 17188.662, -0.015372038], [], 0, "CAN_COLLIDE"];
  _vehicle_218 = _this;
  _this setPos [11357.966, 17188.662, -0.015372038];
};

_vehicle_220 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11408.581, 17145.834, -0.1233716], [], 0, "CAN_COLLIDE"];
  _vehicle_220 = _this;
  _this setDir 53.215729;
  _this setPos [11408.581, 17145.834, -0.1233716];
};

_vehicle_223 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_Rock1", [11398.505, 17125.463, -0.00011831522], [], 0, "CAN_COLLIDE"];
  _vehicle_223 = _this;
  _this setDir -30.352291;
  _this setPos [11398.505, 17125.463, -0.00011831522];
};

_vehicle_224 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockTower", [11427.431, 17122.814, -0.00040578842], [], 0, "CAN_COLLIDE"];
  _vehicle_224 = _this;
  _this setPos [11427.431, 17122.814, -0.00040578842];
};

_vehicle_225 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_Boogieman", [11317.424, 17147.438, 1.9391876], [], 0, "CAN_COLLIDE"];
  _vehicle_225 = _this;
  _this setDir -242.00543;
  _this setPos [11317.424, 17147.438, 1.9391876];
};

_vehicle_226 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_MushroomBabka", [11323.332, 17165.689, 0.000187397], [], 0, "CAN_COLLIDE"];
  _vehicle_226 = _this;
  _this setPos [11323.332, 17165.689, 0.000187397];
};

_vehicle_227 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_misc_FallenTree2", [11311.489, 17173.531, -4.863739e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_227 = _this;
  _this setDir -36.907299;
  _this setPos [11311.489, 17173.531, -4.863739e-005];
};

_vehicle_228 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_trunk_water", [11342.667, 17171.121, -0.0001912117], [], 0, "CAN_COLLIDE"];
  _vehicle_228 = _this;
  _this setPos [11342.667, 17171.121, -0.0001912117];
};

_vehicle_229 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_betula2s", [11419.195, 17187.852, 0.00053358078], [], 0, "CAN_COLLIDE"];
  _vehicle_229 = _this;
  _this setPos [11419.195, 17187.852, 0.00053358078];
};

_vehicle_230 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_fagus2W", [11394.456, 17132.48, 0.00030112267], [], 0, "CAN_COLLIDE"];
  _vehicle_230 = _this;
  _this setPos [11394.456, 17132.48, 0.00030112267];
};

_vehicle_234 = objNull;
if (true) then
{
  _this = createVehicle ["dum_zboreny_total", [11235.277, 17127.244, 0.12128413], [], 0, "CAN_COLLIDE"];
  _vehicle_234 = _this;
  _this setDir -192.44344;
  _this setPos [11235.277, 17127.244, 0.12128413];
};

_vehicle_238 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_Rock1", [11308.555, 17137.453, 0.0002477169], [], 0, "CAN_COLLIDE"];
  _vehicle_238 = _this;
  _this setDir 89.532852;
  _this setPos [11308.555, 17137.453, 0.0002477169];
};

_vehicle_239 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockTower", [11302.711, 17125.27, 3.9935112e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_239 = _this;
  _this setPos [11302.711, 17125.27, 3.9935112e-005];
};

_vehicle_240 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11282.957, 17100.016, 9.1791153e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_240 = _this;
  _this setDir 90.709045;
  _this setPos [11282.957, 17100.016, 9.1791153e-005];
};

_vehicle_241 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11344.063, 17083.602, -0.00034368038], [], 0, "CAN_COLLIDE"];
  _vehicle_241 = _this;
  _this setDir -38.200615;
  _this setPos [11344.063, 17083.602, -0.00034368038];
};

_vehicle_242 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_Rock1", [11312.063, 17068.814, 1.5718598], [], 0, "CAN_COLLIDE"];
  _vehicle_242 = _this;
  _this setPos [11312.063, 17068.814, 1.5718598];
};

_vehicle_243 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_Rock1", [11294.981, 17075.953, 0.0001450181], [], 0, "CAN_COLLIDE"];
  _vehicle_243 = _this;
  _this setPos [11294.981, 17075.953, 0.0001450181];
};

_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11386.41, 17110.018, 0.066917449], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setDir 142.17183;
  _this setPos [11386.41, 17110.018, 0.066917449];
};

_vehicle_245 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11318.944, 17174.854, -0.00012660027], [], 0, "CAN_COLLIDE"];
  _vehicle_245 = _this;
  _this setDir -49.426704;
  _this setPos [11318.944, 17174.854, -0.00012660027];
};

_vehicle_247 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_Rock1", [11293.575, 17116.398, 13.489801], [], 0, "CAN_COLLIDE"];
  _vehicle_247 = _this;
  _this setDir -53.008381;
  _this setPos [11293.575, 17116.398, 13.489801];
};

_vehicle_248 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockTower", [11310.159, 17151.135, 11.162905], [], 0, "CAN_COLLIDE"];
  _vehicle_248 = _this;
  _this setPos [11310.159, 17151.135, 11.162905];
};

_vehicle_249 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_trunk_torzo", [11383.833, 17200.801, 0.14272743], [], 0, "CAN_COLLIDE"];
  _vehicle_249 = _this;
  _this setDir -79.434669;
  _this setPos [11383.833, 17200.801, 0.14272743];
};

_vehicle_250 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Misc_trunk_water", [11386.226, 17207.934, 0.1768893], [], 0, "CAN_COLLIDE"];
  _vehicle_250 = _this;
  _this setPos [11386.226, 17207.934, 0.1768893];
};

_vehicle_251 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_stub_picea", [11385.998, 17212.576, 0.079413056], [], 0, "CAN_COLLIDE"];
  _vehicle_251 = _this;
  _this setPos [11385.998, 17212.576, 0.079413056];
};

_vehicle_252 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_acer2s", [11415.065, 17177.16, 0.065184027], [], 0, "CAN_COLLIDE"];
  _vehicle_252 = _this;
  _this setPos [11415.065, 17177.16, 0.065184027];
};

_vehicle_253 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_misc_FallenTree2", [11411.494, 17178.379, 0.18091235], [], 0, "CAN_COLLIDE"];
  _vehicle_253 = _this;
  _this setDir 32.762058;
  _this setPos [11411.494, 17178.379, 0.18091235];
};

_vehicle_254 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_urtica", [11422.462, 17181.012, -0.09548825], [], 0, "CAN_COLLIDE"];
  _vehicle_254 = _this;
  _this setPos [11422.462, 17181.012, -0.09548825];
};

_vehicle_255 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_Helianthus", [11418.146, 17186.633, -0.078872085], [], 0, "CAN_COLLIDE"];
  _vehicle_255 = _this;
  _this setPos [11418.146, 17186.633, -0.078872085];
};

_vehicle_256 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_wideLeafPlant", [11418.22, 17178.834, -0.075629532], [], 0, "CAN_COLLIDE"];
  _vehicle_256 = _this;
  _this setPos [11418.22, 17178.834, -0.075629532];
};

_vehicle_257 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_TreeSmallForest", [11417.11, 17173.76, 0.022827864], [], 0, "CAN_COLLIDE"];
  _vehicle_257 = _this;
  _this setPos [11417.11, 17173.76, 0.022827864];
};

_vehicle_258 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_misc_FallenSpruce", [11425.56, 17103.316, -0.42150742], [], 0, "CAN_COLLIDE"];
  _vehicle_258 = _this;
  _this setPos [11425.56, 17103.316, -0.42150742];
};

_vehicle_259 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_quercus3s", [11382.506, 17209.34, -3.1966927], [], 0, "CAN_COLLIDE"];
  _vehicle_259 = _this;
  _this setPos [11382.506, 17209.34, -3.1966927];
};

_vehicle_260 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_quercus2f", [11421.76, 17178.715, -4.638473], [], 0, "CAN_COLLIDE"];
  _vehicle_260 = _this;
  _this setPos [11421.76, 17178.715, -4.638473];
};

_vehicle_261 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_sorbus2s", [11419.214, 17203.934, -2.0609541], [], 0, "CAN_COLLIDE"];
  _vehicle_261 = _this;
  _this setPos [11419.214, 17203.934, -2.0609541];
};

_vehicle_262 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_salix2s", [11407.579, 17213.633, -2.2882812], [], 0, "CAN_COLLIDE"];
  _vehicle_262 = _this;
  _this setPos [11407.579, 17213.633, -2.2882812];
};

_vehicle_263 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_salix2s", [11434.001, 17198.93, -0.75405312], [], 0, "CAN_COLLIDE"];
  _vehicle_263 = _this;
  _this setPos [11434.001, 17198.93, -0.75405312];
};

_vehicle_264 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_salix2s", [11393.463, 17104.318, -0.00017309189], [], 0, "CAN_COLLIDE"];
  _vehicle_264 = _this;
  _this setPos [11393.463, 17104.318, -0.00017309189];
};

_vehicle_265 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11305.732, 17091.039, 17.614937], [], 0, "CAN_COLLIDE"];
  _vehicle_265 = _this;
  _this setDir 23.908131;
  _this setPos [11305.732, 17091.039, 17.614937];
};

_vehicle_266 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11343.594, 17103.973, 18.774385], [], 0, "CAN_COLLIDE"];
  _vehicle_266 = _this;
  _this setDir -29.321749;
  _this setPos [11343.594, 17103.973, 18.774385];
};

_vehicle_267 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11311.691, 17118.904, 19.797884], [], 0, "CAN_COLLIDE"];
  _vehicle_267 = _this;
  _this setDir 92.25724;
  _this setPos [11311.691, 17118.904, 19.797884];
};

_vehicle_268 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11320.88, 17111.725, 24.226791], [], 0, "CAN_COLLIDE"];
  _vehicle_268 = _this;
  _this setDir 152.26759;
  _this setPos [11320.88, 17111.725, 24.226791];
};

_vehicle_269 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockWall", [11386.324, 17158.143, 13.329291], [], 0, "CAN_COLLIDE"];
  _vehicle_269 = _this;
  _this setDir -130.86447;
  _this setPos [11386.324, 17158.143, 13.329291];
};

_vehicle_270 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_R2_RockTower", [11388.313, 17130.818, 14.666811], [], 0, "CAN_COLLIDE"];
  _vehicle_270 = _this;
  _this setPos [11388.313, 17130.818, 14.666811];
};

_vehicle_271 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10981.26, 16977.199, -0.00017929077], [], 0, "CAN_COLLIDE"];
  _vehicle_271 = _this;
  _this setDir -0.55725002;
  _this setPos [10981.26, 16977.199, -0.00017929077];
};

_vehicle_272 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10976.835, 16981.691, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_272 = _this;
  _this setDir 88.749031;
  _this setPos [10976.835, 16981.691, -1.1444092e-005];
};

_vehicle_273 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10974.826, 16988.33, -6.8664551e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_273 = _this;
  _this setDir 43.487328;
  _this setPos [10974.826, 16988.33, -6.8664551e-005];
};

_vehicle_274 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10961.949, 17000.57], [], 0, "CAN_COLLIDE"];
  _vehicle_274 = _this;
  _this setDir 44.121941;
  _this setPos [10961.949, 17000.57];
};

_vehicle_275 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10955.14, 17002.141, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_275 = _this;
  _this setDir -1.391055;
  _this setPos [10955.14, 17002.141, -7.6293945e-006];
};

_vehicle_276 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10950.666, 17006.246], [], 0, "CAN_COLLIDE"];
  _vehicle_276 = _this;
  _this setDir -92.022018;
  _this setPos [10950.666, 17006.246];
};

_vehicle_277 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10980.261, 16995.459, -2.6702881e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_277 = _this;
  _this setDir -0.29469025;
  _this setPos [10980.261, 16995.459, -2.6702881e-005];
};

_vehicle_278 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10996.145, 17014.154, -1.3946246], [], 0, "CAN_COLLIDE"];
  _vehicle_278 = _this;
  _this setDir -3.1305122;
  _this setPos [10996.145, 17014.154, -1.3946246];
};

_vehicle_279 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10997.283, 17014.23, -1.346138], [], 0, "CAN_COLLIDE"];
  _vehicle_279 = _this;
  _this setDir -3.9533386;
  _this setPos [10997.283, 17014.23, -1.346138];
};

_vehicle_280 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10989.488, 17021.004, -1.2796695], [], 0, "CAN_COLLIDE"];
  _vehicle_280 = _this;
  _this setDir -88.777191;
  _this setPos [10989.488, 17021.004, -1.2796695];
};

_vehicle_282 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10951.14, 16968.971, -1.395135], [], 0, "CAN_COLLIDE"];
  _vehicle_282 = _this;
  _this setDir -82.570198;
  _this setPos [10951.14, 16968.971, -1.395135];
};

_vehicle_283 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10942.773, 16977.332, -1.3794066], [], 0, "CAN_COLLIDE"];
  _vehicle_283 = _this;
  _this setDir -5.9248543;
  _this setPos [10942.773, 16977.332, -1.3794066];
};

_vehicle_284 = objNull;
if (true) then
{
  _this = createVehicle ["MBG_Warehouse_InEditor", [11111.091, 17160.719, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_284 = _this;
  _this setDir 54.185059;
  _this setPos [11111.091, 17160.719, 1.335144e-005];
};

_vehicle_286 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_60_10", [11069.649, 17128.078], [], 0, "CAN_COLLIDE"];
  _vehicle_286 = _this;
  _this setDir -204.43584;
  _this setPos [11069.649, 17128.078];
};

_vehicle_287 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_30_25", [11069.771, 17127.961, 2.8610229e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_287 = _this;
  _this setDir -24.150263;
  _this setPos [11069.771, 17127.961, 2.8610229e-005];
};

_vehicle_291 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_60_10", [11067.688, 17140.654, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_291 = _this;
  _this setDir 6.6325431;
  _this setPos [11067.688, 17140.654, 3.4332275e-005];
};

_vehicle_292 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_15_75", [11090.178, 17159.088, -2.0980835e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_292 = _this;
  _this setDir -130.10231;
  _this setPos [11090.178, 17159.088, -2.0980835e-005];
};

_vehicle_297 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_grav_30_25", [11080.33, 17152.566, 4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_297 = _this;
  _this setDir -342.35599;
  _this setPos [11080.33, 17152.566, 4.196167e-005];
};

_vehicle_299 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10989.484, 17020.996, -1.2860837], [], 0, "CAN_COLLIDE"];
  _vehicle_299 = _this;
  _this setDir -88.261002;
  _this setPos [10989.484, 17020.996, -1.2860837];
};

_vehicle_300 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10942.784, 16977.34, -1.3786073], [], 0, "CAN_COLLIDE"];
  _vehicle_300 = _this;
  _this setDir -6.1557684;
  _this setPos [10942.784, 16977.34, -1.3786073];
};

_vehicle_301 = objNull;
if (true) then
{
  _this = createVehicle ["CinderWall_DZ", [10951.148, 16968.916, -1.3733181], [], 0, "CAN_COLLIDE"];
  _vehicle_301 = _this;
  _this setDir -83.156776;
  _this setPos [10951.148, 16968.916, -1.3733181];
};

_vehicle_321 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_sign_badRoadside", [11119.08, 17074.98, -0.00016975403], [], 0, "CAN_COLLIDE"];
  _vehicle_321 = _this;
  _this setDir 88.416176;
  _this setPos [11119.08, 17074.98, -0.00016975403];
};

_vehicle_322 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_sign_crossRoad", [11044.713, 17069.65, -0.00026893616], [], 0, "CAN_COLLIDE"];
  _vehicle_322 = _this;
  _this setDir 32.265099;
  _this setPos [11044.713, 17069.65, -0.00026893616];
};

_vehicle_323 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_sign_danger", [11062.882, 17104.109, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_323 = _this;
  _this setDir 33.768322;
  _this setPos [11062.882, 17104.109, -3.4332275e-005];
};

_vehicle_324 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_sign_downHill_new", [11096.698, 17075.209, 0.00019836426], [], 0, "CAN_COLLIDE"];
  _vehicle_324 = _this;
  _this setDir 96.22496;
  _this setPos [11096.698, 17075.209, 0.00019836426];
};

_vehicle_333 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Bilboard_alkohol", [10839.212, 16929.096, -7.6293945e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_333 = _this;
  _this setDir -256.20035;
  _this setPos [10839.212, 16929.096, -7.6293945e-006];
};

_vehicle_337 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_2", [11433.977, 17163.994, -0.13314152], [], 0, "CAN_COLLIDE"];
  _vehicle_337 = _this;
  _this setPos [11433.977, 17163.994, -0.13314152];
};

_vehicle_338 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_3", [11429.422, 17155.576, -0.031559706], [], 0, "CAN_COLLIDE"];
  _vehicle_338 = _this;
  _this setPos [11429.422, 17155.576, -0.031559706];
};

_vehicle_339 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11428.745, 17163.061, -0.11992759], [], 0, "CAN_COLLIDE"];
  _vehicle_339 = _this;
  _this setPos [11428.745, 17163.061, -0.11992759];
};

_vehicle_340 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11440.168, 17164.633, -0.12900198], [], 0, "CAN_COLLIDE"];
  _vehicle_340 = _this;
  _this setPos [11440.168, 17164.633, -0.12900198];
};

_vehicle_341 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11436.393, 17171.814, 0.033130348], [], 0, "CAN_COLLIDE"];
  _vehicle_341 = _this;
  _this setPos [11436.393, 17171.814, 0.033130348];
};

_vehicle_342 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11442.146, 17170.736, 0.0049723983], [], 0, "CAN_COLLIDE"];
  _vehicle_342 = _this;
  _this setPos [11442.146, 17170.736, 0.0049723983];
};

_vehicle_343 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11421.095, 17156.898, 0.029365361], [], 0, "CAN_COLLIDE"];
  _vehicle_343 = _this;
  _this setPos [11421.095, 17156.898, 0.029365361];
};

_vehicle_344 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11423.778, 17149.979, 0.10080954], [], 0, "CAN_COLLIDE"];
  _vehicle_344 = _this;
  _this setPos [11423.778, 17149.979, 0.10080954];
};

_vehicle_345 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11443.303, 17178.191, -0.078819573], [], 0, "CAN_COLLIDE"];
  _vehicle_345 = _this;
  _this setPos [11443.303, 17178.191, -0.078819573];
};

_vehicle_346 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11439.714, 17175.998, -0.00096905231], [], 0, "CAN_COLLIDE"];
  _vehicle_346 = _this;
  _this setPos [11439.714, 17175.998, -0.00096905231];
};

_vehicle_347 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11438.375, 17182.822, -0.13597143], [], 0, "CAN_COLLIDE"];
  _vehicle_347 = _this;
  _this setPos [11438.375, 17182.822, -0.13597143];
};

_vehicle_348 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11444.833, 17182.248, -0.17598575], [], 0, "CAN_COLLIDE"];
  _vehicle_348 = _this;
  _this setPos [11444.833, 17182.248, -0.17598575];
};

_vehicle_349 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11446.222, 17188.859, -0.13695318], [], 0, "CAN_COLLIDE"];
  _vehicle_349 = _this;
  _this setPos [11446.222, 17188.859, -0.13695318];
};

_vehicle_350 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11442.828, 17186.934, -0.170874], [], 0, "CAN_COLLIDE"];
  _vehicle_350 = _this;
  _this setPos [11442.828, 17186.934, -0.170874];
};

_vehicle_351 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11441.285, 17192.83, -0.038225472], [], 0, "CAN_COLLIDE"];
  _vehicle_351 = _this;
  _this setPos [11441.285, 17192.83, -0.038225472];
};

_vehicle_352 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11446.401, 17193.84, -0.017677724], [], 0, "CAN_COLLIDE"];
  _vehicle_352 = _this;
  _this setPos [11446.401, 17193.84, -0.017677724];
};

_vehicle_353 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11433.7, 17178.924, -0.0014663935], [], 0, "CAN_COLLIDE"];
  _vehicle_353 = _this;
  _this setPos [11433.7, 17178.924, -0.0014663935];
};

_vehicle_354 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11434.203, 17187.43, -0.12910515], [], 0, "CAN_COLLIDE"];
  _vehicle_354 = _this;
  _this setPos [11434.203, 17187.43, -0.12910515];
};

_vehicle_355 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_1", [11429.951, 17183.697, -0.068706751], [], 0, "CAN_COLLIDE"];
  _vehicle_355 = _this;
  _this setPos [11429.951, 17183.697, -0.068706751];
};

_vehicle_356 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_2", [11432.307, 17176.211, 0.060269713], [], 0, "CAN_COLLIDE"];
  _vehicle_356 = _this;
  _this setPos [11432.307, 17176.211, 0.060269713];
};

_vehicle_357 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_2", [11430.473, 17168.561, -0.016161025], [], 0, "CAN_COLLIDE"];
  _vehicle_357 = _this;
  _this setPos [11430.473, 17168.561, -0.016161025];
};

_vehicle_358 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_2", [11436.502, 17156.443, -0.12435591], [], 0, "CAN_COLLIDE"];
  _vehicle_358 = _this;
  _this setPos [11436.502, 17156.443, -0.12435591];
};

_vehicle_359 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_2", [11429.113, 17150.041, 0.062467694], [], 0, "CAN_COLLIDE"];
  _vehicle_359 = _this;
  _this setPos [11429.113, 17150.041, 0.062467694];
};

_vehicle_360 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_2", [11423.896, 17160.031, -0.066790104], [], 0, "CAN_COLLIDE"];
  _vehicle_360 = _this;
  _this setPos [11423.896, 17160.031, -0.066790104];
};

_vehicle_361 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_2", [11425.017, 17143.418, -0.026124239], [], 0, "CAN_COLLIDE"];
  _vehicle_361 = _this;
  _this setPos [11425.017, 17143.418, -0.026124239];
};

_vehicle_362 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_wave_breaker_2", [11417.307, 17149.357, 0.13410896], [], 0, "CAN_COLLIDE"];
  _vehicle_362 = _this;
  _this setPos [11417.307, 17149.357, 0.13410896];
};

_vehicle_375 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_buoy", [11671.396, 17200.639, -5.531311e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_375 = _this;
  _this setPos [11671.396, 17200.639, -5.531311e-005];
};

_vehicle_377 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_NAV_Lighthouse2", [11624.118, 17223.744, 0.00014919043], [], 0, "CAN_COLLIDE"];
  _vehicle_377 = _this;
  _this setDir -236.73073;
  _this setPos [11624.118, 17223.744, 0.00014919043];
};

_vehicle_384 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSSidl2", [11087.839, 17160.379], [], 0, "CAN_COLLIDE"];
  _vehicle_384 = _this;
  _this setDir 57.049683;
  _this setPos [11087.839, 17160.379];
};

_vehicle_385 = objNull;
if (true) then
{
  _this = createVehicle ["ASC_EU_LHSSidl2", [11319.54, 17158.221, -4.0054321e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_385 = _this;
  _this setDir -25.909365;
  _this setPos [11319.54, 17158.221, -4.0054321e-005];
};

_vehicle_386 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_Wall_Lamp_New", [11388.663, 17162.324, 0.99187589], [], 0, "CAN_COLLIDE"];
  _vehicle_386 = _this;
  _this setDir -15.297452;
  _this setPos [11388.663, 17162.324, 0.99187589];
};


};
//Visit www.devistationinc.com For More Map Customization, napf_magden.sqf Created by FoRcE