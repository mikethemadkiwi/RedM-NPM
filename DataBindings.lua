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
	    GameDataBinds["player_options_data"] = DatabindingAddDataContainerFromPath("", "player_options_data");

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
    DatabindingClearBindingArray(GameUILists["player_collection"])
	GameUILists["player_collection"] = DatabindingAddUiItemList(GameDataBinds["player_data"], "player_collection")
    DatabindingClearBindingArray(GameUILists["player_sub_header"])
    GameUILists["player_sub_header"] = DatabindingAddUiItemList(GameDataBinds["player_menu_data"], "player_sub_header")
    DatabindingClearBindingArray(GameUILists["match_data_entries"])
	GameUILists['match_data_entries'] = DatabindingAddUiItemList(GameDataBinds["match_data"], "match_data_entries")
end


function SharedDatabinds(RootId, ContId, Param10)
	local sharedContainer = DatabindingAddDataContainer(RootId, ContId);
	DatabindingAddDataBool(sharedContainer, UIDynamicLabels(0), Param10[1]);
	DatabindingAddDataBool(sharedContainer, UIDynamicLabels(1), Param10[2]);
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(2), Param10[3]);
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(54), Param10[4]);
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(55), Param10[5]);
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(57), Param10[6]);
    DatabindingAddDataHash(sharedContainer, UIDynamicLabels(56), Param10[7]);
    if (selecthash == 0) then
        selecthash = GetHashKey("IB_SELECT")
    end
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(58), Param10[8]);
	DatabindingAddDataBool(sharedContainer, UIDynamicLabels(59), Param10[9]);
	DatabindingAddDataBool(sharedContainer, UIDynamicLabels(60), Param10[10]);
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(61), Param10[11]);
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(67), Param10[12]);
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(62), Param10[13]);
    if (selecthash == 0) then
        selecthash = GetHashKey("IB_SELECT")
    end
	DatabindingAddDataHash(sharedContainer, UIDynamicLabels(64), Param10[14]);
	DatabindingAddDataBool(sharedContainer, UIDynamicLabels(65), Param10[15]);
	DatabindingAddDataBool(sharedContainer, UIDynamicLabels(66), Param10[16]);
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
	DatabindingClearBindingArray(GameUILists['match_data_entries'])
    --- fill matchmamking if it exists.

    ---
    DatabindingAddDataBool(GameDataBinds["match_data"], "cancel_matchmaking_visible", false) -- shuts the matchmaking system up when not using it.
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepJobList()
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistAdversaryMenuEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistEliminationMenuEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistAdversarySmallEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistAdversaryMediumEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistAdversaryLargeEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistEliminationMediumEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistEliminationLargeEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistRaceSeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistNominatedSeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistFeatured001Enabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistStorySeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistSeriesOnCallEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistHardcoreSeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistCaptureSeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistShootoutSeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistAdversaryMenuVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistEliminationMenuVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistAdversarySmallVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistAdversaryMediumVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistAdversaryLargeVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistEliminationMediumVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistEliminationLargeVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistRaceSeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistNominatedSeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistNominatedSeriesMediumVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistNominatedSeriesLargeVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistFeatured001Visible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistStorySeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistSeriesOnCallVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistCaptureSeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistShootoutSeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistHardcoreSeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistPSN1SeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistPSN2SeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistPSN1SeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistPSN2SeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistDebugPlay1SeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistDebugPlay2SeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistDebugPlay3SeriesEnabled", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistDebugPlay1SeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistDebugPlay2SeriesVisible", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "JobMenuPlaylistDebugPlay3SeriesVisible", false);
    DatabindingAddDataString(GameDataBinds["job_list_data"], "jobs_text", "MATCHMAKING_LINK");
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "select_prompt_visible", true);
    DatabindingAddDataHash(GameDataBinds["job_list_data"], "details_photo_dictionary", GetHashKey("PAUSEMENU_TEXTURES"));
    DatabindingAddDataHash(GameDataBinds["job_list_data"], "details_photo_image", false);
    DatabindingAddDataBool(GameDataBinds["job_list_data"], "social_club_visible", false);
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepMiniGameData()
	DatabindingAddDataHash(GameDataBinds["minigame_data"], "minigame_game_details_texture_dictionary", false);
	DatabindingAddDataHash(GameDataBinds["minigame_data"], "minigame_game_details_texture", false);
	DatabindingAddDataString(GameDataBinds["minigame_data"], "minigame_game_details_body_text", "NET_MG_POKER_LEGAL_GAME_DETAILS");
	DatabindingAddDataString(GameDataBinds["minigame_data"], "minigame_sub_header_raw_text", "");
	DatabindingAddDataString(GameDataBinds["minigame_data"], "minigame_game_landing_public_buy_in_raw_text", "");
	DatabindingAddDataBool(GameDataBinds["minigame_data"], "minigame_game_landing_public_buy_in_visible", true);
	DatabindingAddDataBool(GameDataBinds["minigame_data"], "minigame_game_landing_public_buy_in_enabled", false);
	DatabindingAddDataBool(GameDataBinds["minigame_data"], "minigame_game_landing_private_visible", true);
	DatabindingAddDataBool(GameDataBinds["minigame_data"], "minigame_game_landing_private_enabled", false);
	DatabindingAddDataBool(GameDataBinds["minigame_data"], "minigame_ui_is_forced", false);
	DatabindingAddDataBool(GameDataBinds["minigame_data"], "minigame_game_buy_in_visible", true);
	DatabindingAddDataBool(GameDataBinds["minigame_data"], "minigame_game_buy_in_enabled", true);
	DatabindingAddDataString(GameDataBinds["minigame_data"], "minigame_game_buy_in_raw_text", "");
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepPlayerList()
	DatabindingAddDataBool(GameDataBinds["players_pages"], UIDynamicLabels(77), false)
	DatabindingAddDataBool(GameDataBinds["players_pages"], UIDynamicLabels(78), false)
	DatabindingAddDataString(GameDataBinds["players_pages"], UIDynamicLabels(76), "")
	DatabindingAddDataInt(GameDataBinds["players_pages"], UIDynamicLabels(55), GetHashKey("PLAYER_MENU"))
	DatabindingAddDataInt(GameDataBinds["players_pages"], UIDynamicLabels(79), -1996395310)
	DatabindingAddDataBool(GameDataBinds["players_pages"], UIDynamicLabels(92), false);
	DatabindingAddDataBool(GameDataBinds["players_pages"], UIDynamicLabels(93), false);
	local subheaderplayer = DatabindingAddDataContainer(GameDataBinds["player_options_data"], "sub_header_player");
	DatabindingAddDataHash(subheaderplayer, UIDynamicLabels(2), GetHashKey("COLOR_WHITE"));
	DatabindingAddDataString(subheaderplayer, UIDynamicLabels(15), "");
	DatabindingAddDataHash(subheaderplayer, UIDynamicLabels(9), false);
	DatabindingAddDataHash(subheaderplayer, UIDynamicLabels(10), false);
	DatabindingAddDataBool(subheaderplayer, UIDynamicLabels(11), false);
	DatabindingAddDataBool(subheaderplayer, UIDynamicLabels(0), true);
    local kfp = DatabindingAddDataContainer(subheaderplayer, "kickFromPosse");
	DatabindingAddDataBool(kfp, UIDynamicLabels(0), false);
	DatabindingAddDataBool(kfp, UIDynamicLabels(1), 0);
	local itp = DatabindingAddDataContainer(subheaderplayer, "inviteToPosse");
	DatabindingAddDataBool(itp, UIDynamicLabels(0), false);
	DatabindingAddDataBool(itp, UIDynamicLabels(1), 0);
	local its = DatabindingAddDataContainer(subheaderplayer, "inviteToSession");
	DatabindingAddDataBool(its, UIDynamicLabels(0), false);
	DatabindingAddDataBool(its, UIDynamicLabels(1), 0);
	local jts = DatabindingAddDataContainer(subheaderplayer, "joinSession");
	DatabindingAddDataBool(jts, UIDynamicLabels(0), false);
	DatabindingAddDataBool(jts, UIDynamicLabels(1), 0);
	local val = DatabindingAddDataContainer(subheaderplayer, "viewAbilityLoadout");
	DatabindingAddDataBool(val, UIDynamicLabels(0), false);
	DatabindingAddDataBool(val, UIDynamicLabels(1), 0);
	local vps = DatabindingAddDataContainer(subheaderplayer, "viewPlayerStats");
	DatabindingAddDataBool(vps, UIDynamicLabels(0), false);
	DatabindingAddDataBool(vps, UIDynamicLabels(1), 0);
	local vpo = DatabindingAddDataContainer(subheaderplayer, "viewPosse");
	DatabindingAddDataBool(vpo, UIDynamicLabels(0), false);
	DatabindingAddDataBool(vpo, UIDynamicLabels(1), 0);
	local adf = DatabindingAddDataContainer(subheaderplayer, "addFriend");
	DatabindingAddDataBool(adf, UIDynamicLabels(0), false);
	DatabindingAddDataBool(adf, UIDynamicLabels(1), 0);
	local itc = DatabindingAddDataContainer(subheaderplayer, "inviteToCrew");
	DatabindingAddDataBool(itc, UIDynamicLabels(0), false);
	DatabindingAddDataBool(itc, UIDynamicLabels(1), 0);
	local playm = DatabindingAddDataContainer(subheaderplayer, "message");
	DatabindingAddDataBool(playm, UIDynamicLabels(0), false);
	DatabindingAddDataBool(playm, UIDynamicLabels(1), 0);
	local prt = DatabindingAddDataContainer(subheaderplayer, "report");
	DatabindingAddDataBool(prt, UIDynamicLabels(0), false);
	DatabindingAddDataBool(prt, UIDynamicLabels(1), 0);
	local gmc = DatabindingAddDataContainer(subheaderplayer, "gamerCard");
	DatabindingAddDataBool(gmc, UIDynamicLabels(0), false);
	DatabindingAddDataBool(gmc, UIDynamicLabels(1), 0);
	local rmf = DatabindingAddDataContainer(subheaderplayer, "removeFriend");
	DatabindingAddDataBool(rmf, UIDynamicLabels(0), false);
	DatabindingAddDataBool(rmf, UIDynamicLabels(1), 0);
	local vcc = DatabindingAddDataContainer(subheaderplayer, "voiceChatChannel");
	DatabindingAddDataBool(vcc, UIDynamicLabels(0), false);
	DatabindingAddDataBool(vcc, UIDynamicLabels(1), false);
	DatabindingAddDataString(vcc, UIDynamicLabels(17), "");
	DatabindingAddDataHash(GameDataBinds["player_options_data"], "player_options_prompt_mute_player_text", false);
	DatabindingAddDataBool(GameDataBinds["player_options_data"], "player_options_prompt_mute_player_enabled", false);
	DatabindingAddDataBool(GameDataBinds["player_options_data"], "player_options_prompt_mute_player_visible", false);
	DatabindingAddDataBool(GameDataBinds["player_options_data"], "view_ability_loadout_focused", false);
	iVar1 = DatabindingAddDataContainer(GameDataBinds["player_options_data"], "report_data");
	DatabindingAddDataString(iVar1, "report_player_text", "");
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function BuildPlayerMenu()

	-- DATABINDING::_DATABINDING_WRITE_DATA_HASH_STRING(uParam0->f_3, Param1.f_2);
	-- DATABINDING::_DATABINDING_WRITE_DATA_HASH_STRING(uParam0->f_21, Param1.f_19);
	-- DATABINDING::_DATABINDING_WRITE_DATA_HASH_STRING(uParam0->f_22, Param1.f_20);
	-- DATABINDING::_DATABINDING_WRITE_DATA_BOOL(uParam0->f_23, Param1.f_21);
	-- DATABINDING::_DATABINDING_WRITE_DATA_STRING(uParam0->f_27, &(Param1.f_25));
	-- DATABINDING::_DATABINDING_WRITE_DATA_STRING(uParam0->f_28, &(Param1.f_41));
	-- DATABINDING::_DATABINDING_WRITE_DATA_BOOL(uParam0->f_29, Param1.f_57);
	-- DATABINDING::_DATABINDING_WRITE_DATA_HASH_STRING(uParam0->f_31, Param1.f_59);
	-- DATABINDING::_DATABINDING_WRITE_DATA_HASH_STRING(uParam0->f_32, Param1.f_60);
	-- DATABINDING::_DATABINDING_WRITE_DATA_BOOL(uParam0->f_33, Param1.f_61);
    -- 	Var0 = 1;
	-- Var0.f_1 = 1;
	-- Var0.f_2 = GetHashKey("COLOR_WHITE");
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