/*
  CHERNARUS ENHANCEMENTS - North East Airfield
  ---------------------------------------------------------------
    Reworked North East Airfield by Ian Hardy - Ixxo, blackwiddow
    Email: blackwiddow20@hotmail.co.uk
    Steam: blackwiddow20
*/
 

if (isServer) then {

_vehicle_1 = objNull;
if (true) then
{
  _this = createVehicle ["C130J_wreck_EP1", [11991.713, 12802.727, 0.4083305], [], 0, "CAN_COLLIDE"];
  _vehicle_1 = _this;
  _this setDir 126.50513;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11991.713, 12802.727, 0.4083305];
};

_vehicle_2 = objNull;
if (true) then
{
  _this = createVehicle ["Land_R_Shed_Ind02", [11982.002, 12815.203, -0.12420972], [], 0, "CAN_COLLIDE"];
  _vehicle_2 = _this;
  _this setDir 200.3562;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11982.002, 12815.203, -0.12420972];
};

_vehicle_4 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_Barracks_i", [12237.829, 12582.515, 0.00015938655], [], 0, "CAN_COLLIDE"];
  _vehicle_4 = _this;
  _this setDir 650.49579;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12237.829, 12582.515, 0.00015938655];
};

_vehicle_6 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12132.657, 12608.476, -0.060386583], [], 0, "CAN_COLLIDE"];
  _vehicle_6 = _this;
  _this setDir -177.84039;
  _this setPos [12132.657, 12608.476, -0.060386583];
};

_vehicle_7 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12114.934, 12611.005, -0.041422881], [], 0, "CAN_COLLIDE"];
  _vehicle_7 = _this;
  _this setDir -172.09198;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12114.934, 12611.005, -0.041422881];
};

_vehicle_8 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12106.17, 12612.3, -0.069929242], [], 0, "CAN_COLLIDE"];
  _vehicle_8 = _this;
  _this setDir -168.02449;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12106.17, 12612.3, -0.069929242];
};

_vehicle_9 = objNull;
if (true) then
{
  _this = createVehicle ["Land_pumpa", [12223.62, 12590.322, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_9 = _this;
  _this setDir 22.781012;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12223.62, 12590.322, 1.5258789e-005];
};

_vehicle_11 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench2_noRoad", [12139.408, 12615.285, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_11 = _this;
  _this setDir -64.218567;
  _this setPos [12139.408, 12615.285, -1.5258789e-005];
};

_vehicle_14 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_House", [12285.703, 12561.577, 0.15137461], [], 0, "CAN_COLLIDE"];
  _vehicle_14 = _this;
  _this setDir 381.20578;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12285.703, 12561.577, 0.15137461];
};

_vehicle_15 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12305.288, 12549.92, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_15 = _this;
  _this setDir 208.47662;
  _this setPos [12305.288, 12549.92, -4.5776367e-005];
};

_vehicle_16 = objNull;
if (true) then
{
  _this = createVehicle ["Land_ladder_half_EP1", [12298.116, 12553.258, 0.22348702], [], 0, "CAN_COLLIDE"];
  _vehicle_16 = _this;
  _this setDir 21.320999;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12298.116, 12553.258, 0.22348702];
};

_vehicle_17 = objNull;
if (true) then
{
  _this = createVehicle ["Land_ladder_half_EP1", [12284.136, 12558.021, 5.856926], [], 0, "CAN_COLLIDE"];
  _vehicle_17 = _this;
  _this setDir -68.114441;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12284.136, 12558.021, 5.856926];
};

_vehicle_18 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_Guardhouse", [12407.192, 12667.48, 0.23015961], [], 0, "CAN_COLLIDE"];
  _vehicle_18 = _this;
  _this setDir -67.540825;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12407.192, 12667.48, 0.23015961];
};

_vehicle_19 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_Barracks", [12389.269, 12648.562, 0.17507803], [], 0, "CAN_COLLIDE"];
  _vehicle_19 = _this;
  _this setDir 200.56454;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12389.269, 12648.562, 0.17507803];
};

_vehicle_20 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_House", [12429.599, 12634.853, 0.11835057], [], 0, "CAN_COLLIDE"];
  _vehicle_20 = _this;
  _this setDir 199.85762;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12429.599, 12634.853, 0.11835057];
};

_vehicle_21 = objNull;
if (true) then
{
  _this = createVehicle ["Land_ladder_half_EP1", [12420.74, 12641.523, 0.31460834], [], 0, "CAN_COLLIDE"];
  _vehicle_21 = _this;
  _this setDir 201.18501;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12420.74, 12641.523, 0.31460834];
};

_vehicle_22 = objNull;
if (true) then
{
  _this = createVehicle ["Land_ladder_half_EP1", [12431.383, 12639.495, 5.8280702], [], 0, "CAN_COLLIDE"];
  _vehicle_22 = _this;
  _this setDir 109.37956;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12431.383, 12639.495, 5.8280702];
};

_vehicle_24 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Hlidac_Budka_EP1", [12402.92, 12645.416, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_24 = _this;
  _this setDir 109.7478;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12402.92, 12645.416, -3.0517578e-005];
};

_vehicle_25 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Hangar_2", [12139.319, 12757.584, -0.10912579], [], 0, "CAN_COLLIDE"];
  _vehicle_25 = _this;
  _this setDir 20.593155;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12139.319, 12757.584, -0.10912579];
};

_vehicle_26 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Hangar_2", [12188.334, 12738.513, -0.096647181], [], 0, "CAN_COLLIDE"];
  _vehicle_26 = _this;
  _this setDir 20.796146;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12188.334, 12738.513, -0.096647181];
};

_vehicle_27 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12158.915, 12762.558, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_27 = _this;
  _this setDir 21.557934;
  _this setPos [12158.915, 12762.558, -7.6293945e-005];
};

_vehicle_28 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12171.463, 12757.542, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_28 = _this;
  _this setDir 22.339798;
  _this setPos [12171.463, 12757.542, -4.5776367e-005];
};

_vehicle_29 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [12166.721, 12760.914, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_29 = _this;
  _this setPos [12166.721, 12760.914, -4.5776367e-005];
};

_vehicle_30 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [12405.836, 12648.753, 0.25996006], [], 0, "CAN_COLLIDE"];
  _vehicle_30 = _this;
  _this setDir -159.58455;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12405.836, 12648.753, 0.25996006];
};

_vehicle_31 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_IlluminantTower", [12165.304, 12752.953, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_31 = _this;
  _this setDir 21.963991;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12165.304, 12752.953, -1.5258789e-005];
};

_vehicle_32 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_IlluminantTower", [11997.854, 12666.918, -0.050842166], [], 0, "CAN_COLLIDE"];
  _vehicle_32 = _this;
  _this setDir -33.871441;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11997.854, 12666.918, -0.050842166];
};

_vehicle_33 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [12580.741, 12500.53, 0.21553366], [], 0, "CAN_COLLIDE"];
  _vehicle_33 = _this;
  _this setDir 86.271591;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12580.741, 12500.53, 0.21553366];
};

_vehicle_34 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Hlidac_Budka_EP1", [12575.252, 12499.125, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_34 = _this;
  _this setDir -184.46272;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12575.252, 12499.125, 1.5258789e-005];
};

_vehicle_35 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12582.511, 12516.138, -0.096662447], [], 0, "CAN_COLLIDE"];
  _vehicle_35 = _this;
  _this setDir -271.98785;
  _this setPos [12582.511, 12516.138, -0.096662447];
};

_vehicle_37 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12582.448, 12525.146, 0.012982836], [], 0, "CAN_COLLIDE"];
  _vehicle_37 = _this;
  _this setDir 89.860916;
  _this setPos [12582.448, 12525.146, 0.012982836];
};

_vehicle_38 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12582.336, 12534.15, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_38 = _this;
  _this setDir 89.283417;
  _this setPos [12582.336, 12534.15, 1.5258789e-005];
};

_vehicle_39 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12581.683, 12543.101, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_39 = _this;
  _this setDir 85.225494;
  _this setPos [12581.683, 12543.101, -9.1552734e-005];
};

_vehicle_40 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12581.23, 12552.086], [], 0, "CAN_COLLIDE"];
  _vehicle_40 = _this;
  _this setDir 87.801544;
  _this setPos [12581.23, 12552.086];
};

_vehicle_41 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12578.514, 12560.468, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_41 = _this;
  _this setDir 69.356651;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12578.514, 12560.468, 1.5258789e-005];
};

_vehicle_42 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12572.951, 12567.35, -0.0044221859], [], 0, "CAN_COLLIDE"];
  _vehicle_42 = _this;
  _this setDir 46.96468;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12572.951, 12567.35, -0.0044221859];
};

_vehicle_44 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12556.396, 12584.151, -0.046736963], [], 0, "CAN_COLLIDE"];
  _vehicle_44 = _this;
  _this setDir 42.942436;
  _this setPos [12556.396, 12584.151, -0.046736963];
};

_vehicle_45 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12549.983, 12590.246, -0.13877551], [], 0, "CAN_COLLIDE"];
  _vehicle_45 = _this;
  _this setDir 42.890728;
  _this setPos [12549.983, 12590.246, -0.13877551];
};

_vehicle_46 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12543.521, 12596.437, -0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_46 = _this;
  _this setDir 42.733097;
  _this setPos [12543.521, 12596.437, -0.0001373291];
};

_vehicle_47 = objNull;
if (true) then
{
  _this = createVehicle ["BRDMWreck", [12563.11, 12578.611, -0.0056217723], [], 0, "CAN_COLLIDE"];
  _vehicle_47 = _this;
  _this setDir 176.2453;
  _this setPos [12563.11, 12578.611, -0.0056217723];
};

_vehicle_48 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [12539.494, 12602.412, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_48 = _this;
  _this setDir 46.579273;
  _this setPos [12539.494, 12602.412, 9.1552734e-005];
};

_vehicle_49 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [12570.766, 12572.482, -0.069422901], [], 0, "CAN_COLLIDE"];
  _vehicle_49 = _this;
  _this setDir 419.50934;
  _this setPos [12570.766, 12572.482, -0.069422901];
};

_vehicle_50 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [12546.66, 12594.765, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_50 = _this;
  _this setDir 133.7153;
  _this setVehicleInit "this setvectorup [0.1,0.1,0.1]";
  _this setPos [12546.66, 12594.765, 0.00012207031];
};

_vehicle_51 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_Barracks_L", [12454.771, 12624.353, -0.23946775], [], 0, "CAN_COLLIDE"];
  _vehicle_51 = _this;
  _this setDir 20.01049;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12454.771, 12624.353, -0.23946775];
};

_vehicle_52 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wall_CBrk_5_D", [12448.933, 12634.935, 0.020744165], [], 0, "CAN_COLLIDE"];
  _vehicle_52 = _this;
  _this setDir 19.294193;
  _this setPos [12448.933, 12634.935, 0.020744165];
};

_vehicle_53 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [11989.576, 12674.892, 0.17883843], [], 0, "CAN_COLLIDE"];
  _vehicle_53 = _this;
  _this setDir -125.36109;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11989.576, 12674.892, 0.17883843];
};

_vehicle_54 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12207.915, 12743.503, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_54 = _this;
  _this setDir 21.460743;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12207.915, 12743.503, 1.5258789e-005];
};

_vehicle_55 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12219.281, 12739.165, 0.11825058], [], 0, "CAN_COLLIDE"];
  _vehicle_55 = _this;
  _this setDir 22.404869;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12219.281, 12739.165, 0.11825058];
};

_vehicle_56 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12316.258, 12681.594, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_56 = _this;
  _this setDir 20.187006;
  _this setPos [12316.258, 12681.594, 3.0517578e-005];
};

_vehicle_57 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12307.988, 12684.484, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_57 = _this;
  _this setDir 19.542614;
  _this setPos [12307.988, 12684.484, 3.0517578e-005];
};

_vehicle_58 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12299.759, 12687.401, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_58 = _this;
  _this setDir 20.01062;
  _this setPos [12299.759, 12687.401, -1.5258789e-005];
};

_vehicle_59 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_Barracks", [12357.972, 12659.582, 0.093376458], [], 0, "CAN_COLLIDE"];
  _vehicle_59 = _this;
  _this setDir 20.058674;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12357.972, 12659.582, 0.093376458];
};

_vehicle_60 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12292.09, 12692.046, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_60 = _this;
  _this setDir 33.437855;
  _this setPos [12292.09, 12692.046, 1.5258789e-005];
};

_vehicle_61 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12285.103, 12697.505], [], 0, "CAN_COLLIDE"];
  _vehicle_61 = _this;
  _this setDir 39.253963;
  _this setPos [12285.103, 12697.505];
};

_vehicle_62 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12278.198, 12703.246, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_62 = _this;
  _this setDir 40.124008;
  _this setPos [12278.198, 12703.246, -1.5258789e-005];
};

_vehicle_63 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12271.314, 12708.946, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_63 = _this;
  _this setDir 39.9403;
  _this setPos [12271.314, 12708.946, 3.0517578e-005];
};

_vehicle_64 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12265.205, 12715.488, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_64 = _this;
  _this setDir 48.354702;
  _this setPos [12265.205, 12715.488, 3.0517578e-005];
};

_vehicle_65 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12259.041, 12721.816, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_65 = _this;
  _this setDir 43.215626;
  _this setPos [12259.041, 12721.816, -9.1552734e-005];
};

_vehicle_66 = objNull;
if (true) then
{
  _this = createVehicle ["Land_hut_old02_ruins", [11981.564, 12814.842, 0.023358647], [], 0, "CAN_COLLIDE"];
  _vehicle_66 = _this;
  _this setDir 209.80809;
  _this setPos [11981.564, 12814.842, 0.023358647];
};

_vehicle_67 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12061.163, 12776.263], [], 0, "CAN_COLLIDE"];
  _vehicle_67 = _this;
  _this setDir 21.311745;
  _this setPos [12061.163, 12776.263];
};

_vehicle_68 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12052.877, 12779.493, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_68 = _this;
  _this setDir 21.779293;
  _this setPos [12052.877, 12779.493, -1.5258789e-005];
};

_vehicle_69 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12044.521, 12782.588, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_69 = _this;
  _this setDir 20.388592;
  _this setPos [12044.521, 12782.588, -1.5258789e-005];
};

_vehicle_70 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12036.254, 12785.799], [], 0, "CAN_COLLIDE"];
  _vehicle_70 = _this;
  _this setDir 21.682999;
  _this setPos [12036.254, 12785.799];
};

_vehicle_71 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12027.924, 12788.998, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_71 = _this;
  _this setDir 20.510485;
  _this setPos [12027.924, 12788.998, 3.0517578e-005];
};

_vehicle_72 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12019.553, 12792.068, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_72 = _this;
  _this setDir 20.380203;
  _this setPos [12019.553, 12792.068, -1.5258789e-005];
};

_vehicle_73 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12011.133, 12795.144, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_73 = _this;
  _this setDir 20.380203;
  _this setPos [12011.133, 12795.144, 3.0517578e-005];
};

_vehicle_74 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Shed_Ind02", [11920.096, 12838.982, 0.14880173], [], 0, "CAN_COLLIDE"];
  _vehicle_74 = _this;
  _this setDir 199.59961;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11920.096, 12838.982, 0.14880173];
};

_vehicle_75 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_Shed_02_EP1", [11952.343, 12817.048], [], 0, "CAN_COLLIDE"];
  _vehicle_75 = _this;
  _this setDir 290.75189;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11952.343, 12817.048];
};

_vehicle_76 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11922.918, 12825.187, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_76 = _this;
  _this setDir 22.076859;
  _this setPos [11922.918, 12825.187, -1.5258789e-005];
};

_vehicle_77 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11926.684, 12824.904, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_77 = _this;
  _this setDir -14.533379;
  _this setPos [11926.684, 12824.904, -3.0517578e-005];
};

_vehicle_78 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [11940.033, 12830.115], [], 0, "CAN_COLLIDE"];
  _vehicle_78 = _this;
  _this setDir 1094.7571;
  _this setPos [11940.033, 12830.115];
};

_vehicle_79 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11822.782, 12863.823, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_79 = _this;
  _this setDir 8.4225883;
  _this setPos [11822.782, 12863.823, 6.1035156e-005];
};

_vehicle_80 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11813.954, 12865.141, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_80 = _this;
  _this setDir 8.4225883;
  _this setPos [11813.954, 12865.141, -3.0517578e-005];
};

_vehicle_81 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11805.086, 12866.416, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_81 = _this;
  _this setDir 8.4225883;
  _this setPos [11805.086, 12866.416, -3.0517578e-005];
};

_vehicle_82 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11796.285, 12866.531], [], 0, "CAN_COLLIDE"];
  _vehicle_82 = _this;
  _this setDir -0.58076453;
  _this setPos [11796.285, 12866.531];
};

_vehicle_83 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11787.366, 12865.839, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_83 = _this;
  _this setDir -4.3505559;
  _this setPos [11787.366, 12865.839, 6.1035156e-005];
};

_vehicle_84 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11778.48, 12864.815, 0.24165954], [], 0, "CAN_COLLIDE"];
  _vehicle_84 = _this;
  _this setDir -7.6248579;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11778.48, 12864.815, 0.24165954];
};

_vehicle_85 = objNull;
if (true) then
{
  _this = createVehicle ["hiluxWreck", [11774.78, 12866.438, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_85 = _this;
  _this setDir -8.9899731;
  _this setPos [11774.78, 12866.438, -9.1552734e-005];
};

_vehicle_86 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12581.624, 12497.665, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_86 = _this;
  _this setDir 175.74663;
  _this setPos [12581.624, 12497.665, 1.5258789e-005];
};

_vehicle_87 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind", [12582.903, 12499.314, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_87 = _this;
  _this setDir 84.515099;
  _this setPos [12582.903, 12499.314, 1.5258789e-005];
};

_vehicle_88 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12572.712, 12496.937, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_88 = _this;
  _this setDir 175.74663;
  _this setPos [12572.712, 12496.937, -1.5258789e-005];
};

_vehicle_89 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12554.871, 12496.576], [], 0, "CAN_COLLIDE"];
  _vehicle_89 = _this;
  _this setDir 180.02495;
  _this setPos [12554.871, 12496.576];
};

_vehicle_90 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12563.792, 12496.601, -0.0084686279], [], 0, "CAN_COLLIDE"];
  _vehicle_90 = _this;
  _this setDir 180.02495;
  _this setPos [12563.792, 12496.601, -0.0084686279];
};

_vehicle_91 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12536.982, 12495.661, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_91 = _this;
  _this setDir 175.74663;
  _this setPos [12536.982, 12495.661, 1.5258789e-005];
};

_vehicle_92 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12545.893, 12496.39, 0.033401489], [], 0, "CAN_COLLIDE"];
  _vehicle_92 = _this;
  _this setDir 175.74663;
  _this setPos [12545.893, 12496.39, 0.033401489];
};

_vehicle_93 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12519.184, 12496.227], [], 0, "CAN_COLLIDE"];
  _vehicle_93 = _this;
  _this setDir 186.76328;
  _this setPos [12519.184, 12496.227];
};

_vehicle_94 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12503.634, 12490.555, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_94 = _this;
  _this setDir 141.86034;
  _this setPos [12503.634, 12490.555, 3.0517578e-005];
};

_vehicle_95 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12510.624, 12496.134, 0.03855896], [], 0, "CAN_COLLIDE"];
  _vehicle_95 = _this;
  _this setDir 141.86034;
  _this setPos [12510.624, 12496.134, 0.03855896];
};

_vehicle_96 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12487.414, 12484.854, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_96 = _this;
  _this setDir 174.68863;
  _this setPos [12487.414, 12484.854, -3.0517578e-005];
};

_vehicle_97 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12496.314, 12485.745, 0.052612305], [], 0, "CAN_COLLIDE"];
  _vehicle_97 = _this;
  _this setDir 174.68863;
  _this setPos [12496.314, 12485.745, 0.052612305];
};

_vehicle_98 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12470.119, 12487.92, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_98 = _this;
  _this setDir 201.49579;
  _this setPos [12470.119, 12487.92, -1.5258789e-005];
};

_vehicle_99 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12453.442, 12494.354, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_99 = _this;
  _this setDir 201.49579;
  _this setPos [12453.442, 12494.354, -1.5258789e-005];
};

_vehicle_100 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12461.791, 12491.142, 0.050201416], [], 0, "CAN_COLLIDE"];
  _vehicle_100 = _this;
  _this setDir 201.49579;
  _this setPos [12461.791, 12491.142, 0.050201416];
};

_vehicle_101 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12436.75, 12500.825, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_101 = _this;
  _this setDir 201.49579;
  _this setPos [12436.75, 12500.825, 3.0517578e-005];
};

_vehicle_102 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12445.096, 12497.614, 0.024856567], [], 0, "CAN_COLLIDE"];
  _vehicle_102 = _this;
  _this setDir 201.49579;
  _this setPos [12445.096, 12497.614, 0.024856567];
};

_vehicle_103 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12420.074, 12507.257, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_103 = _this;
  _this setDir 201.49579;
  _this setPos [12420.074, 12507.257, 3.0517578e-005];
};

_vehicle_104 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12428.42, 12504.047, 0.050247192], [], 0, "CAN_COLLIDE"];
  _vehicle_104 = _this;
  _this setDir 201.49579;
  _this setPos [12428.42, 12504.047, 0.050247192];
};

_vehicle_106 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12411.754, 12510.488, -0.041046143], [], 0, "CAN_COLLIDE"];
  _vehicle_106 = _this;
  _this setDir 201.49579;
  _this setPos [12411.754, 12510.488, -0.041046143];
};

_vehicle_108 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [12479.875, 12482.743, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_108 = _this;
  _this setDir 134.96294;
  _this setPos [12479.875, 12482.743, 4.5776367e-005];
};

