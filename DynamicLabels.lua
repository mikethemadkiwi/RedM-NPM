-------------------------------------------------------------------------------------------------
function InviteFilter(id)
    if id == 0 then
        return -2119268333; -- filter type 0 used most commonly in startup.mp style scripts.
    elseif id == 1 then
        return -1827170883;
    elseif id == 2 then
        return 2014102137;
    else
        return -1
    end
end
-------------------------------------------------------------------------------------------------
function DynamicListLabels(id)
    -- These are UIItemlists that can handle the dynamic items or UI items being inserted into them
    -- be cautious to use one that matches the item list, or it WILL break. (dynamic uiitems WILL break dynamic menu items.) 
    -- Usage : DatabindingAddUiItemListByHash(GameDataBinds["invite_data"], GetHashKey('pm_invite_item'))
    if id == 0 then
        return "list" 
    end
    if id == 2 then
        return "checkbox"
    end
    if id == 3 then
        return "pm_dynamic_text_item"
    end
    if id == 4 then
        return "ft_dynamic_text_and_price"
    end
    if id == 5 then
        return "pm_dynamic_text_and_end_image"
    end
    if id == 6 then
        return "pm_dynamic_text_and_end_image_hold"
    end
    if id == 7 then
        return "pm_dynamic_text_and_end_image_and_corner_end_image"
    end
    if id == 8 then
        return "pm_dynamic_small_image"
    end
    if id == 9 then
        return "pm_dynamic_large_image_and_stacked_text_with_fill"
    end
    if id == 10 then
        return "pm_dynamic_posse_entry"
    end
    if id == 11 then
        return "pm_dynamic_player_entry"
    end
    if id == 12 then
        return "pm_dynamic_horse_list_item"
    end
    if id == 13 then
        return "pm_dynamic_vehicle_list_item"
    end
    if id == 14 then
        return "pm_invite_item"
    end
