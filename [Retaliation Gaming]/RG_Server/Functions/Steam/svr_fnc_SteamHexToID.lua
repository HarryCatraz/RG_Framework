function GetSteamId64FromHex(hex_id)
	local len = string.len(hex_id)
	local dec = 0
	for i=1,len do
		local val = string.sub(hex_id, i, i)
		if val == "a" or val == "A" then val = 10*16^tonumber(len-i)
		elseif val == "b" or val == "B" then val = 11*16^tonumber(len-i)
		elseif val == "c" or val == "C" then val = 12*16^tonumber(len-i)
		elseif val == "d" or val == "D" then val = 13*16^tonumber(len-i)
		elseif val == "e" or val == "E" then val = 14*16^tonumber(len-i)
		elseif val == "f" or val == "F" then val = 15*16^tonumber(len-i)
		else val = tonumber(val)*16^tonumber(len-i)
		end
		dec = dec+math.ceil(val)
	end
	return dec
end