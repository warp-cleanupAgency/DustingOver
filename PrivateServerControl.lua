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
local timeofday = "Day"

while task.wait() do
	if timeofday == "Day" then
		game.Lighting.ClockTime = 8
	    for i,v in workspace.AreaMarkers:GetDescendants() do
        if string.find(v.Name, "The Backstreets") then
			v.Name = "The Backstreets"
		end
		end
	end
end
