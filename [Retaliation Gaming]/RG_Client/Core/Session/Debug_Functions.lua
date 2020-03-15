function RG_Debug(type, message)
    if type == 1 then
        print(message)
    else
        RG_Notify("warn", message)
    end
end