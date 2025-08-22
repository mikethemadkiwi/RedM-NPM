--[[ FX Information ]]--
fx_version   'cerulean'
lua54        'yes'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game         'rdr3'
--[[ Resource Information ]]--
name 'mwg_npm'
author 'mikethemadkiwi'
description 'mad wizzard group native player menu'
version '0.0.1'
--[[ Dependancies ]]--
dependencies {
    '/onesync',
}
--[[ Shared Scripts ]]--
shared_scripts {
    'npmConfig.lua'
}
--[[ Client Scripts ]]--
client_scripts {
    'Dataview.lua',
    'DynamicLabels.lua',
    'DataBindings.lua',
    'BuildFunctions.lua',
    'npmClient.lua',
}
--[[ Server Scripts ]]--
server_scripts {
	'@oxmysql/lib/MySQL.lua',
    'npmServer.lua'
}