_vehicle_109 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12204.423, 12573.081], [], 0, "CAN_COLLIDE"];
  _vehicle_109 = _this;
  _this setDir 201.37602;
  _this setPos [12204.423, 12573.081];
};

_vehicle_110 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_Barracks_L", [12218.57, 12576.011, -0.16107355], [], 0, "CAN_COLLIDE"];
  _vehicle_110 = _this;
  _this setDir 200.95523;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12218.57, 12576.011, -0.16107355];
};

_vehicle_111 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12196.047, 12576.304, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_111 = _this;
  _this setDir 201.37602;
  _this setPos [12196.047, 12576.304, 9.1552734e-005];
};

_vehicle_112 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12187.703, 12579.551, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_112 = _this;
  _this setDir 201.37602;
  _this setPos [12187.703, 12579.551, -1.5258789e-005];
};

_vehicle_113 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12179.318, 12582.771, 0.097839355], [], 0, "CAN_COLLIDE"];
  _vehicle_113 = _this;
  _this setDir 201.37602;
  _this setPos [12179.318, 12582.771, 0.097839355];
};

_vehicle_114 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12170.975, 12586.009, 0.11292783], [], 0, "CAN_COLLIDE"];
  _vehicle_114 = _this;
  _this setDir 201.37602;
  _this setPos [12170.975, 12586.009, 0.11292783];
};

_vehicle_115 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [12162.412, 12589.435, -0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_115 = _this;
  _this setDir -124.01613;
  _this setPos [12162.412, 12589.435, -0.0001373291];
};

_vehicle_116 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [12017.819, 12608.986, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_116 = _this;
  _this setDir 23.051617;
  _this setPos [12017.819, 12608.986, -1.5258789e-005];
};

_vehicle_117 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [12021.519, 12607.522, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_117 = _this;
  _this setDir 20.762421;
  _this setPos [12021.519, 12607.522, -6.1035156e-005];
};

_vehicle_118 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [12025.081, 12607.817], [], 0, "CAN_COLLIDE"];
  _vehicle_118 = _this;
  _this setDir -29.120304;
  _this setPos [12025.081, 12607.817];
};

_vehicle_119 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [12032.732, 12603.809, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_119 = _this;
  _this setDir 15.454932;
  _this setPos [12032.732, 12603.809, -1.5258789e-005];
};

_vehicle_120 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [12029.657, 12605.876, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_120 = _this;
  _this setDir 52.634918;
  _this setPos [12029.657, 12605.876, -1.5258789e-005];
};

_vehicle_121 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [12025.403, 12605.824], [], 0, "CAN_COLLIDE"];
  _vehicle_121 = _this;
  _this setDir -154.68631;
  _this setPos [12025.403, 12605.824];
};

_vehicle_122 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11965.002, 12705.239], [], 0, "CAN_COLLIDE"];
  _vehicle_122 = _this;
  _this setDir -160.89082;
  _this setPos [11965.002, 12705.239];
};

_vehicle_123 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11956.635, 12708.113, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_123 = _this;
  _this setDir -160.89082;
  _this setPos [11956.635, 12708.113, 1.5258789e-005];
};

_vehicle_124 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11948.238, 12710.982], [], 0, "CAN_COLLIDE"];
  _vehicle_124 = _this;
  _this setDir -160.89082;
  _this setPos [11948.238, 12710.982];
};

_vehicle_125 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11939.852, 12713.879, 0.010848999], [], 0, "CAN_COLLIDE"];
  _vehicle_125 = _this;
  _this setDir -160.89082;
  _this setPos [11939.852, 12713.879, 0.010848999];
};

_vehicle_128 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11914.307, 12722.583, -0.068496704], [], 0, "CAN_COLLIDE"];
  _vehicle_128 = _this;
  _this setDir -160.89082;
  _this setPos [11914.307, 12722.583, -0.068496704];
};

_vehicle_129 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11905.858, 12725.469, -0.085220337], [], 0, "CAN_COLLIDE"];
  _vehicle_129 = _this;
  _this setDir -160.89082;
  _this setPos [11905.858, 12725.469, -0.085220337];
};

_vehicle_130 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11897.412, 12728.338, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_130 = _this;
  _this setDir -160.89082;
  _this setPos [11897.412, 12728.338, 1.5258789e-005];
};

_vehicle_131 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11888.96, 12731.22, -0.015991211], [], 0, "CAN_COLLIDE"];
  _vehicle_131 = _this;
  _this setDir -160.89082;
  _this setPos [11888.96, 12731.22, -0.015991211];
};

_vehicle_132 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11880.492, 12734.114, -0.10820007], [], 0, "CAN_COLLIDE"];
  _vehicle_132 = _this;
  _this setDir -160.89082;
  _this setPos [11880.492, 12734.114, -0.10820007];
};

_vehicle_133 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11872.04, 12737, -0.08644104], [], 0, "CAN_COLLIDE"];
  _vehicle_133 = _this;
  _this setDir -160.89082;
  _this setPos [11872.04, 12737, -0.08644104];
};

_vehicle_134 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11863.645, 12739.899, -0.058670044], [], 0, "CAN_COLLIDE"];
  _vehicle_134 = _this;
  _this setDir -160.89082;
  _this setPos [11863.645, 12739.899, -0.058670044];
};

_vehicle_135 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11855.183, 12742.783, 0.022720337], [], 0, "CAN_COLLIDE"];
  _vehicle_135 = _this;
  _this setDir -160.89082;
  _this setPos [11855.183, 12742.783, 0.022720337];
};

_vehicle_136 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11846.718, 12745.681, -0.084503174], [], 0, "CAN_COLLIDE"];
  _vehicle_136 = _this;
  _this setDir -160.89082;
  _this setPos [11846.718, 12745.681, -0.084503174];
};

_vehicle_137 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11838.27, 12748.564, -0.10122681], [], 0, "CAN_COLLIDE"];
  _vehicle_137 = _this;
  _this setDir -160.89082;
  _this setPos [11838.27, 12748.564, -0.10122681];
};

_vehicle_138 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11829.808, 12751.475, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_138 = _this;
  _this setDir -160.89082;
  _this setPos [11829.808, 12751.475, 9.1552734e-005];
};

_vehicle_139 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11821.404, 12754.373, 0.027862549], [], 0, "CAN_COLLIDE"];
  _vehicle_139 = _this;
  _this setDir -160.89082;
  _this setPos [11821.404, 12754.373, 0.027862549];
};

_vehicle_140 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11812.947, 12757.259, 0.10925293], [], 0, "CAN_COLLIDE"];
  _vehicle_140 = _this;
  _this setDir -160.89082;
  _this setPos [11812.947, 12757.259, 0.10925293];
};

_vehicle_141 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11804.475, 12760.153, 0.0020294189], [], 0, "CAN_COLLIDE"];
  _vehicle_141 = _this;
  _this setDir -160.89082;
  _this setPos [11804.475, 12760.153, 0.0020294189];
};

_vehicle_142 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11796.029, 12763.038, -0.014694214], [], 0, "CAN_COLLIDE"];
  _vehicle_142 = _this;
  _this setDir -160.89082;
  _this setPos [11796.029, 12763.038, -0.014694214];
};

_vehicle_143 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11787.581, 12765.909, 0.070541382], [], 0, "CAN_COLLIDE"];
  _vehicle_143 = _this;
  _this setDir -160.89082;
  _this setPos [11787.581, 12765.909, 0.070541382];
};

_vehicle_144 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11779.131, 12768.788, 0.054534912], [], 0, "CAN_COLLIDE"];
  _vehicle_144 = _this;
  _this setDir -160.89082;
  _this setPos [11779.131, 12768.788, 0.054534912];
};

_vehicle_145 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11770.663, 12771.683, -0.0054683946], [], 0, "CAN_COLLIDE"];
  _vehicle_145 = _this;
  _this setDir -160.89082;
  _this setPos [11770.663, 12771.683, -0.0054683946];
};

_vehicle_146 = objNull;
if (true) then
{
  _this = createVehicle ["BRDMWreck", [11746.8, 12799.367, 0.051805809], [], 0, "CAN_COLLIDE"];
  _vehicle_146 = _this;
  _this setDir -61.079193;
  _this setPos [11746.8, 12799.367, 0.051805809];
};

_vehicle_147 = objNull;
if (true) then
{
  _this = createVehicle ["T72Wreck", [11763.075, 12775.559, 0.020723136], [], 0, "CAN_COLLIDE"];
  _vehicle_147 = _this;
  _this setDir -111.26676;
  _this setPos [11763.075, 12775.559, 0.020723136];
};

_vehicle_148 = objNull;
if (true) then
{
  _this = createVehicle ["T72WreckTurret", [11760.735, 12779.464, 0.0019788817], [], 0, "CAN_COLLIDE"];
  _vehicle_148 = _this;
  _this setDir -241.30351;
  _this setPos [11760.735, 12779.464, 0.0019788817];
};

_vehicle_149 = objNull;
if (true) then
{
  _this = createVehicle ["BMP2Wreck", [11744.654, 12786.727, -0.19047484], [], 0, "CAN_COLLIDE"];
  _vehicle_149 = _this;
  _this setDir -64.725662;
  _this setPos [11744.654, 12786.727, -0.19047484];
};

_vehicle_150 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_CraneCon", [11789.625, 12670.267, -0.048338853], [], 0, "CAN_COLLIDE"];
  _vehicle_150 = _this;
  _this setDir -21.809448;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11789.625, 12670.267, -0.048338853];
};

_vehicle_151 = objNull;
if (true) then
{
  _this = createVehicle ["Land_A_BuildingWIP", [11825.535, 12672.092, 0.15818799], [], 0, "CAN_COLLIDE"];
  _vehicle_151 = _this;
  _this setDir -161.15588;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11825.535, 12672.092, 0.15818799];
};

_vehicle_152 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Scaffolding", [11799.085, 12671.349, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_152 = _this;
  _this setDir 18.424351;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11799.085, 12671.349, -3.0517578e-005];
};

_vehicle_153 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Scaffolding", [11804.713, 12664.419, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_153 = _this;
  _this setDir -71.268326;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11804.713, 12664.419, 1.5258789e-005];
};

_vehicle_154 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [11799.214, 12661.58, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_154 = _this;
  _this setPos [11799.214, 12661.58, 3.0517578e-005];
};

_vehicle_155 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_Cargo1Bo_civil", [11830.128, 12649.901], [], 0, "CAN_COLLIDE"];
  _vehicle_155 = _this;
  _this setDir 72.82592;
  _this setPos [11830.128, 12649.901];
};

_vehicle_156 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_GContainer_Big", [11803.448, 12661.015], [], 0, "CAN_COLLIDE"];
  _vehicle_156 = _this;
  _this setDir 11.69906;
  _this setPos [11803.448, 12661.015];
};

_vehicle_157 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled_heap", [11802.461, 12654.833, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_157 = _this;
  _this setPos [11802.461, 12654.833, 6.1035156e-005];
};

_vehicle_158 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_palletsfoiled", [11798.517, 12656.91], [], 0, "CAN_COLLIDE"];
  _vehicle_158 = _this;
  _this setDir 28.247898;
  _this setPos [11798.517, 12656.91];
};

_vehicle_159 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [11797.803, 12684.618, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_159 = _this;
  _this setDir 107.40134;
  _this setPos [11797.803, 12684.618, 1.5258789e-005];
};

_vehicle_160 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Toilet", [11797.328, 12683.045, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_160 = _this;
  _this setDir 110.18749;
  _this setPos [11797.328, 12683.045, -3.0517578e-005];
};

_vehicle_161 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [11787.915, 12681.357], [], 0, "CAN_COLLIDE"];
  _vehicle_161 = _this;
  _this setDir 50.819649;
  _this setPos [11787.915, 12681.357];
};

_vehicle_162 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [11782.96, 12682.941], [], 0, "CAN_COLLIDE"];
  _vehicle_162 = _this;
  _this setPos [11782.96, 12682.941];
};

_vehicle_163 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [11783.406, 12678.028, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_163 = _this;
  _this setDir -63.969795;
  _this setPos [11783.406, 12678.028, 1.5258789e-005];
};

_vehicle_164 = objNull;
if (true) then
{
  _this = createVehicle ["Misc_concrete_High", [11780.035, 12673.856, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_164 = _this;
  _this setPos [11780.035, 12673.856, -3.0517578e-005];
};

_vehicle_165 = objNull;
if (true) then
{
  _this = createVehicle ["EntranceGate_EP1", [11783.276, 12640.192, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_165 = _this;
  _this setDir 45.318695;
  _this setPos [11783.276, 12640.192, -1.5258789e-005];
};

_vehicle_166 = objNull;
if (true) then
{
  _this = createVehicle ["PowerGenerator", [11801.561, 12687.669, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_166 = _this;
  _this setDir 108.02715;
  _this setPos [11801.561, 12687.669, -1.5258789e-005];
};

_vehicle_167 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11789.63, 12635.876, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_167 = _this;
  _this setDir 5.9928374;
  _this setPos [11789.63, 12635.876, -1.5258789e-005];
};

_vehicle_168 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11793.529, 12635.188, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_168 = _this;
  _this setDir 13.599894;
  _this setPos [11793.529, 12635.188, -4.5776367e-005];
};

_vehicle_169 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11797.296, 12633.915, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_169 = _this;
  _this setDir 24.353485;
  _this setPos [11797.296, 12633.915, 0.00015258789];
};

_vehicle_170 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11800.809, 12632.428, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_170 = _this;
  _this setDir 21.248959;
  _this setPos [11800.809, 12632.428, 0.00010681152];
};

_vehicle_171 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11804.513, 12630.988, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_171 = _this;
  _this setDir 21.248959;
  _this setPos [11804.513, 12630.988, 4.5776367e-005];
};

_vehicle_172 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11808.313, 12630.229, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_172 = _this;
  _this setDir 1.1909564;
  _this setPos [11808.313, 12630.229, 0.00018310547];
};

_vehicle_173 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11812.289, 12630.149, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_173 = _this;
  _this setDir 1.1909564;
  _this setPos [11812.289, 12630.149, 0.0001373291];
};

_vehicle_174 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11816.151, 12629.417, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_174 = _this;
  _this setDir 20.273176;
  _this setPos [11816.151, 12629.417, 7.6293945e-005];
};

_vehicle_175 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11820.092, 12630.732], [], 0, "CAN_COLLIDE"];
  _vehicle_175 = _this;
  _this setDir -20.987545;
  _this setPos [11820.092, 12630.732];
};

_vehicle_176 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11823.796, 12632.162, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_176 = _this;
  _this setDir -20.987545;
  _this setPos [11823.796, 12632.162, -4.5776367e-005];
};

_vehicle_177 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11827.509, 12633.595, -0.02659913], [], 0, "CAN_COLLIDE"];
  _vehicle_177 = _this;
  _this setDir -20.987545;
  _this setPos [11827.509, 12633.595, -0.02659913];
};

_vehicle_178 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11831.204, 12635.032, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_178 = _this;
  _this setDir -20.987545;
  _this setPos [11831.204, 12635.032, -4.5776367e-005];
};

_vehicle_179 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11834.908, 12636.459, 0.022878662], [], 0, "CAN_COLLIDE"];
  _vehicle_179 = _this;
  _this setDir -20.987545;
  _this setPos [11834.908, 12636.459, 0.022878662];
};

_vehicle_180 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11838.622, 12637.896, 0.051071167], [], 0, "CAN_COLLIDE"];
  _vehicle_180 = _this;
  _this setDir -20.987545;
  _this setPos [11838.622, 12637.896, 0.051071167];
};

_vehicle_181 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11841.937, 12639.964, 0.036608763], [], 0, "CAN_COLLIDE"];
  _vehicle_181 = _this;
  _this setDir -42.600822;
  _this setPos [11841.937, 12639.964, 0.036608763];
};

_vehicle_182 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11844.856, 12642.664, 0.040848423], [], 0, "CAN_COLLIDE"];
  _vehicle_182 = _this;
  _this setDir -43.633698;
  _this setPos [11844.856, 12642.664, 0.040848423];
};

_vehicle_183 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11847.773, 12645.357, 0.031575076], [], 0, "CAN_COLLIDE"];
  _vehicle_183 = _this;
  _this setDir -42.600822;
  _this setPos [11847.773, 12645.357, 0.031575076];
};

_vehicle_184 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11849.934, 12648.551, -0.019389275], [], 0, "CAN_COLLIDE"];
  _vehicle_184 = _this;
  _this setDir -70.067917;
  _this setPos [11849.934, 12648.551, -0.019389275];
};

_vehicle_185 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11851.274, 12652.282, -0.068187878], [], 0, "CAN_COLLIDE"];
  _vehicle_185 = _this;
  _this setDir -70.067917;
  _this setPos [11851.274, 12652.282, -0.068187878];
};

_vehicle_186 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11852.142, 12656.388, -0.017889105], [], 0, "CAN_COLLIDE"];
  _vehicle_186 = _this;
  _this setDir -51.622784;
  _this setPos [11852.142, 12656.388, -0.017889105];
};

_vehicle_187 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11853.916, 12659.821, -0.059619144], [], 0, "CAN_COLLIDE"];
  _vehicle_187 = _this;
  _this setDir -73.88549;
  _this setPos [11853.916, 12659.821, -0.059619144];
};

_vehicle_188 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11855.067, 12663.608, -0.023554925], [], 0, "CAN_COLLIDE"];
  _vehicle_188 = _this;
  _this setDir -72.561142;
  _this setPos [11855.067, 12663.608, -0.023554925];
};

_vehicle_189 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11856.229, 12667.408, -0.011895487], [], 0, "CAN_COLLIDE"];
  _vehicle_189 = _this;
  _this setDir -73.906044;
  _this setPos [11856.229, 12667.408, -0.011895487];
};

_vehicle_190 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11857.009, 12671.235, -0.058929443], [], 0, "CAN_COLLIDE"];
  _vehicle_190 = _this;
  _this setDir -82.706223;
  _this setPos [11857.009, 12671.235, -0.058929443];
};

_vehicle_191 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11856.898, 12675.149, -0.067434564], [], 0, "CAN_COLLIDE"];
  _vehicle_191 = _this;
  _this setDir -100.79345;
  _this setPos [11856.898, 12675.149, -0.067434564];
};

_vehicle_192 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11856.145, 12679.048, -0.048476979], [], 0, "CAN_COLLIDE"];
  _vehicle_192 = _this;
  _this setDir -100.79345;
  _this setPos [11856.145, 12679.048, -0.048476979];
};

_vehicle_193 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11854.784, 12682.666, -0.059870251], [], 0, "CAN_COLLIDE"];
  _vehicle_193 = _this;
  _this setDir -120.85144;
  _this setPos [11854.784, 12682.666, -0.059870251];
};

_vehicle_194 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11852.737, 12686.085, -0.059996083], [], 0, "CAN_COLLIDE"];
  _vehicle_194 = _this;
  _this setDir -120.85144;
  _this setPos [11852.737, 12686.085, -0.059996083];
};

_vehicle_195 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11851.129, 12689.709, -0.055355601], [], 0, "CAN_COLLIDE"];
  _vehicle_195 = _this;
  _this setDir -106.71984;
  _this setPos [11851.129, 12689.709, -0.055355601];
};

_vehicle_196 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11847.747, 12691.979, 0.08265686], [], 0, "CAN_COLLIDE"];
  _vehicle_196 = _this;
  _this setDir -158.24057;
  _this setPos [11847.747, 12691.979, 0.08265686];
};

_vehicle_197 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11844.062, 12693.429, 0.063537598], [], 0, "CAN_COLLIDE"];
  _vehicle_197 = _this;
  _this setDir -158.24057;
  _this setPos [11844.062, 12693.429, 0.063537598];
};

_vehicle_198 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11840.349, 12694.911, 0.038452551], [], 0, "CAN_COLLIDE"];
  _vehicle_198 = _this;
  _this setDir -158.24057;
  _this setPos [11840.349, 12694.911, 0.038452551];
};

_vehicle_199 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11836.671, 12696.35, 0.025268555], [], 0, "CAN_COLLIDE"];
  _vehicle_199 = _this;
  _this setDir -158.24057;
  _this setPos [11836.671, 12696.35, 0.025268555];
};

_vehicle_200 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11832.984, 12697.815, 0.008682251], [], 0, "CAN_COLLIDE"];
  _vehicle_200 = _this;
  _this setDir -158.24057;
  _this setPos [11832.984, 12697.815, 0.008682251];
};

_vehicle_201 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11829.281, 12699.286, -0.005659325], [], 0, "CAN_COLLIDE"];
  _vehicle_201 = _this;
  _this setDir -158.24057;
  _this setPos [11829.281, 12699.286, -0.005659325];
};

_vehicle_202 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11825.55, 12700.21, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_202 = _this;
  _this setDir -174.435;
  _this setPos [11825.55, 12700.21, 3.0517578e-005];
};

_vehicle_203 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11821.606, 12700.571, -0.019088745], [], 0, "CAN_COLLIDE"];
  _vehicle_203 = _this;
  _this setDir -174.435;
  _this setPos [11821.606, 12700.571, -0.019088745];
};

_vehicle_204 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11817.626, 12700.96, -0.027290411], [], 0, "CAN_COLLIDE"];
  _vehicle_204 = _this;
  _this setDir -174.435;
  _this setPos [11817.626, 12700.96, -0.027290411];
};

_vehicle_205 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11813.692, 12701.313, -0.057357788], [], 0, "CAN_COLLIDE"];
  _vehicle_205 = _this;
  _this setDir -174.435;
  _this setPos [11813.692, 12701.313, -0.057357788];
};

