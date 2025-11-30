return function(soundID, soundName)
local Sound = Instance.new("Sound")
Sound.Parent = game.Players.LocalPlayer.PlayerGui
Sound.Name = soundName
Sound.PlayOnRemove = true
Sound.SoundId = soundID
Sound.Volume = 1.2
Sound:Remove()
end
