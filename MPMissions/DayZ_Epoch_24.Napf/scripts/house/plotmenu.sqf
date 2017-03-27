//

"BUILD INFO" hintC parseText format ["
<t size='1.5' shadow='1'align='left' color='#009FCF'>CONSTRUCTION BASED ON SURVIVED DAYS MENU</t><br/>
<t size='.7' shadow='1'align='left' color='#ff5200'></t><br/>
<t size='1.1' shadow='1'align='left' color='#ff5200'>Survive 2 days and Build Small Houses</t><br/>
<t size='.7' shadow='1'align='left' color='#ff5200'></t><br/>
<t size='1.1' shadow='1'align='left' color='#ff5200'>>Small House: Right Click on Etool + 4 WoodWalls + 1 FloorCelling +2 days survived</t><br/>
<t size='.7' shadow='1'align='left' color='#ff5200'></t><br/>
<t size='1.1' shadow='1'align='left' color='#ff5200'>>Medium House: Right Click on Etool + 2 CinderWalls + 1 FloorCelling +5 days survived</t><br/>
<t size='.7' shadow='1'align='left' color='#ff5200'></t><br/>
<t size='1.1' shadow='1'align='left' color='#ff5200'>>Large House: Right Click on Etool + 4 CinderWalls + 1 FloorCelling +8 days survived</t><br/>
<t size='.7' shadow='1'align='left' color='#ff5200'></t><br/>
<t size='1.1' shadow='1'align='left' color='#ff5200'>>Hero House: Right Click on Etool + 2 CinderWalls + 1 FloorCelling +2 days survived</t><br/>
"];

private ["_countsurvived"];
_countsurvived = dayz_Survived;

[format["<t size='0.75' color='#FFCC00'>>%2 You Have 1% days survived</t>",_countsurvived,(name player)],0,0,2,2] spawn BIS_fnc_dynamicText; 