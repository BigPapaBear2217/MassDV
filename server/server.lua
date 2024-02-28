RegisterCommand(Config.CommandName, function(source, args, rawCommand)
    if not Config.UseAcePermissions or IsPlayerAceAllowed(source, Config.AcePermissionString) then
        --
        --
        --
        if Config.CountdownEnabled then
            TriggerClientEvent('chat:addMessage', -1, {
                color = {255, 255, 255},
                multiline = true,
                args = {"^4[AJ:MassDV]^0 Starting countdown..."}
            })

            for i = Config.CountdownDuration, 1, -1 do
                Citizen.Wait(1000) -- Wait for 1 second
                TriggerClientEvent('chat:addMessage', -1, {
                    color = {255, 255, 255},
                    multiline = true,
                    args = {"^4[AJ:MassDV]^0", tostring(i)}
                })
            end
        end
        --
        --
        --
        TriggerClientEvent("AJ:clearAllVehicles", -1)
        --
        --
        --
        Citizen.Wait(1000) -- 1 Seconds
        --
        --
        --
        if Config.ClearChatAfterCleanup then
            TriggerClientEvent('chat:clear', -1)
        end 
        --
        --
        --
        TriggerClientEvent("chat:addMessage", -1, { template = '<div style="padding: 0.5vw; text-align: center; margin: 0.5vw; background-color: rgba(46, 235, 94, 0.6); border-radius: 3px; color: white;"><b>{0}</b></div>', args = {"^4[AJ:MassDV]^0 MassDV has been Completed."}})
        --
        --
        --
    else
        TriggerClientEvent("chat:addMessage", source, {template = '<div style="padding: 0.5vw; text-align: center; margin: 0.5vw; background-color: rgba(46, 235, 94, 0.6); border-radius: 3px; color: white;"><b>{0}</b></div>', args = {"^4[AJ:MassDV]^0 You do not have permission to use this command."}})    
    end
end, false)

-- Credits --
-- Don't be weird.. Leave my Credits!!

print("^4[AJ:MassDV]^0 MassDV by ImAidanJ")
print("^4[AJ:MassDV]^0 Discord: https://discord.gg/cGdUjQQnNT")
print("^4[AJ:MassDV]^0 Version: 1.1.1")