resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'Retaliation Gaming Client NUI Framework'

client_scripts{  
  '@NativeUI/NativeUI.lua',

  '@mysql-async/lib/MySQL.lua',

  '@RG_Client/Config/Cfg_Defines.lua',

  'Menus/fnc_LEOMenu.lua',
  'Menus/fnc_SpawnSelection.lua'
}

dependency {
  'RG_Client',
  'NativeUI'
}