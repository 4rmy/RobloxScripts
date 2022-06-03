function start()
	sendNoti("Process Started!")
	getCrowbar()
	openCrates()
	maskOn()
	lootSafes()
	smallLoot()
	bigLoot()
	sendNoti("Process Finished!")
end

function sendNoti(tex)
	game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Auto Rob", -- Required
	Text = tex, -- Required
})
end

function interact(x)
	local args = {
		[1] = x
	}
	game:GetService("ReplicatedStorage").RS_Package.Remotes.StartInteraction:FireServer(unpack(args))
	wait(0.1)
	local args = {
		[1] = x
	}
	game:GetService("ReplicatedStorage").RS_Package.Remotes.CompleteInteraction:FireServer(unpack(args))
end

function getCrowbar()
	local crowbar = game.Workspace.Map.Crowbars:FindFirstChild("Crowbar")
	local prompt = crowbar:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt")
	interact(prompt)
end

function openCrates()
	local boxes = game.Workspace.Map.ShadowBoxes
	while boxes:FindFirstChild("RandomCrate") ~= nil and wait() do
		interact(boxes:FindFirstChild("RandomCrate").Spacer.ProximityPrompt)
	end
end

function maskOn()
	sendNoti("Putting Mask on...")
	game:GetService("ReplicatedStorage").RS_Package.Assets.Remotes.MaskOn:FireServer(nil)
	sendNoti("MaskOn")
end

function lootSafes()
	local safes = game.Workspace.SafeSpots:GetChildren()
	for i = 1, #safes do
		if safes[i].Name ~= "SafesScript" then
			local parts = safes[i]:GetChildren()
			for j = 1, #parts do
				if parts[j].Name == "Union" then
					local promt = parts[j]:FindFirstChild("ProximityPrompt")
					if prompt ~= nil then
						interact(prompt)
					end
				end
			end
		end
	end
end

function smallLoot()
	local loot = game.Workspace.Lootables:GetChildren()
	while #loot > 0 do
		if loot[1].Name == "DepositGoldBar" then
			interact(loot[1].Hitbox.ProximityPrompt)
		else
			interact(loot[1].Bucks.ProximityPrompt)
		end
		loot = game.Workspace.Lootables:GetChildren()
	end
end

function bigLoot()
	local loot = game.Workspace.BigLoot:GetChildren()
	while #loot > 0 do
		if loot[1].Name == "Coke" then
			local p = loot[1]:GetChildren()
			for i = 1, #p do
				local prompt = p[i]:FindFirstChild("ProximityPrompt")
				if prompt ~= nil then
					interact(prompt)
					break
				end
			end
		elseif loot[1].Name == "WeaponBagger" then
			local p = loot[1]:GetChildren()
			for i = 1, #p do
				local prompt = p[i]:FindFirstChild("ProximityPrompt")
				if prompt ~= nil then
					interact(prompt)
				end
			end
		elseif loot[1].Name == "DepositMoneyStack" then
			interact(loot[1].Hitbox.ProximityPrompt)
		elseif loot[1].Name == "GoldBars" then
			interact(loot[1].Bar.ProximityPrompt)
		elseif loot[1].Name == "Artifact" then
			local p = loot[1]:GetChildren()
			for i = 1, #p do
				local prompt = p[i]:FindFirstChild("ProximityPrompt")
				if prompt ~= nil then
					interact(prompt)
				end
			end
		else
			sendNoti("Item not listed!")
			break
		end

		game:GetService("ReplicatedStorage").RS_Package.Remotes.ThrowBag:FireServer(Vector3.new(0, 0, 0))
		loot = game.Workspace.BigLoot:GetChildren()
	end
end

start()
