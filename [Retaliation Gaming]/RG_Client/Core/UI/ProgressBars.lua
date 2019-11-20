function RG_ProgressBar(time, text) 

    local newtime = time * 1000

	SendNUIMessage({
		type = "ui",
		display = true,
		time = newtime,
		text = text
	})
end

-- RG_ProgressBar(30, "Starting Store Robbery") -- Progress bar for 30 seconds