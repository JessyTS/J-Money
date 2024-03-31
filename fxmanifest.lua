fx_version 'cerulean'
games { 'gta5' };

name "Money Wash (J-Money)"
author 'JessyTS'
version '1.0'
description 'Script de blachiment d\'argent RageUI 0.1ms'

client_scripts {
    -- // Librerie RageUI (A NE PAS MODIFIER SVP)\\
    "Libs/RMenu.lua",
    "Libs/menu/RageUI.lua",
    "Libs/menu/Menu.lua",
    "Libs/menu/MenuController.lua",
    "Libs/components/*.lua",
    "Libs/menu/elements/*.lua",
    "Libs/menu/items/*.lua",
    "Libs/menu/panels/*.lua",
    "Libs/menu/windows/*.lua",

    "Client/*.lua",
}

server_scripts {
    "Server/*.lua",
}

shared_script{
    -- ESX
    '@es_extended/imports.lua',
    '@es_extended/locale.lua',

    -- Config
    "Shared/*.lua",
    "Local/*.lua",
}