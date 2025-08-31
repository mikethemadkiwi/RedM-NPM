function LoadDataBindings()
    Citizen.CreateThread(function()
        -- Session Relevant
        GameDataBinds["sessionInfo"] = DatabindingAddDataContainerFromPath("", "sessionInfo")
        GameDataBinds["player_data"] = DatabindingAddDataContainerFromPath("", "player_data")
        GameDataBinds["mp_rank_bar"] = DatabindingAddDataContainerFromPath("", "mp_rank_bar")
        -- Player Menu Relevant
        GameDataBinds["player_menu_stables"] = DatabindingAddDataContainerFromPath("", "player_menu_stables")
        GameDataBinds["player_menu_data"] = DatabindingAddDataContainerFromPath("", "player_menu_data")
        GameDataBinds["players_pages"] = DatabindingAddDataContainerFromPath("", "players_pages")
        GameDataBinds["invite_data"] = DatabindingAddDataContainerFromPath("", "invite_data"); 
        GameDataBinds["match_data"] = DatabindingAddDataContainerFromPath("", "match_data")
        GameDataBinds["job_list_data"] = DatabindingAddDataContainerFromPath("", "job_list_data");
        GameDataBinds["minigame_data"] = DatabindingAddDataContainerFromPath("", "minigame_data");
        GameDataBinds["moonshine_property_data"] = DatabindingAddDataContainerFromPath("", "moonshine_property_data")
        -- Pause Menu Relevant 
        GameDataBinds["season_rewards_data"] = DatabindingAddDataContainerFromPath("", "season_rewards_data")
        -- Game UI Relevant
        GameDataBinds["StickerA"] = DatabindingAddDataContainerFromPath("", "StickerA");
        GameDataBinds["StickerB"] = DatabindingAddDataContainerFromPath("", "StickerB");
    end)
end

function prepContainers()
    DatabindingClearBindingArray(GameUILists["moonshine_property_collection"])
    GameUILists["moonshine_property_collection"] = DatabindingAddUiItemList(GameDataBinds["moonshine_property_data"], "moonshine_property_collection")
    DatabindingClearBindingArray(GameUILists["904318604"])
    GameUILists["904318604"] = DatabindingAddUiItemListByHash(GameDataBinds["invite_data"], 904318604) -- ?? pm_invite_item?

end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepMPRankBar()
	DatabindingAddDataString(GameDataBinds["mp_rank_bar"], "rank_text", "0");
	DatabindingAddDataString(GameDataBinds["mp_rank_bar"], "rank_header_text", "0/0");
	DatabindingAddDataInt(GameDataBinds["mp_rank_bar"], "rank_header_text_alpha", 100);
	DatabindingAddDataInt(GameDataBinds["mp_rank_bar"], "xp_bar_minimum", false);
	DatabindingAddDataInt(GameDataBinds["mp_rank_bar"], "xp_bar_maximum", true);
	DatabindingAddDataInt(GameDataBinds["mp_rank_bar"], "xp_bar_value", false);
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepStickers()
	DatabindingAddDataBool(GameDataBinds["StickerA"], "Visible", false);
	DatabindingAddDataHash(GameDataBinds["StickerA"], "Texture", false);
	DatabindingAddDataBool(GameDataBinds["StickerB"], "Visible", false);
	DatabindingAddDataHash(GameDataBinds["StickerB"], "Texture", false);
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepSessionData()
    -- session data these were pulled from session decompliles.
    DatabindingAddDataString(GameDataBinds["sessionInfo"], "characterName", "Player: Playername ( Level: 9000 )") 
	DatabindingAddDataBool(GameDataBinds["sessionInfo"], "isHorseAlive", true);
    DatabindingAddDataBoolFromPath("", "bDisplayMissionChallengeChecklist", 0);
	DatabindingAddDataBoolFromPath("", "bAllowChecklistToggle", 0);
	DatabindingAddDataBoolFromPath("", "bEnablePauseMenuPhotoMode", 0);
	DatabindingAddDataBoolFromPath("", "bPauseMenuPhotoModeVisible", 0);
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepInviteData()    
    -- "[SHARED_PLAYER_MENU_INITIALIZE_INVITES_DATA] Initializing PM Invite Data Bindings...")
    DatabindingAddDataIntByHash(GameDataBinds["invite_data"], -1821544064, 3)
    DatabindingAddDataIntByHash(GameDataBinds["invite_data"], 2093245832, false)
    DatabindingAddDataHashByHash(GameDataBinds["invite_data"], GetHashKey("FILTER"), InviteFilter(0))
    invContainer = DatabindingAddDataContainerByHash(GameDataBinds["invite_data"], -2134210738)
    DatabindingAddDataStringByHash(invContainer, GetHashKey("TITLE"), "")
    DatabindingAddDataHashByHash(invContainer, GetHashKey("TXD"), 0)
    DatabindingAddDataHashByHash(invContainer, GetHashKey("TEXTURE"), 0)
    DatabindingAddDataStringByHash(invContainer, 43663785, "")
    DatabindingAddDataStringByHash(invContainer, GetHashKey("DESCRIPTION"), "")
    DatabindingAddDataStringByHash(invContainer, 575354058, "")
