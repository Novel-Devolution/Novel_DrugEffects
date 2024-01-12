ESX = Config.GetESXServer()


for i, v in pairs(Config.Items) do 
    ESX.RegisterUsableItem(v.ItemName, function(playerId)
       local xPlayer = ESX.GetPlayerFromId(playerId)
       if v.RemoveItem then
            xPlayer.removeInventoryItem(v.ItemName, 1)
       end
       TriggerClientEvent("Novel:DrugEffect:SetEffect", playerId, v.EffectType, v.EffectTime)
    end)
end