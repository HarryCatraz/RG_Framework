resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Retaliation Gaming Client Side Framework'

client_scripts{  

  '@mysql-async/lib/MySQL.lua',

  'Config/Config_Anti-Cheat.lua',
  'Config/Config_Cop.lua',
  'Config/Config_Database.lua',
  'Config/Config_Defines.lua',
  'Config/Config_Economy.lua',
  'Config/Config_Master.lua',
  'Config/Config_Medic.lua',

  'Database/Client_Database.lua',

  'Core/Actions/Crouch.lua',
  'Core/Actions/Surrender.lua',

  'Core/Anti-Cheat/Anti-Cheat.lua',
  'Core/Anti-Cheat/AFK-Check.lua',

  'Core/CarWash/CarWash.lua',

  'Core/copSystem/copMarkers.lua',
  'Core/copSystem/CopToggleDuty.lua',
  'Core/copSystem/Evidence.lua',
  'Core/copSystem/LEOMenu.lua',
  'Core/copSystem/SpeedRadar.lua',
  'Core/copSystem/PanicButton.lua',
  'Core/copSystem/PoliceShield.lua',
  'Core/copSystem/CopGarages.lua',
  'Core/copSystem/CopWeapons.lua',
  'Core/copSystem/CopUniforms.lua',

  'Core/Events/OnPlayerComa.lua',
  'Core/Events/OnPlayerConnected.lua',
  'Core/Events/OnPlayerDisconnected.lua',
  'Core/Events/OnPlayerKilled.lua',

  'Core/jobSystem/Security/JS_startSecurity.lua',
  'Core/jobSystem/Taxi/JS_startTaxi.lua',
  'Core/jobSystem/JS_HandlePaychecks.lua',

  'Core/medicSystem/MedicToggleDuty.lua',

  'Core/Notifications/HandleNotitications.lua',

  'Core/Robberies/R_RobBank.lua',
  'Core/Robberies/R_RobStore.lua',

  'Core/Hobbies/BaseJumping.lua',
  'Core/Hobbies/BikeShop.lua',
  'Core/Hobbies/Hookers.lua',

  'Core/Stores/NearCashRegister.lua',

  'Core/ThreatLevel/ThreatLevel.lua',

  'Core/UI/BasicNeeds.lua',
  'Core/UI/PlayerNames.lua',
  'Core/UI/Relif.lua',
  'Core/UI/RPHUD.lua',
  'Core/UI/Speedo.lua',
  'Core/UI/UnderwaterHUD.lua',
  'Core/UI/MenuText.lua',
  'Core/UI/RemoveElements.lua',

  'Core/Vehicles/EmergencyLightControl.lua',
  'Core/Vehicles/HornLights.lua',
  'Core/Vehicles/NoDriveBy.lua',
  'Core/Vehicles/RenameVehicles.lua',
  'Core/Vehicles/loadVehicle.lua',
  'Core/Vehicles/SpawnVehicle.lua',

  'Core/vehicleShops/VehicleShops.lua',
  
  'Core/gunShops/Gunshops.lua',

  'Core/Weapons/NoWeaponDrops.lua',
  'Core/Weapons/GiveWeapon.lua',

  'Core/World/SetupAI.lua',
  'Core/World/WeatherSync.lua',
  'Core/World/MapBlips.lua'

}

files{
    'LoadingScreen/css/animate.css',
    'LoadingScreen/css/materialize.min.css',
    'LoadingScreen/css/styles.css',
    'LoadingScreen/css/Cursor.Cur',
    'LoadingScreen/css/Cursor.psd',
    'LoadingScreen/css/Cursor.png',

    'LoadingScreen/fonts/roboto/Roboto-Bold.woff',
    'LoadingScreen/fonts/roboto/Roboto-Bold.woff2',
    'LoadingScreen/fonts/roboto/Roboto-Light.woff',
    'LoadingScreen/fonts/roboto/Roboto-Light.woff2',
    'LoadingScreen/fonts/roboto/Roboto-Medium.woff',
    'LoadingScreen/fonts/roboto/Roboto-Medium.woff2',
    'LoadingScreen/fonts/roboto/Roboto-Regular.woff',
    'LoadingScreen/fonts/roboto/Roboto-Regular.woff2',
    'LoadingScreen/fonts/roboto/Roboto-Thin.woff',
    'LoadingScreen/fonts/roboto/Roboto-Thin.woff2',

    'LoadingScreen/images/DefinitiveNetwork.png',
    'LoadingScreen/images/HuntedRP512x512Trans.png',
    'LoadingScreen/images/PrsimRPLogo512Trans.png',
    'LoadingScreen/images/Logo.png',
    'LoadingScreen/images/Logo.psd',
    'LoadingScreen/images/Next.png',
    'LoadingScreen/images/Pause.png',
    'LoadingScreen/images/Play.png',
    'LoadingScreen/images/Poster1.jpg',
    'LoadingScreen/images/Poster2.jpg',
    'LoadingScreen/images/Poster3.jpg',
    'LoadingScreen/images/Pre.png',

    'LoadingScreen/js/app.js',
    'LoadingScreen/js/jquery-1.10.2.min.js',
    'LoadingScreen/js/materialize.min.js',
    'LoadingScreen/js/material_load.js',
    'LoadingScreen/js/jquery.min.js',
    'LoadingScreen/js/particles.js',

    'LoadingScreen/songs/Baker_Street.mp3',
    'LoadingScreen/songs/Radio_GaGa.mp3',
    'LoadingScreen/songs/Tuyo.mp3',
    'LoadingScreen/songs/White_Lines.mp3',
    'LoadingScreen/index.html',

    'core/Notifications/index.html',
    'core/Notifications/hotsnackbar.css',
    'core/Notifications/hotsnackbar.js'

}

loadscreen 'LoadingScreen/index.html'

dependency {
  'RG_Server',
  'RG_NUI',
  'NativeUI',
  'skinchanger'
}

ui_page 'core/Notifications/index.html'