local debugmode = true

--// Leaderstat Service
--// Created on 13/11/2021 by Endernymous
local LeaderstatService = {}

function LeaderstatService:Create(player, name, class, value)
	local leaderstats = player:FindFirstChild("leaderstats")
	if not leaderstats then
		leaderstats = Instance.new("Folder")
		leaderstats.Name = "leaderstats"
		leaderstats.Parent = player
		print(("? Created %s's 'leaderstats' folder."):format(player.Name))
	end

	local leaderstat = Instance.new(class)
	leaderstat.Name = name
	leaderstat.Value = value
	leaderstat.Parent = leaderstats

	if debugmode then
		print(("? Created new leaderstat for %s: %s"):format(player.Name, name))
	end

	return leaderstat
end

function LeaderstatService:EditValue(player, name, value)
	local leaderstats = player:FindFirstChild("leaderstats")
	if leaderstats then
		local leaderstat = leaderstats:FindFirstChild(name)
		if leaderstat then
			leaderstat.Value = value
			print(("? Edited leaderstat '%s' for %s"):format(name, player.Name))
		else
			warn(("? Failed to edit leaderstat for %s: User has no leaderstat called %s"):format(player.Name, name))
		end
	else
		warn(("? Failed to edit leaderstat for %s: User has no 'leaderstats' folder."):format(player.Name))
	end
end

function LeaderstatService:Delete(player, name)
	local leaderstats = player:FindFirstChild("leaderstats")
	if leaderstats then
		local leaderstat = leaderstats:FindFirstChild(name)
		if leaderstat then
			leaderstat:Destroy()
			print(("? Deleted leaderstat '%s' for %s"):format(name, player.Name))
		else
			warn(("? Failed to delete leaderstat for %s: User has no leaderstat called %s"):format(player.Name, name))
		end
	else
		warn(("? Failed to delete leaderstat for %s: User has no 'leaderstats' folder."):format(player.Name))
	end
end

return LeaderstatService
