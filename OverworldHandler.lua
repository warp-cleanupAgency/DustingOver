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
game.Players.LocalPlayer.Data.CurrentArea.Changed:Connect(function()
if game.Players.LocalPlayer.Data.CurrentArea.Value == "The Backstreets (Night)" or game.Players.LocalPlayer.Data.CurrentArea.Value == "The Backstreets (Night Storming)" then
game.Players.LocalPlayer.PlayerGui.AreaGui.AreaMusic.SoundId = getcustomasset("DustingOver-Assets/BackstreetsNight.mp3")
end
end)
--local OverlayUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/OverlayUI.lua", true))()
