
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
	local Label = Instance.new("TextLabel")
	local jump = Instance.new("TextBox")
	local Label_2 = Instance.new("TextLabel")
	local infjump = Instance.new("TextButton")
	local toggleWalk = Instance.new("TextButton")
	local toggleJump = Instance.new("TextButton")
	local closed = Instance.new("Frame")
	local openButton = Instance.new("TextButton")

	-- Toggle button values
	local speedBool = false
	local jumpBool = false
	local speedVal = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
	local jumpVal = game.Workspace.Gravity
	local infJumpBool = false

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

	Label.Name = "Label"
	Label.Parent = speed
	Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label.BackgroundTransparency = 100.000
	Label.Position = UDim2.new(1.01398969, 0, -0.0257314052, 0)
	Label.Size = UDim2.new(0, 191, 0, 30)
	Label.Font = Enum.Font.SourceSans
	Label.Text = "Walk Speed"
	Label.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label.TextSize = 22.000
	Label.TextWrapped = true
	Label.TextXAlignment = Enum.TextXAlignment.Left

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

	Label_2.Name = "Label"
	Label_2.Parent = jump
	Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Label_2.BackgroundTransparency = 100.000
	Label_2.Position = UDim2.new(1.01398969, 0, -0.0257314052, 0)
	Label_2.Size = UDim2.new(0, 191, 0, 30)
	Label_2.Font = Enum.Font.SourceSans
	Label_2.Text = "Jump Power"
	Label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Label_2.TextSize = 22.000
	Label_2.TextWrapped = true
	Label_2.TextXAlignment = Enum.TextXAlignment.Left

	-- Allow infinite jumping
	infjump.Name = "infjump"
	infjump.Parent = main
	infjump.BackgroundColor3 = Color3.fromRGB(231, 90, 9)
	infjump.BorderColor3 = Color3.fromRGB(255, 95, 9)
	infjump.BorderSizePixel = 0
	infjump.Position = UDim2.new(0.0105251521, 0, 0.374775529, 0)
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

	-- Open gui button
	closed.Name = "closed"
	closed.Parent = hackgui
	closed.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	closed.Position = UDim2.new(0, 0, 0.1497076, 0)
	closed.Size = UDim2.new(0, 45, 0, 45)
	closed.Style = Enum.FrameStyle.RobloxRound
	closed.Visible = false

	openButton.Parent = closed
	openButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	openButton.BackgroundTransparency = 1.000
	openButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
	openButton.Position = UDim2.new(-0.24444446, 0, -0.24444446, 0)
	openButton.Size = UDim2.new(0, 45, 0, 45)
	openButton.Font = Enum.Font.SourceSansBold
	openButton.Text = "+"
	openButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	openButton.TextScaled = true
	openButton.TextSize = 22.000
	openButton.TextWrapped = true
	openButton.MouseButton1Down:connect(function()
		main.Visible = true
		closed.Visible = false
	end)

	------[Hack loop]------
	if _G.running ~= true then
		_G.running = true
		while wait() do
			-- loop functions
			-- infStamina
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
