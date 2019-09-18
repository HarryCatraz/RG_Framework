description 'Retaliation Gaming Server Side Framework'

server_scripts{
  '@mysql-async/lib/MySQL.lua',

  'Functions/Steam/svr_fnc_SteamHexToID.lua',

  'Database/Server_Database.lua',

  'Functions/ChatCommands/ChatCommandHandler.lua',

  'Functions/Events/svr_fnc_OnPlayerConnecting.lua',
  'Functions/Events/svr_fnc_OnPlayerKilled.lua',

  'Functions/ThreatLevel/svr_fnc_ThreatLevel.lua',

  'Functions/World/svr_fnc_WeatherSync.lua',

  'Functions/svr_fnc_kickplayer.lua',
  'Functions/svr_fnc_EmergencyLightControl.lua'

}

dependency {
  'RG_Client',
  'RG_NUI',
  'NativeUI'
}