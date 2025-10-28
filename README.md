# webhook-sender-executors
A convenient tool for sending messages to Discord webhooks directly from Roblox executors.  
This library helps you handle all the HTTP requests without having to manually set up `HttpService` or deal with messy server scripts. Perfect for testing, logging, or sending alerts from your Roblox scripts.

---

## Usage

First, get your webhook URL from Discord. Then, use the following example:

```lua
local webhook = "https://discord.com/api/webhooks/YOURWEBHOOK_HERE"
local WebhookLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/turkishtutel/webhook-sender-executors/refs/heads/main/script.lua"))()

local api = WebhookLib.new(webhook)

local body = {
    content = "Hello from Roblox!",
    username = "Roblox Bot",
    avatar_url = "https://www.roblox.com/headshot-thumbnail/image?userId=1&width=420&height=420&format=png"
}
api:Send(body)
local anotherMessage = {
    content = "This is a second message!",
    username = "Roblox Logger"
}
api:Send(anotherMessage)
```

---

### Notes
- Make sure your executor allows ```request()```
- The library automatically encodes the Lua table to JSON.
- You can customize `username` and `avatar_url` per message.

---

This setup allows you to send messages effortlessly without rewriting the HTTP request logic every time. Just load the library, create a webhook instance, and start sending messages!
