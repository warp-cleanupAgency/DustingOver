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
