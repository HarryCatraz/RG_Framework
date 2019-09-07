threatlevel = ""

function textThreatLevel(content) 
    SetTextFont(1)
    SetTextProportional(0)
    SetTextScale(0.5,0.5)
    SetTextEntry("STRING")
    AddTextComponentString("Threat Level: " ..content)
    DrawText( 0.0001, 0.0001) -- x,y of the screen
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        textThreatLevel(threatlevel)
    end
end)

AddEventHandler('onClientResourceStart', function (resourceName)
    TriggerServerEvent("Server::GetThreat")
end)

RegisterCommand("threat", function(source, args, rawCommand)
    threatlevelargs = args[1]
    if (Config.currentJob == "Cop") then
        TriggerServerEvent("Server::ChangeThreat", threatlevelargs)
    end
end, false)

RegisterNetEvent('Client::getThreat')
AddEventHandler('Client::getThreat', function(data)
	threatlevel = data
end)