end
--
function RefreshInviteData()
    DatabindingClearBindingArray(GameUILists["904318604"])
    local numInvites = 0
    for key, val in pairs(GameInvites) do
        GameInviteItem(key, val)
        numInvites = (numInvites+1)
    end
    DatabindingAddDataString(GameDataBinds["invite_data"], "invite_count", ""..numInvites.."")
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepMoonshineData()    
    --  moonshine
    DatabindingAddDataInt(GameDataBinds["moonshine_property_data"], "moonshine_property_active", -1) --sets these values as "invalid"
    DatabindingAddDataInt(GameDataBinds["moonshine_property_data"], "moonshine_property_selection", -1)
    DatabindingAddDataHash(GameDataBinds["moonshine_property_data"], "moonshine_filter_hash", -1) 
	DatabindingAddDataHash(GameDataBinds["moonshine_property_data"], "moonshine_district_image", 2)
	DatabindingAddDataHash(GameDataBinds["moonshine_property_data"], "moonshine_district_image_texture", 2)
    moonshinePriceDeets = DatabindingAddDataContainer(GameDataBinds["moonshine_property_data"], "location_price_details");
	DatabindingAddDataInt(moonshinePriceDeets, "purchasePrice", false);
	DatabindingAddDataInt(moonshinePriceDeets, "purchaseModifiedPrice", false);
	DatabindingAddDataBool(moonshinePriceDeets, "visible", true);
	DatabindingAddDataBool(moonshinePriceDeets, "isAffordable", true);
	DatabindingAddDataBool(moonshinePriceDeets, "isGoldPrice", false);
	DatabindingAddDataBool(moonshinePriceDeets, "modifiedPriceGold", false);
	DatabindingAddDataBool(moonshinePriceDeets, "modifiedPriceVisible", false);
