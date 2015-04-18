//switch to correct model
["INS_Worker2_DZ"] execVM "admintools\tools\skinChanger.sqf";
//add delay to let skin change apply
sleep 5;
//apply admin skin
PVOZ_adminSkin  =  [player , "pictures\admin.jpg" ]; // (or color , "#(argb,1,1,1)color(0,0,0,1)" )
publicVariable "PVOZ_adminSkin";
player setObjectTexture [0, "pictures\admin.jpg"]; // (to also see it yourself)
player setVariable["adminated",1,true];