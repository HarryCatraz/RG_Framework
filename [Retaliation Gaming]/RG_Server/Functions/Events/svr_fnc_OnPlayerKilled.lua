RegisterServerEvent('playerDied')
AddEventHandler('playerDied',function(killer,reason)
	if killer == "**Invalid**" then
		reason = 2
	end
	if reason == 0 then
		TriggerClientEvent('RG_ShowNotification', -1,"~o~".. GetPlayerName(source).."~w~ Was Killed.")
	elseif reason == 1 then
		TriggerClientEvent('RG_ShowNotification', -1,"~o~".. killer .. "~w~ killed ~o~"..GetPlayerName(source).."~w~.")
	else
		TriggerClientEvent('RG_ShowNotification', -1,"~o~".. GetPlayerName(source).."~w~ Was Killed.")
	end
end)