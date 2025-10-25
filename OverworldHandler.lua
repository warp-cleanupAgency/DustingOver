function Format(Int)
	return string.format("%02i", Int)
end

function convertToHMS(Seconds)
	local Minutes = (Seconds - Seconds%60)/60
	Seconds = Seconds - Minutes*60
	local Hours = (Minutes - Minutes%60)/60
	Minutes = Minutes - Hours*60
	return Format(Hours)..":"..Format(Minutes)..":"..Format(Seconds)
end
TipTable = {
	"Dustpuff when you articulate jones pigeons:",
	"Hello? Goodbye!",
	"Welcome to the Backstreets.",
	"Don't dust over.",
	"Why did darillu use a reference image of L. Corp Nest to make the backstreets?",
	"JONES PIGEONS APPROACHING",
	"Ominous ahh title screen",
	"I FUCKING LOVE THE BACKSTREETS",
	"I'm a little silly at times.",
	"Hello Cutter.",
	"Hello Grimlock.",
	"Hello Wipeman.",
	"Hello Desdemona.",
	"Why the fuck does base archived have so many mediocre references? Doesn't even feel like a PM game.",
	"Take a stroll in the backstreets sometimes, It's fun.",
	"There's about ~100 different tips.",
	"The mitochondrion is the powerhouse of the cell.",
	"The FitnessGram™ Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds. Line up at the start. The running speed starts slowly, but gets faster each minute after you hear this signal. [beep] A single lap should be completed each time you hear this sound. [ding] Remember to run in a straight line, and run as long as possible. The second time you fail to complete a lap before the sound, your test is over. The test will begin on the word start. On your mark, get ready, start.",
	"I love Slovenia!",
	"I hate archived mods!",
	"Lobotomy of ruina company"
}

