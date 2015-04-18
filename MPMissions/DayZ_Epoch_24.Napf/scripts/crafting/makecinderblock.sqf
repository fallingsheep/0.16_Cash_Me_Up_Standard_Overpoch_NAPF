private["_chance"];

_chance = floor(random 100);
if ("ItemSandbag" in magazines player && "MortarBucket" in magazines player) then {
    hasCinderParts = true;
} else {
    hasCinderParts = false;
};
if (hasCinderParts) then {  
player playActionNow "Medic";
sleep 1;
titleText ["You are trying to craft some Cinder Blocks.","PLAIN DOWN"]; titleFadeOut 5;

    if (_chance > 25) then
        {
         
            player removeMagazine "MortarBucket";
            player removeMagazine "ItemSandbag";
            player addMagazine "CinderBlocks";
            sleep 0.01;
         
            titleText ["Cinder Blocks crafted.","PLAIN DOWN"]; titleFadeOut 5;
        }
    else
        {  
            titleText ["You have made the mixture wrong and ruined it..","PLAIN DOWN"]; titleFadeOut 5;
        };
}else{
    titleText ["You need 1 x Mortar Bucket and 1x Sandbag to craft Cinder blocks!.","PLAIN DOWN"]; titleFadeOut 5;
};