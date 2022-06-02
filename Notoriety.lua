if _G.created ~= true then
	_G.created = true
	------[Item initialization]------
	local hackgui = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local title = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local close = Instance.new("TextButton")
	local glass = Instance.new("TextButton")
	local van = Instance.new("TextButton")
	local speed = Instance.new("TextBox")
	local speedLabel = Instance.new("TextLabel")
	local jump = Instance.new("TextBox")
	local jumpLabel = Instance.new("TextLabel")
	local infjump = Instance.new("TextButton")
	local toggleWalk = Instance.new("TextButton")
	local toggleJump = Instance.new("TextButton")
	local instaComplete = Instance.new("TextButton")
	local infAmmo = Instance.new("TextButton")
	local God = Instance.new("TextButton")
	local infEquip = Instance.new("TextButton")
	local tpSafe = Instance.new("TextButton")
	local closed = Instance.new("Frame")
	local open = Instance.new("TextButton")

	-- Toggle button values
	local speedBool = false
	local jumpBool = false
	local speedVal = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
	local jumpVal = game.Workspace.Gravity
	local infJumpBool = false

	------[FUNCTIONS]------
	function tp(x,y,z)
	local plr = game.Players.LocalPlayer
	local dis = (plr.Character.Torso.Position - Vector3.new(x,y,z)).Magnitude
	local time = dis/14
    local tweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear)
    local tween = tweenService:Create(plr.Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(x,y,z)})
    	tween:Play()
		tween.Completed:Wait()
	end

	---- Main Properties
	hackgui.Name = "hackgui"
	hackgui.Parent = game.CoreGui

	-- Base frame properties
	main.Name = "main"
	main.Parent = hackgui
	main.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
	main.BorderColor3 = Color3.fromRGB(27, 42, 53)
	main.BorderSizePixel = 0
	main.Position = UDim2.new(0.274382353, 0, 0.22807017, 0)
	main.Size = UDim2.new(0, 617, 0, 464)
	main.ZIndex = 0
	main.Style = Enum.FrameStyle.RobloxRound
	main.Active = true
	main.Draggable = true

	-- Title Section
	title.Name = "title"
	title.Parent = main
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.Position = UDim2.new(-0.0126297278, 0, -0.0149404332, 0)
	title.Size = UDim2.new(0, 616, 0, 100)
	title.Style = Enum.FrameStyle.RobloxRound

	TextLabel.Parent = title
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.332265973, 0, 0.171948045, 0)
	TextLabel.Size = UDim2.new(0, 200, 0, 50)
	TextLabel.Font = Enum.Font.Nunito
	TextLabel.Text = "Notoriety Crack V1 | By: 4rmy"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 48.000

	-- CLose Button
	close.Name = "close"
	close.Parent = title
	close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	close.BackgroundTransparency = 1.000
	close.Position = UDim2.new(0.964590371, 0, 0.00825423002, 0)
	close.Size = UDim2.new(0, 27, 0, 21)
	close.Font = Enum.Font.SourceSansBold
	close.Text = "-"
	close.TextColor3 = Color3.fromRGB(255, 255, 255)
	close.TextSize = 38.000
	close.MouseButton1Down:connect(function()
		main.Visible = false
		closed.Visible = true
	end)

	-- Break glass button
	glass.Name = "glass"
	glass.Parent = main
	glass.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	glass.BorderColor3 = Color3.fromRGB(255, 95, 9)
	glass.BorderSizePixel = 0
	glass.Position = UDim2.new(0.0105251521, 0, 0.223913461, 0)
	glass.Size = UDim2.new(0, 205, 0, 34)
	glass.ZIndex = 0
	glass.AutoButtonColor = false
	glass.Style = Enum.ButtonStyle.RobloxRoundButton
	glass.Font = Enum.Font.SourceSans
	glass.Text = "Break All Glass"
	glass.TextColor3 = Color3.fromRGB(255, 255, 255)
	glass.TextSize = 22.000
	glass.MouseButton1Down:connect(function()
		local work = workspace:GetChildren()
		for i = 1, #work do
			if work[i].Name == "Glass" then
				work[i]:Remove()
				break
			end
		end
	end)

	-- Tp to van button
	van.Name = "van"
	van.Parent = main
	van.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	van.BorderColor3 = Color3.fromRGB(255, 95, 9)
	van.BorderSizePixel = 0
	van.Position = UDim2.new(0.0105251521, 0, 0.29934451, 0)
	van.Size = UDim2.new(0, 205, 0, 34)
	van.ZIndex = 0
	van.AutoButtonColor = false
	van.Style = Enum.ButtonStyle.RobloxRoundButton
	van.Font = Enum.Font.SourceSans
	van.Text = "TP to Escape Van"
	van.TextColor3 = Color3.fromRGB(255, 255, 255)
	van.TextSize = 22.000
	van.MouseButton1Down:connect(function()
		local vanpos = game.Workspace.BagSecuredArea.EscapeVan.Main.Position
		tp(vanpos.X, vanpos.Y + 2, vanpos.Z)
	end)

	-- Speed Increment
	speed.Name = "speed"
	speed.Parent = main
	speed.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
	speed.Position = UDim2.new(0.496524513, 0, 0.227080062, 0)
	speed.Size = UDim2.new(0, 200, 0, 30)
	speed.Font = Enum.Font.SourceSans
	speed.PlaceholderText = "Wanted Speed..."
	speed.Text = ""
	speed.TextColor3 = Color3.fromRGB(255, 255, 255)
	speed.TextSize = 22.000

	speedLabel.Name = "Label"
	speedLabel.Parent = speed
	speedLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	speedLabel.BackgroundTransparency = 100.000
	speedLabel.Position = UDim2.new(1.01398969, 0, -0.0257314052, 0)
	speedLabel.Size = UDim2.new(0, 191, 0, 30)
	speedLabel.Font = Enum.Font.SourceSans
	speedLabel.Text = "Walk Speed"
	speedLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	speedLabel.TextSize = 22.000
	speedLabel.TextWrapped = true
	speedLabel.TextXAlignment = Enum.TextXAlignment.Left

	-- Jump increment
	jump.Name = "jump"
	jump.Parent = main
	jump.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
	jump.Position = UDim2.new(0.496524513, 0, 0.324062824, 0)
	jump.Size = UDim2.new(0, 200, 0, 30)
	jump.Font = Enum.Font.SourceSans
	jump.PlaceholderText = "Wanted jump..."
	jump.Text = ""
	jump.TextColor3 = Color3.fromRGB(255, 255, 255)
	jump.TextSize = 22.000

	jumpLabel.Name = "Label"
	jumpLabel.Parent = jump
	jumpLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	jumpLabel.BackgroundTransparency = 100.000
	jumpLabel.Position = UDim2.new(1.01398969, 0, -0.0257314052, 0)
	jumpLabel.Size = UDim2.new(0, 191, 0, 30)
	jumpLabel.Font = Enum.Font.SourceSans
	jumpLabel.Text = "Jump Power"
	jumpLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	jumpLabel.TextSize = 22.000
	jumpLabel.TextWrapped = true
	jumpLabel.TextXAlignment = Enum.TextXAlignment.Left

	-- Allow infinite jumping
	infjump.Name = "infjump"
	infjump.Parent = main
	infjump.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	infjump.BorderColor3 = Color3.fromRGB(255, 95, 9)
	infjump.BorderSizePixel = 0
	infjump.Position = UDim2.new(0.0121458918, 0, 0.454516947, 0)
	infjump.Size = UDim2.new(0, 205, 0, 34)
	infjump.ZIndex = 0
	infjump.AutoButtonColor = false
	infjump.Style = Enum.ButtonStyle.RobloxRoundButton
	infjump.Font = Enum.Font.SourceSans
	infjump.Text = "Inf Jump: Off"
	infjump.TextColor3 = Color3.fromRGB(255, 255, 255)
	infjump.TextSize = 22.000
	infjump.MouseButton1Down:connect(function()
		if infJumpBool == true then
			infJumpBool = false
			infjump.Text = "Inf Jump: Off"
			game:GetService("UserInputService").JumpRequest:connect(function() end)
		else
			infJumpBool = true
			infjump.Text = "Inf Jump: On"
			game:GetService("UserInputService").JumpRequest:connect(function()
				if infJumpBool == true then
					game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
				end
			end)
		end
	end)

	-- Toggle Jump and Walk values
	toggleWalk.Name = "toggleWalk"
	toggleWalk.Parent = main
	toggleWalk.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	toggleWalk.BorderColor3 = Color3.fromRGB(255, 95, 9)
	toggleWalk.BorderSizePixel = 0
	toggleWalk.Position = UDim2.new(0.440997511, 0, 0.222732142, 0)
	toggleWalk.Size = UDim2.new(0, 32, 0, 34)
	toggleWalk.ZIndex = 0
	toggleWalk.AutoButtonColor = false
	toggleWalk.Style = Enum.ButtonStyle.RobloxRoundButton
	toggleWalk.Font = Enum.Font.SourceSans
	toggleWalk.Text = ""
	toggleWalk.TextColor3 = Color3.fromRGB(255, 255, 255)
	toggleWalk.TextSize = 22.000
	toggleWalk.MouseButton1Down:connect(function()
		if speedBool == true then
			speedBool = false
			toggleWalk.Text = ""
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedVal
		else
			speedBool = true
			toggleWalk.Text = "X"
		end
	end)

	toggleJump.Name = "toggleJump"
	toggleJump.Parent = main
	toggleJump.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	toggleJump.BorderColor3 = Color3.fromRGB(255, 95, 9)
	toggleJump.BorderSizePixel = 0
	toggleJump.Position = UDim2.new(0.440997511, 0, 0.319714904, 0)
	toggleJump.Size = UDim2.new(0, 32, 0, 34)
	toggleJump.ZIndex = 0
	toggleJump.AutoButtonColor = false
	toggleJump.Style = Enum.ButtonStyle.RobloxRoundButton
	toggleJump.Font = Enum.Font.SourceSans
	toggleJump.Text = ""
	toggleJump.TextColor3 = Color3.fromRGB(255, 255, 255)
	toggleJump.TextSize = 22.000
	toggleJump.MouseButton1Down:connect(function()
		if jumpBool == true then
			jumpBool = false
			toggleJump.Text = ""
			game.Workspace.Gravity = jumpVal
		else
			jumpBool = true
			toggleJump.Text = "X"
		end
	end)

	instaComplete.Name = "instaComplete"
	instaComplete.Parent = main
	instaComplete.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	instaComplete.BorderColor3 = Color3.fromRGB(255, 95, 9)
	instaComplete.BorderSizePixel = 0
	instaComplete.Position = UDim2.new(0.0121458769, 0, 0.756241024, 0)
	instaComplete.Size = UDim2.new(0, 205, 0, 34)
	instaComplete.ZIndex = 0
	instaComplete.AutoButtonColor = false
	instaComplete.Style = Enum.ButtonStyle.RobloxRoundButton
	instaComplete.Font = Enum.Font.SourceSans
	instaComplete.Text = "Insta Complete: Off"
	instaComplete.TextColor3 = Color3.fromRGB(255, 255, 255)
	instaComplete.TextSize = 22.000

	infAmmo.Name = "infAmmo"
	infAmmo.Parent = main
	infAmmo.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	infAmmo.BorderColor3 = Color3.fromRGB(255, 95, 9)
	infAmmo.BorderSizePixel = 0
	infAmmo.Position = UDim2.new(0.0121458769, 0, 0.529947937, 0)
	infAmmo.Size = UDim2.new(0, 205, 0, 34)
	infAmmo.ZIndex = 0
	infAmmo.AutoButtonColor = false
	infAmmo.Style = Enum.ButtonStyle.RobloxRoundButton
	infAmmo.Font = Enum.Font.SourceSans
	infAmmo.Text = "Infinite Ammo: Off"
	infAmmo.TextColor3 = Color3.fromRGB(255, 255, 255)
	infAmmo.TextSize = 22.000

	God.Name = "God"
	God.Parent = main
	God.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	God.BorderColor3 = Color3.fromRGB(255, 95, 9)
	God.BorderSizePixel = 0
	God.Position = UDim2.new(0.0121458769, 0, 0.680809915, 0)
	God.Size = UDim2.new(0, 205, 0, 34)
	God.ZIndex = 0
	God.AutoButtonColor = false
	God.Style = Enum.ButtonStyle.RobloxRoundButton
	God.Font = Enum.Font.SourceSans
	God.Text = "God: Off"
	God.TextColor3 = Color3.fromRGB(255, 255, 255)
	God.TextSize = 22.000

	infEquip.Name = "infEquip"
	infEquip.Parent = main
	infEquip.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	infEquip.BorderColor3 = Color3.fromRGB(255, 95, 9)
	infEquip.BorderSizePixel = 0
	infEquip.Position = UDim2.new(0.0121458918, 0, 0.605379045, 0)
	infEquip.Size = UDim2.new(0, 205, 0, 34)
	infEquip.ZIndex = 0
	infEquip.AutoButtonColor = false
	infEquip.Style = Enum.ButtonStyle.RobloxRoundButton
	infEquip.Font = Enum.Font.SourceSans
	infEquip.Text = "Infinite Equipment: Off"
	infEquip.TextColor3 = Color3.fromRGB(255, 255, 255)
	infEquip.TextSize = 22.000

	tpSafe.Name = "tpSafe"
	tpSafe.Parent = main
	tpSafe.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	tpSafe.BorderColor3 = Color3.fromRGB(255, 95, 9)
	tpSafe.BorderSizePixel = 0
	tpSafe.Position = UDim2.new(0.00890444499, 0, 0.374775559, 0)
	tpSafe.Size = UDim2.new(0, 205, 0, 34)
	tpSafe.ZIndex = 0
	tpSafe.AutoButtonColor = false
	tpSafe.Style = Enum.ButtonStyle.RobloxRoundButton
	tpSafe.Font = Enum.Font.SourceSans
	tpSafe.Text = "TP to Safe"
	tpSafe.TextColor3 = Color3.fromRGB(255, 255, 255)
	tpSafe.TextSize = 22.000

	-- Open gui button
	closed.Name = "closed"
	closed.Parent = hackgui
	closed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	closed.Position = UDim2.new(0, 0, 0.1497076, 0)
	closed.Size = UDim2.new(0, 45, 0, 45)
	closed.Style = Enum.FrameStyle.RobloxRound
	closed.Visible = false
	open.Parent = closed
	open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	open.BackgroundTransparency = 1.000
	open.BorderColor3 = Color3.fromRGB(27, 42, 53)
	open.Position = UDim2.new(-0.24444446, 0, -0.24444446, 0)
	open.Size = UDim2.new(0, 45, 0, 45)
	open.Font = Enum.Font.SourceSansBold
	open.Text = "+"
	open.TextColor3 = Color3.fromRGB(255, 255, 255)
	open.TextScaled = true
	open.TextSize = 22.000
	open.TextWrapped = true
	open.MouseButton1Down:connect(function()
		main.Visible = true
		closed.Visible = false
	end)

	------[Hack loop]------
	if _G.running ~= true then
  	_G.running = true
  		while wait() do
  			-- Infinite Stamina
  			game.Workspace.Criminals[game.Players.LocalPlayer.Name].Stamina.Value = 2 ^ 60

			-- Jump Update
  			if jumpBool == true then
  				local newjump = tonumber(jump.Text)
  				if newjump == nil then
  					newjump = jumpVal
  				end
  				game.Workspace.Gravity = newjump
  			end

			-- Speed Updata
  			if speedBool == true then
  				local newspeed = tonumber(speed.Text)
  				if newspeed == nil then
  					newspeed = speedVal
  				end
  				game.Workspace.Criminals[game.Players.LocalPlayer.Name].BaseSpeed.Value = newspeed
  			end

  		end
  	end
end