-----------
---NITB = rbxassetid://89530928135778
if game.Players.LocalPlayer:FindFirstChild("DustingOver") then return end
local DustingOver = Instance.new("Folder")
DustingOver.Parent = game.Players.LocalPlayer
DustingOver.Name = "DustingOver"
local PlaySound = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/PlaySound.lua", true))()
game.Players.LocalPlayer.PlayerGui.BGLoop.Music.Volume = 0
if game.PlaceId ~= 99831550635699 then
game.Players.LocalPlayer.PlayerGui.BGLoop.Music.Volume = 0.2
local LoadingUI = game.ReplicatedFirst.LoadingScreen.WARPDisabled.LoadingScreen:Clone()
LoadingUI.Parent = game.Players.LocalPlayer.PlayerGui
LoadingUI.Enabled = true
LoadingUI.MainFrame.LoadingBarBG.Tip.Text = TipTable[math.random(1,#TipTable)]
game.Players.LocalPlayer.PlayerGui.BGLoop.Music.SoundId = "rbxassetid://16098674159"
task.wait(15)
game:GetService("TeleportService"):Teleport(99831550635699, game.Players.LocalPlayer)
return
end
task.spawn(function()
task.wait(1)
game:GetService("TweenService"):Create(game.Players.LocalPlayer.PlayerGui.BGLoop.Music, TweenInfo.new(1.2), {Volume = 0.75}):Play()
end)
game.Players.LocalPlayer.PlayerGui.BGLoop.Music.SoundId = getcustomasset("DustingOver-Assets/BackstreetsNight.mp3")
game.Players.LocalPlayer.PlayerGui.BGLoop.Music.TimePosition = 0
game.Players.LocalPlayer.PlayerGui.BGLoop.Music.PlaybackSpeed = 0.99
PlaySound("rbxassetid://15131631459", "Snap")
PlaySound("rbxassetid://15131729301", "NewArea")
local OverlaySwoon = game.StarterGui.OverlayGui:Clone()
OverlaySwoon.Parent = game.Players.LocalPlayer.PlayerGui
OverlaySwoon.Name = "TransitionVerlay"
OverlaySwoon.BGChange.Position = UDim2.new(0.5, -2500, 0.5, 0)
OverlaySwoon.BGChange.ImageTransparency = 0
OverlaySwoon.BGChange.Visible = true
game:GetService("TweenService"):Create(OverlaySwoon.BGChange, TweenInfo.new(2), {Position = UDim2.new(0.5, 2500, 0.5, 0)}):Play()
task.wait(0.8)
--game.Players.LocalPlayer.PlayerGui.BGLoop.Invite.InviteButton.Position = UDim2.new(-1.5, 0, 0.85, 00)
--game.Players.LocalPlayer.PlayerGui.BGLoop.Invite.ImageLabel.Name = "Imagelab2"
--game.Players.LocalPlayer.PlayerGui.BGLoop.Invite.ImageLabel.ImageTransparency = 1
--game.Players.LocalPlayer.PlayerGui.BGLoop.Invite.Imagelab2.ImageTransparency = 1
--game.Players.LocalPlayer.PlayerGui.BGLoop.Invite.InvitationText.TextTransparency = 1
game.Lighting.Atmos.Color = Color3.fromRGB(255, 245, 186)
workspace.Thrown.LibraryLoading.CameraPart.CFrame = CFrame.new(-44.4980011, 198.759003, -125.747704, 0, 0, 1, 0, 1, -0, -1, 0, 0)
game.Players.LocalPlayer.PlayerGui.BGLoop.Frame.BackgroundTransparency = 0.8
game.SoundService.AmbientReverb = Enum.ReverbType.Hangar
game.SoundService.DistanceFactor = 300
repeat task.wait() until game.Players.LocalPlayer.Character
local OverlayUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/OverlayUI.lua", true))()
local Subtitle = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/Subtitle.lua", true))()
-----UI CHANGES--------
------HUNGER N THIRST------
local Hunger = 100
local Thirst = 100
game.Players.LocalPlayer.PlayerGui.Stats.UI.HealthSlider.Visible = false
local HungerBar = game.Players.LocalPlayer.PlayerGui.Stats.UI.HealthSlider:Clone()
HungerBar.Visible = true
HungerBar.Name = "HungerSlider"
HungerBar.Parent = game.Players.LocalPlayer.PlayerGui.Stats.UI
HungerBar.SliderClip.Slider.ImageColor3 = Color3.fromRGB(142, 89, 0)
task.spawn(function()
while task.wait() do
game.Players.LocalPlayer.PlayerGui.Stats.UI.GradeSlider.Visible = true
Hunger -= 0.001
HungerBar.SliderClip.Size = UDim2.new(Hunger / 100, 0, 1, 0)
--HungerBar.SliderClip
HungerBar.Amount.Text = Hunger.."/100"
if Hunger <= 0 then
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end
end)
----INTRO----------------
task.spawn(function()
game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = true
task.wait(11.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103.624969, 8.5, 519.599976, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
task.wait(1.5)
local TrainAmbience = Instance.new("Sound")
TrainAmbience.Looped = true
TrainAmbience.SoundId = "rbxassetid://18940522285"
TrainAmbience.Parent = game.Players.LocalPlayer.PlayerGui
TrainAmbience:Play()
game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = false
for i,v in pairs(workspace.Map.NewSubway.Invis:GetChildren()) do
	v.CanCollide = false
end
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
local evilPart = Instance.new("Part")
evilPart.Parent = workspace
evilPart.Anchored = true
evilPart.Transparency = 0
evilPart.CFrame = CFrame.new(97.3875122, 7.1536994, 585.833069, 0, 0, 1, 0, 1, -0, -1, 0, 0)
evilPart.Size = Vector3.new(2048, 50.11249923706055, 1.6500015258789062)
evilPart.Color = Color3.fromRGB(0, 0, 0)
evilPart.Material = Enum.Material.Neon
local evilPart2 = Instance.new("Part")
evilPart2.Parent = workspace
evilPart2.Anchored = true
evilPart2.Transparency = 0
evilPart2.CFrame = CFrame.new(111.412506, 7.1536994, 641.233093, 0, 0, 1, 0, 1, -0, -1, 0, 0)
evilPart2.Size = Vector3.new(2048, 50.11249923706055, 1.6500015258789062)
evilPart2.Color = Color3.fromRGB(0, 0, 0)
evilPart2.Material = Enum.Material.Neon
task.wait(18)
PlaySound("rbxassetid://18919029745", "TrainHorn")
local AnnouncSound = Instance.new("Sound")
AnnouncSound.Parent = game.Players.LocalPlayer.PlayerGui
AnnouncSound.Volume = 0
AnnouncSound.SoundId = "rbxassetid://7355865033"
AnnouncSound:Play()
game:GetService("TweenService"):Create(AnnouncSound, TweenInfo.new(5), {Volume = 0.8}):Play()
task.wait(5)
TrainAmbience:Stop()
evilPart:Destroy()
evilPart2:Destroy()
TrainAmbience:Destroy()
task.wait(20)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48, 28, 510)
workspace.Map.NewSubway:Destroy()
end)
-------MAP
task.spawn(function()
task.wait(15)
workspace.Map.Sidewalk.SidewalkSubway.SidewalkCollision.Union2.Size = Vector3.new(400.125, 2.0000991821289062, 280)
local j = workspace.Map.Sidewalk["Brick Parts"]:FindFirstChildOfClass("Part"):Clone()
j.CFrame = CFrame.new(214.000122, 40.5, 330.625, -1, 0, 0, 0, 1, 0, 0, 0, -1)
j.Size = Vector3.new(400, 40, 100)
j.Parent = workspace
local part1 = Instance.new('Part', game.Workspace)
part1.Name = 'Blockage'
part1.Position = Vector3.new(-5.999875068664551, 23, 604)
part1.Size = Vector3.new(40, 400, 170)
part1.Orientation = Vector3.new(0, 0, 0)
part1.Color = Color3.fromRGB(0.3333333432674408, 0.3333333432674408, 0.3333333432674408)
part1.BrickColor = BrickColor.new(0.3333333432674408, 0.3333333432674408, 0.3333333432674408)
part1.Material = Enum.Material['DiamondPlate']
part1.Transparency = 0
part1.Reflectance = 0
part1.Anchored = true
part1.CanCollide = true
part1.Locked = false
local part2 = Instance.new('Part', game.Workspace)
part2.Name = 'Blockage'
part2.Position = Vector3.new(-5.999875068664551, 23, 728)
part2.Size = Vector3.new(40, 400, 45)
part2.Orientation = Vector3.new(0, 0, 0)
part2.Color = Color3.fromRGB(0.3333333432674408, 0.3333333432674408, 0.3333333432674408)
part2.BrickColor = BrickColor.new(0.3333333432674408, 0.3333333432674408, 0.3333333432674408)
part2.Material = Enum.Material['DiamondPlate']
part2.Transparency = 0
part2.Reflectance = 0
part2.Anchored = true
part2.CanCollide = true
part2.Locked = false
local part3 = Instance.new('Part', game.Workspace)
part3.Name = 'Blockage'
part3.Position = Vector3.new(-40.000125885009766, 40, 430)
part3.Size = Vector3.new(2048, 480, 80)
part3.Orientation = Vector3.new(0, 0, 0)
part3.Color = Color3.fromRGB(0.3333333432674408, 0.3333333432674408, 0.3333333432674408)
part3.BrickColor = BrickColor.new(0.3333333432674408, 0.3333333432674408, 0.3333333432674408)
part3.Material = Enum.Material['Concrete']
part3.Transparency = 0
part3.Reflectance = 0
part3.Anchored = true
part3.CanCollide = true
part3.Locked = false
local part4 = Instance.new('Part', game.Workspace)
part4.Name = 'Blockage'
part4.Position = Vector3.new(-5.999875068664551, -177, 764)
part4.Size = Vector3.new(920, 2048, 40)
part4.Orientation = Vector3.new(0, 0, 0)
part4.Color = Color3.fromRGB(0.3333333432674408, 0.3333333432674408, 0.3333333432674408)
part4.BrickColor = BrickColor.new(0.3333333432674408, 0.3333333432674408, 0.3333333432674408)
part4.Material = Enum.Material['Concrete']
part4.Transparency = 0
part4.Reflectance = 0
part4.Anchored = true
part4.CanCollide = true
part4.Locked = false




end)
--------------------
game.Players.LocalPlayer.PlayerGui.TopbarStandard.Holders.Left.MenuExit.IconButton.Menu.IconSpot.Contents.IconLabelContainer.IconLabel.Text = "Rejoin"
game.Players.LocalPlayer.PlayerGui.TopbarStandard.Holders.Left.MenuExit.IconButton.Menu.IconSpot.Contents.IconLabelContainer.Visible = true
game.Players.LocalPlayer.PlayerGui.TopbarStandard.Holders.Left.MenuExit.Size = UDim2.new(0, 60, 0, 44)
game.Players.LocalPlayer.PlayerGui.TopbarStandard.Holders.Left.MenuExit.IconButton.Menu.IconSpot.ClickRegion.MouseButton1Click:Connect(function()
local LoadingUI = game.ReplicatedFirst.LoadingScreen.WARPDisabled.LoadingScreen:Clone()
LoadingUI.Parent = game.Players.LocalPlayer.PlayerGui
LoadingUI.Enabled = true
LoadingUI.MainFrame.LoadingBarBG.Tip.Text = TipTable[math.random(1,#TipTable)] 
game:GetService("TeleportService"):Teleport(99831550635699, game.Players.LocalPlayer)
end)
game.Players.LocalPlayer.Data.CurrentArea.Changed:Connect(function()
if game.Players.LocalPlayer.Data.CurrentArea.Value == "The Backstreets (Night)" or game.Players.LocalPlayer.Data.CurrentArea.Value == "The Backstreets (Night Storming)" or game.Players.LocalPlayer.Data.CurrentArea.Value == "Alleway (Night)" or game.Players.LocalPlayer.Data.CurrentArea.Value == "Alleway (Night Storming)" then
game.Players.LocalPlayer.PlayerGui.AreaGui.AreaMusic.SoundId = getcustomasset("DustingOver-Assets/BackstreetsNight.mp3")
elseif game.Players.LocalPlayer.Data.CurrentArea.Value == "The Darius" then
	task.wait(2)
	Subtitle("This one'll be good rat meat!", "#FF0000")
	task.wait(1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end)
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(v)
if v.Name == "HighlightBase" then
	workspace.CurrentCamera.FieldOfView = 90
elseif v.Name == "LightAttack" or v.Name == "DashFrames" or v.Name == "RunAttackTag" or v.Name == "UsingMove" then
	Hunger -= 1
end
end)
task.spawn(function()
local NPC2 = workspace.NPCS:FindFirstChild("Traveling Pawner"):Clone()
NPC2:PivotTo(CFrame.new(640, -7.2, 431))
NPC2.Parent = workspace.NPCS
NPC2.Name = "PawnerTP"
NPC2.InteractPrompt.ActionText = "Teleport to Pawner"
NPC2.InteractPrompt.Triggered:Connect(function(plr)
if plr == game.Players.LocalPlayer then
	plr.Character.HumanoidRootPart.CFrame = workspace.NPCS["Traveling Pawner"].HumanoidRootPart.CFrame
end
end)
end)
task.spawn(function()
---Pocket Watch---
task.spawn(function()
local Skill = Instance.new("Tool")
Skill.Name = "Pocket Watch"
Skill.CanBeDropped = false
Skill.RequiresHandle = false
----------EDITING------------------------
Skill.ToolTip = "Check the current time." --Description
local SkillTags = {
	"Unique",
	"Page"
}
local SkillAttributes = {
	["CD"] = 5,
	["LightCost"] = 0,
	["RealPageName"] = "Pocket Watch"
}
---SKILL FUNCTIONS
local player = game.Players.LocalPlayer
function SkillActivated()
  --local anim = Instance.new("Animation")
   --anim.AnimationId = "rbxassetid://17438912614"
   --local track = player.Character.Humanoid:LoadAnimation(anim)
   --track:Play()
   OverlayUI("White")
   Subtitle(game.Lighting.TimeOfDay)
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
task.spawn(function()
----Bleedin out
task.spawn(function()
while task.wait(1) do
	
end
end)
end)
task.spawn(function()
game.Players.LocalPlayer.Character.Humanoid.HealthChanged:Connect(function()
if game.Players.LocalPlayer.Character.Humanoid.Health <= 0.1 then
	game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = true
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	game:GetService("TeleportService"):Teleport(99831550635699, game.Players.LocalPlayer)
end
end)
end)
end)
