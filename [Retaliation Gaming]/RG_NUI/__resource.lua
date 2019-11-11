resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

description 'Retaliation Gaming NUI Framework'

client_scripts{  
  
  '@NativeUI/NativeUI.lua',

  'Menus/MenuExports.lua',
  'Menus/Diag_Civ_SpawnSelection.lua',
  'Menus/Diag_Civ_WeaponsMenu.lua',
  'Menus/Diag_Cop_GarageMenu.lua',
  'Menus/Diag_Cop_WeaponsMenu.lua',
  'Menus/Diag_Cop_Interaction.lua'

}

dependency {
  'RG_Client'
}