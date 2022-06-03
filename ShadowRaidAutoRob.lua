local tpspeed = 50
local solo = true
local reset = true

function start()
	if solo == true then
		game:GetService("ReplicatedStorage").RS_Package.Remotes.PlayerReady:FireServer("Class 1", true)
		wait(12)
	end
	sendNoti("Process Started!")
	getCrowbar()
	openCrates()
	lootSafes()
	smallLoot()
	bigLoot()
	sendNoti("Process Finished!")
	wait(2)
	tpVan()
	if reset == true then
		wait(3)
		game:GetService("ReplicatedStorage").RS_Package.Remotes.VoteReset:FireServer()
	else
		say()
	end
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
	local boxes = game.Workspace.Map.ShadowBoxes:GetChildren()
	for i = 1, #boxes do
		if boxes[i]:FindFirstChild("Spacer") ~= nil then
			if boxes[i].Spacer:FindFirstChild("ProximityPrompt") ~= nil then
				interact(boxes[i].Spacer.ProximityPrompt)
			end
		end
	end
end

function maskOn()
	sendNoti("Putting Mask on...")
	game:GetService("ReplicatedStorage").RS_Package.Assets.Remotes.MaskOn:FireServer(nil)
	sendNoti("MaskOn")
end

function lootSafes()
	local child = game.Workspace.SafeSpots:GetChildren()
	local safes = {}
	for i = 1, #child do
		if child[i].Name ~= "SafesScript" then
			table.insert(safes, child[i])
		end
	end
	for i = 1, #safes do
		local p = safes[i]:GetChildren()
		for j = 1, #p do
			local prompt = p[j]:FindFirstChild("ProximityPrompt")
			if prompt ~= nil then
				interact(prompt)
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

		game:GetService("ReplicatedStorage").RS_Package.Remotes.ThrowBag:FireServer(Vector3.new(0.17, 0.2, -1))
		loot = game.Workspace.BigLoot:GetChildren()
	end
	game:GetService("ReplicatedStorage").RS_Package.Remotes.ThrowBag:FireServer(Vector3.new(0.17, 0.2, -1))
end

function say()
	local args = {
		[1] = "Ok, you can come in",
		[2] = "All"
	}

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

end

function tp(x,y,z)
	local plr = game.Players.LocalPlayer
	local dis = (plr.Character.Torso.Position - Vector3.new(x,y,z)).Magnitude
	local time = dis / tpspeed
	local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear)
	local tween = tweenService:Create(plr.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(x,y,z)})
	tween:Play()
	tween.Completed:Wait()
end

function tpVan()
	local pos = game.Workspace.BagSecuredArea.EscapeVan:FindFirstChild("MainMesh").Position
	tp(pos.X, pos.Y, pos.Z)
end

start()
