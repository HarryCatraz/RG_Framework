function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  local id = GetPlayerServerId(PlayerId())
  AddTextEntry('FE_THDR_GTAO', 'Retaliation Gaming | ID: ' .. id .. ' | Thanks For Playing!' )
end)
