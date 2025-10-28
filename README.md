# webhook-sender-executors
a way of doing all that wonky job on serverscripts with HttpService, but for roblox executors

usage:

```
local webhook = "https://discord.com/api/webhooks/YOURWEBHOOK HERE"
local api = loadstring(game:httpget("https://github.com/turkishtutel/webhook-sender-executors/script.lua"))()
local body = {
    content : "hi"
}

api.webhook:Send(body)
```
