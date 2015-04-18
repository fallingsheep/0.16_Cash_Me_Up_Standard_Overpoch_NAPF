if(isServer) then {

	/* GENERAL CONFIG */

		debug_mode					= false;		// enable debug
		use_blacklist				= true;			// use blacklist
		blacklist					= [
			[[0,16000,0],[1000,-0,0]],				// Left
			[[0,16000,0],[16000.0,14580.3,0]]		// Top
		];

	/* END GENERAL CONFIG */

	/* AI CONFIG */

		ai_clear_body 				= false;		// instantly clear bodies
		ai_clean_dead 				= true;			// clear bodies after certain amount of time
		ai_cleanup_time 			= 7200;			// time to clear bodies in seconds
		ai_clean_roadkill			= false; 		// clean bodies that are roadkills
		ai_roadkill_damageweapon	= 0;			// percentage of chance a roadkill will destroy weapon AI is carrying

		ai_bandit_combatmode		= "YELLOW";		// combatmode of bandit AI
		ai_bandit_behaviour			= "COMBAT";		// behaviour of bandit AI

		ai_hero_combatmode			= "YELLOW";		// combatmode of hero AI
		ai_hero_behaviour			= "COMBAT";		// behaviour of hero AI

		ai_friendly_behaviour		= false;		// make ai friendly towards comrades

		player_bandit				= -5000;		// this is the amount you declare someone to be a bandit on your server, bandit AI will not attack you if ai_friendly_behaviour is true
		player_hero					= 5000;			// this is the amount you declare someone to be a hero on your server, hero AI will not attack you if ai_friendly_behaviour is true

		ai_share_info				= true;			// AI share info on player position
		ai_share_distance			= 300;			// distance from killed AI for AI to share your rough position

		ai_kills_gain				= true;			// add kill to bandit/human kill score
		ai_humanity_gain			= true;			// gain humanity for killing AI
		ai_add_humanity				= 5;			// amount of humanity gained for killing a bandit AI
		ai_remove_humanity			= 5;			// amount of humanity lost for killing a hero AI
		ai_special_humanity			= 25;			// amount of humanity gain or loss for killing a special AI dependant on player alignment
		
		ai_skill_extreme			= [["aimingAccuracy",1.00],["aimingShake",1.00],["aimingSpeed",1.00],["endurance",1.00],["spotDistance",1.00],["spotTime",1.00],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Extreme
		ai_skill_hard				= [["aimingAccuracy",0.80],["aimingShake",0.80],["aimingSpeed",0.80],["endurance",1.00],["spotDistance",0.80],["spotTime",0.80],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]]; 	// Hard
		ai_skill_medium				= [["aimingAccuracy",0.60],["aimingShake",0.60],["aimingSpeed",0.60],["endurance",1.00],["spotDistance",0.60],["spotTime",0.60],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]];	// Medium
		ai_skill_easy				= [["aimingAccuracy",0.40],["aimingShake",0.50],["aimingSpeed",0.50],["endurance",1.00],["spotDistance",0.50],["spotTime",0.50],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]];	// Easy
		ai_skill_random				= [ai_skill_extreme,ai_skill_hard,ai_skill_hard,ai_skill_hard,ai_skill_hard,ai_skill_medium,ai_skill_medium,ai_skill_medium,ai_skill_medium,ai_skill_easy];

		ai_static_useweapon			= true;	// Allows AI on static guns to have a loadout 	
		ai_static_weapons			= ["KORD_high_TK_EP1","DSHKM_Ins","M2StaticMG"];	// static guns

		ai_static_skills			= false;	// Allows you to set custom array for AI on static weapons. (true: On false: Off) 
		ai_static_array				= [["aimingAccuracy",0.20],["aimingShake",0.70],["aimingSpeed",0.75],["endurance",1.00],["spotDistance",0.70],["spotTime",0.50],["courage",1.00],["reloadSpeed",1.00],["commanding",1.00],["general",1.00]];

		ai_gear0					= [["ItemBandage","ItemBandage","ItemPainkiller"],["ItemKnife","ItemFlashlight"]];
		ai_gear1					= [["ItemBandage","ItemBandage","ItemPainkiller"],["ItemKnife","ItemFlashlight"]];
		ai_gear_random				= [ai_gear0,ai_gear1];	// Allows the possibility of random gear

		ai_wep_assault				= ["gms_k98","gms_k98_rg","gms_k98_knife","gms_k98zf39","Remington870","RH_m93r","RH_hk416","RH_hk416s","RH_hk416saim","RH_hk416seotech","RH_hk416sacog","RH_hk416sd","RH_hk416sdaim","RH_hk416sdeotech", "RH_hk416aim","RH_hk416eotech","RH_hk416acog","RH_hk416gl","RH_hk416glaim","RH_hk416gleotech","RH_hk416glacog","RH_hk416sgl","RH_hk416sglaim","RH_hk416sgleotech","RH_hk416sglacog","RH_hk416sdgl", "RH_hk416sdglaim","RH_hk416sdgleotech","RH_hk417","RH_hk417aim","RH_hk417eotech","RH_hk417acog","RH_hk417sp","RH_hk417s","RH_hk417saim","RH_hk417seotech","RH_hk417sacog","RH_hk417sd","RH_hk417sdaim", "RH_hk417sdeotech","RH_hk417sdacog","RH_hk417sdsp","RH_hk417sgl","RH_hk417sglaim","RH_hk417sgleotech","RH_hk417sglacog","RH_ctar21","RH_ctar21glacog","RH_ctar21m","RH_ctar21mgl","RH_star21","RH_mas","RH_masaim", "RH_maseotech","RH_masacog","RH_massd","RH_massdaim","RH_massdeotech","RH_massdacog","RH_masb","RH_masbaim","RH_masbeotech","RH_masbacog","RH_masbsd","RH_masbsdaim","RH_masbsdeotech","RH_masbsdacog","RH_acr", "RH_acraim","RH_acreotech","RH_acracog","RH_acrgl","RH_acrglaim","RH_acrgleotech","RH_acrglacog","RH_acrb","RH_acrbaim","RH_acrbeotech","RH_acrbacog","RH_acrbgl","RH_acrbglaim","RH_acrbgleotech","RH_acrbglacog","RH_m14", "RH_m14acog","RH_m14aim","RH_m14eot","RH_m21","RH_sc2","RH_sc2acog","RH_sc2aim","RH_sc2eot","RH_sc2shd","RH_sc2sp","RH_m1s","RH_m1sacog","RH_m1saim","RH_m1seot","RH_m1sshd","RH_m1ssp","RH_m1st","RH_m1stacog","RH_m1staim", "RH_m1steot","RH_m1stshd","RH_m1stsp","FHQ_ACR_WDL_IRN","FHQ_ACR_WDL_IRN_F","FHQ_ACR_WDL_IRN_SD","FHQ_ACR_WDL_IRN_SD_F","FHQ_ACR_WDL_IRN_GL","FHQ_ACR_WDL_IRN_GL_F","FHQ_ACR_WDL_IRN_GL_SD","FHQ_ACR_WDL_IRN_GL_SD_F", "FHQ_ACR_WDL_CCO","FHQ_ACR_WDL_CCO_F","FHQ_ACR_WDL_CCO_SD","FHQ_ACR_WDL_CCO_SD_F","FHQ_ACR_WDL_CCO_GL","FHQ_ACR_WDL_CCO_GL_F","FHQ_ACR_WDL_CCO_GL_SD","FHQ_ACR_WDL_CCO_GL_SD_F","FHQ_ACR_WDL_RCO","FHQ_ACR_WDL_RCO_F", "FHQ_ACR_WDL_RCO_SD","FHQ_ACR_WDL_RCO_SD_F","FHQ_ACR_WDL_RCO_GL","FHQ_ACR_WDL_RCO_GL_F","FHQ_ACR_WDL_RCO_GL_SD","FHQ_ACR_WDL_RCO_GL_SD_F","FHQ_ACR_WDL_HWS","FHQ_ACR_WDL_HWS_F","FHQ_ACR_WDL_HWS_GL","FHQ_ACR_WDL_HWS_GL_F", "FHQ_ACR_WDL_HWS_SD","FHQ_ACR_WDL_HWS_SD_F","FHQ_ACR_WDL_HWS_GL_SD","FHQ_ACR_WDL_HWS_GL_SD_F","FHQ_ACR_WDL_G33","FHQ_ACR_WDL_G33_F","FHQ_ACR_WDL_G33_SD","FHQ_ACR_WDL_G33_SD_F","FHQ_ACR_WDL_G33_GL","FHQ_ACR_WDL_G33_GL_F","FHQ_ACR_WDL_G33_GL_SD","FHQ_ACR_WDL_G33_GL_SD_F","FHQ_ACR_WDL_HAMR","FHQ_ACR_WDL_HAMR_F","FHQ_ACR_WDL_HAMR_SD","FHQ_ACR_WDL_HAMR_SD_F","FHQ_ACR_WDL_HAMR_GL","FHQ_ACR_WDL_HAMR_GL_F","FHQ_ACR_WDL_HAMR_GL_SD","FHQ_ACR_WDL_HAMR_GL_SD_F","FHQ_ACR_WDL_TWS","FHQ_ACR_WDL_TWS_F","FHQ_ACR_WDL_TWS_SD","FHQ_ACR_WDL_TWS_SD_F","FHQ_ACR_WDL_TWS_GL","FHQ_ACR_WDL_TWS_GL_F","FHQ_ACR_WDL_TWS_GL_SD","FHQ_ACR_WDL_TWS_GL_SD_F","FHQ_ACR_BLK_IRN","FHQ_ACR_BLK_IRN_F","FHQ_ACR_BLK_IRN_SD","FHQ_ACR_BLK_IRN_SD_F","FHQ_ACR_BLK_IRN_GL","FHQ_ACR_BLK_IRN_GL_F","FHQ_ACR_BLK_IRN_GL_SD","FHQ_ACR_BLK_IRN_GL_SD_F","FHQ_ACR_BLK_CCO","FHQ_ACR_BLK_CCO_F","FHQ_ACR_BLK_CCO_SD","FHQ_ACR_BLK_CCO_SD_F","FHQ_ACR_BLK_CCO_GL","FHQ_ACR_BLK_CCO_GL_F","FHQ_ACR_BLK_CCO_GL_SD","FHQ_ACR_BLK_CCO_GL_SD_F","FHQ_ACR_BLK_RCO","FHQ_ACR_BLK_RCO_F","FHQ_ACR_BLK_RCO_SD","FHQ_ACR_BLK_RCO_SD_F","FHQ_ACR_BLK_RCO_GL","FHQ_ACR_BLK_RCO_GL_F","FHQ_ACR_BLK_RCO_GL_SD","FHQ_ACR_BLK_RCO_GL_SD_F","FHQ_ACR_BLK_HWS","FHQ_ACR_BLK_HWS_F","FHQ_ACR_BLK_HWS_GL","FHQ_ACR_BLK_HWS_GL_F","FHQ_ACR_BLK_HWS_SD","FHQ_ACR_BLK_HWS_SD_F","FHQ_ACR_BLK_HWS_GL_SD","FHQ_ACR_BLK_HWS_GL_SD_F","FHQ_ACR_BLK_G33","FHQ_ACR_BLK_G33_F","FHQ_ACR_BLK_G33_SD","FHQ_ACR_BLK_G33_SD_F","FHQ_ACR_BLK_G33_GL","FHQ_ACR_BLK_G33_GL_F","FHQ_ACR_BLK_G33_GL_SD","FHQ_ACR_BLK_G33_GL_SD_F","FHQ_ACR_BLK_HAMR","FHQ_ACR_BLK_HAMR_F","FHQ_ACR_BLK_HAMR_SD","FHQ_ACR_BLK_HAMR_SD_F","FHQ_ACR_BLK_HAMR_GL","FHQ_ACR_BLK_HAMR_GL_F","FHQ_ACR_BLK_HAMR_GL_SD","FHQ_ACR_BLK_HAMR_GL_SD_F","FHQ_ACR_BLK_TWS","FHQ_ACR_BLK_TWS_F","FHQ_ACR_BLK_TWS_SD","FHQ_ACR_BLK_TWS_SD_F","FHQ_ACR_BLK_TWS_GL","FHQ_ACR_BLK_TWS_GL_F","FHQ_ACR_BLK_TWS_GL_SD","FHQ_ACR_BLK_TWS_GL_SD_F","FHQ_ACR_TAN_IRN","FHQ_ACR_TAN_IRN_F","FHQ_ACR_TAN_IRN_SD","FHQ_ACR_TAN_IRN_SD_F","FHQ_ACR_TAN_IRN_GL","FHQ_ACR_TAN_IRN_GL_F","FHQ_ACR_TAN_IRN_GL_SD","FHQ_ACR_TAN_IRN_GL_SD_F","FHQ_ACR_TAN_CCO","FHQ_ACR_TAN_CCO_F","FHQ_ACR_TAN_CCO_SD","FHQ_ACR_TAN_CCO_SD_F","FHQ_ACR_TAN_CCO_GL","FHQ_ACR_TAN_CCO_GL_F","FHQ_ACR_TAN_CCO_GL_SD","FHQ_ACR_TAN_CCO_GL_SD_F","FHQ_ACR_TAN_RCO","FHQ_ACR_TAN_RCO_F","FHQ_ACR_TAN_RCO_SD","FHQ_ACR_TAN_RCO_SD_F","FHQ_ACR_TAN_RCO_GL","FHQ_ACR_TAN_RCO_GL_F","FHQ_ACR_TAN_RCO_GL_SD","FHQ_ACR_TAN_RCO_GL_SD_F","FHQ_ACR_TAN_HWS","FHQ_ACR_TAN_HWS_F","FHQ_ACR_TAN_HWS_GL","FHQ_ACR_TAN_HWS_GL_F","FHQ_ACR_TAN_HWS_SD","FHQ_ACR_TAN_HWS_SD_F","FHQ_ACR_TAN_HWS_GL_SD","FHQ_ACR_TAN_HWS_GL_SD_F","FHQ_ACR_TAN_G33","FHQ_ACR_TAN_G33_F","FHQ_ACR_TAN_G33_SD","FHQ_ACR_TAN_G33_SD_F","FHQ_ACR_TAN_G33_GL","FHQ_ACR_TAN_G33_GL_F","FHQ_ACR_TAN_G33_GL_SD","FHQ_ACR_TAN_G33_GL_SD_F","FHQ_ACR_TAN_HAMR","FHQ_ACR_TAN_HAMR_F","FHQ_ACR_TAN_HAMR_SD","FHQ_ACR_TAN_HAMR_SD_F","FHQ_ACR_TAN_HAMR_GL","FHQ_ACR_TAN_HAMR_GL_F","FHQ_ACR_TAN_HAMR_GL_SD","FHQ_ACR_TAN_HAMR_GL_SD_F","FHQ_ACR_TAN_TWS","FHQ_ACR_TAN_TWS_F","FHQ_ACR_TAN_TWS_SD","FHQ_ACR_TAN_TWS_SD_F","FHQ_ACR_TAN_TWS_GL","FHQ_ACR_TAN_TWS_GL_F","FHQ_ACR_TAN_TWS_GL_SD","FHQ_ACR_TAN_TWS_GL_SD_F","FHQ_ACR_SNW_IRN","FHQ_ACR_SNW_IRN_F","FHQ_ACR_SNW_IRN_SD","FHQ_ACR_SNW_IRN_SD_F","FHQ_ACR_SNW_IRN_GL","FHQ_ACR_SNW_IRN_GL_F","FHQ_ACR_SNW_IRN_GL_SD","FHQ_ACR_SNW_IRN_GL_SD_F","FHQ_ACR_SNW_CCO","FHQ_ACR_SNW_CCO_F","FHQ_ACR_SNW_CCO_SD","FHQ_ACR_SNW_CCO_SD_F","FHQ_ACR_SNW_CCO_GL","FHQ_ACR_SNW_CCO_GL_F","FHQ_ACR_SNW_CCO_GL_SD","FHQ_ACR_SNW_CCO_GL_SD_F","FHQ_ACR_SNW_RCO","FHQ_ACR_SNW_RCO_F","FHQ_ACR_SNW_RCO_SD","FHQ_ACR_SNW_RCO_SD_F","FHQ_ACR_SNW_RCO_GL","FHQ_ACR_SNW_RCO_GL_F","FHQ_ACR_SNW_RCO_GL_SD","FHQ_ACR_SNW_RCO_GL_SD_F","FHQ_ACR_SNW_HWS","FHQ_ACR_SNW_HWS_F","FHQ_ACR_SNW_HWS_GL","FHQ_ACR_SNW_HWS_GL_F","FHQ_ACR_SNW_HWS_SD","FHQ_ACR_SNW_HWS_SD_F","FHQ_ACR_SNW_HWS_GL_SD","FHQ_ACR_SNW_HWS_GL_SD_F","FHQ_ACR_SNW_G33","FHQ_ACR_SNW_G33_F","FHQ_ACR_SNW_G33_SD","FHQ_ACR_SNW_G33_SD_F","FHQ_ACR_SNW_G33_GL","FHQ_ACR_SNW_G33_GL_F","FHQ_ACR_SNW_G33_GL_SD","FHQ_ACR_SNW_G33_GL_SD_F","FHQ_ACR_SNW_HAMR","FHQ_ACR_SNW_HAMR_F","FHQ_ACR_SNW_HAMR_SD","FHQ_ACR_SNW_HAMR_SD_F","FHQ_ACR_SNW_HAMR_GL","FHQ_ACR_SNW_HAMR_GL_F","FHQ_ACR_SNW_HAMR_GL_SD","FHQ_ACR_SNW_HAMR_GL_SD_F","FHQ_ACR_SNW_TWS","FHQ_ACR_SNW_TWS_F","FHQ_ACR_SNW_TWS_SD","FHQ_ACR_SNW_TWS_SD_F","FHQ_ACR_SNW_TWS_GL","FHQ_ACR_SNW_TWS_GL_F","FHQ_ACR_SNW_TWS_GL_SD","FHQ_ACR_SNW_TWS_GL_SD_F","FHQ_MSR_DESERT","FHQ_rem_7Rnd_338Lapua_MSR_NT","FHQ_MSR_SD_DESERT","FHQ_MSR_NV_DESERT","FHQ_rem_7Rnd_338Lapua_MSR_NT","FHQ_MSR_NV_SD_DESERT","FHQ_MSR_TWS_DESERT","FHQ_rem_7Rnd_338Lapua_MSR_NT","FHQ_MSR_TWS_SD_DESERT","FHQ_RSASS_TAN","FHQ_RSASS_TWS_TAN","FHQ_RSASS_SD_TAN","FHQ_RSASS_TWS_SD_TAN","FHQ_XM2010_DESERT","FHQ_XM2010_SD_DESERT","FHQ_XM2010_NV_DESERT","FHQ_XM2010_NV_SD_DESERT","FHQ_XM2010_TWS_DESERT","FHQ_XM2010_TWS_SD_DESERT","FHQ_XM2010_WDL_CAMO", "vil_SKS","vil_Tt33","vil_PKP","vil_PKP_EOT","vil_PK","vil_zastava_m84","vil_PKM_N","vil_PKM","vil_RPK","vil_RPK75","vil_RPK75_Romania","vil_RPK75_M72","vil_RPD","vil_RPK74","vil_RPK74M_P29","vil_RPK74M","vil_RPK74M_N","vil_VSS_PSO","vil_VSS_N","vil_VAL","vil_VAL_C","vil_VAL_N","vil_Vikhr","vil_9a91","vil_9a91_c","vil_9a91_csd","vil_vsk94","vil_Groza_HG","vil_Groza_SC","vil_Groza_GL","vil_Groza_SD","vil_AKS_47","vil_AK_47_49","vil_AK_47","vil_AKMSB","vil_AKM","vil_AKM_GL","vil_AKMS","vil_AKMS_GP25","vil_AK_47_m1","vil_AK_nato_m1","vil_M70","vil_M70B","vil_M64","vil_ASH82","vil_AMD","vil_AMD63","vil_PMI","vil_PMIS","vil_MPi","vil_AK_nato_m80","vil_AKs_74_u","vil_AKs_74_u45","Vil_AKS_74_UN_kobra","Vil_AKS_74_UB","vil_AK_74","vil_AK_74_N","vil_AKS_74","vil_AKS_74_gp","vil_AKS_74p","vil_AKS_74p_45","vil_AK_74P","vil_AKS_74p_gp","vil_AK_74m","vil_AK_74M_N","vil_AK_74M_PSO","vil_AK_74m_k","vil_AK_74m_EOT","vil_AK_74m_EOT_Alfa","vil_AK_74m_EOT_FSB","vil_AK_74m_EOT_FSB_45","vil_AK_74m_EOT_FSB_60","vil_AK_74m_c","vil_AK_74m_p29","vil_AK_74m_gp_29","vil_AK_74m_gp","vil_type88_1","vil_PMI74S","vil_Rak74sgl","vil_AK_101","vil_AK_103","vil_AK_105","Vil_AK_105_c","vil_AK_107","Vil_AK_107_c","vil_SVU_A","vil_SVU","vil_PSL1","vil_M76","vil_M91","vil_SVD_63","vil_SVD_N","vil_SVD_S","vil_SVD_M","vil_SVD_P21","vil_SVDK","vil_10Rnd_SVDK","vil_SV_98","vil_SV_98_69","vil_SV_98_SD", "vil_Abakan","vil_Abakan_gp","vil_Abakan_P29","vil_ak12","vil_ak12_ap","vil_ak12_gp","vil_AEK1","vil_AEK2","vil_AEK_GL","vil_AeK_3","vil_AeK_23","vil_AeK_3_K","vil_B_HP","vil_MP5_EOTech","vil_MP5SD_EOTech", "vil_G3a3","vil_G3a2","vil_G3a4","vil_G3a4b","vil_G3an","vil_G3anb","vil_G3ZF","vil_G3zfb","vil_G3SG1","vil_G3sg1b","vil_G3TGS","vil_G3TGSb","vil_AG3","vil_AG3EOT","skavil_M60","skavil_M60e3","vil_Mg3", "vil_M249_Para","vil_Minimi","vil_M240_B","vil_MG4","vil_MG4E","vil_SR25","vil_M110","vil_HK417s","vil_SR25SD","vil_M110sd","vil_M21","vil_M21G","vil_m40a3","vil_M24b", "vil_M14","vil_M14G","vil_Fal","vil_Fal_Para","vil_sg540","vil_sg542","vil_sg542f","vil_Insas","vil_Insas_lmg","vil_M16A1","VIL_M4","vil_M4_EOT","VIL_M4_aim","vil_HK33","vil_Galil","vil_Galil_arm","vil_G36KVA4", "vil_G36KA4","vil_G36E","vil_G36a2","vil_AG36","vil_AG36A2","vil_AG36KV","vil_AG36KA4","vil_G36VA4","vil_G36VA4Eot","vil_G36KVZ","vil_G36KSK","vil_G36KSKdes","vil_G36KSKdesES","vil_G36CC","vil_G36KSKES","vil_G36KES", "vil_G36KV3","vil_G36KV3Des","vil_HK416_Aim","vil_HK416_IS","vil_HK416_EOT","vil_HK416_GL","VIL_HK416_EDR","AA12_PMC","AK_107_GL_Kobra","AK_107_GL_PSO","AK_107_Kobra","AK_107_PSO","AK_47_M","AK_47_S","AK_47_S","AK_74","AK_74","AK_74_GL","AK_74_GL_kobra","AKS_74","AKS_74_GOSHAWK","AKS_74_Kobra","AKS_74_NSPU","AKS_74_PSO","AKS_74_U","AKS_74_UN_Kobra","AKS_GOLD","BAF_AS50_scoped","BAF_AS50_TWS","BAF_L110A1_Aim","BAF_L7A2_GPMG","BAF_L85A2_RIS_ACOG","BAF_L85A2_RIS_CWS","BAF_L85A2_RIS_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_ACOG","BAF_L85A2_UGL_Holo","BAF_L85A2_UGL_SUSAT","BAF_L86A2_ACOG","BAF_LRR_scoped","BAF_LRR_scoped_W","bizon","Bizon_Silenced","DMR","FN_FAL","FN_FAL_ANPVS4","G36_C_SD_camo","G36_C_SD_Eotech","G36A","G36A_camo","G36C","G36C","G36C_camo","G36K","G36K_camo","Huntingrifle","ksvk","KSVK_DZE","LeeEnfield","M1014","m107","M107_DZ","m107_TWS_EP1","M110_NVG_EP1","M110_TWS_EP1","M14_EP1","M16A2","M16A2GL","m16a4","m16a4_acg","M16A4_ACG_GL","M16A4_GL","M24","M24_des_EP1","M240","M240_DZ","m240_scoped_EP1","m240_scoped_EP1_DZE","M249","M249_EP1","M249_EP1_DZ","M249_m145_EP1","M249_m145_EP1_DZE","M249_TWS_EP1","M40A3","M4A1","M4A1_AIM","M4A1_AIM_CAMO","M4A1_AIM_SD_CAMO","M4A1_HWS_GL","M4A1_HWS_GL_CAMO","M4A1_HWS_GL_SD_CAMO","M4A1_RCO_GL","M4A3_CCO_EP1","M4A3_RCO_GL_EP1","M4SPR","m8_Carbine","m8_CarbineGL","m8_Compact","m8_compact_pmc","m8_holo_sd","m8_SAW","m8_Sharpshooter","m8_tws","m8_tws_sd","MG36","MG36_camo","MK_48","Mk_48_DES_EP1","Mk_48_DZ","MP5A5","MP5SD","Pecheneg","Pecheneg_DZ","PK","PMC_AS50_scoped","PMC_AS50_TWS","Remington870_lamp","RPK_74","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1","Saiga12K","SCAR_H_CQC_CCO","SCAR_H_CQC_CCO_SD","SCAR_H_LNG_Sniper","SCAR_H_LNG_Sniper_SD","SCAR_H_STD_EGLM_Spect","SCAR_H_STD_TWS_SD","SCAR_L_CQC","SCAR_L_CQC_CCO_SD","SCAR_L_CQC_EGLM_Holo","SCAR_L_CQC_Holo","SCAR_L_STD_EGLM_RCO","SCAR_L_STD_EGLM_TWS","SCAR_L_STD_HOLO","SCAR_L_STD_Mk4CQT","SVD","SVD","SVD_Camo","SVD_des_EP1","SVD_NSPU_EP1","VSS_Vintorez","Winchester1866","M16A4_ACG","Sa58V_RCO_EP1","SCAR_L_STD_Mk4CQT","M8_sharpshooter","M4A1_HWS_GL_camo","SCAR_L_STD_HOLO","M4A3_CCO_EP1","M4A3_CCO_EP1","M4A1_AIM_SD_camo","M16A4","m8_carbine","BAF_L85A2_RIS_Holo","Sa58V_CCO_EP1"];	// Assault
		ai_wep_machine				= ["RPK_74","MK_48_DZ","M249_EP1_DZ","Pecheneg_DZ","M240_DZ"];	// Light machine guns
		ai_wep_sniper				= ["M14_EP1","SCAR_H_LNG_Sniper_SD","M110_NVG_EP1","SVD_CAMO","VSS_Vintorez","DMR_DZ","M40A3"];	// Sniper rifles
		ai_wep_random				= [ai_wep_assault,ai_wep_assault,ai_wep_assault,ai_wep_sniper,ai_wep_machine];	// random weapon 60% chance assault rifle,20% light machine gun,20% sniper rifle
		ai_wep_launchers_AT			= ["M136","RPG18","JAVELIN"];
		ai_wep_launchers_AA			= ["Strela","Igla","STINGER"];
		
		ai_packs					= ["DZ_Czech_Vest_Puch","DZ_ALICE_Pack_EP1","DZ_TK_Assault_Pack_EP1","DZ_British_ACU","DZ_GunBag_EP1","DZ_CivilBackpack_EP1","DZ_Backpack_EP1","DZ_LargeGunBag_EP1"];
		ai_hero_skin				= ["FR_AC","FR_AR","FR_Corpsman","FR_GL","FR_Marksman","FR_R","FR_Sapper","FR_TL"];
		ai_bandit_skin				= ["Ins_Soldier_GL_DZ","TK_INS_Soldier_EP1_DZ","TK_INS_Warlord_EP1_DZ","GUE_Soldier_Sniper_DZ","GUE_Soldier_MG_DZ","GUE_Soldier_Crew_DZ","GUE_Soldier_2_DZ","GUE_Soldier_CO_DZ","BanditW1_DZ","BanditW2_DZ","Bandit1_DZ","Bandit2_DZ"];
		ai_special_skin				= ["GUE_Commander_DZ"];
		ai_all_skin					= [ai_hero_skin,ai_bandit_skin,ai_special_skin];

		ai_add_skin					= true;			// adds unit skin to inventory on death
		
	/* END AI CONFIG */

	/* WAI MISSIONS CONFIG */
		wai_mission_system			= true;	// use built in mission system

		wai_mission_markers			= ["DZMSMajMarker","DZMSMinMarker","DZMSBMajMarker","DZMSBMinMarker"];
		wai_avoid_missions			= 750;								// avoid spawning missions this close to other missions, these are defined in wai_mission_markers
		wai_avoid_traders			= 750;								// avoid spawning missions this close to traders
		wai_avoid_town				= 0;								// avoid spawning missions this close to towns, *** doesn't function with infiSTAR enabled ***
		wai_avoid_road				= 0;								// avoid spawning missions this close to roads
		wai_avoid_water				= 50;								// avoid spawning missions this close to water

		
		wai_mission_timer			= [300,900];						// time between missions 5-15 minutes
		wai_mission_timeout			= [900,1800]; 						// time each missions takes to despawn if inactive 15-30 minutes
		wai_timeout_distance		= 1000;								// if a player is this close to a mission then it won't time-out
		
		wai_clean_mission			= true;								// clean all mission buildings after a certain period
		wai_clean_mission_time		= 1800;								// time after a mission is complete to clean mission buildings

		wai_mission_fuel			= [5,60];							// fuel inside mission spawned vehicles [min%,max%]
		wai_vehicle_damage			= [20,70];							// damages to spawn vehicles with [min%,max%]
		wai_keep_vehicles			= true;								// save vehicles to database and keep them after restart
		wai_lock_vehicles			= true;								// lock mission vehicles and add keys to random AI bodies (be careful with ai_clean_dead if this is true)
		
		wai_crates_smoke			= true;								// pop smoke on crate when mission is finished during daytime
		wai_crates_flares			= true;								// pop flare on crate when mission is finished during nighttime
		
		wai_players_online			= 1; 								// number of players online before mission starts
		wai_server_fps				= 5; 								// missions only starts if server FPS is over wai_server_fps
		
		wai_kill_percent			= 50;								// percentage of AI players that must be killed at "crate" missions to be able to trigger completion

		wai_high_value				= true;								// enable the possibility of finding a high value item (defined below crate_items_high_value) inside a crate
		wai_high_value_chance		= 1;								// chance in percent you find above mentioned item

		wai_enable_minefield		= true;								// enable minefields to better defend missions
		wai_use_launchers			= true;								// add a rocket launcher to each spawned AI group
		wai_remove_launcher			= true;								// remove rocket launcher from AI on death

		// Missions
		wai_radio_announce			= true;								// Setting this to true will announce the missions to those that hold a radio only
		wai_hero_limit				= 1;								// define how many hero missions can run at once
		wai_bandit_limit			= 1;								// define how many bandit missions can run at once
		/* wai_special_limit			= 1;								// define how many special missions can run at once */
		wai_hero_missions			= [ 								// ["mission filename",% chance of picking this mission],Make sure the chances add up to 100,or it will not be accurate percentages
										["black_hawk_crash",11],
										["armed_vehicle",12],
										["bandit_base",7],
										["captured_mv22",6],
										["ikea_convoy",7],
										["destroyed_ural",16],
										["disabled_milchopper",9],
										["mayors_mansion",9],
										["weapon_cache",12],
										["bandit_patrol",11]
									];
		wai_bandit_missions			= [
										["armed_vehicle",12],
										["black_hawk_crash",14],
										["captured_mv22",6],
										["broken_down_ural",14],
										["hero_base",6],
										["ikea_convoy",8],
										["medi_camp",16],
										["presidents_mansion",6],
										["sniper_extraction",8],
										["weapon_cache",10]
									];
		
		// Vehicle arrays
		armed_vehicle 				= ["ArmoredSUV_PMC_DZE","GAZ_Vodnik_DZE","HMMWV_M1151_M2_CZ_DES_EP1_DZE","HMMWV_M998A2_SOV_DES_EP1_DZE","LandRover_MG_TK_EP1_DZE","LandRover_Special_CZ_EP1_DZE","Offroad_DSHKM_Gue_DZE","Pickup_PK_GUE_DZE","Pickup_PK_INS_DZE","Pickup_PK_TK_GUE_EP1_DZE","UAZ_MG_TK_EP1_DZE"];
		armed_chopper 				= ["CH_47F_EP1_DZE","UH1H_DZE","Mi17_DZE","UH60M_EP1_DZE","UH1Y_DZE","MH60S_DZE"];
		civil_chopper 				= ["AH6X_DZ","BAF_Merlin_DZE","MH6J_DZ","Mi17_Civilian_DZ"];
		military_unarmed 			= ["GAZ_Vodnik_MedEvac","HMMWV_Ambulance","HMMWV_Ambulance_CZ_DES_EP1","HMMWV_DES_EP1","HMMWV_DZ","HMMWV_M1035_DES_EP1","LandRover_CZ_EP1","LandRover_TK_CIV_EP1","UAZ_CDF","UAZ_INS","UAZ_RU","UAZ_Unarmed_TK_CIV_EP1","UAZ_Unarmed_TK_EP1","UAZ_Unarmed_UN_EP1"];
		cargo_trucks 				= ["Kamaz","MTVR_DES_EP1","Ural_CDF","Ural_TK_CIV_EP1","Ural_UN_EP1","V3S_Open_TK_CIV_EP1","V3S_Open_TK_EP1"];
		refuel_trucks				= ["KamazRefuel_DZ","MtvrRefuel_DES_EP1_DZ","UralRefuel_TK_EP1_DZ","V3S_Refuel_TK_GUE_EP1_DZ"];
		civil_vehicles 				= ["hilux1_civil_1_open","hilux1_civil_2_covered","hilux1_civil_3_open_EP1","SUV_Blue","SUV_Camo","SUV_Charcoal","SUV_Green","SUV_Orange","SUV_Pink","SUV_Red","SUV_Silver","SUV_TK_CIV_EP1","SUV_White","SUV_Yellow","Civcar","Civcarbu","civcarbl","Civcarre","Civcarwh","Civcarsl","Copcar","Copcarhw","Copcarswat","350z","350z_red","350z_kiwi","350z_black","350z_silver","350z_green","350z_blue","350z_gold","350z_white","350z_pink","350z_mod","350z_ruben","350z_v","350z_city","350z_yellow"];

		// Dynamic box array
		crates_large				= ["USVehicleBox","RUVehicleBox","TKVehicleBox_EP1"];
		crates_medium				= ["USBasicWeaponsBox","RUBasicWeaponsBox","USSpecialWeaponsBox","USSpecialWeapons_EP1","RUSpecialWeaponsBox","SpecialWeaponsBox","TKSpecialWeapons_EP1","CZBasicWeapons_EP1","UNBasicWeapons_EP1"];
		crates_small				= ["GuerillaCacheBox","RULaunchersBox","RUBasicAmmunitionBox","RUOrdnanceBox","USBasicAmmunitionBox","USLaunchersBox","USOrdnanceBox","USOrdnanceBox_EP1","USLaunchers_EP1","USBasicWeapons_EP1","USBasicAmmunitionBox_EP1","UNBasicAmmunitionBox_EP1","TKOrdnanceBox_EP1","TKLaunchers_EP1","TKBasicAmmunitionBox_EP1","GuerillaCacheBox_EP1","GERBasicWeapons_EP1"];

		crate_weapons_buildables	= ["ChainSaw","ChainSawB","ChainSawG","ChainSawP","ChainSawR"];
		
		crate_tools					= ["ItemKeyKit","Binocular","Binocular_Vector","ItemCompass","ItemCrowbar","ItemEtool","ItemFishingPole","ItemFlashlightRed","ItemGPS","ItemHatchet_DZE","ItemKnife","ItemMachete","ItemMatchbox_DZE","ItemToolbox","NVGoggles"];
		crate_tools_buildable		= ["ItemToolbox","ItemEtool","ItemCrowbar","ItemKnife"];
		crate_tools_sniper			= ["ItemCompass","Binocular","Binocular_Vector","NVGoggles","ItemGPS"];

		crate_items					= ["FoodNutmix","FoodPistachio","FoodMRE","ItemSodaOrangeSherbet","ItemSodaRbull","ItemSodaR4z0r","ItemSodaMdew","ItemSodaPepsi","ItemBandage","ItemSodaCoke","FoodbaconCooked","FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodchickenCooked","FoodmuttonCooked","FoodrabbitCooked","ItemTroutCooked","ItemTunaCooked","ItemSeaBassCooked","ItemAntibiotic","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemMorphine","ItemGoldBar","ItemGoldBar10oz","CinderBlocks","ItemCanvas","ItemComboLock","ItemLightBulb","ItemLockbox","ItemSandbag","ItemTankTrap","ItemWire","MortarBucket","PartEngine","PartFueltank","PartGeneric","PartGlass","PartPlankPack","PartVRotor","PartWheel","PartWoodPile"];
		crate_items_high_value		= ["ItemBriefcase100oz","ItemVault","30m_plot_kit","ItemHotwireKit"];
		crate_items_food			= ["ItemWaterbottle","FoodNutmix","FoodPistachio","FoodMRE","ItemSodaOrangeSherbet","ItemSodaRbull","ItemSodaR4z0r","ItemSodaMdew","ItemSodaPepsi","ItemSodaCoke","FoodbaconCooked","FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodchickenCooked","FoodmuttonCooked","FoodrabbitCooked","ItemTroutCooked","ItemTunaCooked","ItemSeaBassCooked"];
		crate_items_buildables		= ["forest_large_net_kit","cinder_garage_kit",["PartPlywoodPack",5],"ItemSandbagExLarge5X","park_bench_kit","ItemComboLock",["CinderBlocks",10],"ItemCanvas","ItemComboLock",["ItemLightBulb",5],"ItemLockbox",["ItemSandbag",10],["ItemTankTrap",10],["ItemWire",10],["MortarBucket",10],["PartPlankPack",5],"PartWoodPile"];
		crate_items_vehicle_repair	= ["PartEngine","PartFueltank","PartGeneric","PartGlass","PartVRotor","PartWheel"];
		crate_items_medical			= ["ItemWaterbottle","ItemAntibiotic","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemMorphine","ItemBandage","FoodCanFrankBeans","FoodCanPasta"];
		crate_items_chainbullets	= ["2000Rnd_762x51_M134","200Rnd_762x51_M240","100Rnd_127x99_M2","150Rnd_127x107_DSHKM"];
		crate_items_sniper			= [["ItemPainkiller",5],"Skin_Sniper1_DZ","Skin_CZ_Soldier_Sniper_EP1_DZ","Skin_GUE_Soldier_Sniper_DZ"];
		crate_items_president		= ["ItemDocument","ItemGoldBar10oz"];

		crate_backpacks_all			= ["DZ_Patrol_Pack_EP1","DZ_Assault_Pack_EP1","DZ_Czech_Vest_Puch","DZ_TerminalPack_EP1","DZ_ALICE_Pack_EP1","DZ_TK_Assault_Pack_EP1","DZ_CompactPack_EP1","DZ_British_ACU","DZ_GunBag_EP1","DZ_CivilBackpack_EP1","DZ_Backpack_EP1","DZ_LargeGunBag_EP1"];
		crate_backpacks_large		= ["DZ_GunBag_EP1","DZ_Backpack_EP1","DZ_LargeGunBag_EP1","DZ_CivilBackpack_EP1"];

		crate_random				= [crate_items,crate_items_food,crate_items_buildables,crate_items_vehicle_repair,crate_items_medical,crate_items_chainbullets];

	/* END WAI MISSIONS CONFIG */

	/* STATIC MISSIONS CONFIG */

		static_missions				= false;		// use static mission file
		custom_per_world			= false;		// use a custom mission file per world

	/* END STATIC MISSIONS CONFIG */

	WAIconfigloaded = true;

};
