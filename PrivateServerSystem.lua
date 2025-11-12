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
queueteleport = missing("function", queue_on_teleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport))
local TeleportCheck = false
game.Players.LocalPlayer.OnTeleport:Connect(function(State)
	if (not TeleportCheck) and queueteleport then
		TeleportCheck = true
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/PrivateServerControl.lua'))()")
		queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/PrivateServerSystem.lua'))()")
	end
end)
function joinPrivate()

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
-------------------------------------------------------------------
print("Oooo, I hath ran it!")
repeat task.wait() until game.Players.LocalPlayer.Character ------------------------------------------------
local OverlayUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/OverlayUI.lua", true))()
local Subtitle = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Modules/Subtitle.lua", true))()
game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = true
local NewMap = game:GetObjects(94718315151972)[1]
NewMap.Parent = workspace
NewMap.Name = "PrivServBuilding"
task.wait(5)
game.Players.LocalPlayer.PlayerGui.OverlayGui.Blindness.Visible = false
workspace.Map.Halloween:ClearAllChildren()
--------------------------variables---------
local timeofday = "day"
--------ADMINCMDS
local Players = game:GetService('Players');
local Prefix = '!'; -- What goes in front of every command that is ran
local Admins = {"XxKayl33_Fir3xX51"};
function CheckIfAdmin(plr)
	for i = 1, #Admins do
		if Admins[i] == plr.UserId or Admins[i] == plr.Name then

			return true;
		end
	end

	return false;
end
function cmds(p)
print(p.Name.."chatevent")
p.Chatted:Connect(function(m)
print(m)
		local args = string.split(m, ' ');
		
		if string.lower(args[1]) == Prefix.."settime" then
			if CheckIfAdmin(p) then
			       if string.lower(args[2]) == "day" or string.lower(args[2]) == "night" or string.lower(args[2]) == "blizzard" then
					Subtitle(p.Name.." set the time to "..string.lower(args[2]))
					timeofday = string.lower(args[2])
				   else
				    if p == game.Players.LocalPlayer then
					Subtitle("Time not recognized (args: day, night, blizzard)")
				    end					   
				   end
			else
				if p == game.Players.LocalPlayer then
					Subtitle("Not Authorized")
				end
			end
		elseif string.lower(args[1]) == Prefix.."kill" then
           			if CheckIfAdmin(p) then
					   if args[2] then

                       if string.lower(game.Players.LocalPlayer.Name) == string.lower(args[2]) or string.lower(args[2]) == "all" then
						   game.Players.LocalPlayer.Character.Humanoid.Health = 0
					   elseif string.lower(args[2]) == "others" then
						   if game.Players.LocalPlayer ~= p then
                              game.Players.LocalPlayer.Character.Humanoid.Health = 0
						   end
					   end
					   else
					if p == game.Players.LocalPlayer then
					Subtitle("Specify Player (args: player name, all, others)")
				    end
					   end
					else
					if p == game.Players.LocalPlayer then
					Subtitle("Not Authorized")
				    end
					end
		end
	end)
end
for i,v in game.Players:GetPlayers() do
	cmds(v)
	print(v.Name)
end
game.Players.PlayerAdded:Connect(function(v)
Subtitle(v.Name.." joined the Server", "#8A8AFF")
PlaySound("rbxassetid://109478341932904", "PlrJoined")
cmds(v)
print(v.Name)
end)





----------------------
while task.wait() do
	if timeofday == "day" then
		game.Lighting.ClockTime = 8
	    for i,v in workspace.AreaMarkers:GetDescendants() do
        if string.find(v.Name, "The Backstreets") then
			v.Name = "The Backstreets"
		end
		end
	elseif timeofday == "night" then
		game.Lighting.ClockTime = 3
	    for i,v in workspace.AreaMarkers:GetDescendants() do
        if string.find(v.Name, "The Backstreets") then
			v.Name = "The Backstreets (Night)"
		end
		end		
	end
end
