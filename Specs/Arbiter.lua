for i,weapon in pairs(game.ReplicatedStorage.WeaponINFO:GetChildren()) do
     if weapon:FindFirstChild("SwingSpeed") then
	    weapon.SwingSpeed.Value = 500000000
        weapon.Stamina.Value = -1
        weapon.M1Delay.Value = -1
	end
end
----Functions
function OverlayUI(overlay)
local ovrly = game.Players.LocalPlayer.PlayerGui.OverlayGui:FindFirstChild(overlay)
game:GetService("TweenService"):Create(ovrly, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()
task.wait(0.2)
game:GetService("TweenService"):Create(ovrly, TweenInfo.new(0.2), {ImageTransparency = 1}):Play()
end






---------------
game.Players.LocalPlayer.PlayerGui.BGLoop.Frame.BackgroundTransparency = 0.8
game.Players.LocalPlayer.PlayerGui.BGLoop.Frame.BackgroundColor3 = Color3.fromRGB(0, 161, 255)
game.Players.LocalPlayer.PlayerGui.BGLoop.Music.SoundId = "rbxassetid://72932079436110"
local Sound = Instance.new("Sound")
Sound.Parent = workspace
Sound.Name = "Teleport"
Sound.SoundId = "rbxassetid://82746823514134"
Sound:Play()
local Sound2 = Instance.new("Sound")
Sound2.Parent = workspace
Sound2.Name = "Move"
Sound.SoundId = "rbxassetid://78220184754386"
repeat task.wait() until game.Players.LocalPlayer.Character
------singu visuals
local RipTrail = game:GetService("ReplicatedStorage").Assets.Effects.SerumTrail.RipTrail:Clone()
RipTrail.Attachment0 = game.Players.LocalPlayer.Character.HumanoidRootPart.RootAttachment
RipTrail.Attachment1 = game.Players.LocalPlayer.Character.HumanoidRootPart.DashAttach
RipTrail.LightEmission = 1
RipTrail.Lifetime = 2
RipTrail.MaxLength = 500
RipTrail.MinLength = 0.1
RipTrail.Enabled = false
RipTrail.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
----------------
local singutext = game:GetService("Players").LocalPlayer.PlayerGui.Stats.CombatText:Clone()
singutext.Name = "SinguText"
singutext.Visible = true
singutext.TextLabel.Text = "W. SINGULARITY ACTIVATED"
singutext.TextLabel.TextScaled = true
singutext.TextLabel.TextColor3 = Color3.fromRGB(0, 203, 255)
singutext.BlurBG.ImageColor3 = Color3.fromRGB(0, 203, 255)
singutext.Border.ImageColor3 = Color3.fromRGB(0, 189, 255)
singutext.Parent = game:GetService("Players").LocalPlayer.PlayerGui.Stats
------serum w char
local Highlight = Instance.new("Highlight")
Highlight.Parent = game.Players.LocalPlayer.Character
Highlight.FillColor = Color3.fromRGB(0, 210, 255)
Highlight.FillTransparency = 1
Highlight.OutlineColor = Color3.fromRGB(0, 161, 255)
Highlight.OutlineTransparency = 0.5
Highlight.Adornee = game.Players.LocalPlayer.Character
----------------CUSTOM SFX AND PARRY FX
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(v)
if v.Name == "ParryHighlight" then
v.FillColor = Color3.fromRGB(0, 161, 255)
v.OutlineColor = Color3.fromRGB(0, 210, 255)
elseif v:IsA("Model") and not string.find(v.Name, "Accessory") then
	for i,v in pairs(v:GetDescendants()) do
		if v:IsA("BasePart") then
			v.Transparency = 1
		end
	end
end
end)
game.Players.LocalPlayer.Character.HumanoidRootPart.ChildAdded:Connect(function(v)
if v:IsA("Sound") and v.SoundId == "rbxassetid://135809474996639" then
	v.SoundId = "rbxassetid://78220184754386"
elseif v:IsA("Sound") and v.Name == "Swing" then
	v.SoundId = "rbxassetid://78220184754386"
end
end)
game.Players.LocalPlayer.Character.DescendantAdded:Connect(function(v)
if v:IsA("ParticleEmitter") then
	v.Color = ColorSequence.new(Color3.fromRGB(65, 179, 255))
end
end)
game.Players.LocalPlayer.Data.CurrentArea.Changed:Connect(function()
if game.Players.LocalPlayer.Data.CurrentArea.Value == "The Backstreets (Night)" then
game.Players.LocalPlayer.PlayerGui.AreaGui.AreaMusic.SoundId = getcustomasset("DustingOver-Assets/BackstreetsNight.mp3")
end
end)
task.spawn(function()
while task.wait() do
game.Players.LocalPlayer.Character.Weapon.Value = "Executioner's Claw"
game.Players.LocalPlayer.Character.ClientHandler.WalkSpeed:SetAttribute("Speed", 30)
game.Players.LocalPlayer.Character.ClientHandler.WalkSpeed.Value = 30
local Shirt = Instance.new("Shirt")
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=6795230418"
local Pants = Instance.new("Pants")
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=76787303989683"
game.Players.LocalPlayer.Character.Shirt:Destroy()
game.Players.LocalPlayer.Character.Pants:Destroy()
Shirt.Parent = game.Players.LocalPlayer.Character
Pants.Parent = game.Players.LocalPlayer.Character
end
end)
------------
----Left Arm
task.spawn(function()
local serumW = game:GetService("ReplicatedStorage").Assets.Accessories.SpecialAccessories.Singularities["Serum W"].Accessory.Handle:Clone()
serumW.Name = "Serum W"
serumW.Parent = game.Players.LocalPlayer.Character
local mot6d = Instance.new("Motor6D")
mot6d.Parent = serumW
mot6d.Part0 = serumW
mot6d.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
end)
----Head
task.spawn(function()
local serumW = game:GetService("ReplicatedStorage").Assets.Accessories.SpecialAccessories.Singularities["Serum W"].Accessory.Handle:Clone()
serumW.Name = "Serum W"
serumW.Parent = game.Players.LocalPlayer.Character
local mot6d = Instance.new("Motor6D")
mot6d.Parent = serumW
mot6d.Part0 = serumW
mot6d.Part1 = game.Players.LocalPlayer.Character["Head"]
end)
----Right Grip
task.spawn(function()
local serumW = game:GetService("ReplicatedStorage").Assets.Accessories.SpecialAccessories.Singularities["Serum W"].Accessory.Handle:Clone()
serumW.Name = "Serum W"
serumW.Parent = game.Players.LocalPlayer.Character
local mot6d = Instance.new("Motor6D")
mot6d.Parent = serumW
mot6d.Part0 = serumW
mot6d.Part1 = game.Players.LocalPlayer.Character["RightGrip"]
end)
--------
game:GetService("UserInputService").InputBegan:Connect(function(inp, gpe)
if inp.KeyCode == Enum.KeyCode.F and not gpe then
game.ReplicatedStorage.Events.ParryActivate:FireServer()
end
end)
game:GetService("UserInputService").JumpRequest:Connect(function()
game.Players.LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
end)
task.spawn(function()
while task.wait() do
game.ReplicatedStorage.Events.ShinGain:FireServer()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 60
game.Players.LocalPlayer.PlayerGui.AreaGui.CombatMusic.SoundId = getcustomasset("DustingOver-Assets/HeadEyeClaw.mp3")
end
end)
----DASH-------
local dashDB = false
game:GetService("UserInputService").InputBegan:Connect(function(inp, gpe)
if dashDB then return end
if inp.KeyCode == Enum.KeyCode.Q and not gpe then
dashDB = false
	RipTrail.Enabled = true
	Sound:Play()
	OverlayUI("Warp")
	task.wait(0.001)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -10)
	task.wait(0.002)
	RipTrail.Enabled = false
	dashDB = false
