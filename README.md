**LeaderstatService**
---
---

[details="Tutorial"]
Making leaderstats is pretty simple, but the code can also look pretty ugly.

Well, today you can turn this:
```lua
game.Players.PlayerAdded:Connect(function(plr)
	local Cash = Instance.new("IntValue")
	Cash.Name = "Cash"
	Cash.Value = 1000
	Cash.Parent = plr
end)
```
Into this!
```lua
game.Players.PlayerAdded:Connect(function(player)
	LSService:Create(player, "Cash", "IntValue", 1000)
end)
```
---
It's extremely beginner friendly and easy to use, here's how it works:
```lua
	LSService:Create(
		player, --// The player you want to give the leaderstat
		"Cash", --// The name of your leaderstat
		"IntValue", --// The class of your value (IntValue, StringValue, ect.)
		100 --// Value of your leaderstat [OPTIONAL: Defaults to 0]
	)
```
And - it also comes with a ***delete function!*** (if you need to delete your leaderstat)
Here's how that works:
```lua
	LSService:Delete(
		player, --// The player that owns the leaderstat
		"Cash" --// The name of the leaderstat.
	)
```
[/details]


---
## Extra Information
It comes with server sided output logging, like this:
**✅ Created new leaderstat for fvazer: Cash
✅ Delete leaderstat 'Cash' for fvazer**
These can be disabled by entering the module and setting `debugmode` to false at the top.

Error output logging cannot be disabled.

--- 
## Get it!
### Roblox
Get the module [**here**](https://www.roblox.com/library/7984126459/LeaderstatService) and insert it into **ServerStorage**.
### File
[LeaderstatService.lua|attachment](upload://mpHUZfVX0nfPL10Bg49Gar27gRy.lua) (1.3 KB)

### GitHub
You're here!
