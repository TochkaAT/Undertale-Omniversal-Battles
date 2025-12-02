local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Coins = workspace.Coins

--gui Settings
local Window = Library.CreateLib("By Tochka", "RJTheme3")

--teleports
local TeleportTab = Window:NewTab("Teleports")

local LocationTeleport = TeleportTab:NewSection("Locations")
LocationTeleport:NewButton("Spawn", "Teleport to Spawn", function()
	local Character = game.Players.LocalPlayer.Character

	Character:PivotTo(CFrame.new(-979.318359, 3.90385532, -68.4881363, -0.031410668, 0, 0.999506593, 0, 1, 0, -0.999506593, 0, -0.031410668))
end)

LocationTeleport:NewButton("Snowdin", "Teleport to Snowdin", function()
	local Character = game.Players.LocalPlayer.Character

	Character:PivotTo(CFrame.new(576.172119, 73.8143311, 130.716339, -0.99940294, 7.99653566e-10, -0.0345501043, 5.93714411e-10, 1, 5.97085403e-09, 0.0345501043, 5.9467764e-09, -0.99940294))
end)

--Farm
local FarmTab = Window:NewTab("Farm")
local FarmTeleport = FarmTab:NewSection("Farm")
local FarmConnection = nil
FarmTeleport:NewToggle("Teleport Farm", "Teleports you to the souls", function(state)
	local Character = game.Players.LocalPlayer.Character
	if state then
		FarmConnection = task.spawn(function()
			while Character do
				Character:PivotTo(CFrame.new(63.2598038, 2023.52783, 6.85559082, -0.999999762, 0, -0.000690576038, 0, 1, 0, 0.000690576038, 0, -0.999999762))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(-33.7436447, -48.8691635, 3898.29419, 0.999600351, 1.59330753e-08, -0.0282692201, -1.25085933e-08, 1, 1.21315026e-07, 0.0282692201, -1.20912929e-07, 0.999600351))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(3.4664669, -48.6286316, 3811.84082, -1, 0, 0, 0, 1, 0, 0, 0, -1))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(-24.0262451, -48.6286316, 3687.9248, -1, 0, 0, 0, 1, 0, 0, 0, -1))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(-33.8432274, -48.3503036, 3620.94629, -1, 0, 0, 0, 1, 0, 0, 0, -1))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(891.952576, 73.3071747, 143.200562, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(1119.00757, 73.3071747, 229.318146, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(684.576904, 73.3071747, 237.227631, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(418.807556, 73.3071747, 140.575531, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(326.224945, 73.3071747, 237.227631, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(194.3862, 73.3071747, 140.575531, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(69.2496033, 3.99027061, -41.750267, -1, 0, 0, 0, 1, 0, 0, 0, -1))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(51.2529068, 73.3071747, 216.306976, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(-30.8161621, 3.99027061, -77.2901001, -1, 0, 0, 0, 1, 0, 0, 0, -1))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(-111.219559, 3.99027061, 13.7957268, -1, 0, 0, 0, 1, 0, 0, 0, -1))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(-64.6614151, 73.3071747, 196.937943, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(-174.524658, 3.99027061, -35.8103638, -1, 0, 0, 0, 1, 0, 0, 0, -1))
				task.wait(3.2)
				Character:PivotTo(CFrame.new(-149.643982, 73.3071747, 172.445694, 0, 0, -1, 0, 1, 0, 1, 0, 0))
				task.wait(10)
			end
		end)
	else
		if FarmConnection then
			task.cancel(FarmConnection)
		end
	end
end)

--Player

local PlayerTab = Window:NewTab("Player")

local PlayerUserName = PlayerTab:NewSection("Name")
PlayerUserName:NewButton("Hide User's Name", "Hahaha", function()
	local Player = game.Players.LocalPlayer
	local Character = Player.Character

	for i, LeaderstatsName in game.CoreGui.PlayerList.Children.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame.p_1735048581.ChildrenFrame.NameFrame.BGFrame.OverlayFrame.PlayerName:GetChildren() do
		if LeaderstatsName:IsA('TextLabel') then
			if LeaderstatsName.Text == Player.DisplayName then
				LeaderstatsName.Text = 'Yummy!'
				LeaderstatsName:GetPropertyChangedSignal('Text'):Connect(function()
					if LeaderstatsName.Text == Player.DisplayName then
						LeaderstatsName.Text = 'Yummy!'
					end
				end)
			end
		end
	end
	for i, NameText in Player.PlayerGui.UndertaleHealthBar.HealthGui.HealthFrame:GetChildren() do
		if NameText:IsA('TextLabel') then
			if NameText.Text == Player.Name then
				NameText.Text = 'Yummy!'
			end
		end
	end
	Character.Head.NameTag.NameText.Text = 'Yummy!'
end)

local Movement = PlayerTab:NewSection("Movement")
Movement:NewSlider("Change WalkSpeed", "Cheged WalkSpeed", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

--Other
local OtherTab = Window:NewTab("Other")

local SoulsSizeChange = OtherTab:NewSection("Souls")
SoulsSizeChange:NewSlider("Change Souls's Size", "Cheged Souls's Size", 50, 3.5, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
	for i, coins in Coins:GetChildren() do
		coins.Size = Vector3.new(s,s,s)
	end   
end)
