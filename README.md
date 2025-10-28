# webhook-sender-executors
a way of doing all that wonky job on serverscripts with HttpService, but for roblox executors

usage:

```lua
local webhook = "https://discord.com/api/webhooks/YOURWEBHOOK_HERE"
local api = loadstring(game:httpget("https://raw.githubusercontent.com/turkishtutel/webhook-sender-executors/refs/heads/main/script.lua"))()
local body = {
    content = "hi"
}

api.webhook:Send(body)
```

