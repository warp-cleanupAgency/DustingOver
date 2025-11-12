function missing(t, f, fallback)
    if type(f) == t then return f end
    return fallback
end
function Format(Int)
	return string.format("%02i", Int)
end
function stringToCFrame(input)
  return CFrame.new(
    unpack(
      game:GetService('HttpService'):JSONDecode(
        '['..input..']'
      )
    )
  )
end
function chatMessage(str)
    str = tostring(str)
    if not isLegacyChat then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(str)
    else
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(str, "All")
    end
end
function convertToHMS(Seconds)
	local Minutes = (Seconds - Seconds%60)/60
	Seconds = Seconds - Minutes*60
	local Hours = (Minutes - Minutes%60)/60
	Minutes = Minutes - Hours*60
	return Format(Hours)..":"..Format(Minutes)..":"..Format(Seconds)
end
TipTable = {
	"Darillu, you're a pigeon.",
	"Hello? Goodbye!",
	"Welcome to the Backstreets.",
	"Don't dust over.",
	"Hello i'm your neighbor",
	"SWEEPERS APPROACHING: 10... 9... 8.... Aaaaand its all over the screen!",
	"Ominous ahh title screen",
	"I FUCKING LOVE THE BACKSTREETS",
	"I'm a little silly at times.",
	"Hello Cutter.",
	"Hello Grimlock.",
	"Hello Wipeman.",
	"Hello Desdemona.",
	"Archi                                          ved",
	"Take a stroll in the backstreets sometimes, It's fun.",
	"There's about ~100 different tips.",
	"The mitochondrion is the powerhouse of the cell.",
	"The FitnessGram™ Pacer Test is a multistage aerobic capacity test that progressively gets more difficult as it continues. The 20 meter pacer test will begin in 30 seconds. Line up at the start. The running speed starts slowly, but gets faster each minute after you hear this signal. [beep] A single lap should be completed each time you hear this sound. [ding] Remember to run in a straight line, and run as long as possible. The second time you fail to complete a lap before the sound, your test is over. The test will begin on the word start. On your mark, get ready, start.",
	"I love [insert country here]!",
	"Fuck you lousypork!",
	"Lobotomy of ruina company"
}
game.ReplicatedStorage.PermadeathEnabled.Value = true
-----------
---SOUND IDS STORAGE
---NITB = rbxassetid://89530928135778
----------------------------------------
function joinPrivate()
queueteleport = missing("function", queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport))
local TeleportCheck = false
game.Players.LocalPlayer.OnTeleport:Connect(function(State)
	if (not TeleportCheck) and queueteleport then
		TeleportCheck = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/PrivateServerControl.lua'))()")
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/PrivateServerSystem.lua'))()")
	end
end)

local PlaySound = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/PlaySound.lua", true))()
local LoadingUI = game.ReplicatedFirst.LoadingScreen.WARPDisabled.LoadingScreen:Clone()
LoadingUI.Parent = game.Players.LocalPlayer.PlayerGui
LoadingUI.Enabled = true
LoadingUI.MainFrame.LoadingBarBG.Tip.Text = TipTable[math.random(1,#TipTable)]
task.wait(5)
game:GetService("TeleportService"):Teleport(99831550635699, game.Players.LocalPlayer)
end
repeat task.wait() until game.Players.LocalPlayer.Character ------------------------------------------------
local OverlayUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/OverlayUI.lua", true))()
local Subtitle = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/Subtitle.lua", true))()
local p = game.Players.LocalPlayer
local Prefix = "!"
p.Chatted:Connect(function(m)
local args = string.split(m, ' ');
		
if string.lower(args[1]) == Prefix.."joinprivateserver" then
  if args[2] then
    if string.lower(args[2]) == "555" then
		Subtitle("Joining private...")
		joinPrivate()
	else
		Subtitle("Private server code not found.")
    end
  else
		Subtitle("Please input a private server code.")	  
  end
end
end)
