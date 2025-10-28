local Webhook = {}
Webhook.__index = Webhook

function Webhook.new(url)
    local self = setmetatable({}, Webhook)
    self.url = url
    return self
end

function Webhook:Send(body)
    request({
        Url = self.url,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode(body)
    })
end

return Webhook