_vehicle_206 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11809.74, 12701.692, -0.073944092], [], 0, "CAN_COLLIDE"];
  _vehicle_206 = _this;
  _this setDir -174.435;
  _this setPos [11809.74, 12701.692, -0.073944092];
};

_vehicle_207 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11805.775, 12702.079, -0.061743036], [], 0, "CAN_COLLIDE"];
  _vehicle_207 = _this;
  _this setDir -174.435;
  _this setPos [11805.775, 12702.079, -0.061743036];
};

_vehicle_208 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11802.326, 12700.46, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_208 = _this;
  _this setDir -188.2627;
  _this setPos [11802.326, 12700.46, 9.1552734e-005];
};

_vehicle_209 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11798.742, 12699.097, -0.01902771], [], 0, "CAN_COLLIDE"];
  _vehicle_209 = _this;
  _this setDir -213.03188;
  _this setPos [11798.742, 12699.097, -0.01902771];
};

_vehicle_210 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11795.393, 12696.903, 0.013031006], [], 0, "CAN_COLLIDE"];
  _vehicle_210 = _this;
  _this setDir -213.03188;
  _this setPos [11795.393, 12696.903, 0.013031006];
};

_vehicle_211 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11791.866, 12695.136, -0.057296753], [], 0, "CAN_COLLIDE"];
  _vehicle_211 = _this;
  _this setDir -199.77258;
  _this setPos [11791.866, 12695.136, -0.057296753];
};

_vehicle_212 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11788.173, 12693.782, -0.073883057], [], 0, "CAN_COLLIDE"];
  _vehicle_212 = _this;
  _this setDir -199.25146;
  _this setPos [11788.173, 12693.782, -0.073883057];
};

_vehicle_213 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11784.404, 12692.468, -0.022720337], [], 0, "CAN_COLLIDE"];
  _vehicle_213 = _this;
  _this setDir -199.25146;
  _this setPos [11784.404, 12692.468, -0.022720337];
};

_vehicle_214 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11777.864, 12688.166, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_214 = _this;
  _this setDir -217.64816;
  _this setPos [11777.864, 12688.166, 6.1035156e-005];
};

_vehicle_215 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11775.59, 12685.137, 0.025894165], [], 0, "CAN_COLLIDE"];
  _vehicle_215 = _this;
  _this setDir -247.1299;
  _this setPos [11775.59, 12685.137, 0.025894165];
};

_vehicle_216 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11781.009, 12690.599, 0.016647339], [], 0, "CAN_COLLIDE"];
  _vehicle_216 = _this;
  _this setDir -217.64816;
  _this setPos [11781.009, 12690.599, 0.016647339];
};

_vehicle_217 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11774.252, 12681.371, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_217 = _this;
  _this setDir -254.27341;
  _this setPos [11774.252, 12681.371, 0.00015258789];
};

_vehicle_218 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11774.447, 12677.245, -0.083724976], [], 0, "CAN_COLLIDE"];
  _vehicle_218 = _this;
  _this setDir -249.87979;
  _this setPos [11774.447, 12677.245, -0.083724976];
};

_vehicle_219 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11773.489, 12673.497, -0.13300626], [], 0, "CAN_COLLIDE"];
  _vehicle_219 = _this;
  _this setDir -261.69934;
  _this setPos [11773.489, 12673.497, -0.13300626];
};

_vehicle_220 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11773.574, 12669.625, -0.13723697], [], 0, "CAN_COLLIDE"];
  _vehicle_220 = _this;
  _this setDir -280.09598;
  _this setPos [11773.574, 12669.625, -0.13723697];
};

_vehicle_221 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11774.28, 12665.709, -0.10897364], [], 0, "CAN_COLLIDE"];
  _vehicle_221 = _this;
  _this setDir -280.09598;
  _this setPos [11774.28, 12665.709, -0.10897364];
};

_vehicle_222 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11779.044, 12646.578, 0.0013627075], [], 0, "CAN_COLLIDE"];
  _vehicle_222 = _this;
  _this setDir -273.02536;
  _this setPos [11779.044, 12646.578, 0.0013627075];
};

_vehicle_223 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11777.712, 12658.837, -0.058366194], [], 0, "CAN_COLLIDE"];
  _vehicle_223 = _this;
  _this setDir -317.78488;
  _this setPos [11777.712, 12658.837, -0.058366194];
};

_vehicle_224 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11775.451, 12661.999, -0.10771055], [], 0, "CAN_COLLIDE"];
  _vehicle_224 = _this;
  _this setDir -293.26572;
  _this setPos [11775.451, 12661.999, -0.10771055];
};

_vehicle_225 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11778.771, 12650.553, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_225 = _this;
  _this setDir -274.60635;
  _this setPos [11778.771, 12650.553, 1.5258789e-005];
};

_vehicle_226 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11778.433, 12654.519, -0.0057983398], [], 0, "CAN_COLLIDE"];
  _vehicle_226 = _this;
  _this setDir -274.60635;
  _this setPos [11778.433, 12654.519, -0.0057983398];
};

_vehicle_227 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2", [11833.525, 12637.568, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_227 = _this;
  _this setDir -20.422377;
  _this setPos [11833.525, 12637.568, -4.5776367e-005];
};

_vehicle_228 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bouda2_vnitrek", [11821.879, 12635.354, -3.0513853e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_228 = _this;
  _this setDir 249.23822;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11821.879, 12635.354, -3.0513853e-005];
};

_vehicle_229 = objNull;
if (true) then
{
  _this = createVehicle ["Land_bouda_plech", [11779.563, 12655.037, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_229 = _this;
  _this setDir 174.98196;
  _this setPos [11779.563, 12655.037, 6.1035156e-005];
};

_vehicle_230 = objNull;
if (true) then
{
  _this = createVehicle ["Land_GuardShed", [11785.895, 12636.721, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_230 = _this;
  _this setDir -315.91669;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11785.895, 12636.721, 3.0517578e-005];
};

_vehicle_231 = objNull;
if (true) then
{
  _this = createVehicle ["ZavoraAnim", [11785.439, 12638.976, 0.33855602], [], 0, "CAN_COLLIDE"];
  _vehicle_231 = _this;
  _this setDir 44.459679;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11785.439, 12638.976, 0.33855602];
};

_vehicle_232 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Dirthump01", [11804.566, 12635.669], [], 0, "CAN_COLLIDE"];
  _vehicle_232 = _this;
  _this setDir 17.642818;
  _this setPos [11804.566, 12635.669];
};

_vehicle_233 = objNull;
if (true) then
{
  _this = createVehicle ["USMC_WarfareBFieldhHospital", [12545.487, 12473.409, -0.11185303], [], 0, "CAN_COLLIDE"];
  _vehicle_233 = _this;
  _this setDir -5.5876584;
  _this setPos [12545.487, 12473.409, -0.11185303];
};

_vehicle_234 = objNull;
if (true) then
{
  _this = createVehicle ["CDF_WarfareBFieldhHospital", [12543.174, 12488.751, -0.11948344], [], 0, "CAN_COLLIDE"];
  _vehicle_234 = _this;
  _this setDir -4.6897645;
  _this setPos [12543.174, 12488.751, -0.11948344];
};

_vehicle_235 = objNull;
if (true) then
{
  _this = createVehicle ["HeliHRescue", [12520.059, 12469.896, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_235 = _this;
  _this setPos [12520.059, 12469.896, -1.5258789e-005];
};

_vehicle_236 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [12365.198, 12540.391], [], 0, "CAN_COLLIDE"];
  _vehicle_236 = _this;
  _this setDir 200.26018;
  _this setPos [12365.198, 12540.391];
};

_vehicle_237 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [12370.809, 12537.764, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_237 = _this;
  _this setDir 199.31815;
  _this setPos [12370.809, 12537.764, -7.6293945e-005];
};

_vehicle_238 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [12376.958, 12535.76, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_238 = _this;
  _this setDir 198.3436;
  _this setPos [12376.958, 12535.76, -3.0517578e-005];
};

_vehicle_239 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [12096.028, 12614.801, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_239 = _this;
  _this setDir -223.32716;
  _this setPos [12096.028, 12614.801, -0.00012207031];
};

_vehicle_240 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [12082.937, 12619.553, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_240 = _this;
  _this setDir -118.73624;
  _this setPos [12082.937, 12619.553, -9.1552734e-005];
};

_vehicle_241 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_Workshop01_01", [12141.711, 12609.139, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_241 = _this;
  _this setDir 109.66722;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12141.711, 12609.139, -1.5258789e-005];
};

_vehicle_242 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [12412.474, 12654.894, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_242 = _this;
  _this setDir 199.37933;
  _this setPos [12412.474, 12654.894, 3.0517578e-005];
};

_vehicle_243 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_12", [12406.355, 12637.3], [], 0, "CAN_COLLIDE"];
  _vehicle_243 = _this;
  _this setDir 19.028255;
  _this setPos [12406.355, 12637.3];
};

_vehicle_244 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [12404.373, 12631.46, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_244 = _this;
  _this setDir 18.798361;
  _this setPos [12404.373, 12631.46, -1.5258789e-005];
};

_vehicle_245 = objNull;
if (true) then
{
  _this = createVehicle ["Mi8Wreck", [12526.165, 12492.773, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_245 = _this;
  _this setDir -146.28911;
  _this setPos [12526.165, 12492.773, 1.5258789e-005];
};

_vehicle_247 = objNull;
if (true) then
{
  _this = createVehicle ["Land_a_stationhouse", [12372.522, 12526.902, 0.076295026], [], 0, "CAN_COLLIDE"];
  _vehicle_247 = _this;
  _this setDir -158.90849;
  _this setPos [12372.522, 12526.902, 0.076295026];
};

_vehicle_248 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12074.838, 12623.102, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_248 = _this;
  _this setDir 23.374758;
  _this setPos [12074.838, 12623.102, 0.00010681152];
};

_vehicle_249 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_fagus2W", [12165.01, 12762.594, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_249 = _this;
  _this setDir -103.87305;
  _this setPos [12165.01, 12762.594, 7.6293945e-005];
};

_vehicle_250 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Shed_Ind02", [12235.176, 12727.191, 0.28690514], [], 0, "CAN_COLLIDE"];
  _vehicle_250 = _this;
  _this setDir 291.61951;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12235.176, 12727.191, 0.28690514];
};

_vehicle_251 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [12556.335, 12492.215, -0.020375844], [], 0, "CAN_COLLIDE"];
  _vehicle_251 = _this;
  _this setDir -192.27382;
  _this setPos [12556.335, 12492.215, -0.020375844];
};

_vehicle_252 = objNull;
if (true) then
{
  _this = createVehicle ["MASH", [12564.981, 12492.827, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_252 = _this;
  _this setDir -175.38777;
  _this setPos [12564.981, 12492.827, 1.5258789e-005];
};

_vehicle_253 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12247.194, 12727.754, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_253 = _this;
  _this setDir 22.844648;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12247.194, 12727.754, 4.5776367e-005];
};

_vehicle_254 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_22_50", [12244.532, 12725.916, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_254 = _this;
  _this setDir 111.1226;
  _this setPos [12244.532, 12725.916, 4.5776367e-005];
};

_vehicle_255 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [12265.492, 12711.186], [], 0, "CAN_COLLIDE"];
  _vehicle_255 = _this;
  _this setDir -46.269531;
  _this setPos [12265.492, 12711.186];
};

_vehicle_256 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_60_10", [12213.724, 12728.013, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_256 = _this;
  _this setDir 49.612514;
  _this setPos [12213.724, 12728.013, -0.00012207031];
};

_vehicle_257 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [12208.937, 12724.057, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_257 = _this;
  _this setDir 50.30402;
  _this setPos [12208.937, 12724.057, -3.0517578e-005];
};

_vehicle_258 = objNull;
if (true) then
{
  _this = createVehicle ["HMMWVWreck", [12255.958, 12725.676, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_258 = _this;
  _this setDir 43.664757;
  _this setPos [12255.958, 12725.676, 1.5258789e-005];
};

_vehicle_259 = objNull;
if (true) then
{
  _this = createVehicle ["Body2", [12255.75, 12721.315, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_259 = _this;
  _this setPos [12255.75, 12721.315, 7.6293945e-005];
};

_vehicle_260 = objNull;
if (true) then
{
  _this = createVehicle ["Body1", [12253.587, 12728.546, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_260 = _this;
  _this setPos [12253.587, 12728.546, 1.5258789e-005];
};

_vehicle_261 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_BoardsPack1", [12208.406, 12740.6, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_261 = _this;
  _this setDir 103.79088;
  _this setPos [12208.406, 12740.6, 4.5776367e-005];
};

_vehicle_262 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_BoardsPack2", [12205.09, 12736.87, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_262 = _this;
  _this setDir 19.311409;
  _this setPos [12205.09, 12736.87, 6.1035156e-005];
};

_vehicle_263 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [12203.606, 12733.148, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_263 = _this;
  _this setDir 19.265869;
  _this setPos [12203.606, 12733.148, -3.0517578e-005];
};

_vehicle_264 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock", [12221.558, 12733.871, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_264 = _this;
  _this setDir 3.8251584;
  _this setPos [12221.558, 12733.871, 6.1035156e-005];
};

_vehicle_265 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [12216.235, 12733.309, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_265 = _this;
  _this setDir -16.010925;
  _this setPos [12216.235, 12733.309, 1.5258789e-005];
};

_vehicle_266 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_Stripes", [12211.712, 12730.773, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_266 = _this;
  _this setDir -38.58308;
  _this setPos [12211.712, 12730.773, -4.5776367e-005];
};

_vehicle_267 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Coil_EP1", [12218.892, 12736.444, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_267 = _this;
  _this setPos [12218.892, 12736.444, 1.5258789e-005];
};

_vehicle_268 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [12201.858, 12727.951, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_268 = _this;
  _this setDir -68.741653;
  _this setPos [12201.858, 12727.951, -1.5258789e-005];
};

_vehicle_269 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [11916.526, 12821.226, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_269 = _this;
  _this setDir 17.26042;
  _this setPos [11916.526, 12821.226, 4.5776367e-005];
};

_vehicle_270 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [11978.114, 12798.036], [], 0, "CAN_COLLIDE"];
  _vehicle_270 = _this;
  _this setDir 22.576736;
  _this setPos [11978.114, 12798.036];
};

_vehicle_271 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [11923.262, 12853.991, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_271 = _this;
  _this setDir 199.91275;
  _this setPos [11923.262, 12853.991, -3.0517578e-005];
};

_vehicle_272 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [11985.08, 12830.293, -0.10917664], [], 0, "CAN_COLLIDE"];
  _vehicle_272 = _this;
  _this setDir 197.47488;
  _this setPos [11985.08, 12830.293, -0.10917664];
};

_vehicle_273 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [11698.39, 12604.738, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_273 = _this;
  _this setDir 18.30393;
  _this setPos [11698.39, 12604.738, 0.00010681152];
};

_vehicle_274 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_30_25", [11700.258, 12610.603, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_274 = _this;
  _this setDir 18.678049;
  _this setPos [11700.258, 12610.603, -0.00016784668];
};

_vehicle_275 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_12", [11740.768, 12635.451, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_275 = _this;
  _this setDir 104.41398;
  _this setPos [11740.768, 12635.451, 4.5776367e-005];
};

_vehicle_276 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_12", [11707.369, 12621.334, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_276 = _this;
  _this setDir 48.057529;
  _this setPos [11707.369, 12621.334, 0.00015258789];
};

_vehicle_277 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_6konec", [11787.744, 12645.639, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_277 = _this;
  _this setDir 229.56911;
  _this setPos [11787.744, 12645.639, 9.1552734e-005];
};

_vehicle_278 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_30_25", [11716.595, 12629.664, -0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_278 = _this;
  _this setDir 47.616161;
  _this setPos [11716.595, 12629.664, -0.0001373291];
};

_vehicle_279 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_30_25", [11727.996, 12635.615, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_279 = _this;
  _this setDir 76.333481;
  _this setPos [11727.996, 12635.615, 9.1552734e-005];
};

_vehicle_280 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_30_25", [11765.783, 12632.662, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_280 = _this;
  _this setDir 254.10313;
  _this setPos [11765.783, 12632.662, -1.5258789e-005];
};

_vehicle_281 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_mud_22_50", [11782.991, 12641.72, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_281 = _this;
  _this setDir -129.24756;
  _this setPos [11782.991, 12641.72, 4.5776367e-005];
};

_vehicle_282 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_RoadBarrier_light", [11777.538, 12643.152, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_282 = _this;
  _this setDir 195.09544;
  _this setPos [11777.538, 12643.152, -4.5776367e-005];
};

_vehicle_283 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_RoadBarrier_light", [11784.094, 12637.785, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_283 = _this;
  _this setDir 73.239494;
  _this setPos [11784.094, 12637.785, -4.5776367e-005];
};

_vehicle_284 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [12199.734, 12724.354, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_284 = _this;
  _this setDir 102.00893;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12199.734, 12724.354, -4.5776367e-005];
};

_vehicle_285 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [12222.146, 12725.801, -0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_285 = _this;
  _this setDir 200.19844;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12222.146, 12725.801, -0.0001373291];
};

_vehicle_286 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [11778.335, 12643.328], [], 0, "CAN_COLLIDE"];
  _vehicle_286 = _this;
  _this setDir 157.90182;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11778.335, 12643.328];
};

_vehicle_287 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [11800.137, 12688.209, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_287 = _this;
  _this setDir 19.302504;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11800.137, 12688.209, 0.00012207031];
};

_vehicle_288 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [12236.498, 12592.169], [], 0, "CAN_COLLIDE"];
  _vehicle_288 = _this;
  _this setDir 20.419773;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12236.498, 12592.169];
};

_vehicle_289 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [12287.696, 12568.994, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_289 = _this;
  _this setDir 12.692901;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12287.696, 12568.994, 4.5776367e-005];
};

_vehicle_290 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [12405.933, 12649.588, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_290 = _this;
  _this setDir 58.763447;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12405.933, 12649.588, -3.0517578e-005];
};

_vehicle_291 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [12401.272, 12664.828], [], 0, "CAN_COLLIDE"];
  _vehicle_291 = _this;
  _this setDir 200.94464;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12401.272, 12664.828];
};

_vehicle_292 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [12582.093, 12500.965, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_292 = _this;
  _this setDir -9.7190428;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12582.093, 12500.965, -1.5258789e-005];
};

_vehicle_293 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_artillery_nest", [12569.079, 12463.105, -0.2985881], [], 0, "CAN_COLLIDE"];
  _vehicle_293 = _this;
  _this setDir -187.72838;
  _this setPos [12569.079, 12463.105, -0.2985881];
};

_vehicle_294 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fort_rampart", [12569.897, 12472.909, -0.23613667], [], 0, "CAN_COLLIDE"];
  _vehicle_294 = _this;
  _this setDir -163.48183;
  _this setPos [12569.897, 12472.909, -0.23613667];
};

_vehicle_295 = objNull;
if (true) then
{
  _this = createVehicle ["Mass_grave_DZ", [12571.364, 12469.809, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_295 = _this;
  _this setDir -70.021255;
  _this setPos [12571.364, 12469.809, 0.00015258789];
};

_vehicle_296 = objNull;
if (true) then
{
  _this = createVehicle ["Mass_grave", [12566.517, 12465.474, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_296 = _this;
  _this setDir -4.3954954;
  _this setPos [12566.517, 12465.474, -1.5258789e-005];
};

_vehicle_297 = objNull;
if (true) then
{
  _this = createVehicle ["Mass_grave", [12571.227, 12465.748, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_297 = _this;
  _this setDir -116.82839;
  _this setPos [12571.227, 12465.748, 1.5258789e-005];
};

_vehicle_298 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Danger", [12564.827, 12473.454, 0.15499379], [], 0, "CAN_COLLIDE"];
  _vehicle_298 = _this;
  _this setDir -50.955654;
  _this setPos [12564.827, 12473.454, 0.15499379];
};

_vehicle_299 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_Danger", [12562.516, 12470.257, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_299 = _this;
  _this setDir -45.372917;
  _this setPos [12562.516, 12470.257, 9.1552734e-005];
};

_vehicle_300 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Vysilac_FM", [12277.723, 12562.562, 9.1213951], [], 0, "CAN_COLLIDE"];
  _vehicle_300 = _this;
  _this setDir -158.13321;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12277.723, 12562.562, 9.1213951];
};

_vehicle_301 = objNull;
if (true) then
{
  _this = createVehicle ["LightPole_DZ", [12371.756, 12531.462], [], 0, "CAN_COLLIDE"];
  _vehicle_301 = _this;
  _this setDir 12.692901;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12371.756, 12531.462];
};

_vehicle_302 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [11994.284, 12731.431, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_302 = _this;
  _this setDir 109.10597;
  _this setPos [11994.284, 12731.431, -4.5776367e-005];
};

_vehicle_303 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12069.904, 12705.257, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_303 = _this;
  _this setDir 109.10597;
  _this setPos [12069.904, 12705.257, 6.1035156e-005];
};

_vehicle_304 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_dirt_3", [11918.719, 12757.643, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_304 = _this;
  _this setDir 109.13011;
  _this setPos [11918.719, 12757.643, 9.1552734e-005];
};

_vehicle_305 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_dirt_1", [11843.122, 12783.674], [], 0, "CAN_COLLIDE"];
  _vehicle_305 = _this;
  _this setDir 469.00143;
  _this setPos [11843.122, 12783.674];
};

_vehicle_306 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_end33", [11824.08, 12790.227, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_306 = _this;
  _this setDir -71.060547;
  _this setPos [11824.08, 12790.227, -1.5258789e-005];
};

_vehicle_307 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12145.453, 12679.045, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_307 = _this;
  _this setDir 109.10597;
  _this setPos [12145.453, 12679.045, 9.1552734e-005];
};

