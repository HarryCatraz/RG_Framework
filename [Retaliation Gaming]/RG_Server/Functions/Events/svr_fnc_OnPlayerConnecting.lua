local function OnPlayerConnecting()
    local steamIdentifier = GetPlayerIdentifiers(source)[1]
    if steamIdentifier == nil then
        --TriggerEvent("RG_Server_Kick")
    else
        return
    end
end

AddEventHandler("playerConnecting", OnPlayerConnecting)