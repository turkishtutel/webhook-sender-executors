local Webhook = {}
Webhook.__index = Webhook

function Webhook.new(url)
	local self = setmetatable({}, Webhook)
	self.url = url
	return self
end

local function Webhook:Send(body)
    request({
        Url = Webhook,
        Method ="POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = body
    })
end

return Webhook