_vehicle_308 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_dirt_1", [12485.607, 12561.533, 0.096786499], [], 0, "CAN_COLLIDE"];
  _vehicle_308 = _this;
  _this setDir 288.96396;
  _this setPos [12485.607, 12561.533, 0.096786499];
};

_vehicle_309 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_dirt_3", [12409.987, 12587.503, 0.063964844], [], 0, "CAN_COLLIDE"];
  _vehicle_309 = _this;
  _this setDir -70.907333;
  _this setPos [12409.987, 12587.503, 0.063964844];
};

_vehicle_310 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_end33", [12504.548, 12555.081, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_310 = _this;
  _this setDir 108.88177;
  _this setPos [12504.548, 12555.081, 0.00018310547];
};

_vehicle_311 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main", [12221.009, 12652.953, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_311 = _this;
  _this setDir 109.10597;
  _this setPos [12221.009, 12652.953, -3.0517578e-005];
};

_vehicle_312 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_main_40", [12314.485, 12620.838], [], 0, "CAN_COLLIDE"];
  _vehicle_312 = _this;
  _this setDir 109.14404;
  _this setPos [12314.485, 12620.838];
};

_vehicle_313 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_beton_end1", [11835.083, 12817.467], [], 0, "CAN_COLLIDE"];
  _vehicle_313 = _this;
  _this setDir -251.07768;
  _this setPos [11835.083, 12817.467];
};

_vehicle_314 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_beton_end2", [11942.832, 12780.762, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_314 = _this;
  _this setDir 108.99876;
  _this setPos [11942.832, 12780.762, 9.1552734e-005];
};

_vehicle_315 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_runway_beton", [11931.762, 12795.093], [], 0, "CAN_COLLIDE"];
  _vehicle_315 = _this;
  _this setDir -71.175697;
  _this setPos [11931.762, 12795.093];
};

_vehicle_316 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11797.747, 12813.194, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_316 = _this;
  _this setPos [11797.747, 12813.194, -7.6293945e-005];
};

_vehicle_317 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11793.929, 12801.474, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_317 = _this;
  _this setPos [11793.929, 12801.474, -1.5258789e-005];
};

_vehicle_318 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11789.341, 12788.236, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_318 = _this;
  _this setPos [11789.341, 12788.236, -6.1035156e-005];
};

_vehicle_319 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11805.961, 12782.3, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_319 = _this;
  _this setPos [11805.961, 12782.3, -3.0517578e-005];
};

_vehicle_320 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11805.526, 12796.699, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_320 = _this;
  _this setPos [11805.526, 12796.699, -1.5258789e-005];
};

_vehicle_321 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11809.319, 12807.674, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_321 = _this;
  _this setPos [11809.319, 12807.674, -3.0517578e-005];
};

_vehicle_322 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11796.004, 12778.935, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_322 = _this;
  _this setPos [11796.004, 12778.935, 0];
};

_vehicle_323 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11829.965, 12807.063, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_323 = _this;
  _this setPos [11829.965, 12807.063, -3.0517578e-005];
};

_vehicle_324 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11820.096, 12808.847, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_324 = _this;
  _this setPos [11820.096, 12808.847, 1.5258789e-005];
};

_vehicle_325 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11815.629, 12794.712, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_325 = _this;
  _this setPos [11815.629, 12794.712, -1.5258789e-005];
};

_vehicle_326 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11831.657, 12789.864, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_326 = _this;
  _this setPos [11831.657, 12789.864, -4.5776367e-005];
};

_vehicle_327 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11815.776, 12777.66, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_327 = _this;
  _this setPos [11815.776, 12777.66, -6.1035156e-005];
};

_vehicle_328 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11830.104, 12772.413, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_328 = _this;
  _this setPos [11830.104, 12772.413, 0];
};

_vehicle_329 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11842.492, 12768.378, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_329 = _this;
  _this setPos [11842.492, 12768.378, -9.1552734e-005];
};

_vehicle_330 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11857.532, 12763.723, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_330 = _this;
  _this setPos [11857.532, 12763.723, -1.5258789e-005];
};

_vehicle_331 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11872.316, 12759.362, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_331 = _this;
  _this setPos [11872.316, 12759.362, 7.6293945e-005];
};

_vehicle_332 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11888.228, 12754.27, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_332 = _this;
  _this setPos [11888.228, 12754.27, 4.5776367e-005];
};

_vehicle_333 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11904.914, 12748.625, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_333 = _this;
  _this setPos [11904.914, 12748.625, 0];
};

_vehicle_334 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11893.826, 12745.306, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_334 = _this;
  _this setPos [11893.826, 12745.306, -1.5258789e-005];
};

_vehicle_335 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11879.356, 12750.534, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_335 = _this;
  _this setPos [11879.356, 12750.534, 7.6293945e-005];
};

_vehicle_336 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11917.877, 12743.77, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_336 = _this;
  _this setPos [11917.877, 12743.77, -3.0517578e-005];
};

_vehicle_337 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11932.045, 12738.892, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_337 = _this;
  _this setPos [11932.045, 12738.892, 4.5776367e-005];
};

_vehicle_338 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11951.968, 12731.875, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_338 = _this;
  _this setPos [11951.968, 12731.875, 3.0517578e-005];
};

_vehicle_339 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11942.33, 12735.307, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_339 = _this;
  _this setPos [11942.33, 12735.307, 4.5776367e-005];
};

_vehicle_340 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11962.602, 12728.719, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_340 = _this;
  _this setPos [11962.602, 12728.719, 0];
};

_vehicle_341 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11973.164, 12724.008, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_341 = _this;
  _this setPos [11973.164, 12724.008, 1.5258789e-005];
};

_vehicle_342 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11983.249, 12719.795, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_342 = _this;
  _this setPos [11983.249, 12719.795, 1.5258789e-005];
};

_vehicle_343 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11993.557, 12715.194, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_343 = _this;
  _this setPos [11993.557, 12715.194, -1.5258789e-005];
};

_vehicle_344 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11993.034, 12728.066, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_344 = _this;
  _this setPos [11993.034, 12728.066, 0];
};

_vehicle_345 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11977.733, 12732.262, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_345 = _this;
  _this setPos [11977.733, 12732.262, -3.0517578e-005];
};

_vehicle_346 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11967.543, 12736.103, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_346 = _this;
  _this setPos [11967.543, 12736.103, -1.5258789e-005];
};

_vehicle_347 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11960.315, 12738.611, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_347 = _this;
  _this setPos [11960.315, 12738.611, 0];
};

_vehicle_348 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11950.04, 12744.088, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_348 = _this;
  _this setPos [11950.04, 12744.088, 0];
};

_vehicle_349 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11941.314, 12746.915, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_349 = _this;
  _this setPos [11941.314, 12746.915, 3.0517578e-005];
};

_vehicle_350 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11931.481, 12750.535, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_350 = _this;
  _this setPos [11931.481, 12750.535, 1.5258789e-005];
};

_vehicle_351 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11920.605, 12753.935, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_351 = _this;
  _this setPos [11920.605, 12753.935, -4.5776367e-005];
};

_vehicle_352 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11909.398, 12758.073, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_352 = _this;
  _this setPos [11909.398, 12758.073, 1.5258789e-005];
};

_vehicle_353 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11899.558, 12760.208, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_353 = _this;
  _this setPos [11899.558, 12760.208, 3.0517578e-005];
};

_vehicle_354 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11890.704, 12764.24, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_354 = _this;
  _this setPos [11890.704, 12764.24, -1.5258789e-005];
};

_vehicle_355 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11879.808, 12767.044, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_355 = _this;
  _this setPos [11879.808, 12767.044, 6.1035156e-005];
};

_vehicle_356 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11868.524, 12770.557, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_356 = _this;
  _this setPos [11868.524, 12770.557, -1.5258789e-005];
};

_vehicle_357 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11862.163, 12773.389, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_357 = _this;
  _this setPos [11862.163, 12773.389, 0.0001373291];
};

_vehicle_358 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11852.16, 12777.194, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_358 = _this;
  _this setPos [11852.16, 12777.194, -3.0517578e-005];
};

_vehicle_359 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11842.485, 12780.341, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_359 = _this;
  _this setPos [11842.485, 12780.341, -6.1035156e-005];
};

_vehicle_360 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11839.081, 12801.152, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_360 = _this;
  _this setPos [11839.081, 12801.152, -1.5258789e-005];
};

_vehicle_361 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11847.206, 12798.069, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_361 = _this;
  _this setPos [11847.206, 12798.069, 0];
};

_vehicle_362 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11858.782, 12794.1, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_362 = _this;
  _this setPos [11858.782, 12794.1, 3.0517578e-005];
};

_vehicle_363 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11868.434, 12791.15, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_363 = _this;
  _this setPos [11868.434, 12791.15, 0];
};

_vehicle_364 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11878.592, 12787.779, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_364 = _this;
  _this setPos [11878.592, 12787.779, -3.0517578e-005];
};

_vehicle_365 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11886.557, 12785.286, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_365 = _this;
  _this setPos [11886.557, 12785.286, -3.0517578e-005];
};

_vehicle_366 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11896.008, 12782.327, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_366 = _this;
  _this setPos [11896.008, 12782.327, 0];
};

_vehicle_367 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11869.967, 12781.497, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_367 = _this;
  _this setPos [11869.967, 12781.497, 0];
};

_vehicle_368 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11880.809, 12777.518, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_368 = _this;
  _this setPos [11880.809, 12777.518, 3.0517578e-005];
};

_vehicle_369 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11894.167, 12773.159, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_369 = _this;
  _this setPos [11894.167, 12773.159, 1.5258789e-005];
};

_vehicle_370 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11906.441, 12776.082, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_370 = _this;
  _this setPos [11906.441, 12776.082, -1.5258789e-005];
};

_vehicle_371 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11918.229, 12772.85, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_371 = _this;
  _this setPos [11918.229, 12772.85, 4.5776367e-005];
};

_vehicle_372 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11928.662, 12769.325, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_372 = _this;
  _this setPos [11928.662, 12769.325, -1.5258789e-005];
};

_vehicle_373 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11942.637, 12764.689, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_373 = _this;
  _this setPos [11942.637, 12764.689, 0];
};

_vehicle_374 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11953.458, 12762.299, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_374 = _this;
  _this setPos [11953.458, 12762.299, 1.5258789e-005];
};

_vehicle_375 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11962.205, 12752.977, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_375 = _this;
  _this setPos [11962.205, 12752.977, 0];
};

_vehicle_376 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11973.522, 12749.72, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_376 = _this;
  _this setPos [11973.522, 12749.72, 3.0517578e-005];
};

_vehicle_377 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11985.815, 12746.032, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_377 = _this;
  _this setPos [11985.815, 12746.032, 4.5776367e-005];
};

_vehicle_378 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11998.323, 12742.261, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_378 = _this;
  _this setPos [11998.323, 12742.261, 0];
};

_vehicle_379 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12009.532, 12737.899, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_379 = _this;
  _this setPos [12009.532, 12737.899, -1.5258789e-005];
};

_vehicle_380 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11981.628, 12756.881, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_380 = _this;
  _this setPos [11981.628, 12756.881, 0];
};

_vehicle_381 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11971.535, 12761.487, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_381 = _this;
  _this setPos [11971.535, 12761.487, -1.5258789e-005];
};

_vehicle_382 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11963.178, 12770.398, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_382 = _this;
  _this setPos [11963.178, 12770.398, 0];
};

_vehicle_383 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11955.48, 12784.536, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_383 = _this;
  _this setPos [11955.48, 12784.536, 1.5258789e-005];
};

_vehicle_384 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11946.877, 12793.542, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_384 = _this;
  _this setPos [11946.877, 12793.542, -3.0517578e-005];
};

_vehicle_385 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11941.425, 12782.588, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_385 = _this;
  _this setPos [11941.425, 12782.588, 3.0517578e-005];
};

_vehicle_386 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11950.567, 12774.071, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_386 = _this;
  _this setPos [11950.567, 12774.071, 3.0517578e-005];
};

_vehicle_387 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11927.654, 12781.757, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_387 = _this;
  _this setPos [11927.654, 12781.757, 3.0517578e-005];
};

_vehicle_388 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11914.618, 12787.372, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_388 = _this;
  _this setPos [11914.618, 12787.372, 1.5258789e-005];
};

_vehicle_389 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11902.628, 12792.896, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_389 = _this;
  _this setPos [11902.628, 12792.896, 1.5258789e-005];
};

_vehicle_390 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11891.497, 12796.396, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_390 = _this;
  _this setPos [11891.497, 12796.396, -9.1552734e-005];
};

_vehicle_391 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11879.812, 12800.297, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_391 = _this;
  _this setPos [11879.812, 12800.297, 3.0517578e-005];
};

_vehicle_392 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11864.944, 12805.39, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_392 = _this;
  _this setPos [11864.944, 12805.39, 7.6293945e-005];
};

_vehicle_393 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11853.922, 12808.803, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_393 = _this;
  _this setPos [11853.922, 12808.803, -6.1035156e-005];
};

_vehicle_394 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11840.661, 12814.586, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_394 = _this;
  _this setPos [11840.661, 12814.586, 6.1035156e-005];
};

_vehicle_395 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11827.655, 12819.05, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_395 = _this;
  _this setPos [11827.655, 12819.05, 1.5258789e-005];
};

_vehicle_396 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11819.479, 12822.002, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_396 = _this;
  _this setPos [11819.479, 12822.002, 4.5776367e-005];
};

_vehicle_397 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11807.938, 12819.516, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_397 = _this;
  _this setPos [11807.938, 12819.516, 0];
};

_vehicle_398 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11832.024, 12828.415, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_398 = _this;
  _this setPos [11832.024, 12828.415, -3.0517578e-005];
};

_vehicle_399 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11846.069, 12827.605, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_399 = _this;
  _this setPos [11846.069, 12827.605, -1.5258789e-005];
};

_vehicle_400 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11858.048, 12831.222, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_400 = _this;
  _this setPos [11858.048, 12831.222, 0];
};

_vehicle_401 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11871.561, 12830.339, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_401 = _this;
  _this setPos [11871.561, 12830.339, 1.5258789e-005];
};

_vehicle_402 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11886.048, 12826.024, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_402 = _this;
  _this setPos [11886.048, 12826.024, -4.5776367e-005];
};

_vehicle_403 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11882.983, 12815.302, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_403 = _this;
  _this setPos [11882.983, 12815.302, -3.0517578e-005];
};

_vehicle_404 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11867.128, 12819.103, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_404 = _this;
  _this setPos [11867.128, 12819.103, 6.1035156e-005];
};

_vehicle_405 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11854.708, 12819.715, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_405 = _this;
  _this setPos [11854.708, 12819.715, 0];
};

_vehicle_406 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11897.201, 12821.328, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_406 = _this;
  _this setPos [11897.201, 12821.328, -4.5776367e-005];
};

_vehicle_407 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11892.457, 12808.97, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_407 = _this;
  _this setPos [11892.457, 12808.97, -4.5776367e-005];
};

_vehicle_408 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11902.309, 12804.071, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_408 = _this;
  _this setPos [11902.309, 12804.071, 9.1552734e-005];
};

_vehicle_409 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11908.957, 12816.85, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_409 = _this;
  _this setPos [11908.957, 12816.85, 7.6293945e-005];
};

_vehicle_410 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11920.697, 12813.334, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_410 = _this;
  _this setPos [11920.697, 12813.334, 3.0517578e-005];
};

_vehicle_411 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11931.492, 12809.983, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_411 = _this;
  _this setPos [11931.492, 12809.983, 4.5776367e-005];
};

_vehicle_412 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11913.686, 12801.913, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_412 = _this;
  _this setPos [11913.686, 12801.913, -6.1035156e-005];
};

_vehicle_413 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11921.801, 12797.765, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_413 = _this;
  _this setPos [11921.801, 12797.765, 0];
};

_vehicle_414 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11935.936, 12796.542, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_414 = _this;
  _this setPos [11935.936, 12796.542, 3.0517578e-005];
};

_vehicle_415 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11940.501, 12801.289, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_415 = _this;
  _this setPos [11940.501, 12801.289, 6.1035156e-005];
};

_vehicle_416 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12004.24, 12727.137, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_416 = _this;
  _this setPos [12004.24, 12727.137, 0];
};

_vehicle_417 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12007.965, 12709.608, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_417 = _this;
  _this setPos [12007.965, 12709.608, 0];
};

_vehicle_418 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12018.21, 12705.7, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_418 = _this;
  _this setPos [12018.21, 12705.7, 7.6293945e-005];
};

_vehicle_419 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12016.545, 12720.432, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_419 = _this;
  _this setPos [12016.545, 12720.432, -7.6293945e-005];
};

_vehicle_420 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12021.816, 12731.421, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_420 = _this;
  _this setPos [12021.816, 12731.421, 1.5258789e-005];
};

_vehicle_421 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12032.346, 12734.896, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_421 = _this;
  _this setPos [12032.346, 12734.896, 0];
};

_vehicle_422 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12034.021, 12724.233, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_422 = _this;
  _this setPos [12034.021, 12724.233, 0];
};

_vehicle_423 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12034.176, 12712.937, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_423 = _this;
  _this setPos [12034.176, 12712.937, -3.0517578e-005];
};

_vehicle_424 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12042.662, 12701.271, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_424 = _this;
  _this setPos [12042.662, 12701.271, 1.5258789e-005];
};

_vehicle_425 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12021.015, 12741.316, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_425 = _this;
  _this setPos [12021.015, 12741.316, 1.5258789e-005];
};

_vehicle_426 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12043.011, 12732.034, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_426 = _this;
  _this setPos [12043.011, 12732.034, -6.1035156e-005];
};

_vehicle_427 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12056.616, 12727.088, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_427 = _this;
  _this setPos [12056.616, 12727.088, -6.1035156e-005];
};

_vehicle_428 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12068.909, 12722.752, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_428 = _this;
  _this setPos [12068.909, 12722.752, 4.5776367e-005];
};

_vehicle_429 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12083, 12717.838, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_429 = _this;
  _this setPos [12083, 12717.838, -4.5776367e-005];
};

_vehicle_430 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12100.228, 12712.395, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_430 = _this;
  _this setPos [12100.228, 12712.395, -3.0517578e-005];
};

_vehicle_431 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12121.558, 12705.156, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_431 = _this;
  _this setPos [12121.558, 12705.156, -4.5776367e-005];
};

_vehicle_432 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12144.402, 12696.961, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_432 = _this;
  _this setPos [12144.402, 12696.961, -6.1035156e-005];
};

_vehicle_433 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12171.775, 12687.675, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_433 = _this;
  _this setPos [12171.775, 12687.675, -9.1552734e-005];
};

_vehicle_434 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12042.733, 12718.911, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_434 = _this;
  _this setPos [12042.733, 12718.911, 3.0517578e-005];
};

_vehicle_435 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12054.063, 12714.937, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_435 = _this;
  _this setPos [12054.063, 12714.937, 3.0517578e-005];
};

_vehicle_436 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12062.562, 12711.854, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_436 = _this;
  _this setPos [12062.562, 12711.854, 0];
};

_vehicle_437 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12070.974, 12708.855, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_437 = _this;
  _this setPos [12070.974, 12708.855, 1.5258789e-005];
};

_vehicle_438 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12081.983, 12704.997, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_438 = _this;
  _this setPos [12081.983, 12704.997, 1.5258789e-005];
};

_vehicle_439 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12093.241, 12701.016, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_439 = _this;
  _this setPos [12093.241, 12701.016, -3.0517578e-005];
};

_vehicle_440 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12105.91, 12696.719, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_440 = _this;
  _this setPos [12105.91, 12696.719, -9.1552734e-005];
};

_vehicle_441 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12123.839, 12690.627, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_441 = _this;
  _this setPos [12123.839, 12690.627, 9.1552734e-005];
};

_vehicle_442 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12140.419, 12684.875, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_442 = _this;
  _this setPos [12140.419, 12684.875, -6.1035156e-005];
};

_vehicle_443 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12160.368, 12678.102, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_443 = _this;
  _this setPos [12160.368, 12678.102, 1.5258789e-005];
};

_vehicle_444 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12182.666, 12670.425, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_444 = _this;
  _this setPos [12182.666, 12670.425, 9.1552734e-005];
};

_vehicle_445 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12214.184, 12659.566, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_445 = _this;
  _this setPos [12214.184, 12659.566, 4.5776367e-005];
};

_vehicle_446 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12243.633, 12649.486, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_446 = _this;
  _this setPos [12243.633, 12649.486, -6.1035156e-005];
};

_vehicle_447 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12053.145, 12697.725, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_447 = _this;
  _this setPos [12053.145, 12697.725, -6.1035156e-005];
};

_vehicle_448 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12061.261, 12694.714, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_448 = _this;
  _this setPos [12061.261, 12694.714, 1.5258789e-005];
};

_vehicle_449 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12067.848, 12692.195, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_449 = _this;
  _this setPos [12067.848, 12692.195, -3.0517578e-005];
};

_vehicle_450 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12076.776, 12688.678, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_450 = _this;
  _this setPos [12076.776, 12688.678, -9.1552734e-005];
};

_vehicle_451 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12087.319, 12684.579, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_451 = _this;
  _this setPos [12087.319, 12684.579, -7.6293945e-005];
};

_vehicle_452 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12102.901, 12678.681, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_452 = _this;
  _this setPos [12102.901, 12678.681, 1.5258789e-005];
};

_vehicle_453 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12114.653, 12674.288, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_453 = _this;
  _this setPos [12114.653, 12674.288, -3.0517578e-005];
};

_vehicle_454 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12132.181, 12667.68, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_454 = _this;
  _this setPos [12132.181, 12667.68, 4.5776367e-005];
};

