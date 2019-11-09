--[[ AddEventHandler('playerSpawned', function()
  Citizen.CreateThread(function()

    local _playername = GetPlayerName(PlayerPedId())
    local _playerJob = Config.currentJob

    SendNUIMessage({
      type = "ui",
      playerName = _playername,
      playerJob = _playerJob
    })
    
  end)
end) ]]