end
end)
------------
---SKILLS---
local skillDB = false
---Serum W: Hana
task.spawn(function()
local Skill = Instance.new("Tool")
Skill.Name = "Serum W: Hana Assosciation"
Skill.CanBeDropped = false
Skill.RequiresHandle = false
----------EDITING------------------------
Skill.ToolTip = "Teleports you to the Hana Outpost." --Description
local SkillTags = {
	"Singularity",
	"Page"
}
local SkillAttributes = {
	["CD"] = 5,
	["EffectType"] = "Charge",
	["LightCost"] = 0,
	["RealPageName"] = "Serum W: Hana Assosciation"
}
---SKILL FUNCTIONS
local player = game.Players.LocalPlayer
function SkillActivated()
   local anim = Instance.new("Animation")
   anim.AnimationId = "rbxassetid://17438912614"
   local track = player.Character.Humanoid:LoadAnimation(anim)
   track:Play()
   task.wait(0.5)
   RipTrail.Enabled = true
   Sound:Play()
   OverlayUI("Warp")
   player.Character.HumanoidRootPart.CFrame = CFrame.new(277, 28, 570)
   task.wait(0.05)
   RipTrail.Enabled = false
   skillDB = false
end
------------------------------------------
for i,v in pairs(SkillTags) do
	local e = Instance.new("Folder")
	e.Parent = Skill
	e.Name = v
end
for i,v in pairs(SkillAttributes) do
	Skill:SetAttribute(i, v)
end
Skill.Equipped:Connect(function()
print("SkillUsed")
task.spawn(function()
SkillActivated()
end)
task.wait(0.15)
Skill.Parent = game.Players.LocalPlayer.Backpack

end)



-----------
Skill.Parent = game.Players.LocalPlayer.Backpack
end)
---Serum W: Sentenza
task.spawn(function()
local Skill = Instance.new("Tool")
Skill.Name = "Serum W: Sentenza"
Skill.CanBeDropped = false
Skill.RequiresHandle = false
----------EDITING------------------------
Skill.ToolTip = "Teleports you to the Sentenza." --Description
local SkillTags = {
	"Singularity",
	"Page"
}
local SkillAttributes = {
	["CD"] = 5,
	["EffectType"] = "Charge",
	["LightCost"] = 0,
	["RealPageName"] = "Serum W: Sentenza"
}
---SKILL FUNCTIONS
local player = game.Players.LocalPlayer
function SkillActivated2()
   local anim = Instance.new("Animation")
   anim.AnimationId = "rbxassetid://17438912614"
   local track = player.Character.Humanoid:LoadAnimation(anim)
   track:Play()
   task.wait(0.5)
   RipTrail.Enabled = true
   Sound:Play()
   OverlayUI("Warp")
   player.Character.HumanoidRootPart.CFrame = CFrame.new(439, -7, 437)
   task.wait(0.05)
   skillDB = false
   RipTrail.Enabled = false
end
------------------------------------------
for i,v in pairs(SkillTags) do
	local e = Instance.new("Folder")
	e.Parent = Skill
	e.Name = v
end
for i,v in pairs(SkillAttributes) do
	Skill:SetAttribute(i, v)
end
Skill.Equipped:Connect(function()
print("SkillUsed")
task.spawn(function()
SkillActivated2()
end)
task.wait(0.15)
Skill.Parent = game.Players.LocalPlayer.Backpack

end)



-----------
Skill.Parent = game.Players.LocalPlayer.Backpack
end)
---Serum W: Objective Target
task.spawn(function()
local Skill = Instance.new("Tool")
Skill.Name = "Serum W: Objective Target"
Skill.CanBeDropped = false
Skill.RequiresHandle = false
----------EDITING------------------------
Skill.ToolTip = "Teleports you to your objective target." --Description
local SkillTags = {
	"Singularity",
	"Page"
}
local SkillAttributes = {
	["CD"] = 5,
	["EffectType"] = "Charge",
	["LightCost"] = 0,
	["RealPageName"] = "Serum W: Objective Target"
}
---SKILL FUNCTIONS
local player = game.Players.LocalPlayer
function SkillActivated3()
if workspace.Terrain:FindFirstChild("Attachment") then
   local anim = Instance.new("Animation")
   anim.AnimationId = "rbxassetid://17438912614"
   local track = player.Character.Humanoid:LoadAnimation(anim)
   track:Play()
   task.wait(0.5)
   RipTrail.Enabled = true
   Sound:Play()
   OverlayUI("Warp")
   player.Character.HumanoidRootPart.CFrame = workspace.Terrain.Attachment.WorldCFrame
   task.wait(0.05)
   skillDB = false
   RipTrail.Enabled = false
else
	--no
end
end
------------------------------------------
for i,v in pairs(SkillTags) do
	local e = Instance.new("Folder")
	e.Parent = Skill
	e.Name = v
end
for i,v in pairs(SkillAttributes) do
	Skill:SetAttribute(i, v)
end
Skill.Equipped:Connect(function()
print("SkillUsed")
task.spawn(function()
SkillActivated3()
end)
task.wait(0.15)
Skill.Parent = game.Players.LocalPlayer.Backpack
end)



-----------
Skill.Parent = game.Players.LocalPlayer.Backpack
end)
---Pocket Dimension
task.spawn(function()
local Skill = Instance.new("Tool")
Skill.Name = "Pocket Dimension"
Skill.CanBeDropped = false
Skill.RequiresHandle = false
----------EDITING------------------------
Skill.ToolTip = "[DO NOT USE IN COMBAT OR NEAR ENEMIES] Warp Dimension, making a Pocket Dimension, free of assassinations and ambushes." --Description
local SkillTags = {
	"Unique",
	"Page"
}
local SkillAttributes = {
	["CD"] = 5,
	["LightCost"] = 0,
	["RealPageName"] = "Pocket Dimension"
}
---SKILL FUNCTIONS
local player = game.Players.LocalPlayer
function SkillActivated4()
   local anim = Instance.new("Animation")
   anim.AnimationId = "rbxassetid://17438912614"
   local track = player.Character.Humanoid:LoadAnimation(anim)
   track:Play()
   task.wait(0.5)
   OverlayUI("Warp")
   Sound:Play()
   Sound2:Play()
   game.Players.LocalPlayer.Character:Destroy()
   game:GetService("TeleportService"):Teleport(99831550635699, game.Players.LocalPlayer)
end
------------------------------------------
for i,v in pairs(SkillTags) do
	local e = Instance.new("Folder")
	e.Parent = Skill
	e.Name = v
end
for i,v in pairs(SkillAttributes) do
	Skill:SetAttribute(i, v)
end
Skill.Equipped:Connect(function()
print("SkillUsed")
task.spawn(function()
SkillActivated4()
end)
task.wait(0.15)
Skill.Parent = game.Players.LocalPlayer.Backpack

end)



-----------
Skill.Parent = game.Players.LocalPlayer.Backpack
end)
