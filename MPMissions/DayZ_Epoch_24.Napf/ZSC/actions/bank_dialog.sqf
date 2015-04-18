if(DZE_ActionInProgress) exitWith { cutText [(localize "str_epoch_player_10") , "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

private ["_dialog"];
ZSC_CurrentStorage = cursorTarget;
_dialog = createDialog "BankDialog";
call BankDialogUpdateAmounts;

DZE_ActionInProgress = false;