_vehicle_455 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12154.927, 12659.534, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_455 = _this;
  _this setPos [12154.927, 12659.534, -9.1552734e-005];
};

_vehicle_456 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12178.522, 12651.096, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_456 = _this;
  _this setPos [12178.522, 12651.096, 0.00012207031];
};

_vehicle_457 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12207.592, 12640.989, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_457 = _this;
  _this setPos [12207.592, 12640.989, 4.5776367e-005];
};

_vehicle_458 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12234.899, 12631.323, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_458 = _this;
  _this setPos [12234.899, 12631.323, 6.1035156e-005];
};

_vehicle_459 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12271.401, 12618.401, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_459 = _this;
  _this setPos [12271.401, 12618.401, -6.1035156e-005];
};

_vehicle_460 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12298.955, 12608.563, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_460 = _this;
  _this setPos [12298.955, 12608.563, 0.0001373291];
};

_vehicle_461 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12327.867, 12598.321, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_461 = _this;
  _this setPos [12327.867, 12598.321, 3.0517578e-005];
};

_vehicle_462 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12370.198, 12583.534, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_462 = _this;
  _this setPos [12370.198, 12583.534, 0.00018310547];
};

_vehicle_463 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12096.645, 12689.019, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_463 = _this;
  _this setPos [12096.645, 12689.019, -1.5258789e-005];
};

_vehicle_464 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12111.315, 12710.183, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_464 = _this;
  _this setPos [12111.315, 12710.183, 0];
};

_vehicle_465 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12131.916, 12698.734, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_465 = _this;
  _this setPos [12131.916, 12698.734, -1.5258789e-005];
};

_vehicle_466 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12123.936, 12679.001, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_466 = _this;
  _this setPos [12123.936, 12679.001, 0];
};

_vehicle_467 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12142.887, 12670.477, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_467 = _this;
  _this setPos [12142.887, 12670.477, 3.0517578e-005];
};

_vehicle_468 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12149.747, 12680.938, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_468 = _this;
  _this setPos [12149.747, 12680.938, 6.1035156e-005];
};

_vehicle_469 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12155.998, 12691.951, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_469 = _this;
  _this setPos [12155.998, 12691.951, -1.5258789e-005];
};

_vehicle_470 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12183.627, 12682.438, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_470 = _this;
  _this setPos [12183.627, 12682.438, -3.0517578e-005];
};

_vehicle_471 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12196.764, 12677.222, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_471 = _this;
  _this setPos [12196.764, 12677.222, -6.1035156e-005];
};

_vehicle_472 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12172.276, 12676.025, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_472 = _this;
  _this setPos [12172.276, 12676.025, 0.0001373291];
};

_vehicle_473 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12154.603, 12669.229, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_473 = _this;
  _this setPos [12154.603, 12669.229, 3.0517578e-005];
};

_vehicle_474 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12165.923, 12661.906, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_474 = _this;
  _this setPos [12165.923, 12661.906, 0];
};

_vehicle_475 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12167.255, 12652.258, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_475 = _this;
  _this setPos [12167.255, 12652.258, 0];
};

_vehicle_476 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12190.336, 12646.135, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_476 = _this;
  _this setPos [12190.336, 12646.135, -4.5776367e-005];
};

_vehicle_477 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12199.777, 12663.324, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_477 = _this;
  _this setPos [12199.777, 12663.324, 4.5776367e-005];
};

_vehicle_478 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12190.671, 12657.99, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_478 = _this;
  _this setPos [12190.671, 12657.99, 3.0517578e-005];
};

_vehicle_479 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12179.256, 12660.94, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_479 = _this;
  _this setPos [12179.256, 12660.94, -7.6293945e-005];
};

_vehicle_480 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12206.994, 12674.827, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_480 = _this;
  _this setPos [12206.994, 12674.827, 1.5258789e-005];
};

_vehicle_481 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12219.459, 12669.88, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_481 = _this;
  _this setPos [12219.459, 12669.88, 3.0517578e-005];
};

_vehicle_482 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12231.662, 12664.5, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_482 = _this;
  _this setPos [12231.662, 12664.5, 0];
};

_vehicle_483 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12228.329, 12656.292, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_483 = _this;
  _this setPos [12228.329, 12656.292, 6.1035156e-005];
};

_vehicle_484 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12219.826, 12648.909, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_484 = _this;
  _this setPos [12219.826, 12648.909, -1.5258789e-005];
};

_vehicle_485 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12207.813, 12651.282, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_485 = _this;
  _this setPos [12207.813, 12651.282, -1.5258789e-005];
};

_vehicle_486 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12218.165, 12635.814, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_486 = _this;
  _this setPos [12218.165, 12635.814, 3.0517578e-005];
};

_vehicle_487 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12230.764, 12641.823, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_487 = _this;
  _this setPos [12230.764, 12641.823, -1.5258789e-005];
};

_vehicle_488 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12247.006, 12636.916, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_488 = _this;
  _this setPos [12247.006, 12636.916, -1.5258789e-005];
};

_vehicle_489 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12264.243, 12635.98, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_489 = _this;
  _this setPos [12264.243, 12635.98, -1.5258789e-005];
};

_vehicle_490 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12246.603, 12625.619, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_490 = _this;
  _this setPos [12246.603, 12625.619, 6.1035156e-005];
};

_vehicle_491 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12243.146, 12661.924, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_491 = _this;
  _this setPos [12243.146, 12661.924, 0];
};

_vehicle_492 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12255.661, 12656.234, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_492 = _this;
  _this setPos [12255.661, 12656.234, -1.5258789e-005];
};

_vehicle_493 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12267.235, 12651.772, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_493 = _this;
  _this setPos [12267.235, 12651.772, -1.5258789e-005];
};

_vehicle_494 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12283.021, 12643.982, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_494 = _this;
  _this setPos [12283.021, 12643.982, 1.5258789e-005];
};

_vehicle_495 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12257.957, 12645.844, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_495 = _this;
  _this setPos [12257.957, 12645.844, -6.1035156e-005];
};

_vehicle_496 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12259.118, 12624.101, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_496 = _this;
  _this setPos [12259.118, 12624.101, 0];
};

_vehicle_497 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12274.345, 12633.786, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_497 = _this;
  _this setPos [12274.345, 12633.786, 3.0517578e-005];
};

_vehicle_498 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12286.224, 12629.347, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_498 = _this;
  _this setPos [12286.224, 12629.347, -1.5258789e-005];
};

_vehicle_499 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12298.221, 12626.038, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_499 = _this;
  _this setPos [12298.221, 12626.038, -3.0517578e-005];
};

_vehicle_500 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12280.13, 12652.032, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_500 = _this;
  _this setPos [12280.13, 12652.032, 0];
};

_vehicle_501 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12291.397, 12647.795, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_501 = _this;
  _this setPos [12291.397, 12647.795, -1.5258789e-005];
};

_vehicle_502 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12301.694, 12641.073, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_502 = _this;
  _this setPos [12301.694, 12641.073, 0];
};

_vehicle_503 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12314.745, 12636.394, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_503 = _this;
  _this setPos [12314.745, 12636.394, -3.0517578e-005];
};

_vehicle_504 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12328.601, 12631.833, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_504 = _this;
  _this setPos [12328.601, 12631.833, 4.5776367e-005];
};

_vehicle_505 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12281.369, 12616.113, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_505 = _this;
  _this setPos [12281.369, 12616.113, 9.1552734e-005];
};

_vehicle_506 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12289.255, 12609.05, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_506 = _this;
  _this setPos [12289.255, 12609.05, -0.00012207031];
};

_vehicle_507 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12310.021, 12607.854, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_507 = _this;
  _this setPos [12310.021, 12607.854, 9.1552734e-005];
};

_vehicle_508 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12319.553, 12603.25, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_508 = _this;
  _this setPos [12319.553, 12603.25, 0];
};

_vehicle_509 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12328.63, 12599.8, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_509 = _this;
  _this setPos [12328.63, 12599.8, 0];
};

_vehicle_510 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12338.492, 12596.254, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_510 = _this;
  _this setPos [12338.492, 12596.254, 3.0517578e-005];
};

_vehicle_511 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12303.588, 12616.988, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_511 = _this;
  _this setPos [12303.588, 12616.988, -4.5776367e-005];
};

_vehicle_512 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12313.517, 12613.693, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_512 = _this;
  _this setPos [12313.517, 12613.693, 4.5776367e-005];
};

_vehicle_513 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12322.841, 12610.49, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_513 = _this;
  _this setPos [12322.841, 12610.49, -3.0517578e-005];
};

_vehicle_514 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12341.034, 12603.913, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_514 = _this;
  _this setPos [12341.034, 12603.913, 3.0517578e-005];
};

_vehicle_515 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12308.253, 12630.046, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_515 = _this;
  _this setPos [12308.253, 12630.046, 1.5258789e-005];
};

_vehicle_516 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12318.133, 12626.763, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_516 = _this;
  _this setPos [12318.133, 12626.763, -3.0517578e-005];
};

_vehicle_517 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12327.4, 12623.294, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_517 = _this;
  _this setPos [12327.4, 12623.294, -6.1035156e-005];
};

_vehicle_518 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12336.11, 12620.6, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_518 = _this;
  _this setPos [12336.11, 12620.6, 0];
};

_vehicle_519 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12340.259, 12627.762, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_519 = _this;
  _this setPos [12340.259, 12627.762, 0];
};

_vehicle_520 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12352.926, 12624.117, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_520 = _this;
  _this setPos [12352.926, 12624.117, 1.5258789e-005];
};

_vehicle_521 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12362.854, 12621.181, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_521 = _this;
  _this setPos [12362.854, 12621.181, -4.5776367e-005];
};

_vehicle_522 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12377.584, 12617.362, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_522 = _this;
  _this setPos [12377.584, 12617.362, -3.0517578e-005];
};

_vehicle_523 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12373.469, 12608.868, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_523 = _this;
  _this setPos [12373.469, 12608.868, 1.5258789e-005];
};

_vehicle_524 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12360.947, 12611.732, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_524 = _this;
  _this setPos [12360.947, 12611.732, 0];
};

_vehicle_525 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12350.386, 12613.939, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_525 = _this;
  _this setPos [12350.386, 12613.939, -3.0517578e-005];
};

_vehicle_526 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12332.794, 12610.21, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_526 = _this;
  _this setPos [12332.794, 12610.21, 1.5258789e-005];
};

_vehicle_527 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12351.075, 12600.76, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_527 = _this;
  _this setPos [12351.075, 12600.76, 4.5776367e-005];
};

_vehicle_528 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12360.938, 12597.254, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_528 = _this;
  _this setPos [12360.938, 12597.254, 1.5258789e-005];
};

_vehicle_529 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12369.049, 12594.305, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_529 = _this;
  _this setPos [12369.049, 12594.305, 4.5776367e-005];
};

_vehicle_530 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12366.171, 12583.847, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_530 = _this;
  _this setPos [12366.171, 12583.847, -3.0517578e-005];
};

_vehicle_531 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12356.022, 12587.318, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_531 = _this;
  _this setPos [12356.022, 12587.318, -6.1035156e-005];
};

_vehicle_532 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12347.521, 12591.106, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_532 = _this;
  _this setPos [12347.521, 12591.106, -1.5258789e-005];
};

_vehicle_533 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12386.229, 12609.512, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_533 = _this;
  _this setPos [12386.229, 12609.512, 3.0517578e-005];
};

_vehicle_534 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12395.416, 12606.772, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_534 = _this;
  _this setPos [12395.416, 12606.772, 0];
};

_vehicle_535 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12405.586, 12601.98, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_535 = _this;
  _this setPos [12405.586, 12601.98, -1.5258789e-005];
};

_vehicle_536 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12423.928, 12595.016, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_536 = _this;
  _this setPos [12423.928, 12595.016, -1.5258789e-005];
};

_vehicle_537 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12419.92, 12587.33, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_537 = _this;
  _this setPos [12419.92, 12587.33, 9.1552734e-005];
};

_vehicle_538 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12404.538, 12593.11, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_538 = _this;
  _this setPos [12404.538, 12593.11, 6.1035156e-005];
};

_vehicle_539 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12391.923, 12598.232, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_539 = _this;
  _this setPos [12391.923, 12598.232, 1.5258789e-005];
};

_vehicle_540 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12382.911, 12601.178, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_540 = _this;
  _this setPos [12382.911, 12601.178, 1.5258789e-005];
};

_vehicle_541 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12378.615, 12588.744, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_541 = _this;
  _this setPos [12378.615, 12588.744, -3.0517578e-005];
};

_vehicle_542 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12379.511, 12579.377, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_542 = _this;
  _this setPos [12379.511, 12579.377, -1.5258789e-005];
};

_vehicle_543 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12387.736, 12577.613, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_543 = _this;
  _this setPos [12387.736, 12577.613, 6.1035156e-005];
};

_vehicle_544 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12398.127, 12574.127, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_544 = _this;
  _this setPos [12398.127, 12574.127, -3.0517578e-005];
};

_vehicle_545 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12399.296, 12584.419, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_545 = _this;
  _this setPos [12399.296, 12584.419, 0];
};

_vehicle_546 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12409.673, 12580.388, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_546 = _this;
  _this setPos [12409.673, 12580.388, 3.0517578e-005];
};

_vehicle_547 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12419.433, 12576.833, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_547 = _this;
  _this setPos [12419.433, 12576.833, -4.5776367e-005];
};

_vehicle_548 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12430.903, 12573.48, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_548 = _this;
  _this setPos [12430.903, 12573.48, -1.5258789e-005];
};

_vehicle_549 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12433.469, 12582.705, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_549 = _this;
  _this setPos [12433.469, 12582.705, 3.0517578e-005];
};

_vehicle_550 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12444.079, 12586.682, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_550 = _this;
  _this setPos [12444.079, 12586.682, -7.6293945e-005];
};

_vehicle_551 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12445.577, 12576.129, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_551 = _this;
  _this setPos [12445.577, 12576.129, -4.5776367e-005];
};

_vehicle_552 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12448.058, 12563.657, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_552 = _this;
  _this setPos [12448.058, 12563.657, 3.0517578e-005];
};

_vehicle_553 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12445.851, 12557.001, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_553 = _this;
  _this setPos [12445.851, 12557.001, 1.5258789e-005];
};

_vehicle_554 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12430.962, 12562.13, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_554 = _this;
  _this setPos [12430.962, 12562.13, -4.5776367e-005];
};

_vehicle_555 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12416.727, 12567.146, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_555 = _this;
  _this setPos [12416.727, 12567.146, -4.5776367e-005];
};

_vehicle_556 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12436.036, 12595.666, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_556 = _this;
  _this setPos [12436.036, 12595.666, 0];
};

_vehicle_557 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12456.108, 12588.443, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_557 = _this;
  _this setPos [12456.108, 12588.443, 0];
};

_vehicle_558 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12465.455, 12585.171, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_558 = _this;
  _this setPos [12465.455, 12585.171, -1.5258789e-005];
};

_vehicle_559 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12478.942, 12580.02, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_559 = _this;
  _this setPos [12478.942, 12580.02, -3.0517578e-005];
};

_vehicle_560 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12455.927, 12576.604, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_560 = _this;
  _this setPos [12455.927, 12576.604, 3.0517578e-005];
};

_vehicle_561 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12466.847, 12572.162, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_561 = _this;
  _this setPos [12466.847, 12572.162, -3.0517578e-005];
};

_vehicle_562 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12479.765, 12567.664, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_562 = _this;
  _this setPos [12479.765, 12567.664, -3.0517578e-005];
};

_vehicle_563 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12478.875, 12557.546, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_563 = _this;
  _this setPos [12478.875, 12557.546, 1.5258789e-005];
};

_vehicle_564 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12468.929, 12562.072, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_564 = _this;
  _this setPos [12468.929, 12562.072, 3.0517578e-005];
};

_vehicle_565 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12455.024, 12567.049, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_565 = _this;
  _this setPos [12455.024, 12567.049, -1.5258789e-005];
};

_vehicle_566 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12456.193, 12553.438, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_566 = _this;
  _this setPos [12456.193, 12553.438, -6.1035156e-005];
};

_vehicle_567 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12467.403, 12550.549, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_567 = _this;
  _this setPos [12467.403, 12550.549, 3.0517578e-005];
};

_vehicle_568 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12479.677, 12549.082, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_568 = _this;
  _this setPos [12479.677, 12549.082, 6.1035156e-005];
};

_vehicle_569 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12488.183, 12545.961, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_569 = _this;
  _this setPos [12488.183, 12545.961, 3.0517578e-005];
};

_vehicle_570 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12497.25, 12542.487, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_570 = _this;
  _this setPos [12497.25, 12542.487, -4.5776367e-005];
};

_vehicle_571 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12509.014, 12538.511, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_571 = _this;
  _this setPos [12509.014, 12538.511, 1.5258789e-005];
};

_vehicle_572 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12490.163, 12560.99, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_572 = _this;
  _this setPos [12490.163, 12560.99, 1.5258789e-005];
};

_vehicle_573 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12498.885, 12557.322, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_573 = _this;
  _this setPos [12498.885, 12557.322, -1.5258789e-005];
};

_vehicle_574 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12512.788, 12552.988, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_574 = _this;
  _this setPos [12512.788, 12552.988, -4.5776367e-005];
};

_vehicle_575 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12529.608, 12551.091, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_575 = _this;
  _this setPos [12529.608, 12551.091, -3.0517578e-005];
};

_vehicle_576 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12523.98, 12563.608, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_576 = _this;
  _this setPos [12523.98, 12563.608, -6.1035156e-005];
};

_vehicle_577 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12509.98, 12568.669, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_577 = _this;
  _this setPos [12509.98, 12568.669, -4.5776367e-005];
};

_vehicle_578 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12499.949, 12572.063, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_578 = _this;
  _this setPos [12499.949, 12572.063, 0];
};

_vehicle_579 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12489.664, 12574.596, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_579 = _this;
  _this setPos [12489.664, 12574.596, 1.5258789e-005];
};

_vehicle_580 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12535.459, 12560.574, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_580 = _this;
  _this setPos [12535.459, 12560.574, 0];
};

_vehicle_581 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12545.081, 12559.368, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_581 = _this;
  _this setPos [12545.081, 12559.368, -1.5258789e-005];
};

_vehicle_582 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12542.603, 12551.549, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_582 = _this;
  _this setPos [12542.603, 12551.549, -1.5258789e-005];
};

_vehicle_583 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12537.269, 12538.269, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_583 = _this;
  _this setPos [12537.269, 12538.269, -3.0517578e-005];
};

_vehicle_584 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12535.258, 12526.44, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_584 = _this;
  _this setPos [12535.258, 12526.44, 1.5258789e-005];
};

_vehicle_585 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12519.698, 12540.013, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_585 = _this;
  _this setPos [12519.698, 12540.013, -0.00012207031];
};

_vehicle_586 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12523.749, 12530.84, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_586 = _this;
  _this setPos [12523.749, 12530.84, -3.0517578e-005];
};

_vehicle_587 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12417.152, 12603.195, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_587 = _this;
  _this setPos [12417.152, 12603.195, 0];
};

_vehicle_588 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11785.767, 12798.165, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_588 = _this;
  _this setPos [11785.767, 12798.165, 1.5258789e-005];
};

_vehicle_589 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11790.672, 12812.449, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_589 = _this;
  _this setPos [11790.672, 12812.449, 7.6293945e-005];
};

_vehicle_590 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12030.878, 12700.911, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_590 = _this;
  _this setPos [12030.878, 12700.911, 0];
};

_vehicle_591 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11792.149, 12819.832, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_591 = _this;
  _this setPos [11792.149, 12819.832, 1.5258789e-005];
};

_vehicle_592 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11780.683, 12786.448, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_592 = _this;
  _this setPos [11780.683, 12786.448, -3.0517578e-005];
};

_vehicle_593 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11786.448, 12803.142, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_593 = _this;
  _this setPos [11786.448, 12803.142, -1.5258789e-005];
};

_vehicle_594 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11781.794, 12804.784, 0.00022888184], [], 0, "CAN_COLLIDE"];
  _vehicle_594 = _this;
  _this setPos [11781.794, 12804.784, 0.00022888184];
};

_vehicle_598 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11771.844, 12808.256, 0.063582569], [], 0, "CAN_COLLIDE"];
  _vehicle_598 = _this;
  _this setPos [11771.844, 12808.256, 0.063582569];
};

_vehicle_600 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11776.498, 12806.608, 0.047971345], [], 0, "CAN_COLLIDE"];
  _vehicle_600 = _this;
  _this setPos [11776.498, 12806.608, 0.047971345];
};

_vehicle_602 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11779.148, 12812.997, 0.053210352], [], 0, "CAN_COLLIDE"];
  _vehicle_602 = _this;
  _this setPos [11779.148, 12812.997, 0.053210352];
};

_vehicle_603 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11784.092, 12811.287, 0.045807056], [], 0, "CAN_COLLIDE"];
  _vehicle_603 = _this;
  _this setPos [11784.092, 12811.287, 0.045807056];
};

_vehicle_605 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11788.748, 12809.644, 0.009308029], [], 0, "CAN_COLLIDE"];
  _vehicle_605 = _this;
  _this setPos [11788.748, 12809.644, 0.009308029];
};

_vehicle_607 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11774.561, 12799.93, 0.038132254], [], 0, "CAN_COLLIDE"];
  _vehicle_607 = _this;
  _this setPos [11774.561, 12799.93, 0.038132254];
};

_vehicle_608 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11779.507, 12798.215, 0.039782576], [], 0, "CAN_COLLIDE"];
  _vehicle_608 = _this;
  _this setPos [11779.507, 12798.215, 0.039782576];
};

