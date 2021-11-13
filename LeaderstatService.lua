local debugmode = true

--// Leaderstat Service
--// Created on 13/11/2021 by Endernymous
local module = {}

function module:Create(p, n, t, v)
	if p:FindFirstChild("leaderstats") then
		-- already exists
		local inst = Instance.new(t)
		inst.Name = n
		inst.Value = v or 0
		inst.Parent = p:FindFirstChild("leaderstats")
		
		if debugmode then
			print("? Created new leaderstat for "..p.Name..": "..inst.Name)
		end
		
		return inst
	else
		-- doesn't exist
		local lsfolder = Instance.new("Folder")
		lsfolder.Name = "leaderstats"
		lsfolder.Parent = p
		print("? Created "..p.Name.."'s 'leaderstats' folder.")
		
		local inst = Instance.new(t)
		inst.Name = n
		inst.Value = v or 0
		inst.Parent = p:FindFirstChild("leaderstats")
		
		if debugmode then
			print("? Created new leaderstat for "..p.Name..": "..inst.Name)
		end
		
		return inst
	end
end

function module:Delete(p, n)
	if p:FindFirstChild("leaderstats") then
		if p.leaderstats:FindFirstChild(n) then
			p.leaderstats[n]:Destroy()
			print("? Deleted leaderstat '"..n.."' for "..p.Name)
		else
			warn("? Failed to delete leaderstat for "..p.Name..": User has no leaderstat called "..n)
		end
	else
		warn("? Failed to delete leaderstat for "..p.Name..": User has no 'leaderstats' folder.")
	end
end

return module