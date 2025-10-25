return function(overlay)
local ovrly = game.Players.LocalPlayer.PlayerGui.OverlayGui:FindFirstChild(overlay)
game:GetService("TweenService"):Create(ovrly, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()
task.wait(0.2)
game:GetService("TweenService"):Create(ovrly, TweenInfo.new(0.2), {ImageTransparency = 1}):Play()
end
