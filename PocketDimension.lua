local OverlayUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/warp-cleanupAgency/DustingOver/refs/heads/main/Arbiter.lua", true))()
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
