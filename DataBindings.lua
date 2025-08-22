function LoadDataBindings()
    Citizen.CreateThread(function()
        GameDataBinds["sessionInfo"] = DatabindingAddDataContainerFromPath("", "sessionInfo")
        GameDataBinds["invite_data"] = DatabindingAddDataContainerFromPath("", "invite_data"); 
        GameDataBinds["moonshine_property_data"] = DatabindingAddDataContainerFromPath("", "moonshine_property_data") 
        GameDataBinds["player_menu_stables"] = DatabindingAddDataContainerFromPath("", "player_menu_stables")
        GameDataBinds["match_data"] = DatabindingAddDataContainerFromPath("", "match_data") 
        GameDataBinds["player_menu_data"] = DatabindingAddDataContainerFromPath("", "player_menu_data")
        GameDataBinds["player_data"] = DatabindingAddDataContainerFromPath("", "player_data")  
        GameDataBinds["players_pages"] = DatabindingAddDataContainerFromPath("", "players_pages")
        GameDataBinds["mp_rank_bar"] = DatabindingAddDataContainerFromPath("", "mp_rank_bar")
    end)
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
    DatabindingAddDataHashByHash(GameDataBinds["invite_data"], GetHashKey("FILTER"), -1)
    invContainer = DatabindingAddDataContainerByHash(GameDataBinds["invite_data"], -2134210738)
    local invContainer_1 = DatabindingAddDataStringByHash(invContainer, GetHashKey("TITLE"), "")
    local invContainer_2 = DatabindingAddDataHashByHash(invContainer, GetHashKey("TXD"), 0)
    local invContainer_3 = DatabindingAddDataHashByHash(invContainer, GetHashKey("TEXTURE"), 0)
    local invContainer_4 = DatabindingAddDataStringByHash(invContainer, 43663785, "")
    local invContainer_5 = DatabindingAddDataStringByHash(invContainer, GetHashKey("DESCRIPTION"), "")
    local invContainer_6 = DatabindingAddDataStringByHash(invContainer, 575354058, "")
    DatabindingAddUiItemListByHash(GameDataBinds["invite_data"], 904318604) -- ?? pm_invite_item?
    local numInvites = 0
    for key, val in pairs(GameInvites) do
        --
        GameInviteBuild(key, val)
        --
        numInvites = (numInvites+1)
    end
    DatabindingAddDataString(GameDataBinds["invite_data"], "invite_count", ""..numInvites.."")
end
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepMoonshineData()    
    --  moonshine
    moonshinePropertyCollection = DatabindingAddUiItemList(GameDataBinds["moonshine_property_data"], "moonshine_property_collection")
    DatabindingAddDataInt(GameDataBinds["moonshine_property_data"], "moonshine_property_active", -1) --sets these values as "invalid"
    DatabindingAddDataInt(GameDataBinds["moonshine_property_data"], "moonshine_property_selection", -1)
    DatabindingAddDataHash(GameDataBinds["moonshine_property_data"], "moonshine_filter_hash", -1) 
    DatabindingClearBindingArray(moonshinePropertyCollection)
    -- build moonshines. loop thru items
    for k = 1, 5 do
        print('boop', k)
    end
    --------------------------------------------------------------------------------
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
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
function prepHorseAndStable()
    --  stable & horses
    DatabindingAddDataBool(GameDataBinds["player_menu_stables"], "horses_visible", false)
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