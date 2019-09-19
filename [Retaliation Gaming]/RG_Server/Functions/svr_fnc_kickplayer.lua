RegisterServerEvent("RG_Server_Kick")
AddEventHandler("RG_Server_Kick", function()
	DropPlayer(source, "Retaliation Gaming: You've Been Kicked By The Server")
end)