end
-------------------------------------------------------------------------------------------------
function DynamicLabels(id)
    if id == 0 then
        return "dynamic_list_item_enabled";
    end
    if id == 1 then
        return "dynamic_list_item_visible";
    end
    if id == 2 then
        return "dynamic_list_item_main_color";
    end
    if id == 3 then
        return "dynamic_list_item_secondary_color";
    end
    if id == 4 then
        return "dynamic_list_item_tertiary_color";
    end
    if id == 5 then
        return "dynamic_list_item_main_img_texture_dic";
    end
    if id == 6 then
        return "dynamic_list_item_main_img_texture";
    end
    if id == 7 then
        return "dynamic_list_item_main_img_visible";
    end
    if id == 8 then
        return "dynamic_list_item_main_img_enabled";
    end
    if id == 9 then
        return "dynamic_list_item_status_icon_texture_dic";
    end
    if id == 10 then
        return "dynamic_list_item_status_icon_texture";
    end
    if id == 11 then
        return "dynamic_list_item_status_icon_visible";
    end
    if id == 12 then
        return "dynamic_list_item_deco_texture_dic";
    end
    if id == 13 then
        return "dynamic_list_item_deco__texture";
    end
    if id == 14 then
        return "dynamic_list_item_deco_visible";
    end
    if id == 15 then
        return "dynamic_list_item_raw_text_entry";
    end
    if id == 16 then
        return "dynamic_list_item_text_label_entry";
    end
    if id == 17 then
        return "dynamic_list_item_secondary_raw_text_entry";
    end
    if id == 18 then
        return "dynamic_list_item_secondary_text_label_entry";
    end
    if id == 19 then
        return "dynamic_list_item_secondary_text_visible";
    end
    if id == 20 then
        return "dynamic_list_item_secondary_text_enabled";
    end
    if id == 21 then
        return "dynamic_list_item_end_img_texture_dic";
    end
    if id == 22 then
        return "dynamic_list_item_end_img_texture";
    end
    if id == 23 then
        return "dynamic_list_item_end_img_visible";
    end
    if id == 24 then
        return "dynamic_list_item_corner_end_img_texture_dic";
    end
    if id == 25 then
        return "dynamic_list_item_corner_end_img_texture";
    end
    if id == 26 then
        return "dynamic_list_item_corner_end_img_visible";
    end
    if id == 27 then
        return "dynamic_list_item_entry_player_index";
    end
    if id == 28 then
        return "dynamic_list_item_entry_friend_index";
    end
    if id == 29 then
        return "dynamic_list_item_player_gamer_handle";
    end
    if id == 30 then
        return "dynamic_list_item_option_stepper_visible";
    end
    if id == 31 then
        return "dynamic_list_item_option_stepper_text_enabled";
    end
    if id == 32 then
        return "dynamic_list_item_option_stepper_items";
    end
    if id == 33 then
        return "dynamic_list_item_option_stepper_current_hash";
    end
    if id == 34 then
        return "dynamic_list_item_option_stepper_current_index";
    end
    if id == 35 then
        return "dynamic_list_item_option_stepper_max_index";
    end
    if id == 36 then
        return "dynamic_list_item_left_chevron_enabled";
    end
    if id == 37 then
        return "dynamic_list_item_right_chevron_enabled";
    end
    if id == 38 then
        return "dynamic_list_item_option_stepper_index_change_ui_event_hash";
    end
    if id == 39 then
        return "dynamic_list_item_main_fill_maximum";
    end
    if id == 40 then
        return "dynamic_list_item_main_fill_value";
    end
    if id == 41 then
        return "dynamic_list_item_extra_text_field_entry_one_raw_text";
    end
    if id == 42 then
        return "dynamic_list_item_extra_text_field_entry_two_raw_text";
    end
    if id == 43 then
        return "dynamic_list_item_extra_text_field_entry_three_raw_text";
    end
    if id == 44 then
        return "dynamic_list_item_extra_text_field_entry_one_visibility";
    end
    if id == 45 then
        return "dynamic_list_item_extra_text_field_entry_two_visibility";
    end
    if id == 46 then
        return "dynamic_list_item_extra_text_field_entry_three_visibility";
    end
    if id == 47 then
        return "dynamic_list_item_extra_img_texture_one_dic";
    end
    if id == 48 then
        return "dynamic_list_item_extra_img_one_texture";
    end
    if id == 49 then
        return "dynamic_list_item_extra_img_one_visible";
    end
    if id == 50 then
        return "dynamic_list_item_extra_int_field_one_value";
    end
    if id == 51 then
        return "dynamic_list_item_extra_int_field_two_value";
    end
    if id == 52 then
        return "dynamic_list_item_extra_vector_field_one_value";
    end
    if id == 53 then
        return "dynamic_list_item_extra_bool_field_one_value";
    end
    if id == 54 then
        return "dynamic_list_item_link";
    end
    if id == 55 then
        return "dynamic_list_item_event_channel_hash";
    end
    if id == 56 then
        return "dynamic_list_item_focus_hash";
    end
    if id == 57 then
        return "dynamic_list_item_select_hash";
    end
    if id == 58 then
        return "dynamic_list_item_prompt_text";
    end
    if id == 59 then
        return "dynamic_list_item_prompt_enabled";
    end
    if id == 60 then
        return "dynamic_list_item_prompt_visible";
    end
    
    if id == 64 then
        return "dynamic_list_item_prompt_option_text";
    end
    if id == 65 then
        return "dynamic_list_item_prompt_option_enabled";
    end
    if id == 66 then
        return "dynamic_list_item_prompt_option_visible";
    end
    if id == 67 then
        return "dynamic_list_item_prompt_option_select_hash";
    end
    if id == 68 then
        return "dynamic_list_item_prompt_toggle_text";
    end
    if id == 69 then
        return "dynamic_list_item_prompt_toggle_enabled";
    end
    if id == 70 then
        return "dynamic_list_item_prompt_toggle_visible";
    end
    if id == 71 then
        return "dynamic_list_item_prompt_toggle_select_hash";
    end
    if id == 72 then
        return "dynamic_list_item_prompt_r3_text";
    end
    if id == 73 then
        return "dynamic_list_item_prompt_r3_enabled";
    end
    if id == 74 then
        return "dynamic_list_item_prompt_r3_visible";
    end
    if id == 75 then
        return "dynamic_list_item_select_r3_select_hash";
    end
    if id == 76 then
        return "dynamic_list_item_prompt_dpad_left_right_text";
    end
    if id == 77 then
        return "dynamic_list_item_prompt_dpad_left_right_enabled";
    end
    if id == 78 then
        return "dynamic_list_item_prompt_dpad_left_right_visible";
    end
    if id == 79 then
        return "dynamic_list_item_select_dpad_left_right_select_hash";
    end
    if id == 80 then
        return "mount_collection_index";
    end
    if id == 81 then
        return "dynamic_list_item_rename_prompt_enabled";
    end
    if id == 82 then
        return "dynamic_list_item_rename_prompt_visible";
    end
    if id == 83 then
        return "dynamic_list_item_stats_info_toggle_prompt_text";
    end
    if id == 84 then
        return "invite_unique_id";
    end
    if id == 85 then
        return "invite_tracked";
    end
    if id == 86 then
        return "invite_processed";
    end
    if id == 87 then
        return "invite_script_type";
    end
    if id == 88 then
        return "invite_gang_id";
    end
    if id == 89 then
        return "invite_expiration_time";
    end
    if id == 90 then
        return "invite_filter_type";
    end
    if id == 91 then
        return "invite_feed_message_id";
    end
    if id == 92 then
        return "invite_all_enabled";
    end
    if id == 93 then
        return "invite_all_visible";
    end
    if id == 94 then
        return "dynamic_list_item_overlay_tick_visible";
    end
    if id == 95 then
        return "dynamic_list_item_overlay_time_visible";
    end
