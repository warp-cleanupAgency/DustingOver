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
----INTRO
task.spawn(function()
game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = true
task.wait(12.5)
local TrainAmbience = Instance.new("Sound")
TrainAmbience.Looped = true
TrainAmbience.SoundId = "rbxassetid://18940522285"
TrainAmbience.Parent = game.Players.LocalPlayer.PlayerGui
TrainAmbience:Play()
game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = false
for i,v in pairs(workspace.Map.NewSubway.Invis:GetChildren()) do
	v.CanCollide = false
end
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
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(103.624969, 9.99958611, 519.599976, 1, 0, 0, 0, 1, 0, 0, 0, 1)
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
end)
-------MAP
task.spawn(function()
task.wait(15)
workspace.Map.Sidewalk:GetChildren()[20].Size = Vector3.new(320, 2, 120)
workspace.Map.Sidewalk:GetChildren()[20].CFrame = CFrame.new(214.000122, 23.5, 364, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local j = workspace.Map.Sidewalk["Brick Parts"]:GetChildren()[17]:Clone()
j.CFrame = CFrame.new(214.000122, 40.5, 330.625, -1, 0, 0, 0, 1, 0, 0, 0, -1)
j.Size = Vector3.new(400, 40, 100)
j.Parent = workspace




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
end
end)
game.Players.LocalPlayer.Character.ChildAdded:Connect(function(v)
if v.Name == "HighlightBase" then
	workspace.CurrentCamera.FieldOfView = 90
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
--local OverlayUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/OverlayUI.lua", true))()
