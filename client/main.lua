ESX              = Config.GetESXClient()
local PlayerData = {}

RegisterNetEvent("Novel:DrugEffect:SetEffect")
AddEventHandler("Novel:DrugEffect:SetEffect", function (type, time)
    SetEffect(type, time)
end)