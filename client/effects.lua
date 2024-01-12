function SetEffect(type, time)
    local playerPed = PlayerPedId()

    if type == 1 then 
        SetPedArmour(playerPed, GetPedArmour(playerPed) + 10)
        Config.Notification(nil, Config.Translation["YouGotKevler"])
    elseif type == 2 then 
        SetEntityHealth(playerPed, GetEntityHealth(playerPed) + 10)
        Config.Notification(nil, Config.Translation["YouGotLive"])

    elseif type == 3 then 
        Citizen.CreateThread(function ()
            SetNightvision(true)
            Config.Notification(nil, Config.Translation["YouGotTheNightlook"])
            Citizen.Wait(time * 1000)
            SetNightvision(false)
        end)
    elseif type == 4 then 
        Citizen.CreateThread(function()
            SetPedMoveRateOverride(PlayerId(),10.0)
            SetRunSprintMultiplierForPlayer(PlayerId(),1.20)
            Config.Notification(nil, Config.Translation["YouGotSpeed"])
            SetPedMoveRateOverride(PlayerPedId(),1.0)
            SetRunSprintMultiplierForPlayer(PlayerPedId(), 1.0)
        end)
    elseif type == 5 then 
        Citizen.CreateThread(function ()
            SetSeethrough(true)
            Config.Notification(nil, Config.Translation["YouGotXray"])
            Citizen.Wait(time * 1000)            
            SetSeethrough(false)
        end)
    end
end