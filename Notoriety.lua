if _G.created ~= true then
	_G.created = true

-- GUI
	local hackgui = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local Header = Instance.new("Frame")
	local Title = Instance.new("TextLabel")
	local border = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local Heist = Instance.new("Frame")
	local Heist_2 = Instance.new("TextLabel")
	local AnswerAllPagers = Instance.new("Frame")
	local PagerBox = Instance.new("TextButton")
	local PagerLabel = Instance.new("TextLabel")
	local InfiniteJump = Instance.new("Frame")
	local InfJumpBox = Instance.new("TextButton")
	local InfJumpLabel = Instance.new("TextLabel")
	local InstantInteract = Instance.new("Frame")
	local InteractBox = Instance.new("TextButton")
	local InteractLabel = Instance.new("TextLabel")
	local BreakGlass = Instance.new("TextButton")
	local Esp = Instance.new("TextButton")
	local KillPolice = Instance.new("Frame")
	local PoliceBox = Instance.new("TextButton")
	local PoliceLabel = Instance.new("TextLabel")
	local BreakCams = Instance.new("TextButton")
	local AutoRob = Instance.new("TextLabel")
	local ShadowRaid = Instance.new("TextButton")
	local LootSafes = Instance.new("TextButton")
	local VanTp = Instance.new("TextButton")
	local Gun = Instance.new("Frame")
	local Gun_2 = Instance.new("TextLabel")
	local GunDmg = Instance.new("Frame")
	local GunDamage = Instance.new("TextLabel")
	local DamageValue = Instance.new("TextBox")
	local GunAcc = Instance.new("Frame")
	local GunAccuracy = Instance.new("TextLabel")
	local AccuracyValue = Instance.new("TextBox")
	local Player = Instance.new("TextLabel")
	local SpeedMod = Instance.new("Frame")
	local Speed = Instance.new("TextLabel")
	local SpeedValue = Instance.new("TextBox")
	local JumpMod = Instance.new("Frame")
	local Jump = Instance.new("TextLabel")
	local JumpValue = Instance.new("TextBox")
	local InfStamina = Instance.new("Frame")
	local StaminaBox = Instance.new("TextButton")
	local StaminaLabel = Instance.new("TextLabel")
	local Lobby = Instance.new("Frame")
	local Lobby_2 = Instance.new("TextLabel")
	local UnlimitedSkills = Instance.new("TextButton")

	--Properties:

	hackgui.Name = "hackgui"
	hackgui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	main.Name = "main"
	main.Parent = hackgui
	main.Active = true
	main.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	main.Position = UDim2.new(0.378787845, 0, 0.357224107, 0)
	main.Size = UDim2.new(0, 403, 0, 253)

	Header.Name = "Header"
	Header.Parent = main
	Header.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
	Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Header.BorderSizePixel = 0
	Header.Size = UDim2.new(0, 403, 0, 25)

	Title.Name = "Title"
	Title.Parent = Header
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Size = UDim2.new(0, 403, 0, 25)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = "Notoriety Crack V2 | Created By: 4rmy"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 19.000

	border.Name = "border"
	border.Parent = Header
	border.Active = true
	border.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	border.BorderSizePixel = 0
	border.Position = UDim2.new(0, 0, 0.980000019, 0)
	border.Size = UDim2.new(0, 403, 0, 2)

	UIGradient.Color = ColorSequence.new { ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 0)), ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 127, 0)), ColorSequenceKeypoint.new(0.33, Color3.fromRGB(255, 255, 0)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0, 255, 0)), ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)), ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 0)) }
	UIGradient.Parent = border

	Heist.Name = "Heist"
	Heist.Parent = main
	Heist.Active = true
	Heist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Heist.BackgroundTransparency = 100.000
	Heist.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Heist.BorderSizePixel = 2
	Heist.Position = UDim2.new(0, 3, 0, 30)
	Heist.Size = UDim2.new(0, 131, 0, 217)

	Heist_2.Name = "Heist"
	Heist_2.Parent = Heist
	Heist_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	Heist_2.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Heist_2.BorderSizePixel = 2
	Heist_2.Size = UDim2.new(0, 131, 0, 15)
	Heist_2.Font = Enum.Font.SourceSansBold
	Heist_2.Text = "Heist Menu"
	Heist_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Heist_2.TextSize = 14.000

	AnswerAllPagers.Name = "AnswerAllPagers"
	AnswerAllPagers.Parent = Heist_2
	AnswerAllPagers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	AnswerAllPagers.BackgroundTransparency = 100.000
	AnswerAllPagers.Position = UDim2.new(0, 0, 0, 18)
	AnswerAllPagers.Size = UDim2.new(0, 131, 0, 15)

	PagerBox.Name = "PagerBox"
	PagerBox.Parent = AnswerAllPagers
	PagerBox.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	PagerBox.BorderColor3 = Color3.fromRGB(29, 29, 29)
	PagerBox.BorderSizePixel = 2
	PagerBox.Position = UDim2.new(0, 116, 0, 0)
	PagerBox.Size = UDim2.new(0, 15, 0, 15)
	PagerBox.Font = Enum.Font.SourceSansBold
	PagerBox.Text = ""
	PagerBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	PagerBox.TextSize = 14.000

	PagerLabel.Name = "PagerLabel"
	PagerLabel.Parent = AnswerAllPagers
	PagerLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	PagerLabel.BorderColor3 = Color3.fromRGB(29, 29, 29)
	PagerLabel.BorderSizePixel = 2
	PagerLabel.Size = UDim2.new(0, 113, 0, 15)
	PagerLabel.Font = Enum.Font.SourceSansBold
	PagerLabel.Text = "Answer All Pagers"
	PagerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	PagerLabel.TextSize = 14.000

	InfiniteJump.Name = "InfiniteJump"
	InfiniteJump.Parent = Heist_2
	InfiniteJump.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InfiniteJump.BackgroundTransparency = 100.000
	InfiniteJump.Position = UDim2.new(0, 0, 0, 36)
	InfiniteJump.Size = UDim2.new(0, 131, 0, 15)

	InfJumpBox.Name = "InfJumpBox"
	InfJumpBox.Parent = InfiniteJump
	InfJumpBox.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	InfJumpBox.BorderColor3 = Color3.fromRGB(29, 29, 29)
	InfJumpBox.BorderSizePixel = 2
	InfJumpBox.Position = UDim2.new(0, 116, 0, 0)
	InfJumpBox.Size = UDim2.new(0, 15, 0, 15)
	InfJumpBox.Font = Enum.Font.SourceSansBold
	InfJumpBox.Text = ""
	InfJumpBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	InfJumpBox.TextSize = 14.000

	InfJumpLabel.Name = "InfJumpLabel"
	InfJumpLabel.Parent = InfiniteJump
	InfJumpLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	InfJumpLabel.BorderColor3 = Color3.fromRGB(29, 29, 29)
	InfJumpLabel.BorderSizePixel = 2
	InfJumpLabel.Size = UDim2.new(0, 113, 0, 15)
	InfJumpLabel.Font = Enum.Font.SourceSansBold
	InfJumpLabel.Text = "Infinite Jump"
	InfJumpLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	InfJumpLabel.TextSize = 14.000

	InstantInteract.Name = "InstantInteract"
	InstantInteract.Parent = Heist_2
	InstantInteract.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InstantInteract.BackgroundTransparency = 100.000
	InstantInteract.Position = UDim2.new(0, 0, 0, 54)
	InstantInteract.Size = UDim2.new(0, 131, 0, 15)

	InteractBox.Name = "InteractBox"
	InteractBox.Parent = InstantInteract
	InteractBox.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	InteractBox.BorderColor3 = Color3.fromRGB(29, 29, 29)
	InteractBox.BorderSizePixel = 2
	InteractBox.Position = UDim2.new(0, 116, 0, 0)
	InteractBox.Size = UDim2.new(0, 15, 0, 15)
	InteractBox.Font = Enum.Font.SourceSansBold
	InteractBox.Text = ""
	InteractBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	InteractBox.TextSize = 14.000

	InteractLabel.Name = "InteractLabel"
	InteractLabel.Parent = InstantInteract
	InteractLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	InteractLabel.BorderColor3 = Color3.fromRGB(29, 29, 29)
	InteractLabel.BorderSizePixel = 2
	InteractLabel.Size = UDim2.new(0, 113, 0, 15)
	InteractLabel.Font = Enum.Font.SourceSansBold
	InteractLabel.Text = "Instant Interact"
	InteractLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	InteractLabel.TextSize = 14.000

	BreakGlass.Name = "BreakGlass"
	BreakGlass.Parent = Heist_2
	BreakGlass.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	BreakGlass.BorderColor3 = Color3.fromRGB(29, 29, 29)
	BreakGlass.BorderSizePixel = 2
	BreakGlass.Position = UDim2.new(0, 0, 0, 90)
	BreakGlass.Size = UDim2.new(0, 131, 0, 15)
	BreakGlass.Font = Enum.Font.SourceSansBold
	BreakGlass.Text = "Break All Glass"
	BreakGlass.TextColor3 = Color3.fromRGB(255, 255, 255)
	BreakGlass.TextSize = 14.000

	Esp.Name = "Esp"
	Esp.Parent = Heist_2
	Esp.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	Esp.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Esp.BorderSizePixel = 2
	Esp.Position = UDim2.new(0, 0, 0, 126)
	Esp.Size = UDim2.new(0, 131, 0, 15)
	Esp.Font = Enum.Font.SourceSansBold
	Esp.Text = "Esp"
	Esp.TextColor3 = Color3.fromRGB(255, 255, 255)
	Esp.TextSize = 14.000

	KillPolice.Name = "KillPolice"
	KillPolice.Parent = Heist_2
	KillPolice.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	KillPolice.BackgroundTransparency = 100.000
	KillPolice.Position = UDim2.new(0, 0, 0, 72)
	KillPolice.Size = UDim2.new(0, 131, 0, 15)

	PoliceBox.Name = "PoliceBox"
	PoliceBox.Parent = KillPolice
	PoliceBox.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	PoliceBox.BorderColor3 = Color3.fromRGB(29, 29, 29)
	PoliceBox.BorderSizePixel = 2
	PoliceBox.Position = UDim2.new(0, 116, 0, 0)
	PoliceBox.Size = UDim2.new(0, 15, 0, 15)
	PoliceBox.Font = Enum.Font.SourceSansBold
	PoliceBox.Text = ""
	PoliceBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	PoliceBox.TextSize = 14.000

	PoliceLabel.Name = "PoliceLabel"
	PoliceLabel.Parent = KillPolice
	PoliceLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	PoliceLabel.BorderColor3 = Color3.fromRGB(29, 29, 29)
	PoliceLabel.BorderSizePixel = 2
	PoliceLabel.Size = UDim2.new(0, 113, 0, 15)
	PoliceLabel.Font = Enum.Font.SourceSansBold
	PoliceLabel.Text = "Kill All Police"
	PoliceLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	PoliceLabel.TextSize = 14.000

	BreakCams.Name = "BreakCams"
	BreakCams.Parent = Heist_2
	BreakCams.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	BreakCams.BorderColor3 = Color3.fromRGB(29, 29, 29)
	BreakCams.BorderSizePixel = 2
	BreakCams.Position = UDim2.new(0, 0, 0, 108)
	BreakCams.Size = UDim2.new(0, 131, 0, 15)
	BreakCams.Font = Enum.Font.SourceSansBold
	BreakCams.Text = "Break All Cams"
	BreakCams.TextColor3 = Color3.fromRGB(255, 255, 255)
	BreakCams.TextSize = 14.000

	AutoRob.Name = "AutoRob"
	AutoRob.Parent = Heist
	AutoRob.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	AutoRob.BorderColor3 = Color3.fromRGB(29, 29, 29)
	AutoRob.BorderSizePixel = 2
	AutoRob.Position = UDim2.new(0, 0, 0, 152)
	AutoRob.Size = UDim2.new(0, 131, 0, 15)
	AutoRob.Font = Enum.Font.SourceSansBold
	AutoRob.Text = "Auto-Rob Menu"
	AutoRob.TextColor3 = Color3.fromRGB(255, 255, 255)
	AutoRob.TextSize = 14.000

	ShadowRaid.Name = "ShadowRaid"
	ShadowRaid.Parent = AutoRob
	ShadowRaid.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	ShadowRaid.BorderColor3 = Color3.fromRGB(29, 29, 29)
	ShadowRaid.BorderSizePixel = 2
	ShadowRaid.Position = UDim2.new(0, 0, 0, 18)
	ShadowRaid.Size = UDim2.new(0, 131, 0, 15)
	ShadowRaid.Font = Enum.Font.SourceSansBold
	ShadowRaid.Text = "Shadow Raid"
	ShadowRaid.TextColor3 = Color3.fromRGB(255, 255, 255)
	ShadowRaid.TextSize = 14.000

	LootSafes.Name = "LootSafes"
	LootSafes.Parent = AutoRob
	LootSafes.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	LootSafes.BorderColor3 = Color3.fromRGB(29, 29, 29)
	LootSafes.BorderSizePixel = 2
	LootSafes.Position = UDim2.new(0, 0, 0, 36)
	LootSafes.Size = UDim2.new(0, 131, 0, 15)
	LootSafes.Font = Enum.Font.SourceSansBold
	LootSafes.Text = "Loot Safes"
	LootSafes.TextColor3 = Color3.fromRGB(255, 255, 255)
	LootSafes.TextSize = 14.000

	VanTp.Name = "VanTp"
	VanTp.Parent = AutoRob
	VanTp.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	VanTp.BorderColor3 = Color3.fromRGB(29, 29, 29)
	VanTp.BorderSizePixel = 2
	VanTp.Position = UDim2.new(0, 0, 0, 54)
	VanTp.Size = UDim2.new(0, 131, 0, 15)
	VanTp.Font = Enum.Font.SourceSansBold
	VanTp.Text = "TP to Escape Van"
	VanTp.TextColor3 = Color3.fromRGB(255, 255, 255)
	VanTp.TextSize = 14.000

	Gun.Name = "Gun"
	Gun.Parent = main
	Gun.Active = true
	Gun.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Gun.BackgroundTransparency = 100.000
	Gun.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Gun.BorderSizePixel = 2
	Gun.Position = UDim2.new(0, 136, 0, 30)
	Gun.Size = UDim2.new(0, 131, 0, 217)

	Gun_2.Name = "Gun"
	Gun_2.Parent = Gun
	Gun_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	Gun_2.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Gun_2.BorderSizePixel = 2
	Gun_2.Size = UDim2.new(0, 131, 0, 15)
	Gun_2.Font = Enum.Font.SourceSansBold
	Gun_2.Text = "Gun Menu"
	Gun_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Gun_2.TextSize = 14.000

	GunDmg.Name = "GunDmg"
	GunDmg.Parent = Gun_2
	GunDmg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GunDmg.BackgroundTransparency = 100.000
	GunDmg.Position = UDim2.new(0, 0, 0, 18)
	GunDmg.Size = UDim2.new(0, 131, 0, 15)

	GunDamage.Name = "GunDamage"
	GunDamage.Parent = GunDmg
	GunDamage.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	GunDamage.BorderColor3 = Color3.fromRGB(29, 29, 29)
	GunDamage.BorderSizePixel = 2
	GunDamage.Size = UDim2.new(0, 75, 0, 15)
	GunDamage.Font = Enum.Font.SourceSansBold
	GunDamage.Text = "Gun Damage"
	GunDamage.TextColor3 = Color3.fromRGB(255, 255, 255)
	GunDamage.TextSize = 14.000

	DamageValue.Name = "DamageValue"
	DamageValue.Parent = GunDmg
	DamageValue.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	DamageValue.BorderColor3 = Color3.fromRGB(29, 29, 29)
	DamageValue.BorderSizePixel = 2
	DamageValue.Position = UDim2.new(0, 75, 0, 0)
	DamageValue.Size = UDim2.new(0, 56, 0, 15)
	DamageValue.Font = Enum.Font.SourceSansBold
	DamageValue.Text = "10"
	DamageValue.TextColor3 = Color3.fromRGB(255, 255, 255)
	DamageValue.TextSize = 14.000

	GunAcc.Name = "GunAcc"
	GunAcc.Parent = Gun_2
	GunAcc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	GunAcc.BackgroundTransparency = 100.000
	GunAcc.Position = UDim2.new(0, 0, 0, 36)
	GunAcc.Size = UDim2.new(0, 131, 0, 15)

	GunAccuracy.Name = "GunAccuracy"
	GunAccuracy.Parent = GunAcc
	GunAccuracy.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	GunAccuracy.BorderColor3 = Color3.fromRGB(29, 29, 29)
	GunAccuracy.BorderSizePixel = 2
	GunAccuracy.Size = UDim2.new(0, 75, 0, 15)
	GunAccuracy.Font = Enum.Font.SourceSansBold
	GunAccuracy.Text = "Gun Accuracy"
	GunAccuracy.TextColor3 = Color3.fromRGB(255, 255, 255)
	GunAccuracy.TextSize = 14.000

	AccuracyValue.Name = "AccuracyValue"
	AccuracyValue.Parent = GunAcc
	AccuracyValue.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	AccuracyValue.BorderColor3 = Color3.fromRGB(29, 29, 29)
	AccuracyValue.BorderSizePixel = 2
	AccuracyValue.Position = UDim2.new(0, 75, 0, 0)
	AccuracyValue.Size = UDim2.new(0, 56, 0, 15)
	AccuracyValue.Font = Enum.Font.SourceSansBold
	AccuracyValue.Text = "10"
	AccuracyValue.TextColor3 = Color3.fromRGB(255, 255, 255)
	AccuracyValue.TextSize = 14.000

	Player.Name = "Player"
	Player.Parent = Gun
	Player.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	Player.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Player.BorderSizePixel = 2
	Player.Position = UDim2.new(0, 0, 0, 62)
	Player.Size = UDim2.new(0, 131, 0, 15)
	Player.Font = Enum.Font.SourceSansBold
	Player.Text = "Player Mod menu"
	Player.TextColor3 = Color3.fromRGB(255, 255, 255)
	Player.TextSize = 14.000

	SpeedMod.Name = "SpeedMod"
	SpeedMod.Parent = Player
	SpeedMod.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SpeedMod.BackgroundTransparency = 100.000
	SpeedMod.Position = UDim2.new(0, 0, 0, 18)
	SpeedMod.Size = UDim2.new(0, 131, 0, 15)

	Speed.Name = "Speed"
	Speed.Parent = SpeedMod
	Speed.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	Speed.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Speed.BorderSizePixel = 2
	Speed.Size = UDim2.new(0, 75, 0, 15)
	Speed.Font = Enum.Font.SourceSansBold
	Speed.Text = "Speed Value"
	Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
	Speed.TextSize = 14.000

	SpeedValue.Name = "SpeedValue"
	SpeedValue.Parent = SpeedMod
	SpeedValue.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	SpeedValue.BorderColor3 = Color3.fromRGB(29, 29, 29)
	SpeedValue.BorderSizePixel = 2
	SpeedValue.Position = UDim2.new(0, 75, 0, 0)
	SpeedValue.Size = UDim2.new(0, 56, 0, 15)
	SpeedValue.Font = Enum.Font.SourceSansBold
	SpeedValue.Text = "13"
	SpeedValue.TextColor3 = Color3.fromRGB(255, 255, 255)
	SpeedValue.TextSize = 14.000

	JumpMod.Name = "JumpMod"
	JumpMod.Parent = Player
	JumpMod.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	JumpMod.BackgroundTransparency = 100.000
	JumpMod.Position = UDim2.new(0, 0, 0, 36)
	JumpMod.Size = UDim2.new(0, 131, 0, 15)

	Jump.Name = "Jump"
	Jump.Parent = JumpMod
	Jump.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	Jump.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Jump.BorderSizePixel = 2
	Jump.Size = UDim2.new(0, 75, 0, 15)
	Jump.Font = Enum.Font.SourceSansBold
	Jump.Text = "Jump Value"
	Jump.TextColor3 = Color3.fromRGB(255, 255, 255)
	Jump.TextSize = 14.000

	JumpValue.Name = "JumpValue"
	JumpValue.Parent = JumpMod
	JumpValue.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	JumpValue.BorderColor3 = Color3.fromRGB(29, 29, 29)
	JumpValue.BorderSizePixel = 2
	JumpValue.Position = UDim2.new(0, 75, 0, 0)
	JumpValue.Size = UDim2.new(0, 56, 0, 15)
	JumpValue.Font = Enum.Font.SourceSansBold
	JumpValue.Text = "50"
	JumpValue.TextColor3 = Color3.fromRGB(255, 255, 255)
	JumpValue.TextSize = 14.000

	InfStamina.Name = "InfStamina"
	InfStamina.Parent = Player
	InfStamina.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InfStamina.BackgroundTransparency = 100.000
	InfStamina.Position = UDim2.new(0, 0, 0, 54)
	InfStamina.Size = UDim2.new(0, 131, 0, 15)

	StaminaBox.Name = "StaminaBox"
	StaminaBox.Parent = InfStamina
	StaminaBox.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	StaminaBox.BorderColor3 = Color3.fromRGB(29, 29, 29)
	StaminaBox.BorderSizePixel = 2
	StaminaBox.Position = UDim2.new(0, 116, 0, 0)
	StaminaBox.Size = UDim2.new(0, 15, 0, 15)
	StaminaBox.Font = Enum.Font.SourceSansBold
	StaminaBox.Text = ""
	StaminaBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	StaminaBox.TextSize = 14.000

	StaminaLabel.Name = "StaminaLabel"
	StaminaLabel.Parent = InfStamina
	StaminaLabel.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	StaminaLabel.BorderColor3 = Color3.fromRGB(29, 29, 29)
	StaminaLabel.BorderSizePixel = 2
	StaminaLabel.Size = UDim2.new(0, 113, 0, 15)
	StaminaLabel.Font = Enum.Font.SourceSansBold
	StaminaLabel.Text = "Infinite Stamina"
	StaminaLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	StaminaLabel.TextSize = 14.000

	Lobby.Name = "Lobby"
	Lobby.Parent = main
	Lobby.Active = true
	Lobby.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Lobby.BackgroundTransparency = 100.000
	Lobby.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Lobby.BorderSizePixel = 2
	Lobby.Position = UDim2.new(0, 269, 0, 30)
	Lobby.Size = UDim2.new(0, 131, 0, 217)

	Lobby_2.Name = "Lobby"
	Lobby_2.Parent = Lobby
	Lobby_2.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
	Lobby_2.BorderColor3 = Color3.fromRGB(29, 29, 29)
	Lobby_2.BorderSizePixel = 2
	Lobby_2.Size = UDim2.new(0, 131, 0, 15)
	Lobby_2.Font = Enum.Font.SourceSansBold
	Lobby_2.Text = "Lobby Menu"
	Lobby_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Lobby_2.TextSize = 14.000

	UnlimitedSkills.Name = "UnlimitedSkills"
	UnlimitedSkills.Parent = Lobby_2
	UnlimitedSkills.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	UnlimitedSkills.BorderColor3 = Color3.fromRGB(29, 29, 29)
	UnlimitedSkills.BorderSizePixel = 2
	UnlimitedSkills.Position = UDim2.new(0, 0, 0, 18)
	UnlimitedSkills.Size = UDim2.new(0, 131, 0, 15)
	UnlimitedSkills.Font = Enum.Font.SourceSansBold
	UnlimitedSkills.Text = "Unlimited Skills"
	UnlimitedSkills.TextColor3 = Color3.fromRGB(255, 255, 255)
	UnlimitedSkills.TextSize = 14.000

	-- Scripts:

	local function EGRJFOJ_fake_script() -- border.LocalScript
		local script = Instance.new('LocalScript', border)

		local speed = 0.25

		local button = script.Parent
		local gradient = button.UIGradient
		local ts = game:GetService("TweenService")
		local ti = TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
		local offset = { Offset = Vector2.new(1, 0) }
		local create = ts:Create(gradient, ti, offset)
		local startingPos = Vector2.new(-1, 0)
		local list = {}
		local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
		local counter = 0
		local status = "down"
		gradient.Offset = startingPos
		local function rainbowColors()
			local sat, val = 255, 255
			for i = 1, 15 do
				local hue = i * 17
				table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
			end
		end

		rainbowColors()
		gradient.Color = s({
			kpt(0, list[#list]),
			kpt(0.5, list[#list - 1]),
			kpt(1, list[#list - 2])
		})
		counter = #list
		local function animate()
			create:Play()
			create.Completed:Wait()
			gradient.Offset = startingPos
			gradient.Rotation = 180
			if counter == #list - 1 and status == "down" then
				gradient.Color = s({
					kpt(0, gradient.Color.Keypoints[1].Value),
					kpt(0.5, list[#list]),
					kpt(1, list[1])
				})
				counter = 1
				status = "up"
			elseif counter == #list and status == "down" then
				gradient.Color = s({
					kpt(0, gradient.Color.Keypoints[1].Value),
					kpt(0.5, list[1]),
					kpt(1, list[2])
				})
				counter = 2
				status = "up"
			elseif counter <= #list - 2 and status == "down" then
				gradient.Color = s({
					kpt(0, gradient.Color.Keypoints[1].Value),
					kpt(0.5, list[counter + 1]),
					kpt(1, list[counter + 2])
				})
				counter = counter + 2
				status = "up"
			end
			create:Play()
			create.Completed:Wait()
			gradient.Offset = startingPos
			gradient.Rotation = 0
			if counter == #list - 1 and status == "up" then
				gradient.Color = s({

					kpt(0, list[1]),
					kpt(0.5, list[#list]),
					kpt(1, gradient.Color.Keypoints[3].Value)
				})
				counter = 1
				status = "down"
			elseif counter == #list and status == "up" then
				gradient.Color = s({
					kpt(0, list[2]),
					kpt(0.5, list[1]),
					kpt(1, gradient.Color.Keypoints[3].Value)
				})
				counter = 2
				status = "down"
			elseif counter <= #list - 2 and status == "up" then
				gradient.Color = s({
					kpt(0, list[counter + 2]),
					kpt(0.5, list[counter + 1]),
					kpt(1, gradient.Color.Keypoints[3].Value)
				})
				counter = counter + 2
				status = "down"
			end
			animate()
		end

		animate()
	end

	coroutine.wrap(EGRJFOJ_fake_script)()

-----[EXTRA PROPERTIES]-----
	main.Draggable = true

-----[VAIRABLES]-----
	local tpspeed = 50
	local infJumpBool = false
	local instaInteractBool = false
	local staminaBool = false
	local RemoteKey = 0

-----[FUNCTIONS]-----
	function tp(x, y, z)
		local plr = game.Players.LocalPlayer
		local dis = (plr.Character.Torso.Position - Vector3.new(x, y, z)).Magnitude
		local time = dis / tpspeed
		local tweenService = game:GetService("TweenService")
		local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear)
		local tween = tweenService:Create(plr.Character.HumanoidRootPart, tweenInfo, { CFrame = CFrame.new(x, y, z) })
		tween:Play()
		tween.Completed:Wait()
	end

	function getKey()
		local gGC = getgc()
		for i = 1, #gGC do
			local v = gGC[i]
			if (debug.getinfo(v).name == "shoot") then
				key = debug.getupvalue(v, 22)
				break
			end
		end

		return key
	end

	RemoteKey = getKey()

	function interact(x)
		local Event1 = game:GetService("ReplicatedStorage")["RS_Package"].Remotes.StartInteraction
		local Event2 = game:GetService("ReplicatedStorage")["RS_Package"].Remotes.CompleteInteraction
		Event1:FireServer(x)
		wait(0.1)
		Event2:FireServer(x)
	end

	function sendNoti(title, text)
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = title, -- Required
			Text = text, -- Required
		})
	end

	function parse(e, args)
		if tostring(e) == "ReplicatedStorage.RS_Package.Remotes.StartInteraction" and instaInteractBool == true then
			wait(0.05)
			game:GetService("ReplicatedStorage")["RS_Package"].Remotes.CompleteInteraction:FireServer(unpack(args))
		end
	end

	function answerPagers()
		while wait() do
			if pagerBool == true then
				local pager = game.Workspace.Bodies:GetChildren()
				for i = 1, #pager do
					if pager[i].Name == "Pager" then
						interact(pager[i].Torso.ProximityPrompt)
						break
					end
				end
			end
		end
	end

	function updateSpeed()
		game.Workspace.Criminals:WaitForChild(game.Players.LocalPlayer.Name)
		local speedBase = game.Workspace.Criminals:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("BaseSpeed")
		local bagSpeedBase = game.Workspace.Criminals:WaitForChild(game.Players.LocalPlayer.Name):WaitForChild("BagSpeed")

		while wait() do
			local newspeedval = tonumber(SpeedValue.Text)
			if newspeedval ~= nil then
				if newspeedval > 75 then
					SpeedValue.Text = "75"
					newspeedval = 75
				elseif newspeedval < 1 then
					SpeedValue.Text = "1"
					newspeedval = 1
				end
			else
				newspeedval = 19.8
			end
			speedBase.Value = newspeedval
		end
	end

	function updateJump()
		game.Workspace.Criminals:WaitForChild(game.Players.LocalPlayer.Name)

		while wait() do
			local newjumpval = tonumber(JumpValue.Text)
			if newjumpval ~= nil then
				if newjumpval > 1000 then
					JumpValue.Text = "1000"
					newjumpval = 1000
				elseif newjumpval < 1 then
					JumpValue.Text = "1"
					newjumpval = 1
				end
			else
				newjumpval = 50
			end
			game.Workspace.Criminals:WaitForChild(game.Players.LocalPlayer.Name).Humanoid.JumpPower = newjumpval
		end
	end

	function updateStamina()
		local stamina = game.Workspace.Criminals:WaitForChild(game.Players.LocalPlayer.Name)
		while wait() do
			if staminaBool == true then
				stamina.Stamina.Value = 200
			end
		end
	end

	function hitObject(v)
		local args = {
			[1] = tostring(RemoteKey),
			[2] = v,
			[3] = false,
			[6] = Vector3.new(0, 0, 0),
			[7] = 10000
		}

		game:GetService("ReplicatedStorage").RS_Package.Assets.Remotes.HitObject:FireServer(unpack(args))
	end

-----[BUTTON FUNCTIONS]-----
	InfJumpBox.MouseButton1Down:connect(function()
		if infJumpBool == true then
			infJumpBool = false
			InfJumpBox.Text = ""
			game:GetService("UserInputService").JumpRequest:connect(function() end)
		else
			infJumpBool = true
			InfJumpBox.Text = "X"
			game:GetService("UserInputService").JumpRequest:connect(function()
				if infJumpBool == true then
					game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass 'Humanoid':ChangeState("Jumping")
				end
			end)
		end
	end)

	InteractBox.MouseButton1Down:connect(function()
		if instaInteractBool == true then
			instaInteractBool = false
			InteractBox.Text = ""
		else
			instaInteractBool = true
			InteractBox.Text = "X"
		end
	end)

	BreakGlass.MouseButton1Down:connect(function()
		local glass = game.Workspace.Glass:GetChildren()
		for i = 1, #glass do
			hitObject(glass[i])
		end
	end)

	LootSafes.MouseButton1Down:connect(function()
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
	end)

	VanTp.MouseButton1Down:connect(function()
		local pos = game.Workspace.BagSecuredArea.EscapeVan:FindFirstChildOfClass("Part").Position
		tp(pos.X, pos.Y, pos.Z)
		local pos = game.Workspace.Criminals[game.Players.LocalPlayer.Name].Torso.Position
		tp(pos.X, pos.Y + 10, pos.Z)
	end)

	PagerBox.MouseButton1Down:connect(function()
		if pagerBool == true then
			pagerBool = false
			PagerBox.Text = ""
		else
			pagerBool = true
			PagerBox.Text = "X"
			spawn(answerPagers)
		end
	end)

	ShadowRaid.MouseButton1Down:connect(function()
		_G.solo = false
		_G.reset = false

		loadstring(game:HttpGet("https://raw.githubusercontent.com/4rmy/RobloxScripts/main/ShadowRaidAutoRob.lua"))()
	end)

	StaminaBox.MouseButton1Down:connect(function()
		if staminaBool == true then
			staminaBool = false
			StaminaBox.Text = ""
		else
			staminaBool = true
			StaminaBox.Text = "X"
		end
	end)

	UnlimitedSkills.MouseButton1Down:connect(function()
		sendNoti("UnlimitedSkills is not working atm :(")
	end)

	Esp.MouseButton1Down:connect(function()
		for i, v in pairs(game.Workspace.Police:GetChildren()) do
			for i, l in pairs(v:GetChildren()) do
				if l:IsA("Part") and not l:FindFirstChild("Chams") then
					local Box = Instance.new("BoxHandleAdornment", l)
					Box.Size = l.Size
					Box.Name = "Chams"
					Box.Color3 = Color3.new(1, 0, 0)
					Box.Adornee = l
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .5
				end
			end
		end
		for i, v in pairs(game.Workspace.Cameras:GetChildren()) do
			for i, l in pairs(v:GetChildren()) do
				if l:IsA("MeshPart") and not l:FindFirstChild("Chams") then
					local Box = Instance.new("BoxHandleAdornment", l)
					Box.Size = l.Size
					Box.Name = "Chams"
					Box.Color3 = Color3.new(0, 0, 1)
					Box.Adornee = l
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .5
				end
			end
		end
		for i, v in pairs(game.Workspace.Citizens:GetChildren()) do
			for i, l in pairs(v:GetChildren()) do
				if l:IsA("Part") and not l:FindFirstChild("Chams") then
					local Box = Instance.new("BoxHandleAdornment", l)
					Box.Size = l.Size
					Box.Name = "Chams"
					Box.Color3 = Color3.new(1, 1, 1)
					Box.Adornee = l
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .5
				end
			end
		end

		for i, v in pairs(game.Workspace.SafeSpots:GetChildren()) do
			for i, l in pairs(v:GetChildren()) do
				if l:IsA("Part") or l:IsA("UnionOperation") and not l:FindFirstChild("Chams") then
					local Box = Instance.new("BoxHandleAdornment", l)
					Box.Size = l.Size
					Box.Name = "Chams"
					Box.Color3 = Color3.new(0, 1, 0)
					Box.Adornee = l
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .5
				end
			end
		end

		for i, v in pairs(game.Workspace.Lootables:GetChildren()) do
			for i, l in pairs(v:GetChildren()) do
				if l:IsA("Part") or l:IsA("UnionOperation") and not l:FindFirstChild("Chams") then
					local Box = Instance.new("BoxHandleAdornment", l)
					Box.Size = l.Size
					Box.Name = "Chams"
					Box.Color3 = Color3.new(0, 1, 0)
					Box.Adornee = l
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .5
				end
			end
		end

		if game.Workspace:FindFirstChild("BigLoot") then
			for i, v in pairs(game.Workspace.BigLoot:GetChildren()) do
				for i, l in pairs(v:GetChildren()) do
					if l:IsA("Part") or l:IsA("UnionOperation") and not l:FindFirstChild("Chams") then
						local Box = Instance.new("BoxHandleAdornment", l)
						Box.Size = l.Size
						Box.Name = "Chams"
						Box.Color3 = Color3.new(0, 1, 0)
						Box.Adornee = l
						Box.AlwaysOnTop = true
						Box.ZIndex = 5
						Box.Transparency = .5
					end
				end
			end
		else
			for i, v in pairs(game.Workspace:GetChildren()) do
				if v.Name == "DepositGoldBar" or v.Name == "DepositMoney" or v.Name == "DepositMoneyStack" or
					v.Name == "DepositRing"
				then
					for i, l in pairs(v:GetChildren()) do
						if l:IsA("Part") and not l:FindFirstChild("Chams") then
							local Box = Instance.new("BoxHandleAdornment", l)
							Box.Size = l.Size
							Box.Name = "Chams"
							Box.Color3 = Color3.new(0, 1, 0)
							Box.Adornee = l
							Box.AlwaysOnTop = true
							Box.ZIndex = 5
							Box.Transparency = .5
						end
					end
				end
			end
		end

		for i, v in pairs(game.Workspace.Map:GetChildren()) do
			if v.Name == "MilitaryCrateTimed" or v.Name == "OpenMilitaryCrate" or v.Name == "MilitaryCrateUntimed" then
				for i, l in pairs(v:GetChildren()) do
					if l:IsA("Part") and not l:FindFirstChild("Chams") then
						local Box = Instance.new("BoxHandleAdornment", l)
						Box.Size = l.Size
						Box.Name = "Chams"
						Box.Color3 = Color3.new(0, 1, 0)
						Box.Adornee = l
						Box.AlwaysOnTop = true
						Box.ZIndex = 5
						Box.Transparency = .5
					end
				end
			end
		end

		for i, v in pairs(game.Workspace.RandomLoot:GetChildren()) do
			if v.Name == "DepositGoldBar" or v.Name == "DepositMoneyStack" then
				for i, l in pairs(v:GetChildren()) do
					if l:IsA("Part") and not l:FindFirstChild("Chams") then
						local Box = Instance.new("BoxHandleAdornment", l)
						Box.Size = l.Size
						Box.Name = "Chams"
						Box.Color3 = Color3.new(0, 1, 0)
						Box.Adornee = l
						Box.AlwaysOnTop = true
						Box.ZIndex = 5
						Box.Transparency = .5
					end
				end
			end
		end

		for i, v in pairs(game.Workspace.Map.Houses:GetChildren()) do
			for i, l in pairs(v.doorBell:GetChildren()) do
				if b.IsA("Part") and not l:FindFirstChild("Chams") then
					local Box = Instance.new("BoxHandleAdornment", l)
					Box.Size = l.Size
					Box.Name = "Chams"
					Box.Color3 = Color3.new(0, 1, 0)
					Box.Adornee = l
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .5
				end
			end
		end
		for i, v in pairs(game.Workspace.Map:GetChildren()) do
			for i, l in pairs(v.doorBell:GetChildren()) do
				if b.IsA("Part") and not l:FindFirstChild("Chams") then
					local Box = Instance.new("BoxHandleAdornment", l)
					Box.Size = l.Size
					Box.Name = "Chams"
					Box.Color3 = Color3.new(0, 1, 0)
					Box.Adornee = l
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = .5
				end
			end
		end
	end)

-----[While Loops]-----
	if game.PlaceId ~= 21532277 then
		spawn(updateSpeed)
		spawn(updateJump)
		spawn(updateStamina)
	end
end


-----[REMOTE EVENT LOGGER]-----
_G.scanRemotes = true

_G.ignoreNames = {
	Event = true;
	MessagesChanged = true;
}

setreadonly(getrawmetatable(game), false)
local pseudoEnv = {}
local gameMeta = getrawmetatable(game)

local tabChar = "      "

local function getSmaller(a, b, notLast)
	local aByte = a:byte() or -1
	local bByte = b:byte() or -1
	if aByte == bByte then
		if notLast and #a == 1 and #b == 1 then
			return -1
		elseif #b == 1 then
			return false
		elseif #a == 1 then
			return true
		else
			return getSmaller(a:sub(2), b:sub(2), notLast)
		end
	else
		return aByte < bByte
	end
end

local function parseData(obj, numTabs, isKey, overflow, noTables, forceDict)
	local objType = typeof(obj)
	local objStr = tostring(obj)
	if objType == "table" then
		if noTables then
			return objStr
		end
		local isCyclic = overflow[obj]
		overflow[obj] = true
		local out = {}
		local nextIndex = 1
		local isDict = false
		local hasTables = false
		local data = {}

		for key, val in next, obj do
			if not hasTables and typeof(val) == "table" then
				hasTables = true
			end

			if not isDict and key ~= nextIndex then
				isDict = true
			else
				nextIndex = nextIndex + 1
			end

			data[#data + 1] = { key, val }
		end

		if isDict or hasTables or forceDict then
			out[#out + 1] = (isCyclic and "Cyclic " or "") .. "{"
			table.sort(data, function(a, b)
				local aType = typeof(a[2])
				local bType = typeof(b[2])
				if bType == "string" and aType ~= "string" then
					return false
				end
				local res = getSmaller(aType, bType, true)
				if res == -1 then
					return getSmaller(tostring(a[1]), tostring(b[1]))
				else
					return res
				end
			end)
			for i = 1, #data do
				local arr = data[i]
				local nowKey = arr[1]
				local nowVal = arr[2]
				local parseKey = parseData(nowKey, numTabs + 1, true, overflow, isCyclic)
				local parseVal = parseData(nowVal, numTabs + 1, false, overflow, isCyclic)
				if isDict then
					local nowValType = typeof(nowVal)
					local preStr = ""
					local postStr = ""
					if i > 1 and (nowValType == "table" or typeof(data[i - 1][2]) ~= nowValType) then
						preStr = "\n"
					end
					if i < #data and nowValType == "table" and typeof(data[i + 1][2]) ~= "table" and typeof(data[i + 1][2]) == nowValType then
						postStr = "\n"
					end
					out[#out + 1] = preStr .. string.rep(tabChar, numTabs + 1) .. parseKey .. " = " .. parseVal .. ";" .. postStr
				else
					out[#out + 1] = string.rep(tabChar, numTabs + 1) .. parseVal .. ";"
				end
			end
			out[#out + 1] = string.rep(tabChar, numTabs) .. "}"
		else
			local data2 = {}
			for i = 1, #data do
				local arr = data[i]
				local nowVal = arr[2]
				local parseVal = parseData(nowVal, 0, false, overflow, isCyclic)
				data2[#data2 + 1] = parseVal
			end
			out[#out + 1] = "{" .. table.concat(data2, ", ") .. "}"
		end

		return table.concat(out, "\n")
	else
		local returnVal = nil
		if (objType == "string" or objType == "Content") and (not isKey or tonumber(obj:sub(1, 1))) then
			local retVal = '"' .. objStr .. '"'
			if isKey then
				retVal = "[" .. retVal .. "]"
			end
			returnVal = retVal
		elseif objType == "EnumItem" then
			returnVal = "Enum." .. tostring(obj.EnumType) .. "." .. obj.Name
		elseif objType == "Enum" then
			returnVal = "Enum." .. objStr
		elseif objType == "Instance" then
			returnVal = obj.Parent and obj:GetFullName() or obj.ClassName
		elseif objType == "CFrame" then
			returnVal = "CFrame.new(" .. objStr .. ")"
		elseif objType == "Vector3" then
			returnVal = "Vector3.new(" .. objStr .. ")"
		elseif objType == "Vector2" then
			returnVal = "Vector2.new(" .. objStr .. ")"
		elseif objType == "UDim2" then
			returnVal = "UDim2.new(" .. objStr:gsub("[{}]", "") .. ")"
		elseif objType == "BrickColor" then
			returnVal = "BrickColor.new(\"" .. objStr .. "\")"
		elseif objType == "Color3" then
			returnVal = "Color3.new(" .. objStr .. ")"
		elseif objType == "NumberRange" then
			returnVal = "NumberRange.new(" .. objStr:gsub("^%s*(.-)%s*$", "%1"):gsub(" ", ", ") .. ")"
		elseif objType == "PhysicalProperties" then
			returnVal = "PhysicalProperties.new(" .. objStr .. ")"
		else
			returnVal = objStr
		end
		return returnVal
	end
end

function tableToString(t)
	return parseData(t, 0, false, {}, nil, false)
end

local detectClasses = {
	BindableEvent = true;
	BindableFunction = true;
	RemoteEvent = true;
	RemoteFunction = true;
}

local classMethods = {
	BindableEvent = "Fire";
	BindableFunction = "Invoke";
	RemoteEvent = "FireServer";
	RemoteFunction = "InvokeServer";
}

local realMethods = {}

for name, enabled in next, detectClasses do
	if enabled then
		realMethods[classMethods[name]] = Instance.new(name)[classMethods[name]]
	end
end

for key, value in next, gameMeta do pseudoEnv[key] = value end

local incId = 0

local function getValues(self, key, ...)
	return { realMethods[key](self, ...) }
end

gameMeta.__index, gameMeta.__namecall = function(self, key)
	if not realMethods[key] or _G.ignoreNames[self.Name] or not _G.scanRemotes then return pseudoEnv.__index(self, key) end
	return function(_, ...)
		incId = incId + 1
		local nowId = incId
		local strId = "[RemoteSpy_" .. nowId .. "]"

		local allPassed = { ... }
		local returnValues = {}

		local ok, data = pcall(getValues, self, key, ...)

		returnValues = data
		if self:GetFullName() == "ReplicatedStorage.RS_Package.Remotes.StartInteraction" and allPassed ~= nil then
			parse(self:GetFullName(), allPassed)
		end

		return unpack(returnValues)
	end
end
