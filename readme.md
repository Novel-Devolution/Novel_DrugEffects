# Novel DrugEffect 📝  
Novel DrugEffect is a script where items get an effect. 
Decide for yourself what effects and advantages your drugs bring in the RP. 
You can create your own effects or use our own decide for yourself.

# Features 🧩
- Add any item
- Select our effect per item or develop your own
- Set per item the effect time
- Our effects: 
```
- Add Armour
- Add Health
- Add Nightvision
- Add Speed
- Add Thermalvision
```

## Get Started 🚀  
- Drop the source files in your server resource folder.
- Configruate the config.lua at your own settings.
- Execute the sql.sql in your database if the file exist.
- Start the script and enjoy.

## Config 📕  
```lua
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
```

## How to use our Discord 🤖
- First join our Discord.
- When you buy a script from our store, you will receive a tbx-id by mail.
- Copy the tbx-id.
- Go to the bot chat channel.
- In the bot chat channel, run this command:
```
.verify your-tbx-id
``` 
- If everything was correct, you will receive a message and the Discord roles from our bot.
- You can now see the channels for your purchased script. There you can see all news and updates about your script

    
### Author 🧑
@[Shop]("https://novel-devolution.tebex.io") 
@[Discord]("https://discord.com/invite/rSxQEJnC7a")

