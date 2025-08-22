------------------------------------------------------------------------------------------------------------
-- Game Invites
------------------------------------------------------------------------------------------------------------
function GameInviteBuild(key, invData)
    iKey = key
    iData = invData
    local keySting = "Invite_Root_"..GetCloudTimeAsInt().."_"..key
    local expireTime = (GetCloudTimeAsInt()+120)
    -- iVar0 = func_4774();
	-- iVar1 = GetCloudTimeAsInt()
	-- bVar2 = (iVar1 + Param0.f_25);
	-- DEBUG::_0xF0783374333FD8CE(2184, 162, "[PLAYER_MENU_PUSH_UI_INVITE] Pushing new Invite to Player Menu... at Game Timer: ", iVar1, " and Expiration Time: ", bVar2, " Total Duration: ", Param0.f_25);
	-- MISC::_INT_TO_STRING(iVar1, "%i", &cVar11);
	-- Global_1940463.f_245.f_1248++;
	-- StringCopy(&cVar3, "Invite_Root_", 64);
	-- StringConCat(&cVar3, &cVar11, 64);
	-- StringConCat(&cVar3, "_", 64);
	-- StringIntConCat(&cVar3, Global_1940463.f_245.f_1248, 64);
	-- DEBUG::_0xF0783374333FD8CE(168, 162, "[PLAYER_MENU_PUSH_UI_INVITE] Invite with Unique ID: ", &cVar3, " is being stored(script side) at: ", iVar0);


    -- net_main_offline
    -- Var1.f_1 = 1;
	-- Var1.f_2 = joaat("COLOR_WHITE");
	-- Var1.f_4 = -1;
	-- Var1.f_5 = -1;
	-- Var1.f_6 = -1;
	-- Var1.f_10 = -1;
	-- Var1.f_11 = -1;
	-- Var1.f_12 = -1;
	-- Var1.f_18 = joaat("COLOR_WHITE");
	-- Var1.f_19 = joaat("COLOR_WHITE");
	-- Var1.f_25 = 300;
        -- Var1.f_33.f_8 = joaat("COLOR_WHITE");
        -- Var1.f_33.f_11 = joaat("COLOR_WHITE");
        -- Var1.f_33.f_12 = 8000;
        -- Var1.f_33.f_13 = 1511356879;
        -- Var1.f_33.f_15 = joaat("PLAYER_MENU");
        -- Var1.f_33.f_21 = 1;
	-- Var1.f_16 = func_4620(iParam0);
	-- Var1.f_17 = MISC::_CREATE_VAR_STRING(10, "NET_MG_TOAST_INVITE_SECONDARY", func_846(PLAYER::GET_PLAYER_NAME(iParam1), func_828(iParam1, 1, -1, 0)));
	-- Var1.f_20 = MISC::GET_HASH_KEY(func_4621(iVar0));
	-- Var1.f_21 = MISC::GET_HASH_KEY(func_4622(iVar0));
	-- Var1.f_26 = 7;
	-- Var1.f_27 = iParam0;
        -- Var1.f_33.f_2 = func_4620(iParam0);
        -- Var1.f_33.f_3 = MISC::_CREATE_VAR_STRING(2, "NM_TI_VIEW_NOTIFICATION");
        -- Var1.f_33.f_6 = MISC::GET_HASH_KEY(func_4621(iVar0));
        -- Var1.f_33.f_7 = MISC::GET_HASH_KEY(func_4622(iVar0));
        -- Var1.f_33.f_17 = "HUD_Toast_Soundset";
        -- Var1.f_33.f_18 = "Toast_On";

	-- func_4775(&(Global_1940463.f_245.f_14[iVar0 /*41*/]), Global_1940463.f_245.f_4, cVar3, Param0);
        -- DEBUG::_0x1B08D1EB9D8C4931(8, 162, "[UI_INITIALIZE_DYNAMIC_DUAL_TEXT_ENTRY_DATABINDINGS] Initializing Dynamic Large Image and Stacked Text Databindings...");
        -- func_6222(uParam0, sParam1, cParam2, Param10);
                        -- DEBUG::_0xA308F935BDECCEC0(40, 162, "[UI_INITIALIZE_DYNAMIC_SHARED_DATABINDINGS] Initializing Dynamic Item Shared Databindings...: ", &cParam2);

                        InviteCont = DatabindingAddDataContainer(sParam1, keySting);
                        DatabindingAddDataBool(InviteCont, DynamicLabels(0), true);
                        DatabindingAddDataBool(InviteCont, DynamicLabels(1), true);
                        DatabindingAddDataHash(InviteCont, DynamicLabels(2), GetHashKey('COLOR_WHITE'));
                        -- uParam0->f_4 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(54), Param10.f_3);
                        -- uParam0->f_5 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(55), Param10.f_4);
                        -- uParam0->f_7 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(57), Param10.f_5);
                        -- uParam0->f_6 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(56), Param10.f_6);
                        -- if (Param10.f_7 == 0)
                        -- {
                        --     Param10.f_7 = joaat("IB_SELECT");
                        -- }
                        -- uParam0->f_8 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(58), Param10.f_7);
                        -- uParam0->f_9 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(*uParam0, func_2688(59), Param10.f_8);
                        -- uParam0->f_10 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(*uParam0, func_2688(60), Param10.f_9);
                        -- uParam0->f_11 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(61), Param10.f_10);
                        -- uParam0->f_13 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(67), Param10.f_11);
                        -- uParam0->f_12 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(62), Param10.f_12);
                        -- if (Param10.f_13 == 0)
                        -- {
                        --     Param10.f_13 = joaat("IB_SELECT");
                        -- }
                        -- uParam0->f_14 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(64), Param10.f_13);
                        -- uParam0->f_15 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(*uParam0, func_2688(65), Param10.f_14);
                        -- uParam0->f_16 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(*uParam0, func_2688(66), Param10.f_15);
        -- uParam0->f_18 = DATABINDING::_DATABINDING_ADD_DATA_STRING(*uParam0, func_2688(15), Param10.f_16);
        -- uParam0->f_19 = DATABINDING::_DATABINDING_ADD_DATA_STRING(*uParam0, func_2688(17), Param10.f_17);
        -- uParam0->f_20 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(3), Param10.f_18);
        -- uParam0->f_21 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(4), Param10.f_19);
        -- uParam0->f_22 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(5), Param10.f_20);
        -- uParam0->f_23 = DATABINDING::_DATABINDING_ADD_DATA_HASH(*uParam0, func_2688(6), Param10.f_21);
        -- uParam0->f_24 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(*uParam0, func_2688(94), Param10.f_22);
        -- uParam0->f_25 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(*uParam0, func_2688(95), Param10.f_23);


	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_37 = DATABINDING::_DATABINDING_ADD_DATA_INT(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(84), Global_1940463.f_245.f_1248);
	-- DEBUG::_0xF0783374333FD8CE(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - New Invite Unique ID: ", Global_1940463.f_245.f_1248);
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_39 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(85), true);
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_40 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(86), false);
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_35 = DATABINDING::_DATABINDING_ADD_DATA_BOOL(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(74), Param0.f_32);
	-- if (Param0.f_32)
	-- {
	-- 	DEBUG::_0xF0783374333FD8CE(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - Invite has an R3 Button visible!");
	-- 	Global_1940463.f_245.f_14[iVar0 /*41*/].f_34 = DATABINDING::_DATABINDING_ADD_DATA_STRING(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(72), Param0.f_31);
	-- 	DEBUG::_0xF0783374333FD8CE(40, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - R3 Script Text: ", Param0.f_31);
	-- 	Global_1940463.f_245.f_14[iVar0 /*41*/].f_33 = DATABINDING::_DATABINDING_ADD_DATA_INT(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(75), Param0.f_30);
	-- 	DEBUG::_0xF0783374333FD8CE(168, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - New Invite R3 Script Event Type: ", func_2684(Param0.f_30, 0), " Int Value: ", Param0.f_30);
	-- }
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_28 = DATABINDING::_DATABINDING_ADD_DATA_INT(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(87), Param0.f_26);
	-- bVar15 = false;
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_36 = DATABINDING::_DATABINDING_ADD_DATA_BOOL_BY_HASH(Global_1940463.f_245.f_14[iVar0 /*41*/], 707094655, bVar15);
	-- DEBUG::_0xF0783374333FD8CE(168, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - New Invite Script Event Type: ", func_2684(Param0.f_26, 0), " Int Value: ", Param0.f_26);
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_29 = DATABINDING::_DATABINDING_ADD_DATA_INT(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(50), Param0.f_27);
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_30 = DATABINDING::_DATABINDING_ADD_DATA_INT(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(51), Param0.f_27.f_1);
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_31 = DATABINDING::_DATABINDING_ADD_DATA_GANG_ID(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(88), Param0.f_27.f_2);
	-- DEBUG::_0xF0783374333FD8CE(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - New Invite Script Data - Int 1: ", Param0.f_27);
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_27 = DATABINDING::_DATABINDING_ADD_DATA_INT(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(89), bVar2);
	-- DEBUG::_0xF0783374333FD8CE(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - New Invite Duration: ", Param0.f_25);
	-- DEBUG::_0xF0783374333FD8CE(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - New Invite Expiration Time: ", bVar2);
	-- Global_1940463.f_245.f_14[iVar0 /*41*/].f_26 = DATABINDING::_DATABINDING_ADD_DATA_INT(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(90), Param0.f_24);
	-- DEBUG::_0xF0783374333FD8CE(40, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - New Invite Filter Type: ", func_4776(Param0.f_24, 0));
	-- func_4777(Global_1940463.f_245.f_1246 + 1);
	-- if (Global_1940463.f_245.f_1248 == 2147483647)
	-- {
	-- 	Global_1940463.f_245.f_1248 = 0;
	-- }
	-- if (func_4778(Param0.f_26))
	-- {
	-- 	Param0.f_33 = 5;
	-- 	Param0.f_33.f_1 = 1;
	-- 	Param0.f_33.f_13 = 778915895;
	-- 	Param0.f_33.f_14 = Global_1940463.f_245.f_14[iVar0 /*41*/];
	-- 	DEBUG::_0xF0783374333FD8CE(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] Toast has an Invite Datastore associated at ID: ", Global_1940463.f_245.f_14[iVar0 /*41*/]);
	-- 	bVar16 = func_4239(&(Param0.f_33));
	-- 	DEBUG::_0xF0783374333FD8CE(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] new Toast Feed ID stored: ", bVar16);
	-- 	Global_1940463.f_245.f_14[iVar0 /*41*/].f_38 = DATABINDING::_DATABINDING_ADD_DATA_INT(Global_1940463.f_245.f_14[iVar0 /*41*/], func_2688(91), bVar16);
	-- }
	-- DEBUG::_0xF0783374333FD8CE(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] Succeeded to push new Toast with Invite");
	-- iVar17 = func_4779();
	-- if (iVar17 == 0 || Param0.f_24 == iVar17)
	-- {
	-- 	DEBUG::_0xA308F935BDECCEC0(8, 162, "[PLAYER_MENU_PUSH_UI_INVITE] - Player menu is visible, and Invite matches current filter type. Push immediately to the UI List... ");
	-- 	Global_1940463.f_245.f_1247++;
	-- 	DATABINDING::_DATABINDING_INSERT_UI_ITEM_TO_LIST_FROM_CONTEXT_STRING_ALIAS(Global_1940463.f_245.f_5, false, "pm_invite_item", Global_1940463.f_245.f_14[iVar0 /*41*/]);
end