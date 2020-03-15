resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'Retaliation Gaming NUI Framework'

client_scripts{  
  
  '@NativeUI/NativeUI.lua',

  '@RG_Client/Config/Config_Master.lua',

  'functions.lua',
  'Config.lua',

  'Menus/Diag_SpawnSelection.lua',
  'Menus/Diag_WeaponsShop.lua',
  'Menus/Diag_Garage.lua',
  'Menus/Diag_Interaction.lua',
  'Menus/Diag_Inventory.lua'

}

dependency {
  'RG_Client',
  'skinchanger'
}