end
--
function RefeshMoonShineData()
    DatabindingClearBindingArray(GameUILists["moonshine_property_collection"])
    for key, val in pairs(MoonshineShackData) do
        MoonshineLocationItem(key, val)
    end
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepHorseAndStable()
    --  stable & horses
    DatabindingAddDataBool(GameDataBinds["player_menu_stables"], "horses_visible", true)
    DatabindingAddDataBool(GameDataBinds["player_menu_stables"], "vehicles_visible", false)
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepMatchMaking()    
    -- matchmaking
	MatchMakingEntries = DatabindingAddUiItemList(GameDataBinds["match_data"], "match_data_entries")
	DatabindingClearBindingArray(MatchMakingEntries)
    DatabindingAddDataBool(GameDataBinds["match_data"], "cancel_matchmaking_visible", false) -- shuts the matchmaking system up when not using it.
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepJobList()    
-- bVar2 = func_948(2);
-- 	bVar3 = func_948(3);
-- 	bVar4 = func_948(4);
-- 	bVar5 = func_948(8);
-- 	bVar6 = func_948(9);
-- 	bVar7 = func_948(19);
-- 	bVar8 = func_948(18);
-- 	bVar9 = func_948(20);
-- 	Global_1940463.f_1496.f_1463.f_1 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistAdversaryMenuEnabled", ((bVar2 || bVar3) || bVar4));
-- 	Global_1940463.f_1496.f_1463.f_5 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistEliminationMenuEnabled", (bVar5 || bVar6));
-- 	Global_1940463.f_1496.f_1463.f_2 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistAdversarySmallEnabled", bVar2);
-- 	Global_1940463.f_1496.f_1463.f_3 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistAdversaryMediumEnabled", bVar3);
-- 	Global_1940463.f_1496.f_1463.f_4 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistAdversaryLargeEnabled", bVar4);
-- 	Global_1940463.f_1496.f_1463.f_6 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistEliminationMediumEnabled", bVar5);
-- 	Global_1940463.f_1496.f_1463.f_7 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistEliminationLargeEnabled", bVar6);
-- 	Global_1940463.f_1496.f_1463.f_8 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistRaceSeriesEnabled", func_948(0));
-- 	Global_1940463.f_1496.f_1463.f_9 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistNominatedSeriesEnabled", func_948(12));
-- 	Global_1940463.f_1496.f_1463.f_10 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistFeatured001Enabled", func_948(1));
-- 	Global_1940463.f_1496.f_1463.f_16 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistStorySeriesEnabled", bVar0);
-- 	Global_1940463.f_1496.f_1463.f_17 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistSeriesOnCallEnabled", ((((((bVar2 || bVar3) || bVar4) || bVar5) || bVar6) || bVar7) || bVar8));
-- 	Global_1940463.f_1496.f_1463.f_18 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistHardcoreSeriesEnabled", bVar9);
-- 	Global_1940463.f_1496.f_1463.f_14 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistCaptureSeriesEnabled", bVar7);
-- 	Global_1940463.f_1496.f_1463.f_15 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistShootoutSeriesEnabled", bVar8);
-- 	bVar10 = func_3756(2);
-- 	bVar11 = func_3756(3);
-- 	bVar12 = func_3756(4);
-- 	bVar13 = func_3756(8);
-- 	bVar14 = func_3756(9);
-- 	bVar15 = func_3756(19);
-- 	bVar16 = func_3756(18);
-- 	Global_1940463.f_1496.f_1463.f_20 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistAdversaryMenuVisible", ((bVar10 || bVar11) || bVar12));
-- 	Global_1940463.f_1496.f_1463.f_24 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistEliminationMenuVisible", (bVar13 || bVar14));
-- 	Global_1940463.f_1496.f_1463.f_21 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistAdversarySmallVisible", false);
-- 	Global_1940463.f_1496.f_1463.f_22 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistAdversaryMediumVisible", false);
-- 	Global_1940463.f_1496.f_1463.f_23 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistAdversaryLargeVisible", false);
-- 	Global_1940463.f_1496.f_1463.f_25 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistEliminationMediumVisible", bVar13);
-- 	Global_1940463.f_1496.f_1463.f_26 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistEliminationLargeVisible", false);
-- 	Global_1940463.f_1496.f_1463.f_27 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistRaceSeriesVisible", func_3756(0));
-- 	Global_1940463.f_1496.f_1463.f_28 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistNominatedSeriesVisible", func_3756(10));
-- 	Global_1940463.f_1496.f_1463.f_29 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistNominatedSeriesMediumVisible", func_3756(12));
-- 	Global_1940463.f_1496.f_1463.f_30 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistNominatedSeriesLargeVisible", func_3756(13));
-- 	Global_1940463.f_1496.f_1463.f_31 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistFeatured001Visible", func_3756(1));
-- 	Global_1940463.f_1496.f_1463.f_32 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistStorySeriesVisible", true);
-- 	Global_1940463.f_1496.f_1463.f_33 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistSeriesOnCallVisible", true);
-- 	Global_1940463.f_1496.f_1463.f_38 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistCaptureSeriesVisible", bVar15);
-- 	Global_1940463.f_1496.f_1463.f_39 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistShootoutSeriesVisible", bVar16);
-- 	Global_1940463.f_1496.f_1463.f_34 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistHardcoreSeriesVisible", (func_3756(20) && func_4468(0)));
-- 	Global_1940463.f_1496.f_1463.f_11 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistPSN1SeriesEnabled", (MISC::IS_ORBIS_VERSION() && func_948(15)));
-- 	Global_1940463.f_1496.f_1463.f_13 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistPSN2SeriesEnabled", false);
-- 	Global_1940463.f_1496.f_1463.f_35 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistPSN1SeriesVisible", (MISC::IS_ORBIS_VERSION() && func_3756(15)));
-- 	Global_1940463.f_1496.f_1463.f_37 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistPSN2SeriesVisible", (MISC::IS_ORBIS_VERSION() && func_3756(16)));
-- 	DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistDebugPlay1SeriesEnabled", false);
-- 	DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistDebugPlay2SeriesEnabled", false);
-- 	DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistDebugPlay3SeriesEnabled", false);
-- 	DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistDebugPlay1SeriesVisible", false);
-- 	DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistDebugPlay2SeriesVisible", false);
-- 	DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "JobMenuPlaylistDebugPlay3SeriesVisible", false);
-- 	Global_1940463.f_1496.f_1463.f_40 = DATABINDING::_DATABINDING_ADD_DATA_STRING(Global_1940463.f_1496.f_1463, "jobs_text", "MATCHMAKING_LINK");
-- 	Global_1940463.f_1496.f_1463.f_41 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "select_prompt_visible", true);
-- 	Global_1940463.f_1496.f_1463.f_42 = DATABINDING::_DATABINDING_ADD_DATA_HASH(Global_1940463.f_1496.f_1463, "details_photo_dictionary", joaat("PAUSEMENU_TEXTURES"));
-- 	Global_1940463.f_1496.f_1463.f_43 = DATABINDING::_DATABINDING_ADD_DATA_HASH(Global_1940463.f_1496.f_1463, "details_photo_image", false);
-- 	Global_1940463.f_1496.f_1463.f_44 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_1463, "social_club_visible", false);
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepMiniGameData()
	-- Global_1940463.f_1496.f_8482.f_3 = DATABINDING::_DATABINDING_ADD_DATA_HASH(Global_1940463.f_1496.f_8482, "minigame_game_details_texture_dictionary", false);
	-- Global_1940463.f_1496.f_8482.f_2 = DATABINDING::_DATABINDING_ADD_DATA_HASH(Global_1940463.f_1496.f_8482, "minigame_game_details_texture", false);
	-- Global_1940463.f_1496.f_8482.f_4 = DATABINDING::_DATABINDING_ADD_DATA_STRING(Global_1940463.f_1496.f_8482, "minigame_game_details_body_text", "NET_MG_POKER_LEGAL_GAME_DETAILS");
	-- Global_1940463.f_1496.f_8482.f_1 = DATABINDING::_DATABINDING_ADD_DATA_STRING(Global_1940463.f_1496.f_8482, "minigame_sub_header_raw_text", "");
	-- Global_1940463.f_1496.f_8482.f_5 = DATABINDING::_DATABINDING_ADD_DATA_STRING(Global_1940463.f_1496.f_8482, "minigame_game_landing_public_buy_in_raw_text", "");
	-- Global_1940463.f_1496.f_8482.f_6 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_8482, "minigame_game_landing_public_buy_in_visible", true);
	-- Global_1940463.f_1496.f_8482.f_7 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_8482, "minigame_game_landing_public_buy_in_enabled", false);
	-- Global_1940463.f_1496.f_8482.f_8 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_8482, "minigame_game_landing_private_visible", true);
	-- Global_1940463.f_1496.f_8482.f_9 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_8482, "minigame_game_landing_private_enabled", false);
	-- Global_1940463.f_1496.f_8482.f_13 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_8482, "minigame_ui_is_forced", false);
	-- Global_1940463.f_1496.f_8482.f_10 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_8482, "minigame_game_buy_in_visible", true);
	-- Global_1940463.f_1496.f_8482.f_11 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_1496.f_8482, "minigame_game_buy_in_enabled", true);
	-- Global_1940463.f_1496.f_8482.f_12 = DATABINDING::_DATABINDING_ADD_DATA_STRING(Global_1940463.f_1496.f_8482, "minigame_game_buy_in_raw_text", "");
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepPlayerList()
	PlayerUserList = DatabindingAddUiItemList(GameDataBinds["player_data"], "player_collection")
	DatabindingAddDataBool(GameDataBinds["players_pages"], DynamicLabels(77), false)
	DatabindingAddDataBool(GameDataBinds["players_pages"], DynamicLabels(78), false)
	DatabindingAddDataString(GameDataBinds["players_pages"], DynamicLabels(76), "")
	DatabindingAddDataInt(GameDataBinds["players_pages"], DynamicLabels(55), GetHashKey("PLAYER_MENU"))
	DatabindingAddDataInt(GameDataBinds["players_pages"], DynamicLabels(79), -1996395310)
	DatabindingAddDataBool(GameDataBinds["players_pages"], DynamicLabels(92), false);
	DatabindingAddDataBool(GameDataBinds["players_pages"], DynamicLabels(93), false);
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function BuildPlayerMenu()
    PlayerMenuSubHeader = DatabindingAddUiItemList(GameDataBinds["player_menu_data"], "player_sub_header")


    -- 	Var0 = 1;
	-- Var0.f_1 = 1;
	-- Var0.f_2 = joaat("COLOR_WHITE");
	-- Var0.f_4 = -1;
	-- Var0.f_5 = -1;
	-- Var0.f_6 = -1;
	-- Var0.f_10 = -1;
	-- Var0.f_11 = -1;
	-- Var0.f_12 = -1;
	-- Var0.f_21 = 1;
	-- Var0.f_86 = 255;
	-- Var0.f_87 = -2147483647;
	-- StringCopy(&cVar88, "player_sub_header", 64);

    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "orbis_mode", IsOrbisVersion())
    DatabindingAddDataString(GameDataBinds["player_menu_data"], "header_text", "Player Menu")
    DatabindingAddDataString(GameDataBinds["player_menu_data"], "sub_header_text", "")
    DatabindingAddDataHash(GameDataBinds["player_menu_data"], "footer_tooltip_color", GetHashKey("COLOR_WHITE"))
    DatabindingAddDataStringByHash(GameDataBinds["player_menu_data"], "footer_tooltip_text", "Select an Option")
    DatabindingAddDataString(GameDataBinds["player_menu_data"], "posse_title_name", "")
    DatabindingAddDataString(GameDataBinds["player_menu_data"], "camp_district_text", "")
    DatabindingAddDataString(GameDataBinds["player_menu_data"], "camp_size_text", "")
    DatabindingAddDataString(GameDataBinds["player_menu_data"], "camp_location_desc", "")
    DatabindingAddDataHash(GameDataBinds["player_menu_data"], "camp_image_texture", 2)
    DatabindingAddDataHash(GameDataBinds["player_menu_data"], "camp_image_texture_dictionary", 2)
    DatabindingAddDataInt(GameDataBinds["player_menu_data"], "camp_daily_fee", 1)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "options_menu_visible", false)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_log_enabled", npmConfig.ShowLog)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_log_visible", npmConfig.ShowLog)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_invite_players_enabled", true)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_invites_enabled", npmConfig.ShowInvites)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_invites_icon_visible", npmConfig.ShowInvites)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_daily_challenges_visible", false)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_daily_challenges_enabled", false)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_daily_challenges_focused", false)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_bounty_enabled", true)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_posse_enabled", npmConfig.ShowPosse)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_camp_enabled", npmConfig.ShowCamp)
    local boolShowPorperties = false
    if npmConfig.ShowCamp == true then boolShowPorperties = true end
    if npmConfig.ShowMoonshineShack == true then boolShowPorperties = true end
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_camp_and_property_enabled", boolShowPorperties)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_moonshine_property_visible", npmConfig.ShowMoonshineShack) -- enables in player menu.
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_moonshine_property_enabled", npmConfig.ShowMoonshineShack) -- :D
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_stables_enabled", npmConfig.ShowStables) -- enabling in main menu
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_telegrams_enabled", npmConfig.ShowTelegrams)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_players_enabled", npmConfig.ShowPlayerlist)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_jobs_enabled", false)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_options_enabled", true)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_quit_to_free_roam", false)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "new_player_menu_options_available", true)
    DatabindingAddDataBool(GameDataBinds["player_menu_data"], "player_menu_pinned_enabled", true)
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function preparePlayerMenu()
    prepContainers() --clears and rebuils standard containers.
    -------------------------------------------------------------------------------- 
    prepSessionData()
    -------------------------------------------------------------------------------- 
    prepMPRankBar()
    -------------------------------------------------------------------------------- 
    prepStickers()
    -------------------------------------------------------------------------------- 
    prepInviteData()
    RefreshInviteData()
    --------------------------------------------------------------------------------
    prepMoonshineData()
    RefeshMoonShineData()
    --------------------------------------------------------------------------------
    prepHorseAndStable()
    --------------------------------------------------------------------------------
    prepMatchMaking()
    --------------------------------------------------------------------------------
    prepPlayerList()
    --------------------------------------------------------------------------------
    prepMiniGameData()
    --------------------------------------------------------------------------------
    prepJobList()    
    --------------------------------------------------------------------------------
    BuildPlayerMenu()
end