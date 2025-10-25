local TweenService_upvr = game:GetService("TweenService")
return function(arg1, arg2) -- Line 132
	--[[ Upvalues[4]:Subtitle
		[1]: RunService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_12_upvr (readonly)
		[4]: TweenService_upvr (readonly)
	]]
	local var27
	if false then
	else
		local LocalPlayer = game.Players.LocalPlayer
		if not LocalPlayer or not LocalPlayer:FindFirstChild("PlayerGui") or not LocalPlayer.PlayerGui:FindFirstChild("OverlayGui") then return end
		local clone_10_upvr = LocalPlayer.PlayerGui.OverlayGui.SubtitleFrame:FindFirstChild("SubtitleTemplate"):Clone()
		if not clone_10_upvr then return end
		if var27 == nil then
			var27 = "#FFFFFF"
		end
		clone_10_upvr.TextColor3 = Color3.fromHex(var27)
		clone_10_upvr.Text = arg1
		clone_10_upvr.Visible = true
		clone_10_upvr.Parent = LocalPlayer.PlayerGui.OverlayGui.SubtitleFrame
		local minimum = math.min(#arg1 / 5, 5)
		game.Debris:AddItem(clone_10_upvr, minimum + 0.5)
		task.delay(minimum, function() -- Line 153
			--[[ Upvalues[2]:
				[1]: clone_10_upvr (readonly)
				[2]: TweenService_upvr (copied, readonly)
			]]
			for _, v_84 in pairs(clone_10_upvr:GetDescendants()) do
				if v_84:IsA("TextLabel") then
					TweenService_upvr:Create(v_84, TweenInfo.new(0.5), {
						TextTransparency = 1;
					}):Play()
				elseif v_84:IsA("UIStroke") then
					TweenService_upvr:Create(v_84, TweenInfo.new(0.5), {
						Transparency = 1;
					}):Play()
				end
			end
			task.wait(0.5)
			clone_10_upvr:Destroy()
		end)
	end
end