end
-------------------------------------------------------------------------------------------------
function UIDynamicLabels(id)
	if id == 0 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_ENABLED";
    end
	if id == 1 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_VISIBLE";
    end
	if id == 2 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_MAIN_COLOR";
    end
	if id == 3 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_SECONDARY_COLOR";
    end
	if id == 4 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_TERTIARY_COLOR";
    end
	if id == 5 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_MAIN_IMAGE_TEXTURE_DICTIONARY";
    end
	if id == 6 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_MAIN_IMAGE_TEXTURE";
    end
	if id == 7 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_MAIN_IMAGE_VISIBLE";
    end
	if id == 8 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_MAIN_IMAGE_ENABLED";
    end
	if id == 9 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_STATUS_TEXTURE_DICTIONARY";
    end
	if id == 10 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_STATUS_TEXTURE";
    end
	if id == 11 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_STATUS_VISIBLE";
    end
	if id == 12 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_DECORATION_TEXTURE_DICTIONARY";
    end
	if id == 13 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_DECORATION_TEXTURE";
    end
	if id == 14 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_DECORATION_VISIBLE";
    end
	if id == 15 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_MAIN_RAW_TEXT_ENTRY";
    end
	if id == 16 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_MAIN_TEXT_LABEL_ENTRY";
    end
	if id == 17 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_SECONDARY_RAW_TEXT_ENTRY";
    end
	if id == 18 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_SECONDARY_TEXT_LABEL_ENTRY";
    end
	if id == 19 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_SECONDARY_TEXT_VISIBLE";
    end
	if id == 20 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_SECONDARY_TEXT_ENABLED";
    end
	if id == 21 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_END_IMAGE_TEXTURE_DICTIONARY";
    end
	if id == 22 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_END_IMAGE_TEXTURE";
    end
	if id == 23 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_END_IMAGE_VISIBLE";
    end
	if id == 24 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_CORNER_END_IMAGE_TEXTURE_DICTIONARY";
    end
	if id == 25 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_CORNER_END_IMAGE_TEXTURE";
    end
	if id == 26 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_CORNER_END_IMAGE_VISIBLE";
    end
	if id == 27 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PLAYER_INDEX";
    end
	if id == 28 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_FRIEND_INDEX";
    end
	if id == 29 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_GAMER_HANDLE";
    end
	if id == 30 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_VISIBLE";
    end
	if id == 31 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_TEXT_ENABLED";
    end
	if id == 32 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_ARRAY";
    end
	if id == 33 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_CURRENT_HASH";
    end
	if id == 34 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_CURRENT_INDEX";
    end
	if id == 35 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_MAX_INDEX";
    end
	if id == 36 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_LEFT_CHEVRON_ENABLED";
    end
	if id == 37 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_RIGHT_CHEVRON_ENABLED";
    end
	if id == 38 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_STEPPER_INDEX_CHANGE_UI_EVENT_HASH";
    end
	if id == 39 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_FILL_MAXIMUM";
    end
	if id == 40 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_FILL_VALUE";
    end
	if id == 41 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_TEXT_FIELD_ONE";
    end
	if id == 42 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_TEXT_FIELD_TWO";
    end
	if id == 43 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_TEXT_FIELD_THREE";
    end
	if id == 44 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_TEXT_FIELD_ONE_VISIBILITY";
    end
	if id == 45 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_TEXT_FIELD_TWO_VISIBILITY";
    end
	if id == 46 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_TEXT_FIELD_THREE_VISIBILITY";
    end
	if id == 47 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_IMAGE_TEXTURE_ONE_DICTIONARY";
    end
	if id == 48 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_IMAGE_ONE_TEXTURE";
    end
	if id == 49 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_IMAGE_ONE_VISIBLE";
    end
	if id == 50 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_INT_FIELD_ONE";
    end
	if id == 51 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_INT_FIELD_TWO";
    end
	if id == 52 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_VECTOR_FIELD_ONE";
    end
	if id == 53 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_EXTRA_BOOL_FIELD_ONE";
    end
	if id == 54 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_UI_FLOW_LINK";
    end
	if id == 55 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_UI_EVENT_CHANNEL_HASH";
    end
	if id == 56 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_UI_EVENT_FOCUS_HASH";
    end
	if id == 57 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_UI_EVENT_SELECTION_HASH";
    end
	if id == 58 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_TEXT";
    end
	if id == 59 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_ENABLED";
    end
	if id == 60 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_VISIBLE";
    end
	if id == 61 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_UI_EVENT_CHANNEL_HASH";
    end
	if id == 62 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_UI_EVENT_FOCUS_HASH";
    end
	if id == 63 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OPTION_UI_EVENT_SELECTION_HASH";
    end
	if id == 64 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_OPTION_TEXT";
    end
	if id == 65 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_OPTION_ENABLED";
    end
	if id == 66 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_OPTION_VISIBLE";
    end
	if id == 67 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_OPTION_SELECT_HASH";
    end
	if id == 68 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_TOGGLE_TEXT";
    end
	if id == 69 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_TOGGLE_ENABLED";
    end
	if id == 70 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_TOGGLE_VISIBLE";
    end
	if id == 71 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_TOGGLE_SELECT_HASH";
    end
	if id == 72 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_R3_TEXT";
    end
	if id == 73 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_R3_ENABLED";
    end
	if id == 74 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_R3_VISIBLE";
    end
	if id == 75 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_R3_SELECT_HASH";
    end
	if id == 76 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_DPAD_LEFT_RIGHT_TEXT";
    end
	if id == 77 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_DPAD_LEFT_RIGHT_ENABLED";
    end
	if id == 78 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_DPAD_LEFT_RIGHT_VISIBLE";
    end
	if id == 79 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_PROMPT_DPAD_LEFT_RIGHT_SELECT_HASH";
    end
	if id == 80 then
			return "UI_DYNAMIC_MOUNT_ITEM_ENTRY_TYPE_COLLECTION_INDEX";
    end
	if id == 81 then
			return "UI_DYNAMIC_MOUNT_ITEM_ENTRY_TYPE_RENAME_PROMPT_ENABLED";
    end
	if id == 82 then
			return "UI_DYNAMIC_MOUNT_ITEM_ENTRY_TYPE_RENAME_PROMPT_VISIBLE";
    end
	if id == 83 then
			return "UI_DYNAMIC_MOUNT_ITEM_ENTRY_TYPE_STATS_INFO_PROMPT_TEXT";
    end
	if id == 84 then
			return "UI_DYNAMIC_INVITE_ENTRY_TYPE_UNIQUE_ID";
    end
	if id == 85 then
			return "UI_DYNAMIC_INVITE_ENTRY_TYPE_TRACKED";
    end
	if id == 86 then
			return "UI_DYNAMIC_INVITE_ENTRY_TYPE_PROCESSED";
    end
	if id == 87 then
			return "UI_DYNAMIC_INVITE_ENTRY_TYPE_SCRIPT_TYPE";
    end
	if id == 88 then
			return "UI_DYNAMIC_INVITE_ENTRY_TYPE_GANG_ID";
    end
	if id == 89 then
			return "UI_DYNAMIC_INVITE_ENTRY_TYPE_EXPIRATION_TIME";
    end
	if id == 90 then
			return "UI_DYNAMIC_INVITE_ENTRY_TYPE_FILTER_TYPE";
    end
	if id == 91 then
			return "UI_DYNAMIC_INVITE_ENTRY_TYPE_FEED_MESSAGE_ID";
    end
	if id == 92 then
			return "UI_DYNAMIC_INVITE_ALL_ENABLED";
    end
	if id == 93 then
			return "UI_DYNAMIC_INVITE_ALL_VISIBLE";
    end
	if id == 94 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OVERLAY_IMG_TICK_VISIBLE";
    end
	if id == 95 then
			return "UI_DYNAMIC_ITEM_ENTRY_TYPE_OVERLAY_IMG_CLOCK_VISIBLE";
    end
end