_vehicle_610 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11784.161, 12796.575, 0.029266357], [], 0, "CAN_COLLIDE"];
  _vehicle_610 = _this;
  _this setPos [11784.161, 12796.575, 0.029266357];
};

_vehicle_612 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11757.289, 12813.315, 0.099103421], [], 0, "CAN_COLLIDE"];
  _vehicle_612 = _this;
  _this setPos [11757.289, 12813.315, 0.099103421];
};

_vehicle_613 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11762.235, 12811.604, 0.077018529], [], 0, "CAN_COLLIDE"];
  _vehicle_613 = _this;
  _this setPos [11762.235, 12811.604, 0.077018529];
};

_vehicle_615 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11766.893, 12809.96, 0.074170977], [], 0, "CAN_COLLIDE"];
  _vehicle_615 = _this;
  _this setPos [11766.893, 12809.96, 0.074170977];
};

_vehicle_616 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11790.197, 12783.143, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_616 = _this;
  _this setPos [11790.197, 12783.143, 1.5258789e-005];
};

_vehicle_617 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11809.201, 12776.656, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_617 = _this;
  _this setPos [11809.201, 12776.656, -1.5258789e-005];
};

_vehicle_618 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11827.896, 12770.237, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_618 = _this;
  _this setPos [11827.896, 12770.237, 0];
};

_vehicle_619 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11846.886, 12763.698, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_619 = _this;
  _this setPos [11846.886, 12763.698, -1.5258789e-005];
};

_vehicle_620 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11865.902, 12757.16, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_620 = _this;
  _this setPos [11865.902, 12757.16, 0];
};

_vehicle_621 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11884.724, 12750.625, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_621 = _this;
  _this setPos [11884.724, 12750.625, 4.5776367e-005];
};

_vehicle_622 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11903.734, 12744.115, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_622 = _this;
  _this setPos [11903.734, 12744.115, -3.0517578e-005];
};

_vehicle_623 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11922.467, 12737.65, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_623 = _this;
  _this setPos [11922.467, 12737.65, -3.0517578e-005];
};

_vehicle_624 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11941.446, 12731.065, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_624 = _this;
  _this setPos [11941.446, 12731.065, 3.0517578e-005];
};

_vehicle_625 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12149.238, 12659.024, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_625 = _this;
  _this setPos [12149.238, 12659.024, -3.0517578e-005];
};

_vehicle_626 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12168.181, 12652.471, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_626 = _this;
  _this setPos [12168.181, 12652.471, 1.5258789e-005];
};

_vehicle_627 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12187.018, 12645.956, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_627 = _this;
  _this setPos [12187.018, 12645.956, -4.5776367e-005];
};

_vehicle_628 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12205.963, 12639.387, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_628 = _this;
  _this setPos [12205.963, 12639.387, 0];
};

_vehicle_629 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12224.772, 12632.964, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_629 = _this;
  _this setPos [12224.772, 12632.964, -3.0517578e-005];
};

_vehicle_630 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12243.771, 12626.394, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_630 = _this;
  _this setPos [12243.771, 12626.394, 3.0517578e-005];
};

_vehicle_631 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12262.523, 12619.865, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_631 = _this;
  _this setPos [12262.523, 12619.865, 0];
};

_vehicle_632 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12281.52, 12613.279, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_632 = _this;
  _this setPos [12281.52, 12613.279, 0];
};

_vehicle_633 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12300.327, 12606.8, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_633 = _this;
  _this setPos [12300.327, 12606.8, 0];
};

_vehicle_634 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12319.281, 12600.221, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_634 = _this;
  _this setPos [12319.281, 12600.221, -0.00012207031];
};

_vehicle_635 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12337.913, 12593.754, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_635 = _this;
  _this setPos [12337.913, 12593.754, 0];
};

_vehicle_636 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12356.876, 12587.187, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_636 = _this;
  _this setPos [12356.876, 12587.187, 3.0517578e-005];
};

_vehicle_637 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12375.719, 12580.706, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_637 = _this;
  _this setPos [12375.719, 12580.706, 0];
};

_vehicle_638 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12394.673, 12574.115, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_638 = _this;
  _this setPos [12394.673, 12574.115, 0];
};

_vehicle_639 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12413.509, 12567.622, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_639 = _this;
  _this setPos [12413.509, 12567.622, 1.5258789e-005];
};

_vehicle_640 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12432.497, 12561.099, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_640 = _this;
  _this setPos [12432.497, 12561.099, 4.5776367e-005];
};

_vehicle_641 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12451.29, 12554.625, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_641 = _this;
  _this setPos [12451.29, 12554.625, 0];
};

_vehicle_642 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12470.308, 12548.095, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_642 = _this;
  _this setPos [12470.308, 12548.095, -4.5776367e-005];
};

_vehicle_643 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12489.289, 12541.64, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_643 = _this;
  _this setPos [12489.289, 12541.64, 0];
};

_vehicle_644 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12507.967, 12535.234, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_644 = _this;
  _this setPos [12507.967, 12535.234, 1.5258789e-005];
};

_vehicle_645 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12526.983, 12528.718, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_645 = _this;
  _this setPos [12526.983, 12528.718, 0];
};

_vehicle_646 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12538.431, 12562.151, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_646 = _this;
  _this setPos [12538.431, 12562.151, -9.1552734e-005];
};

_vehicle_647 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12519.42, 12568.678, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_647 = _this;
  _this setPos [12519.42, 12568.678, -3.0517578e-005];
};

_vehicle_648 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12500.729, 12575.072, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_648 = _this;
  _this setPos [12500.729, 12575.072, 0];
};

_vehicle_649 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12481.814, 12581.526, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_649 = _this;
  _this setPos [12481.814, 12581.526, 4.5776367e-005];
};

_vehicle_650 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12462.809, 12588.029, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_650 = _this;
  _this setPos [12462.809, 12588.029, 0];
};

_vehicle_651 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12443.995, 12594.506, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_651 = _this;
  _this setPos [12443.995, 12594.506, -1.5258789e-005];
};

_vehicle_652 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12424.984, 12601.044], [], 0, "CAN_COLLIDE"];
  _vehicle_652 = _this;
  _this setPos [12424.984, 12601.044];
};

_vehicle_653 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12406.218, 12607.509, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_653 = _this;
  _this setPos [12406.218, 12607.509, 0];
};

_vehicle_654 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12387.236, 12614.049, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_654 = _this;
  _this setPos [12387.236, 12614.049, 6.1035156e-005];
};

_vehicle_655 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12368.447, 12620.558, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_655 = _this;
  _this setPos [12368.447, 12620.558, 0];
};

_vehicle_656 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12349.42, 12627.148, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_656 = _this;
  _this setPos [12349.42, 12627.148, 0];
};

_vehicle_657 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12330.915, 12633.566, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_657 = _this;
  _this setPos [12330.915, 12633.566, -4.5776367e-005];
};

_vehicle_658 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12311.962, 12640.177, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_658 = _this;
  _this setPos [12311.962, 12640.177, 1.5258789e-005];
};

_vehicle_659 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12293.102, 12646.668, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_659 = _this;
  _this setPos [12293.102, 12646.668, 4.5776367e-005];
};

_vehicle_660 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12274.129, 12653.264, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_660 = _this;
  _this setPos [12274.129, 12653.264, 1.5258789e-005];
};

_vehicle_661 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12255.315, 12659.79, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_661 = _this;
  _this setPos [12255.315, 12659.79, 0];
};

_vehicle_662 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12236.318, 12666.353, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_662 = _this;
  _this setPos [12236.318, 12666.353, 0];
};

_vehicle_663 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12217.54, 12672.773, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_663 = _this;
  _this setPos [12217.54, 12672.773, 0];
};

_vehicle_664 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12198.546, 12679.335, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_664 = _this;
  _this setPos [12198.546, 12679.335, 0];
};

_vehicle_665 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12179.724, 12685.863, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_665 = _this;
  _this setPos [12179.724, 12685.863, 0];
};

_vehicle_666 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12160.791, 12692.445, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_666 = _this;
  _this setPos [12160.791, 12692.445, 0];
};

_vehicle_667 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12141.993, 12698.975, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_667 = _this;
  _this setPos [12141.993, 12698.975, -1.5258789e-005];
};

_vehicle_668 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12123.026, 12705.56, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_668 = _this;
  _this setPos [12123.026, 12705.56, 3.0517578e-005];
};

_vehicle_669 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12104.206, 12712.07, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_669 = _this;
  _this setPos [12104.206, 12712.07, 6.1035156e-005];
};

_vehicle_670 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12085.197, 12718.662, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_670 = _this;
  _this setPos [12085.197, 12718.662, 0];
};

_vehicle_671 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12066.396, 12725.14, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_671 = _this;
  _this setPos [12066.396, 12725.14, 1.5258789e-005];
};

_vehicle_672 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12047.419, 12731.738, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_672 = _this;
  _this setPos [12047.419, 12731.738, 1.5258789e-005];
};

_vehicle_673 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12028.602, 12738.269, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_673 = _this;
  _this setPos [12028.602, 12738.269, 0];
};

_vehicle_674 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [12009.627, 12744.814, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_674 = _this;
  _this setPos [12009.627, 12744.814, 6.1035156e-005];
};

_vehicle_675 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Yellowlight", [11990.833, 12751.359, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_675 = _this;
  _this setPos [11990.833, 12751.359, 3.0517578e-005];
};

_vehicle_676 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11795.585, 12821.167, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_676 = _this;
  _this setPos [11795.585, 12821.167, 4.5776367e-005];
};

_vehicle_677 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11804.408, 12823.64, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_677 = _this;
  _this setPos [11804.408, 12823.64, 0];
};

_vehicle_678 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11816.308, 12826.954, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_678 = _this;
  _this setPos [11816.308, 12826.954, 3.0517578e-005];
};

_vehicle_679 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11827.558, 12830.072, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_679 = _this;
  _this setPos [11827.558, 12830.072, 0];
};

_vehicle_680 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11839.779, 12833.496, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_680 = _this;
  _this setPos [11839.779, 12833.496, 6.1035156e-005];
};

_vehicle_681 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11851.104, 12836.627, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_681 = _this;
  _this setPos [11851.104, 12836.627, 1.5258789e-005];
};

_vehicle_682 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11862.517, 12839.806, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_682 = _this;
  _this setPos [11862.517, 12839.806, 3.0517578e-005];
};

_vehicle_683 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11871.815, 12836.656, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_683 = _this;
  _this setPos [11871.815, 12836.656, 3.0517578e-005];
};

_vehicle_684 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11881.302, 12833.415, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_684 = _this;
  _this setPos [11881.302, 12833.415, 7.6293945e-005];
};

_vehicle_685 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11890.829, 12830.186, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_685 = _this;
  _this setPos [11890.829, 12830.186, 0];
};

_vehicle_686 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11900.311, 12826.942, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_686 = _this;
  _this setPos [11900.311, 12826.942, 0];
};

_vehicle_687 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11909.652, 12823.754, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_687 = _this;
  _this setPos [11909.652, 12823.754, 1.5258789e-005];
};

_vehicle_688 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11919.183, 12820.506, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_688 = _this;
  _this setPos [11919.183, 12820.506, 0];
};

_vehicle_689 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11928.655, 12817.3, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_689 = _this;
  _this setPos [11928.655, 12817.3, 0];
};

_vehicle_690 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11938.082, 12814.038, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_690 = _this;
  _this setPos [11938.082, 12814.038, 3.0517578e-005];
};

_vehicle_691 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11945.117, 12804.539, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_691 = _this;
  _this setPos [11945.117, 12804.539, 7.6293945e-005];
};

_vehicle_692 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11952.133, 12795.028, 0.00021362305], [], 0, "CAN_COLLIDE"];
  _vehicle_692 = _this;
  _this setPos [11952.133, 12795.028, 0.00021362305];
};

_vehicle_693 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11959.656, 12784.886, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_693 = _this;
  _this setPos [11959.656, 12784.886, 6.1035156e-005];
};

_vehicle_694 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11966.592, 12775.477, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_694 = _this;
  _this setPos [11966.592, 12775.477, 0.00010681152];
};

_vehicle_695 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11973.987, 12765.522, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_695 = _this;
  _this setPos [11973.987, 12765.522, 3.0517578e-005];
};

_vehicle_696 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11979.899, 12757.521, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_696 = _this;
  _this setPos [11979.899, 12757.521, 0];
};

_vehicle_697 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11961.178, 12721.745, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_697 = _this;
  _this setPos [11961.178, 12721.745, 7.6293945e-005];
};

_vehicle_698 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11967.255, 12713.537, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_698 = _this;
  _this setPos [11967.255, 12713.537, 1.5258789e-005];
};

_vehicle_699 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11974.628, 12703.536, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_699 = _this;
  _this setPos [11974.628, 12703.536, -3.0517578e-005];
};

_vehicle_700 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11981.522, 12694.193, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_700 = _this;
  _this setPos [11981.522, 12694.193, 4.5776367e-005];
};

_vehicle_701 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11989.112, 12683.992, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_701 = _this;
  _this setPos [11989.112, 12683.992, 0.00010681152];
};

_vehicle_702 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12146.093, 12657.616, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_702 = _this;
  _this setPos [12146.093, 12657.616, 7.6293945e-005];
};

_vehicle_703 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12136.877, 12655.084, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_703 = _this;
  _this setPos [12136.877, 12655.084, 9.1552734e-005];
};

_vehicle_704 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12124.922, 12651.774, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_704 = _this;
  _this setPos [12124.922, 12651.774, 0];
};

_vehicle_705 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12112.786, 12648.419, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_705 = _this;
  _this setPos [12112.786, 12648.419, 0.00010681152];
};

_vehicle_706 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12101.44, 12645.279, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_706 = _this;
  _this setPos [12101.44, 12645.279, 6.1035156e-005];
};

_vehicle_707 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12090.152, 12642.119, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_707 = _this;
  _this setPos [12090.152, 12642.119, 9.1552734e-005];
};

_vehicle_708 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12544.421, 12548.781, 0.040199082], [], 0, "CAN_COLLIDE"];
  _vehicle_708 = _this;
  _this setPos [12544.421, 12548.781, 0.040199082];
};

_vehicle_710 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12549.364, 12547.072, 0.0046674907], [], 0, "CAN_COLLIDE"];
  _vehicle_710 = _this;
  _this setPos [12549.364, 12547.072, 0.0046674907];
};

_vehicle_712 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12554.018, 12545.429, 0.055697959], [], 0, "CAN_COLLIDE"];
  _vehicle_712 = _this;
  _this setPos [12554.018, 12545.429, 0.055697959];
};

_vehicle_713 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12539.929, 12535.682, 0.035901245], [], 0, "CAN_COLLIDE"];
  _vehicle_713 = _this;
  _this setPos [12539.929, 12535.682, 0.035901245];
};

_vehicle_715 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12544.696, 12534.028, 0.02354354], [], 0, "CAN_COLLIDE"];
  _vehicle_715 = _this;
  _this setPos [12544.696, 12534.028, 0.02354354];
};

_vehicle_717 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12549.322, 12532.399, 0.054554913], [], 0, "CAN_COLLIDE"];
  _vehicle_717 = _this;
  _this setPos [12549.322, 12532.399, 0.054554913];
};

_vehicle_719 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12546.934, 12540.588, 0.043228965], [], 0, "CAN_COLLIDE"];
  _vehicle_719 = _this;
  _this setPos [12546.934, 12540.588, 0.043228965];
};

_vehicle_721 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12542.169, 12542.255, 0.017272949], [], 0, "CAN_COLLIDE"];
  _vehicle_721 = _this;
  _this setPos [12542.169, 12542.255, 0.017272949];
};

_vehicle_723 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12556.316, 12537.306, 0.028649412], [], 0, "CAN_COLLIDE"];
  _vehicle_723 = _this;
  _this setPos [12556.316, 12537.306, 0.028649412];
};

_vehicle_725 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12551.546, 12538.962, 0.042756762], [], 0, "CAN_COLLIDE"];
  _vehicle_725 = _this;
  _this setPos [12551.546, 12538.962, 0.042756762];
};

_vehicle_726 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12547.901, 12558.937, 0.031451941], [], 0, "CAN_COLLIDE"];
  _vehicle_726 = _this;
  _this setPos [12547.901, 12558.937, 0.031451941];
};

_vehicle_727 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12536.466, 12525.49, 0.019119538], [], 0, "CAN_COLLIDE"];
  _vehicle_727 = _this;
  _this setPos [12536.466, 12525.49, 0.019119538];
};

_vehicle_728 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12538.15, 12530.561, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_728 = _this;
  _this setPos [12538.15, 12530.561, 1.5258789e-005];
};

_vehicle_729 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12546.187, 12553.986, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_729 = _this;
  _this setPos [12546.187, 12553.986, 3.0517578e-005];
};

_vehicle_730 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11790.416, 12814.788, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_730 = _this;
  _this setPos [11790.416, 12814.788, 3.0517578e-005];
};

_vehicle_731 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [11782.429, 12791.429, 0.01915005], [], 0, "CAN_COLLIDE"];
  _vehicle_731 = _this;
  _this setPos [11782.429, 12791.429, 0.01915005];
};

_vehicle_733 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12565.411, 12534.129, 0.042832524], [], 0, "CAN_COLLIDE"];
  _vehicle_733 = _this;
  _this setPos [12565.411, 12534.129, 0.042832524];
};

_vehicle_735 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12560.865, 12535.71, 0.056931645], [], 0, "CAN_COLLIDE"];
  _vehicle_735 = _this;
  _this setPos [12560.865, 12535.71, 0.056931645];
};

_vehicle_738 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12574.796, 12530.848, 0.094813675], [], 0, "CAN_COLLIDE"];
  _vehicle_738 = _this;
  _this setPos [12574.796, 12530.848, 0.094813675];
};

_vehicle_740 = objNull;
if (true) then
{
  _this = createVehicle ["LAND_ASC_runway_Bluelight", [12570.023, 12532.501, 0.053241089], [], 0, "CAN_COLLIDE"];
  _vehicle_740 = _this;
  _this setPos [12570.023, 12532.501, 0.053241089];
};

_vehicle_741 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Glass_Cullet_01", [12529.009, 12498.033, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_741 = _this;
  _this setPos [12529.009, 12498.033, 9.1552734e-005];
};

_vehicle_742 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Glass_Cullet_01", [12568.695, 12570.543, -0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_742 = _this;
  _this setPos [12568.695, 12570.543, -0.0001373291];
};

_vehicle_743 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Glass_Cullet_01", [12341.655, 12670.979, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_743 = _this;
  _this setPos [12341.655, 12670.979, 7.6293945e-005];
};

_vehicle_744 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Glass_Cullet_01", [12166.301, 12759.391, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_744 = _this;
  _this setPos [12166.301, 12759.391, -1.5258789e-005];
};

_vehicle_745 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Glass_Cullet_01", [11940.804, 12828.49, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_745 = _this;
  _this setPos [11940.804, 12828.49, 4.5776367e-005];
};

_vehicle_746 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Glass_Cullet_01", [12096.023, 12617.286, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_746 = _this;
  _this setPos [12096.023, 12617.286, 9.1552734e-005];
};

_vehicle_747 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Glass_Cullet_01", [12083.302, 12620.611, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_747 = _this;
  _this setPos [12083.302, 12620.611, -6.1035156e-005];
};

_vehicle_748 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Glass_Cullet_01", [12163.324, 12591.165, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_748 = _this;
  _this setPos [12163.324, 12591.165, 0];
};

_vehicle_749 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12145.72, 12602.73, 0.035483725], [], 0, "CAN_COLLIDE"];
  _vehicle_749 = _this;
  _this setDir -141.21762;
  _this setPos [12145.72, 12602.73, 0.035483725];
};

_vehicle_750 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12150.372, 12598.95, -0.038586639], [], 0, "CAN_COLLIDE"];
  _vehicle_750 = _this;
  _this setDir -141.21762;
  _this setPos [12150.372, 12598.95, -0.038586639];
};

_vehicle_751 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4_D", [12155.602, 12596.349, -0.023387464], [], 0, "CAN_COLLIDE"];
  _vehicle_751 = _this;
  _this setDir -159.58987;
  _this setPos [12155.602, 12596.349, -0.023387464];
};

_vehicle_752 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12161.086, 12594.307, -0.03810174], [], 0, "CAN_COLLIDE"];
  _vehicle_752 = _this;
  _this setDir -159.4133;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12161.086, 12594.307, -0.03810174];
};

_vehicle_753 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_End_2", [12164.694, 12590.482, 0.023298962], [], 0, "CAN_COLLIDE"];
  _vehicle_753 = _this;
  _this setDir -70.27565;
  _this setPos [12164.694, 12590.482, 0.023298962];
};

_vehicle_756 = objNull;
if (true) then
{
  _this = createVehicle ["Sign_sphere10cm_EP1", [11984.572, 12801.836, 3.4291551], [], 0, "CAN_COLLIDE"];
  _vehicle_756 = _this;
  _this setVehicleInit "BIS_Effects_Burn = compile preprocessFile ""\ca\Data\ParticleEffects\SCRIPTS\destruction\burn.sqf""; nul = [this, 4, time, false, false] spawn BIS_Effects_Burn;";
  _this setPos [11984.572, 12801.836, 3.4291551];
};

_vehicle_757 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12114.116, 12685.955, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_757 = _this;
  _this setPos [12114.116, 12685.955, 1.5258789e-005];
};

_vehicle_758 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [11795.83, 12680.261], [], 0, "CAN_COLLIDE"];
  _vehicle_758 = _this;
  _this setPos [11795.83, 12680.261];
};

_vehicle_759 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Canister_EP1", [11797.081, 12676.286, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_759 = _this;
  _this setPos [11797.081, 12676.286, 6.1035156e-005];
};

