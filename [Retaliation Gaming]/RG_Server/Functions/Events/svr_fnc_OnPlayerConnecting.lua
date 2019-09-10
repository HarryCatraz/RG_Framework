local function OnPlayerConnecting()
    local steamIdentifier = GetPlayerIdentifiers(source)[1]
    if steamIdentifier == nil then
        DropPlayer(source, "RG: Please Connect To Steam Before Playing")
    else
        return
    end
end

AddEventHandler("playerConnecting", OnPlayerConnecting)