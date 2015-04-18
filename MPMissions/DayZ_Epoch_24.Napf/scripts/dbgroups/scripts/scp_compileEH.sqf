/*
	Event handlers
*/

"DBPV_PubUnit" addPublicVariableEventHandler {(_this select 1) call scp_publishunitEH};
"DBUpdClient" addPublicVariableEventHandler {(_this select 1) call scp_updateclientEH};
"DBHealUnit" addPublicVariableEventHandler {(_this select 1) call scp_healunitEH};
