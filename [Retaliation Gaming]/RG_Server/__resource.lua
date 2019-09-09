description 'Retaliation Gaming Server Side Framework'

server_scripts{
  "@mysql-async/lib/MySQL.lua",

  'Database/Server_Database.lua',

  'Functions/ChatCommands/ChatCommandHandler.lua',

  'Functions/Events/svr_fnc_OnPlayerConnecting.lua',
  'Functions/Events/svr_fnc_OnPlayerKilled.lua',

  'Functions/ThreatLevel/svr_fnc_ThreatLevel.lua',

  'Functions/World/svr_fnc_WeatherSync.lua',

  'Functions/svr_fnc_afkkick.lua',
  'Functions/svr_fnc_EmergencyLightControl.lua'

}

dependency {
  'RG_Client'
}