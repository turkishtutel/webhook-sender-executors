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
- Make sure your executor uses ```request()``` (probably all of them do)
- The library automatically encodes the Lua table to JSON.
- You can customize `username` and `avatar_url` per message.

---

This setup allows you to send messages effortlessly without rewriting the HTTP request logic every time. Just load the library, create a webhook instance, and start sending messages!

---

actual owner message: i used gpt to make the readme.md, not the script cuz fuckass wouldnt give me "unfair advantages" so i had to find how to use requests(), and the script is open source, you can copy it, but please for the love of god, do not make fucking stupid roblox loggers

dm @turkishtutle on discord if you find a possible logger

--- 

### Working executors:

Volcano: 🟢
Synapse X: 💀
Krnl: 🟢
Script-Ware: 🟢
ProtoSmasher: 🟢
Calamari: 🟢
Elysian: 🟢
Delta Executor: 🟢
Awp: 🟢
Exestack: 🟢
Neoblox: 🟢
Fluxus: 🟢
JJSploit: 🟢
WeAreDevs API (client tools): 🟢
RbxStudio (in-studio executors): 🟢
BytExecutor2: 🟢
Rift/Other custom in-studio tools: 🟢
GRH-Fake-Exploit: 🟢
RbxStu V4: 🔴
Wave Executor: 🔴
Some browser-extension executors: 🔴
Micro-executors / very-lightweight bots: 🔴
Old/abandoned executors (varies): 🔴
Unofficial mobile executors: 🔴
Enterprise/protected builds (limited): 🔴
Sentinel (varies by build): 🔴
Community forks / heavily-patched forks: 🔴
Script Executor (Micamaster100): 🟢
AIO (all-in-one) packs: 🟢
CLI-based exploit wrappers: 🟢
Custom private executors (varies): 🔴

(chat gpt is fucking stupid, please ignore stupid executors just dm me if your executor works, and what type of executor you use)
