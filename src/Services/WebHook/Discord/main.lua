local HS = game:GetService("HttpService")

local service = {}

function service.newWebHook(url:string)
	local newWebHook = {}
	
	newWebHook.url = url
	
	function newWebHook.send(data:any)
		return HS:PostAsync(newWebHook.url, HS:JsonEncode(data), Enum.HttpContentType.ApplicationJson, false)	
	end
	
	return newWebHook
return

return service
