Config = {}

Config.GetESXServer = function()
	local ESX
	ESX = exports["es_extended"]:getSharedObject()
	--TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	return ESX
end

Config.GetESXClient = function()
	local ESX
	while ESX == nil do
		ESX = exports["es_extended"]:getSharedObject()
		--TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	return ESX
end

Config.ItemUseTimeDeath = 60 --sec
Config.ItemUseCountDeath = 5

Config.Items = {
    {
        ItemName = "morphin",
        EffectType = 1,
        EffectTime = 3, --sec
        RemoveItem = true
    },
    {
        ItemName = "aspirin",
        EffectType = 2,
        EffectTime = 3, --sec
        RemoveItem = true
    },
    {
        ItemName = "meth",
        EffectType = 3,
        EffectTime = 3, --sec
        RemoveItem = true
    },
    {
        ItemName = "weed",
        EffectType = 4,
        EffectTime = 15, --sec
        RemoveItem = true
    },
    {
        ItemName = "battery",
        EffectType = 5,
        EffectTime = 3, --sec
        RemoveItem = true
    }
}

Config.Translation = {
    ["YouGotKevler"] = "You have received Kevlar!",
    ["YouGotLive"] = "You have gained life!",
    ["YouGotTheNightlook"] = "You have gained night vision!",
    ["YouGotSpeed"] = "You have gained speed!",
    ["YouGotXray"] = "You have gained X-ray vision!"
}

Config.Notification = function (source, msg)
    if source == nil then 
        TriggerEvent('codem-notification', msg, 2000, "info", nil)
        return
    end 

    TriggerEvent('codem-notification', source, msg, 2000, "info", nil)
end