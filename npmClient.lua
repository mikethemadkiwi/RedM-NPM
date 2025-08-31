----------------------------------------------------------------------------------
-- Functions For Player Menu
----------------------------------------------------------------------------------
function PMOpen()
    preparePlayerMenu()
    --------------------------------------------------------------------------------
    LaunchUiappByHashWithEntry(mpUIhash, mpUIEntryhash)
end
----------------------------------------------------------------------------------
function PMClose()    
    Citizen.CreateThread(function()
        CloseAllUiapps()
        DatabindingClearBindingArray(GameDataBinds["player_menu_data"])
        DatabindingRemoveDataEntry(GameDataBinds["player_menu_data"])
    end)
end
----------------------------------------------------------------------------------
-- Launches UIAPP using === 0x80F28E95 - INPUT_PLAYER_MENU - L ===
----------------------------------------------------------------------------------
Citizen.CreateThread(function()
    LoadDataBindings()
    while true do
        if IsControlJustReleased(0, GetHashKey('INPUT_PLAYER_MENU')) then
            if CanLaunchUiappByHash(mpUIhash) then
                -- if not IsUiappActiveByHash(mpUIhash) then            
                    PMOpen()
                -- end
            end
        end
        Citizen.Wait(1) 
    end
end)
----------------------------------------------------------------------------------
RegisterCommand('pmclose', function(source, args)  
    PMClose() -- this is here to allow force closure, but "closeuiappimmediately()" style things will too
end, false)