_vehicle_760 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_EP1", [11797.835, 12661.924, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_760 = _this;
  _this setPos [11797.835, 12661.924, 1.5258789e-005];
};

_vehicle_761 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wheel_cart_EP1", [11807.57, 12639.573, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_761 = _this;
  _this setDir -102.60323;
  _this setPos [11807.57, 12639.573, -3.0517578e-005];
};

_vehicle_762 = objNull;
if (true) then
{
  _this = createVehicle ["Land_tires_EP1", [11819.004, 12631.324], [], 0, "CAN_COLLIDE"];
  _vehicle_762 = _this;
  _this setPos [11819.004, 12631.324];
};

_vehicle_763 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_stack_EP1", [11827.071, 12650.785, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_763 = _this;
  _this setDir -14.780775;
  _this setPos [11827.071, 12650.785, -1.5258789e-005];
};

_vehicle_764 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [11798.997, 12654.242, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_764 = _this;
  _this setDir -55.874676;
  _this setPos [11798.997, 12654.242, 0.00012207031];
};

_vehicle_765 = objNull;
if (true) then
{
  _this = createVehicle ["Loudspeakers_EP1", [11817.633, 12637.237], [], 0, "CAN_COLLIDE"];
  _vehicle_765 = _this;
  _this setDir -27.199669;
  _this setPos [11817.633, 12637.237];
};

_vehicle_766 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [11826.061, 12648.753, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_766 = _this;
  _this setPos [11826.061, 12648.753, -4.5776367e-005];
};

_vehicle_767 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_long", [11800.697, 12654.721, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_767 = _this;
  _this setPos [11800.697, 12654.721, 1.5258789e-005];
};

_vehicle_768 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square3", [11802.416, 12659.194, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_768 = _this;
  _this setPos [11802.416, 12659.194, 1.5258789e-005];
};

_vehicle_769 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [11799.624, 12659.969, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_769 = _this;
  _this setPos [11799.624, 12659.969, 3.0517578e-005];
};

_vehicle_770 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [11794.517, 12681.17, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_770 = _this;
  _this setPos [11794.517, 12681.17, 1.5258789e-005];
};

_vehicle_771 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [11833.905, 12651.252, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_771 = _this;
  _this setPos [11833.905, 12651.252, 1.5258789e-005];
};

_vehicle_772 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [11805.706, 12657.996, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_772 = _this;
  _this setPos [11805.706, 12657.996, -4.5776367e-005];
};

_vehicle_773 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square3", [11786.289, 12636.996, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_773 = _this;
  _this setPos [11786.289, 12636.996, -1.5258789e-005];
};

_vehicle_774 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square3", [11781.986, 12652.433, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_774 = _this;
  _this setPos [11781.986, 12652.433, -1.5258789e-005];
};

_vehicle_775 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12222.312, 12589.139, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_775 = _this;
  _this setPos [12222.312, 12589.139, 1.5258789e-005];
};

_vehicle_776 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12400.987, 12648.026, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_776 = _this;
  _this setPos [12400.987, 12648.026, 1.5258789e-005];
};

_vehicle_779 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12392.791, 12505.373], [], 0, "CAN_COLLIDE"];
  _vehicle_779 = _this;
  _this setDir -160.39032;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12392.791, 12505.373];
};

_vehicle_781 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12403.918, 12511.439, -0.11703901], [], 0, "CAN_COLLIDE"];
  _vehicle_781 = _this;
  _this setDir -248.71298;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12403.918, 12511.439, -0.11703901];
};

_vehicle_783 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4_D", [12398.464, 12503.467, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_783 = _this;
  _this setDir -162.06248;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12398.464, 12503.467, -4.5776367e-005];
};

_vehicle_787 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_End_2", [12401.688, 12505.902, -0.076721027], [], 0, "CAN_COLLIDE"];
  _vehicle_787 = _this;
  _this setDir 113.372;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12401.688, 12505.902, -0.076721027];
};

_vehicle_795 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [12306.24, 12708.344, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_795 = _this;
  _this setDir -199.77657;
  _this setVehicleInit "this setvectorup [0.1,0.1,0.01]";
  _this setPos [12306.24, 12708.344, -1.5258789e-005];
};

_vehicle_798 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [12401.332, 12505.188, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_798 = _this;
  _this setDir -198.29312;
  _this setPos [12401.332, 12505.188, -7.6293945e-005];
};

_vehicle_801 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_Workshop01_01", [12444.531, 12518.581, -0.096140817], [], 0, "CAN_COLLIDE"];
  _vehicle_801 = _this;
  _this setDir -343.39471;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12444.531, 12518.581, -0.096140817];
};

_vehicle_808 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12354.225, 12521.773, -0.058488265], [], 0, "CAN_COLLIDE"];
  _vehicle_808 = _this;
  _this setDir -428.83466;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12354.225, 12521.773, -0.058488265];
};

_vehicle_812 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12357.209, 12518.635, -0.018043328], [], 0, "CAN_COLLIDE"];
  _vehicle_812 = _this;
  _this setDir -159.17151;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12357.209, 12518.635, -0.018043328];
};

_vehicle_813 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4_D", [12362.609, 12516.615, -0.0019226037], [], 0, "CAN_COLLIDE"];
  _vehicle_813 = _this;
  _this setDir -159.56236;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12362.609, 12516.615, -0.0019226037];
};

_vehicle_817 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12370.989, 12513.66, 0.060439181], [], 0, "CAN_COLLIDE"];
  _vehicle_817 = _this;
  _this setDir -520.52521;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12370.989, 12513.66, 0.060439181];
};

_vehicle_823 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_End_2", [12365.342, 12515.608, 0.060545973], [], 0, "CAN_COLLIDE"];
  _vehicle_823 = _this;
  _this setDir 198.41304;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12365.342, 12515.608, 0.060545973];
};

_vehicle_825 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_End_3", [12399.78, 12504.649], [], 0, "CAN_COLLIDE"];
  _vehicle_825 = _this;
  _this setDir -106.16277;
  _this setPos [12399.78, 12504.649];
};

_vehicle_832 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12353.583, 12522.679, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_832 = _this;
  _this setPos [12353.583, 12522.679, -1.5258789e-005];
};

_vehicle_833 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12358.472, 12517.396, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_833 = _this;
  _this setPos [12358.472, 12517.396, -1.5258789e-005];
};

_vehicle_834 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12471.259, 12487.35, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_834 = _this;
  _this setPos [12471.259, 12487.35, -0.00010681152];
};

_vehicle_836 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12457.388, 12492.665, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_836 = _this;
  _this setPos [12457.388, 12492.665, 0];
};

_vehicle_837 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12511.624, 12496.547, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_837 = _this;
  _this setPos [12511.624, 12496.547, 1.5258789e-005];
};

_vehicle_839 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndFnc_Pole", [12582.777, 12508.613, -0.077361204], [], 0, "CAN_COLLIDE"];
  _vehicle_839 = _this;
  _this setDir 87.329727;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12582.777, 12508.613, -0.077361204];
};

_vehicle_847 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [12442.815, 12514.176, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_847 = _this;
  _this setDir 114.80869;
  _this setPos [12442.815, 12514.176, 3.0517578e-005];
};

_vehicle_848 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [12442.18, 12521.709, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_848 = _this;
  _this setDir -218.78468;
  _this setPos [12442.18, 12521.709, -1.5258789e-005];
};

_vehicle_849 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [12441.69, 12520.086, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_849 = _this;
  _this setDir -152.97269;
  _this setPos [12441.69, 12520.086, -4.5776367e-005];
};

_vehicle_850 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [12440.681, 12521.465, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_850 = _this;
  _this setDir -12.577421;
  _this setPos [12440.681, 12521.465, -9.1552734e-005];
};

_vehicle_851 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12440.57, 12520.505, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_851 = _this;
  _this setPos [12440.57, 12520.505, -9.1552734e-005];
};

_vehicle_852 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12442.062, 12512.924, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_852 = _this;
  _this setPos [12442.062, 12512.924, -4.5776367e-005];
};

_vehicle_853 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12442.545, 12522.972, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_853 = _this;
  _this setPos [12442.545, 12522.972, 0];
};

_vehicle_854 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12402.993, 12506.085, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_854 = _this;
  _this setPos [12402.993, 12506.085, 1.5258789e-005];
};

_vehicle_855 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12566.758, 12471.453, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_855 = _this;
  _this setPos [12566.758, 12471.453, 3.0517578e-005];
};

_vehicle_856 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12564.126, 12470.623, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_856 = _this;
  _this setPos [12564.126, 12470.623, 0];
};

_vehicle_857 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square3", [12566.523, 12470.408, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_857 = _this;
  _this setPos [12566.523, 12470.408, 3.0517578e-005];
};

_vehicle_870 = objNull;
if (true) then
{
  _this = createVehicle ["CampEast_EP1", [12574.978, 12484.623, -0.018248022], [], 0, "CAN_COLLIDE"];
  _vehicle_870 = _this;
  _this setDir 70.962891;
  _this setPos [12574.978, 12484.623, -0.018248022];
};

_vehicle_873 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_garbage_misc", [12309.605, 12707.769, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_873 = _this;
  _this setDir -17.806263;
  _this setPos [12309.605, 12707.769, 1.5258789e-005];
};

_vehicle_874 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_garbage_paleta", [12307.989, 12709.567, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_874 = _this;
  _this setDir 133.47632;
  _this setPos [12307.989, 12709.567, 1.5258789e-005];
};

_vehicle_875 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12310.854, 12706.39, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_875 = _this;
  _this setPos [12310.854, 12706.39, 4.5776367e-005];
};

_vehicle_876 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12311.853, 12708.728, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_876 = _this;
  _this setPos [12311.853, 12708.728, 1.5258789e-005];
};

_vehicle_877 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12308.177, 12711.867, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_877 = _this;
  _this setPos [12308.177, 12711.867, 1.5258789e-005];
};

_vehicle_879 = objNull;
if (true) then
{
  _this = createVehicle ["UAZWreck", [12341.146, 12673.248, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_879 = _this;
  _this setDir 39.642006;
  _this setVehicleInit "this setvectorup [0.1,0.1,0]";
  _this setPos [12341.146, 12673.248, 3.0517578e-005];
};

_vehicle_883 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndFnc_Pole", [12214.909, 12740.749, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_883 = _this;
  _this setDir 21.751715;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12214.909, 12740.749, -4.5776367e-005];
};

_vehicle_885 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_quercus2f", [12215.457, 12742.54, 0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_885 = _this;
  _this setPos [12215.457, 12742.54, 0.00024414063];
};

_vehicle_887 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndFnc_Pole", [12007.078, 12796.894, -0.11957519], [], 0, "CAN_COLLIDE"];
  _vehicle_887 = _this;
  _this setDir 21.751715;
  _this setVehicleInit "this setvectorup [0,0.05,0.1]";
  _this setPos [12007.078, 12796.894, -0.11957519];
};

_vehicle_890 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndFnc_Pole", [12004.641, 12797.954, -0.46757033], [], 0, "CAN_COLLIDE"];
  _vehicle_890 = _this;
  _this setDir 21.751715;
  _this setVehicleInit "this setvectorup [0,0.1,0.1]";
  _this setPos [12004.641, 12797.954, -0.46757033];
};

_vehicle_911 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [11931.462, 12716.765, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_911 = _this;
  _this setDir -160.89082;
  _this setPos [11931.462, 12716.765, 3.0517578e-005];
};

_vehicle_914 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndFnc_Pole", [11924.433, 12719.176, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_914 = _this;
  _this setDir -162.05318;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [11924.433, 12719.176, -1.5258789e-005];
};

_vehicle_916 = objNull;
if (true) then
{
  _this = createVehicle ["datsun02Wreck", [11921.67, 12721.49, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_916 = _this;
  _this setDir -80.067024;
  _this setPos [11921.67, 12721.49, -4.5776367e-005];
};

_vehicle_918 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11932.046, 12715.87, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_918 = _this;
  _this setPos [11932.046, 12715.87, 0];
};

_vehicle_920 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11933.629, 12715.567, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_920 = _this;
  _this setPos [11933.629, 12715.567, -9.1552734e-005];
};

_vehicle_922 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11943.524, 12712.167, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_922 = _this;
  _this setPos [11943.524, 12712.167, 0];
};

_vehicle_924 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11964.48, 12704.818, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_924 = _this;
  _this setPos [11964.48, 12704.818, 4.5776367e-005];
};

_vehicle_926 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11872.171, 12736.464, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_926 = _this;
  _this setPos [11872.171, 12736.464, 0];
};

_vehicle_928 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11766.763, 12772.395, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_928 = _this;
  _this setPos [11766.763, 12772.395, 4.5776367e-005];
};

_vehicle_930 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11768.823, 12772.003, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_930 = _this;
  _this setPos [11768.823, 12772.003, -4.5776367e-005];
};

_vehicle_932 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11802.949, 12760.056, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_932 = _this;
  _this setPos [11802.949, 12760.056, -1.5258789e-005];
};

_vehicle_934 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11820.845, 12753.943, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_934 = _this;
  _this setPos [11820.845, 12753.943, -1.5258789e-005];
};

_vehicle_936 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11961.248, 12700.852, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_936 = _this;
  _this setPos [11961.248, 12700.852, 1.5258789e-005];
};

_vehicle_938 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11910.123, 12724.858, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_938 = _this;
  _this setPos [11910.123, 12724.858, 3.0517578e-005];
};

_vehicle_941 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11924.726, 12719.803, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_941 = _this;
  _this setPos [11924.726, 12719.803, -1.5258789e-005];
};

_vehicle_943 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11935.295, 12714.968, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_943 = _this;
  _this setPos [11935.295, 12714.968, 3.0517578e-005];
};

_vehicle_945 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11940.214, 12709.521, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_945 = _this;
  _this setPos [11940.214, 12709.521, 0.00012207031];
};

_vehicle_947 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11916.341, 12720.908, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_947 = _this;
  _this setPos [11916.341, 12720.908, 0];
};

_vehicle_949 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11886.227, 12732.458, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_949 = _this;
  _this setPos [11886.227, 12732.458, 1.5258789e-005];
};

_vehicle_951 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11875.952, 12735.958, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_951 = _this;
  _this setPos [11875.952, 12735.958, 0];
};

_vehicle_953 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11854.063, 12742.808, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_953 = _this;
  _this setPos [11854.063, 12742.808, 0];
};

_vehicle_955 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11822.285, 12753.631, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_955 = _this;
  _this setPos [11822.285, 12753.631, 3.0517578e-005];
};

_vehicle_957 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11823.408, 12753.363, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_957 = _this;
  _this setPos [11823.408, 12753.363, 1.5258789e-005];
};

_vehicle_959 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11769.353, 12772.326, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_959 = _this;
  _this setPos [11769.353, 12772.326, 4.5776367e-005];
};

_vehicle_961 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11748.5, 12806.813, 0.0004119873], [], 0, "CAN_COLLIDE"];
  _vehicle_961 = _this;
  _this setPos [11748.5, 12806.813, 0.0004119873];
};

_vehicle_963 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11762.478, 12836.539, 0.00030517578], [], 0, "CAN_COLLIDE"];
  _vehicle_963 = _this;
  _this setPos [11762.478, 12836.539, 0.00030517578];
};

_vehicle_965 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11775.392, 12863.441, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_965 = _this;
  _this setPos [11775.392, 12863.441, 1.5258789e-005];
};

_vehicle_967 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11774.8, 12862.585, 0.00030517578], [], 0, "CAN_COLLIDE"];
  _vehicle_967 = _this;
  _this setPos [11774.8, 12862.585, 0.00030517578];
};

_vehicle_969 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11765.021, 12842.589, -0.00025939941], [], 0, "CAN_COLLIDE"];
  _vehicle_969 = _this;
  _this setPos [11765.021, 12842.589, -0.00025939941];
};

_vehicle_971 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11986.363, 12671.377, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_971 = _this;
  _this setPos [11986.363, 12671.377, 3.0517578e-005];
};

_vehicle_973 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12107.582, 12758.232, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_973 = _this;
  _this setPos [12107.582, 12758.232, 0];
};

_vehicle_980 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12092.938, 12764.646, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_980 = _this;
  _this setPos [12092.938, 12764.646, 0];
};

_vehicle_982 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12091.2, 12765.313, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_982 = _this;
  _this setPos [12091.2, 12765.313, 0];
};

_vehicle_984 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12035.084, 12786.658, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_984 = _this;
  _this setPos [12035.084, 12786.658, 1.5258789e-005];
};

_vehicle_986 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12061.297, 12775.789, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_986 = _this;
  _this setPos [12061.297, 12775.789, 0];
};

_vehicle_988 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12292.747, 12692.237, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_988 = _this;
  _this setPos [12292.747, 12692.237, 1.5258789e-005];
};

_vehicle_990 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12528.632, 12606.429, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_990 = _this;
  _this setPos [12528.632, 12606.429, -0.00016784668];
};

_vehicle_992 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12525.995, 12607.291, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_992 = _this;
  _this setPos [12525.995, 12607.291, -0.00016784668];
};

_vehicle_994 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12527.344, 12605.166, -0.00038146973], [], 0, "CAN_COLLIDE"];
  _vehicle_994 = _this;
  _this setPos [12527.344, 12605.166, -0.00038146973];
};

_vehicle_996 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12323.856, 12546.477, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_996 = _this;
  _this setPos [12323.856, 12546.477, 1.5258789e-005];
};

_vehicle_998 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12324.031, 12543.386, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_998 = _this;
  _this setPos [12324.031, 12543.386, 6.1035156e-005];
};

_vehicle_1001 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12322.702, 12543.754, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1001 = _this;
  _this setPos [12322.702, 12543.754, 0];
};

_vehicle_1005 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12331.624, 12539.478, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1005 = _this;
  _this setPos [12331.624, 12539.478, 3.0517578e-005];
};

_vehicle_1007 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12404.774, 12511.897, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1007 = _this;
  _this setPos [12404.774, 12511.897, 1.5258789e-005];
};

_vehicle_1009 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12526.53, 12605.772, -0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1009 = _this;
  _this setPos [12526.53, 12605.772, -0.00016784668];
};

_vehicle_1011 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12504.272, 12614.546, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1011 = _this;
  _this setPos [12504.272, 12614.546, -0.00012207031];
};

_vehicle_1013 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12512.71, 12611.584, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1013 = _this;
  _this setPos [12512.71, 12611.584, -0.00012207031];
};

_vehicle_1015 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12315.234, 12682.226, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1015 = _this;
  _this setPos [12315.234, 12682.226, 7.6293945e-005];
};

_vehicle_1017 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12292.009, 12692.79, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1017 = _this;
  _this setPos [12292.009, 12692.79, 6.1035156e-005];
};

_vehicle_1019 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12090.568, 12765.476, 0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_1019 = _this;
  _this setPos [12090.568, 12765.476, 0.00015258789];
};

_vehicle_1021 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12065.688, 12774.684, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1021 = _this;
  _this setPos [12065.688, 12774.684, 4.5776367e-005];
};

_vehicle_1023 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12062.661, 12775.932, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1023 = _this;
  _this setPos [12062.661, 12775.932, 6.1035156e-005];
};

_vehicle_1025 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12012.613, 12794.838, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1025 = _this;
  _this setPos [12012.613, 12794.838, 1.5258789e-005];
};

_vehicle_1027 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12013.34, 12794.489, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1027 = _this;
  _this setPos [12013.34, 12794.489, 1.5258789e-005];
};

_vehicle_1036 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_quercus2f", [12085.71, 12620.458, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1036 = _this;
  _this setPos [12085.71, 12620.458, 4.5776367e-005];
};

_vehicle_1044 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11826.148, 12863.619, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1044 = _this;
  _this setPos [11826.148, 12863.619, -3.0517578e-005];
};

_vehicle_1046 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11824.522, 12863.936, -6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1046 = _this;
  _this setPos [11824.522, 12863.936, -6.1035156e-005];
};

_vehicle_1048 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11845.608, 12857.177, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1048 = _this;
  _this setPos [11845.608, 12857.177, 0.00018310547];
};

_vehicle_1050 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11926.58, 12847.255, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1050 = _this;
  _this setPos [11926.58, 12847.255, 3.0517578e-005];
};

_vehicle_1052 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11957.284, 12823.507, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1052 = _this;
  _this setPos [11957.284, 12823.507, 1.5258789e-005];
};

_vehicle_1054 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11954.45, 12816.013, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1054 = _this;
  _this setPos [11954.45, 12816.013, 1.5258789e-005];
};

_vehicle_1058 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12005.656, 12792.183, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1058 = _this;
  _this setPos [12005.656, 12792.183, 0];
};

_vehicle_1060 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12006.849, 12791.676, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1060 = _this;
  _this setPos [12006.849, 12791.676, 1.5258789e-005];
};

_vehicle_1088 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench2_noRoad", [12212.356, 12581.131, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1088 = _this;
  _this setDir 20.263918;
  _this setPos [12212.356, 12581.131, 4.5776367e-005];
};

_vehicle_1091 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench2_noRoad", [12290.142, 12567.79], [], 0, "CAN_COLLIDE"];
  _vehicle_1091 = _this;
  _this setDir 20.263918;
  _this setPos [12290.142, 12567.79];
};

_vehicle_1094 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_craet2", [12443.266, 12496.815, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1094 = _this;
  _this setDir -225.35306;
  _this setPos [12443.266, 12496.815, 7.6293945e-005];
};

_vehicle_1096 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_craet2", [12077.047, 12771.899, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1096 = _this;
  _this setDir -81.581482;
  _this setPos [12077.047, 12771.899, 6.1035156e-005];
};

