----------------------------------------------------------------------------------
-- Functions For Player Menu
----------------------------------------------------------------------------------
function PMOpen()
    print('prepping player menu data')
    prepSessionData()
    -------------------------------------------------------------------------------- 
    prepInviteData()
    --------------------------------------------------------------------------------
    prepMoonshineData()
    --------------------------------------------------------------------------------
    prepHorseAndStable()
    --------------------------------------------------------------------------------
    prepMatchMaking()
    --------------------------------------------------------------------------------
    prepPlayerList()
    --------------------------------------------------------------------------------
    BuildPlayerMenu()
    print('launching player menu')
    --------------------------------------------------------------------------------
    LaunchUiappByHashWithEntry(mpUIhash, mpUIEntryhash)
end
----------------------------------------------------------------------------------
function PMClose()
    CloseAllUiapps()
    DatabindingClearBindingArray(GameDataBinds["player_menu_data"])
    DatabindingRemoveDataEntry(GameDataBinds["player_menu_data"])
end
----------------------------------------------------------------------------------
-- Launches UIAPP using === 0x80F28E95 - INPUT_PLAYER_MENU - L ===
----------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        if IsControlJustReleased(0, GetHashKey('INPUT_PLAYER_MENU')) then
                    print('L')
            if CanLaunchUiappByHash(mpUIhash) then
                    print('canlaunch')
                if not IsUiappActiveByHash(mpUIhash) then 
                    print('isnt already active')          
                    PMOpen()
                end
            end
        end
        Citizen.Wait(1) 
    end
end)
----------------------------------------------------------------------------------
RegisterCommand('pmclose', function(source, args)  
    PMClose() -- this is here to allow force closure, but "closeuiappimmediately()" style things will too
end, false)