resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Retaliation Gaming Client Side Framework'

client_scripts{  
  '@NativeUILua-Reloaded/NativeUI.lua',
  '@NativeUILua-Reloaded/Wrapper/Utility.lua',
  '@NativeUILua-Reloaded/UIElements/UIVisual.lua',
  '@NativeUILua-Reloaded/UIElements/UIResRectangle.lua',
  '@NativeUILua-Reloaded/UIElements/UIResText.lua',
  '@NativeUILua-Reloaded/UIElements/Sprite.lua',
  '@NativeUILua-Reloaded/UIMenu/elements/Badge.lua',
  '@NativeUILua-Reloaded/UIMenu/elements/Colours.lua',
  '@NativeUILua-Reloaded/UIMenu/elements/ColoursPanel.lua',
  '@NativeUILua-Reloaded/UIMenu/elements/StringMeasurer.lua',
  '@NativeUILua-Reloaded/UIMenu/items/UIMenuItem.lua',
  '@NativeUILua-Reloaded/UIMenu/items/UIMenuCheckboxItem.lua',
  '@NativeUILua-Reloaded/UIMenu/items/UIMenuListItem.lua',
  '@NativeUILua-Reloaded/UIMenu/items/UIMenuSliderItem.lua',
  '@NativeUILua-Reloaded/UIMenu/items/UIMenuSliderHeritageItem.lua',
  '@NativeUILua-Reloaded/UIMenu/items/UIMenuColouredItem.lua',
  '@NativeUILua-Reloaded/UIMenu/items/UIMenuProgressItem.lua',
  '@NativeUILua-Reloaded/UIMenu/items/UIMenuSliderProgressItem.lua',
  '@NativeUILua-Reloaded/UIMenu/windows/UIMenuHeritageWindow.lua',
  '@NativeUILua-Reloaded/UIMenu/panels/UIMenuGridPanel.lua',
  '@NativeUILua-Reloaded/UIMenu/panels/UIMenuHorizontalOneLineGridPanel.lua',
  '@NativeUILua-Reloaded/UIMenu/panels/UIMenuVerticalOneLineGridPanel.lua',
  '@NativeUILua-Reloaded/UIMenu/panels/UIMenuColourPanel.lua',
  '@NativeUILua-Reloaded/UIMenu/panels/UIMenuPercentagePanel.lua',
  '@NativeUILua-Reloaded/UIMenu/panels/UIMenuStatisticsPanel.lua',
  '@NativeUILua-Reloaded/UIMenu/UIMenu.lua',
  '@NativeUILua-Reloaded/UIMenu/MenuPool.lua',
  '@NativeUILua-Reloaded/UITimerBar/UITimerBarPool.lua',
  '@NativeUILua-Reloaded/UITimerBar/items/UITimerBarItem.lua',
  '@NativeUILua-Reloaded/UITimerBar/items/UITimerBarProgressItem.lua',
  '@NativeUILua-Reloaded/UITimerBar/items/UITimerBarProgressWithIconItem.lua',
  '@NativeUILua-Reloaded/UIProgressBar/UIProgressBarPool.lua',
  '@NativeUILua-Reloaded/UIProgressBar/items/UIProgressBarItem.lua',

  '@mysql-async/lib/MySQL.lua',

  'Config/Cfg_Defines.lua',

  'Database/Client_Database.lua',

  'Functions/CarWash/fnc_CarWash.lua',
  'Functions/copSystem/fnc_copMarkers.lua',
  'Functions/copSystem/fnc_CopToggleDuty.lua',
  'Functions/copSystem/fnc_LEOMenu.lua',
  'Functions/copSystem/fnc_SpeedRadar.lua',

  'Functions/Economy/HandleMoney.lua',

  'Functions/Events/fnc_OnPlayerConnected.lua',
  'Functions/Events/fnc_OnPlayerDisconnected.lua',
  'Functions/Events/fnc_OnPlayerKilled.lua',
  'Functions/Events/KeyHandler.lua',
  'Functions/Events/fnc_Output.lua',

  'Functions/jobSystem/Security/fnc_JS_startSecurity.lua',
  'Functions/jobSystem/Taxi/fnc_JS_startTaxi.lua',
  'Functions/jobSystem/fnc_JS_Main.lua',

  'Functions/Notifications/HandleNotitications.lua',

  'Functions/Robberies/fnc_R_RobBank.lua',
  'Functions/Robberies/fnc_R_RobStore.lua',

  'Functions/Sports/fnc_BaseJumping.lua',
  'Functions/Sports/fnc_BikeShop.lua',

  'Functions/Stores/fnc_NearCashRegister.lua',

  'Functions/ThreatLevel/fnc_ThreatLevel.lua',

  'Functions/UI/fnc_BasicNeeds.lua',
  'Functions/UI/fnc_PlayerNames.lua',
  'Functions/UI/fnc_Relif.lua',
  'Functions/UI/fnc_RPHUD.lua',
  'Functions/UI/fnc_Speedo.lua',
  'Functions/UI/fnc_UnderwaterHUD.lua',
  'Functions/UI/MenuText.lua',
  'Functions/UI/RemoveElements.lua',

  'Functions/vehicleShops/fnc_VehicleShops.lua',
  
  'Functions/Weapons/fnc_GiveWeapon.lua',
  'Functions/Weapons/fnc_NoWeaponDrops.lua',

  'Functions/World/fnc_SetupAI.lua',
  'Functions/World/fnc_WeatherSync.lua',
  'Functions/World/MapBlips.lua',

  'Functions/fnc_afkkick.lua',
  'Functions/fnc_EmergencyLightControl.lua',
  'Functions/fnc_HornLights.lua',
  'Functions/fnc_LoadMarkers.lua',
  'Functions/fnc_NoDriveBy.lua',
  'Functions/fnc_RenameVehicles.lua',
  'Functions/fnc_SpawnSelection.lua'

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
    'LoadingScreen/index.html'
}

loadscreen 'LoadingScreen/index.html'

dependency {
  'RG_Server'
}