_vehicle_1098 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_craet1", [11850.109, 12856.234], [], 0, "CAN_COLLIDE"];
  _vehicle_1098 = _this;
  _this setPos [11850.109, 12856.234];
};

_vehicle_1099 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_salix2s", [11898.731, 12838.905, 0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1099 = _this;
  _this setPos [11898.731, 12838.905, 0.00018310547];
};

_vehicle_1100 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_salix2s", [11826.423, 12751.552, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1100 = _this;
  _this setPos [11826.423, 12751.552, 6.1035156e-005];
};

_vehicle_1101 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_sambucus", [11851.136, 12743.061, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1101 = _this;
  _this setDir -148.52693;
  _this setPos [11851.136, 12743.061, 3.0517578e-005];
};

_vehicle_1102 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_salix2s", [11889.648, 12722.154, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1102 = _this;
  _this setPos [11889.648, 12722.154, 1.5258789e-005];
};

_vehicle_1103 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_craet1", [11894.69, 12718.643, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1103 = _this;
  _this setPos [11894.69, 12718.643, 0];
};

_vehicle_1105 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [11934.772, 12716.734, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1105 = _this;
  _this setDir -136.34227;
  _this setPos [11934.772, 12716.734, 9.1552734e-005];
};

_vehicle_1107 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [11874.011, 12735.139, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1107 = _this;
  _this setDir -334.50021;
  _this setPos [11874.011, 12735.139, 9.1552734e-005];
};

_vehicle_1110 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [11926.631, 12714.254, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1110 = _this;
  _this setDir -303.62778;
  _this setPos [11926.631, 12714.254, 7.6293945e-005];
};

_vehicle_1113 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [11970.097, 12691.497, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1113 = _this;
  _this setDir -303.62778;
  _this setPos [11970.097, 12691.497, 9.1552734e-005];
};

_vehicle_1116 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea2s", [11960.097, 12682.74, 0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1116 = _this;
  _this setPos [11960.097, 12682.74, 0.00016784668];
};

_vehicle_1117 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [11976.221, 12682.795], [], 0, "CAN_COLLIDE"];
  _vehicle_1117 = _this;
  _this setPos [11976.221, 12682.795];
};

_vehicle_1119 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [11966.232, 12680.42, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1119 = _this;
  _this setDir -45.44593;
  _this setPos [11966.232, 12680.42, 9.1552734e-005];
};

_vehicle_1123 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [11969.572, 12676.293, 0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_1123 = _this;
  _this setDir -452.08963;
  _this setPos [11969.572, 12676.293, 0.00024414063];
};

_vehicle_1126 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [11973.146, 12679.167, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_1126 = _this;
  _this setDir 117.03296;
  _this setPos [11973.146, 12679.167, 0.0001373291];
};

_vehicle_1129 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12033.798, 12787.718, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1129 = _this;
  _this setDir -460.7243;
  _this setPos [12033.798, 12787.718, 0.00012207031];
};

_vehicle_1132 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12078.856, 12770.769, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1132 = _this;
  _this setDir -641.37482;
  _this setPos [12078.856, 12770.769, 0.00010681152];
};

_vehicle_1135 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12243.312, 12731.054, 0.00036621094], [], 0, "CAN_COLLIDE"];
  _vehicle_1135 = _this;
  _this setDir -981.9729;
  _this setPos [12243.312, 12731.054, 0.00036621094];
};

_vehicle_1137 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12372.486, 12662.656, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1137 = _this;
  _this setDir -645.03522;
  _this setPos [12372.486, 12662.656, 9.1552734e-005];
};

_vehicle_1151 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_prunus", [12494.205, 12618.574, 0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1151 = _this;
  _this setDir -132.6368;
  _this setPos [12494.205, 12618.574, 0.00016784668];
};

_vehicle_1156 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [11924.707, 12828.122, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1156 = _this;
  _this setDir -250.78839;
  _this setPos [11924.707, 12828.122, 1.5258789e-005];
};

_vehicle_1160 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_BoardsPack2", [11929.328, 12842.249, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1160 = _this;
  _this setDir 16.212681;
  _this setPos [11929.328, 12842.249, -1.5258789e-005];
};

_vehicle_1161 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [11928.487, 12839.863, 0.074447632], [], 0, "CAN_COLLIDE"];
  _vehicle_1161 = _this;
  _this setDir 21.855392;
  _this setPos [11928.487, 12839.863, 0.074447632];
};

_vehicle_1165 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_End_3", [12164.573, 12592.979, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1165 = _this;
  _this setDir -338.13879;
  _this setPos [12164.573, 12592.979, 9.1552734e-005];
};

_vehicle_1168 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndCnc_4", [12186.01, 12608.373, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1168 = _this;
  _this setDir -335.0997;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12186.01, 12608.373, 3.0517578e-005];
};

_vehicle_1181 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12126.383, 12556.899, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1181 = _this;
  _this setDir -45.44593;
  _this setPos [12126.383, 12556.899, 0.00010681152];
};

_vehicle_1183 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12058.022, 12544.204, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1183 = _this;
  _this setDir -45.44593;
  _this setPos [12058.022, 12544.204, 9.1552734e-005];
};

_vehicle_1185 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12022.924, 12535.546, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1185 = _this;
  _this setDir -45.44593;
  _this setPos [12022.924, 12535.546, 1.5258789e-005];
};

_vehicle_1187 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12229.57, 12552.495, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1187 = _this;
  _this setDir -45.44593;
  _this setPos [12229.57, 12552.495, 7.6293945e-005];
};

_vehicle_1189 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12185.917, 12569.211, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1189 = _this;
  _this setDir -45.44593;
  _this setPos [12185.917, 12569.211, 1.5258789e-005];
};

_vehicle_1191 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12183.08, 12578.026], [], 0, "CAN_COLLIDE"];
  _vehicle_1191 = _this;
  _this setDir -45.44593;
  _this setPos [12183.08, 12578.026];
};

_vehicle_1194 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea2s", [12219.68, 12555.026, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1194 = _this;
  _this setPos [12219.68, 12555.026, 9.1552734e-005];
};

_vehicle_1196 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea2s", [12327.598, 12529.012, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1196 = _this;
  _this setPos [12327.598, 12529.012, 4.5776367e-005];
};

_vehicle_1199 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12322.458, 12533.189, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1199 = _this;
  _this setDir -45.44593;
  _this setPos [12322.458, 12533.189, 4.5776367e-005];
};

_vehicle_1201 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12334.099, 12523.449, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1201 = _this;
  _this setDir -45.44593;
  _this setPos [12334.099, 12523.449, -1.5258789e-005];
};

_vehicle_1205 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12314.756, 12540.836, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1205 = _this;
  _this setDir -45.44593;
  _this setPos [12314.756, 12540.836, 0.00010681152];
};

_vehicle_1207 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [11930.795, 12853.202, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1207 = _this;
  _this setDir -45.44593;
  _this setPos [11930.795, 12853.202, -1.5258789e-005];
};

_vehicle_1210 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12133.01, 12570.081], [], 0, "CAN_COLLIDE"];
  _vehicle_1210 = _this;
  _this setDir -303.62778;
  _this setPos [12133.01, 12570.081];
};

_vehicle_1212 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12185.507, 12581.889, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1212 = _this;
  _this setDir -303.62778;
  _this setPos [12185.507, 12581.889, 7.6293945e-005];
};

_vehicle_1214 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12183.777, 12582.721, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1214 = _this;
  _this setDir -303.62778;
  _this setPos [12183.777, 12582.721, 6.1035156e-005];
};

_vehicle_1216 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12228.589, 12554.863, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1216 = _this;
  _this setDir -328.2525;
  _this setPos [12228.589, 12554.863, 1.5258789e-005];
};

_vehicle_1218 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12337.646, 12528.873, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1218 = _this;
  _this setDir -252.64108;
  _this setPos [12337.646, 12528.873, 7.6293945e-005];
};

_vehicle_1221 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12336.273, 12530.233, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1221 = _this;
  _this setPos [12336.273, 12530.233, 4.5776367e-005];
};

_vehicle_1223 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12332.69, 12525.411, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1223 = _this;
  _this setPos [12332.69, 12525.411, 7.6293945e-005];
};

_vehicle_1225 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12403.972, 12510.625, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1225 = _this;
  _this setDir -37.005558;
  _this setPos [12403.972, 12510.625, -1.5258789e-005];
};

_vehicle_1233 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12325.721, 12542.801, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1233 = _this;
  _this setDir -358.37082;
  _this setPos [12325.721, 12542.801, 1.5258789e-005];
};

_vehicle_1235 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12246.076, 12569.578, 0.00016784668], [], 0, "CAN_COLLIDE"];
  _vehicle_1235 = _this;
  _this setDir -323.89453;
  _this setPos [12246.076, 12569.578, 0.00016784668];
};

_vehicle_1240 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench2_noRoad", [12208.891, 12595.254, 0.0001373291], [], 0, "CAN_COLLIDE"];
  _vehicle_1240 = _this;
  _this setDir 113.09415;
  _this setPos [12208.891, 12595.254, 0.0001373291];
};

_vehicle_1245 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_weed3", [11953.113, 12708.663, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1245 = _this;
  _this setPos [11953.113, 12708.663, 3.0517578e-005];
};

_vehicle_1252 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12033.896, 12625.187], [], 0, "CAN_COLLIDE"];
  _vehicle_1252 = _this;
  _this setDir -45.44593;
  _this setPos [12033.896, 12625.187];
};

_vehicle_1255 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12031.232, 12632.649, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1255 = _this;
  _this setDir -45.44593;
  _this setPos [12031.232, 12632.649, 7.6293945e-005];
};

_vehicle_1265 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12594.197, 12501.371, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1265 = _this;
  _this setDir -45.44593;
  _this setPos [12594.197, 12501.371, 7.6293945e-005];
};

_vehicle_1268 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12593.624, 12493.072], [], 0, "CAN_COLLIDE"];
  _vehicle_1268 = _this;
  _this setDir -45.44593;
  _this setPos [12593.624, 12493.072];
};

_vehicle_1270 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12595.415, 12498.267, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1270 = _this;
  _this setDir -109.0144;
  _this setPos [12595.415, 12498.267, -1.5258789e-005];
};

_vehicle_1272 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12591.944, 12543.613, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1272 = _this;
  _this setDir -45.44593;
  _this setPos [12591.944, 12543.613, 4.5776367e-005];
};

_vehicle_1275 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_prunus", [12303.406, 12685.155, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1275 = _this;
  _this setDir -223.42059;
  _this setPos [12303.406, 12685.155, 9.1552734e-005];
};

_vehicle_1278 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_salix2s", [12290.923, 12694.471, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1278 = _this;
  _this setDir -19.055088;
  _this setPos [12290.923, 12694.471, 1.5258789e-005];
};

_vehicle_1285 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12548.758, 12480.26, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1285 = _this;
  _this setPos [12548.758, 12480.26, 7.6293945e-005];
};

_vehicle_1287 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12548.839, 12479.274, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1287 = _this;
  _this setPos [12548.839, 12479.274, 0];
};

_vehicle_1289 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12427.139, 12504.655, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1289 = _this;
  _this setPos [12427.139, 12504.655, 0];
};

_vehicle_1291 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12444.313, 12497.338, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1291 = _this;
  _this setPos [12444.313, 12497.338, 6.1035156e-005];
};

_vehicle_1293 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12444.965, 12510.533, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1293 = _this;
  _this setPos [12444.965, 12510.533, 3.0517578e-005];
};

_vehicle_1295 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12440.025, 12513.444, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1295 = _this;
  _this setPos [12440.025, 12513.444, 1.5258789e-005];
};

_vehicle_1298 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12446.952, 12509.963, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1298 = _this;
  _this setPos [12446.952, 12509.963, 1.5258789e-005];
};

_vehicle_1300 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12268.35, 12560.205, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1300 = _this;
  _this setPos [12268.35, 12560.205, 1.5258789e-005];
};

_vehicle_1302 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12210.095, 12569.985, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1302 = _this;
  _this setPos [12210.095, 12569.985, 4.5776367e-005];
};

_vehicle_1304 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12185.548, 12580.841, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1304 = _this;
  _this setPos [12185.548, 12580.841, 0];
};

_vehicle_1306 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12084.192, 12616.873, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1306 = _this;
  _this setPos [12084.192, 12616.873, 1.5258789e-005];
};

_vehicle_1308 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12185.305, 12609.628, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1308 = _this;
  _this setPos [12185.305, 12609.628, -1.5258789e-005];
};

_vehicle_1311 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [12186.722, 12601.941, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1311 = _this;
  _this setDir -161.35413;
  _this setPos [12186.722, 12601.941, 9.1552734e-005];
};

_vehicle_1314 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [12185.564, 12599.376, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1314 = _this;
  _this setDir -132.10248;
  _this setPos [12185.564, 12599.376, -1.5258789e-005];
};

_vehicle_1318 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta1", [12186.699, 12603.604, 0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1318 = _this;
  _this setDir 5.2004566;
  _this setPos [12186.699, 12603.604, 0.00010681152];
};

_vehicle_1319 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12185.664, 12602.155, -0.012680054], [], 0, "CAN_COLLIDE"];
  _vehicle_1319 = _this;
  _this setDir 46.101212;
  _this setPos [12185.664, 12602.155, -0.012680054];
};

_vehicle_1323 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_ground_garbage_square5", [12184, 12599.241, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1323 = _this;
  _this setDir 46.101212;
  _this setPos [12184, 12599.241, -3.0517578e-005];
};

_vehicle_1337 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12537.989, 12509.02, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1337 = _this;
  _this setDir -898.38666;
  _this setPos [12537.989, 12509.02, -1.5258789e-005];
};

_vehicle_1340 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12538.884, 12508.628], [], 0, "CAN_COLLIDE"];
  _vehicle_1340 = _this;
  _this setDir -145.99396;
  _this setPos [12538.884, 12508.628];
};

_vehicle_1342 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11794.578, 12763.879, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1342 = _this;
  _this setPos [11794.578, 12763.879, 3.0517578e-005];
};

_vehicle_1344 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [11793.055, 12764.222, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1344 = _this;
  _this setPos [11793.055, 12764.222, -1.5258789e-005];
};

_vehicle_1347 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [11791.801, 12764.921, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1347 = _this;
  _this setPos [11791.801, 12764.921, 0];
};

_vehicle_1350 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [11790.27, 12766.185, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1350 = _this;
  _this setDir -275.56433;
  _this setPos [11790.27, 12766.185, -3.0517578e-005];
};

_vehicle_1353 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12066.458, 12646.034, 4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1353 = _this;
  _this setPos [12066.458, 12646.034, 4.5776367e-005];
};

_vehicle_1355 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [12076.077, 12645.488, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1355 = _this;
  _this setPos [12076.077, 12645.488, -3.0517578e-005];
};

_vehicle_1357 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11998.367, 12678.986, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1357 = _this;
  _this setPos [11998.367, 12678.986, 1.5258789e-005];
};

_vehicle_1359 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_EP1", [11992.79, 12691.857, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1359 = _this;
  _this setPos [11992.79, 12691.857, -1.5258789e-005];
};

_vehicle_1362 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_Ind_long", [12123.718, 12609.075, 0.015922293], [], 0, "CAN_COLLIDE"];
  _vehicle_1362 = _this;
  _this setDir -166.47292;
  _this setPos [12123.718, 12609.075, 0.015922293];
};

_vehicle_1365 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Mil_Barracks_L", [12125.696, 12620.979, -0.19695772], [], 0, "CAN_COLLIDE"];
  _vehicle_1365 = _this;
  _this setDir -69.649071;
  _this setVehicleInit "this setvectorup [0,0,1]";
  _this setPos [12125.696, 12620.979, -0.19695772];
};

_vehicle_1371 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_Wall_IndFnc_3_D", [12135.509, 12607.848, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1371 = _this;
  _this setDir -157.30234;
  _this setPos [12135.509, 12607.848, 6.1035156e-005];
};

_vehicle_1373 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12099.927, 12613.847, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1373 = _this;
  _this setDir -495.02655;
  _this setPos [12099.927, 12613.847, 6.1035156e-005];
};

_vehicle_1377 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12102.093, 12613.399, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1377 = _this;
  _this setPos [12102.093, 12613.399, 1.5258789e-005];
};

_vehicle_1379 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12107.17, 12612.27, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1379 = _this;
  _this setPos [12107.17, 12612.27, 0];
};

_vehicle_1381 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12105.07, 12612.643, 7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1381 = _this;
  _this setPos [12105.07, 12612.643, 7.6293945e-005];
};

_vehicle_1383 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12118.586, 12614.19, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1383 = _this;
  _this setPos [12118.586, 12614.19, -1.5258789e-005];
};

_vehicle_1385 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12117.506, 12614.988, -7.6293945e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1385 = _this;
  _this setPos [12117.506, 12614.988, -7.6293945e-005];
};

_vehicle_1387 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12136.479, 12607.347, -0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1387 = _this;
  _this setPos [12136.479, 12607.347, -0.00012207031];
};

_vehicle_1389 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_c_GrassTall", [12133.935, 12608.706, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1389 = _this;
  _this setPos [12133.935, 12608.706, -4.5776367e-005];
};

_vehicle_1392 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12119.313, 12610.555, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1392 = _this;
  _this setPos [12119.313, 12610.555, 0];
};

_vehicle_1394 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12126.439, 12612.332, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1394 = _this;
  _this setPos [12126.439, 12612.332, 0];
};

_vehicle_1396 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12113.236, 12611.445, 9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1396 = _this;
  _this setPos [12113.236, 12611.445, 9.1552734e-005];
};

_vehicle_1398 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12166.736, 12587.422, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1398 = _this;
  _this setPos [12166.736, 12587.422, -4.5776367e-005];
};

_vehicle_1400 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12392.901, 12654.24, 0], [], 0, "CAN_COLLIDE"];
  _vehicle_1400 = _this;
  _this setPos [12392.901, 12654.24, 0];
};

_vehicle_1402 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12355.116, 12667.913, 6.1035156e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1402 = _this;
  _this setPos [12355.116, 12667.913, 6.1035156e-005];
};

_vehicle_1404 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_p_heracleum", [12360.549, 12666.175, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1404 = _this;
  _this setPos [12360.549, 12666.175, 1.5258789e-005];
};

_vehicle_1407 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_quercus2f", [12096.048, 12619.679, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1407 = _this;
  _this setDir 124.60903;
  _this setPos [12096.048, 12619.679, 3.0517578e-005];
};

_vehicle_1415 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea2s", [12121.622, 12604.33, -0.00024414063], [], 0, "CAN_COLLIDE"];
  _vehicle_1415 = _this;
  _this setPos [12121.622, 12604.33, -0.00024414063];
};

_vehicle_1417 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea2s", [12333.291, 12698.523, -3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1417 = _this;
  _this setPos [12333.291, 12698.523, -3.0517578e-005];
};

_vehicle_1423 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea2s", [12536.374, 12448.694, -9.1552734e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1423 = _this;
  _this setPos [12536.374, 12448.694, -9.1552734e-005];
};

_vehicle_1426 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12543.701, 12448.136, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1426 = _this;
  _this setDir -45.44593;
  _this setPos [12543.701, 12448.136, 3.0517578e-005];
};

_vehicle_1428 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12551.189, 12457.044, -0.00010681152], [], 0, "CAN_COLLIDE"];
  _vehicle_1428 = _this;
  _this setDir 48.071121;
  _this setPos [12551.189, 12457.044, -0.00010681152];
};

_vehicle_1430 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12530.821, 12448.828, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1430 = _this;
  _this setDir -105.90137;
  _this setPos [12530.821, 12448.828, -4.5776367e-005];
};

_vehicle_1432 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12526.346, 12438.902, 3.0517578e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1432 = _this;
  _this setDir -97.440063;
  _this setPos [12526.346, 12438.902, 3.0517578e-005];
};

_vehicle_1434 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12147.478, 12595.445, -4.5776367e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1434 = _this;
  _this setDir -45.44593;
  _this setPos [12147.478, 12595.445, -4.5776367e-005];
};

_vehicle_1436 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12535.098, 12493.602, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1436 = _this;
  _this setDir -45.44593;
  _this setPos [12535.098, 12493.602, -1.5258789e-005];
};

_vehicle_1439 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_b_betulaHumilis", [12542.293, 12495.29, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1439 = _this;
  _this setDir -1043.1815;
  _this setPos [12542.293, 12495.29, 1.5258789e-005];
};

_vehicle_1444 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea2s", [12490.556, 12456.624, -0.00035095215], [], 0, "CAN_COLLIDE"];
  _vehicle_1444 = _this;
  _this setDir 216.74777;
  _this setPos [12490.556, 12456.624, -0.00035095215];
};

_vehicle_1447 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12503.563, 12451.318, -0.00015258789], [], 0, "CAN_COLLIDE"];
  _vehicle_1447 = _this;
  _this setDir -97.440063;
  _this setPos [12503.563, 12451.318, -0.00015258789];
};

_vehicle_1449 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [12500.046, 12447.162, -0.00038146973], [], 0, "CAN_COLLIDE"];
  _vehicle_1449 = _this;
  _this setDir -155.78218;
  _this setPos [12500.046, 12447.162, -0.00038146973];
};

_vehicle_1456 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [11934.29, 12859.265, -0.00018310547], [], 0, "CAN_COLLIDE"];
  _vehicle_1456 = _this;
  _this setDir -45.44593;
  _this setPos [11934.29, 12859.265, -0.00018310547];
};

_vehicle_1458 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_t_picea1s", [11874.227, 12861.54, 0.00012207031], [], 0, "CAN_COLLIDE"];
  _vehicle_1458 = _this;
  _this setDir -45.44593;
  _this setPos [11874.227, 12861.54, 0.00012207031];
};

};
