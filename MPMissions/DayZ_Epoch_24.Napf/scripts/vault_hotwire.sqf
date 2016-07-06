/** Author: SchwEde aka shinySonic **/
private ["_vault","_message","_isSafe","_isLockBox","_chanceSafe","_chanceLockbox"];
_vault = _this select 3;
_chanceSafe = 5; //chance on Safe to succeed in % use only values between 0 - 100
_chanceLockbox = 10; //chance on Lockbox to succeed in % use only values between 0 - 100

player removeMagazine "ItemHotwireKit";

_isSafe = (typeOf _vault) == "VaultStorageLocked";
_isLockBox = (typeOf _vault) == "LockboxStorageLocked";

player removeAction s_player_hotwirevault;
s_player_hotwirevault = -1;

_failed = false;
DZE_ActionInProgress = true;
if (_isSafe) then {
if ((random 10) >= (_chanceSafe/10)) exitWith {
	_failed = true;
	_message = ["Damn, i did not manage to hotwire this thing","Oh no! The Hotwire Kit was broken","Bad Luck, i could not open it and broke the Hotwire Kit"] call BIS_fnc_selectRandom;
	};
		} else {
		if (_isLockBox) then {
			if ((random 10) >= (_chanceLockbox/10)) exitWith {
				_failed = true;
				_message = ["Damn, i did not manage to hotwire this thing","Oh no! The Hotwire Kit was broken","Bad Luck, i could not open it and broke the Hotwire Kit"] call BIS_fnc_selectRandom;
				};
			} else {
				_failed = true;
				_message = ["Damn, i did not manage to hotwire this thing","Oh no! The Hotwire Kit was broken","Bad Luck, i could not open it and broke the Hotwire Kit"] call BIS_fnc_selectRandom;
			};
		};
if (_failed) exitWith {cutText [_message, "PLAIN DOWN"];DZE_ActionInProgress = false;};
_message = ["I did it! Its should be open now","Got it. Now the vault is open","Done! I have opened the vault"] call BIS_fnc_selectRandom;
cutText [_message, "PLAIN DOWN"];

dayz_combination = _vault getVariable["CharacterID","0"];
_vault spawn player_unlockVault;
DZE_ActionInProgress = false;