resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'Retaliation Gaming NUI Framework'

client_scripts{  
  '@NativeUI/NativeUI.lua',

  '@RG_Client/Config/Config_Master.lua',

  'Menus/MenuExports.lua',
  'Menus/GunShop.lua',
  'Menus/LEOMenu.lua',
  'Menus/SpawnSelection.lua',
  'Menus/CopGarageMenu.lua',
  'Menus/fnc_JevaMenu.lua'

}

dependency {
  'RG_Client'
}