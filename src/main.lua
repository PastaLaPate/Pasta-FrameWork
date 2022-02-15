local HS = game:GetService("HttpService")

local main = {}
main.__index = main

function main.new()
    local self = {}
    setmetatable(self, main)
    
    self.webHooks = {}
    
    local DiscordWebHookServiceSource = HS:GetAsync("https://github.com/PastaLaPate/Pasta-FrameWork/blob/main/src/Services/WebHook/Discord/main.lua", true)
    local DiscordWebHookService = require(loadstring(WebHookServiceSource))
    
    function self:AddWebHook(url)
       return DiscordWebHookService.newWebHook(url) 
    end
    
    function self:GetDiscordWebhookService()
       return DiscordWebHookService 
    end
end

return main
