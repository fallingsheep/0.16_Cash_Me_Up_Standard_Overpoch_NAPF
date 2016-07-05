//===================piXel 15-02-2013===========
waitUntil {!isNil ("dayzLoginRecord")};

//dog commands
sleep 1;
player setVariable ["dogAction","follow",true];
sleep 6;
//useless failsafe
_commd = player getVariable "dogAction";
if (_commd != "follow") then 
{
player setVariable ["dogAction","follow",true];
};
nul = player addAction ["Dog |<t color='#00a6eb'> Stay here</t>","addin\dogCommand.sqf",["stay"],-10,false,true,"","((nearestObjects [player, ['Pastor','Fin'], 40]) select 0) isKindOf 'Pastor' || ((nearestObjects [player, ['Pastor','Fin'], 40]) select 0) isKindOf 'Fin' && player in dogOwner"];
nul = player addAction ["Dog |<t color='#00a6eb'> Follow me</t>","addin\dogCommand.sqf",["follow"],-11,false,true,"","((nearestObjects [player, ['Pastor','Fin'], 40]) select 0) isKindOf 'Pastor' || ((nearestObjects [player, ['Pastor','Fin'], 40]) select 0) isKindOf 'Fin' && player in dogOwner"];
nul = player addAction ["Dog |<t color='#00a6eb'> Find animal</t>","addin\dogCommand.sqf",["find"],-12,false,true,"","((nearestObjects [player, ['Pastor','Fin'], 40]) select 0) isKindOf 'Pastor' || ((nearestObjects [player, ['Pastor','Fin'], 40]) select 0) isKindOf 'Fin' && player in dogOwner"];