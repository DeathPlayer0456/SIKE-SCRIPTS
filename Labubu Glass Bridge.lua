local gui = Instance.new("ScreenGui", game.CoreGui)
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 180, 0, 80)
frame.Position = UDim2.new(0.5, -90, 0.5, -40)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Active = true
frame.Draggable = true

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0.3, 0)
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(255, 0, 0)
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true
title.Text = "SIKE! HUB"

local toggle = Instance.new("TextButton", frame)
toggle.Position = UDim2.new(0, 0, 0.3, 0)
toggle.Size = UDim2.new(1, 0, 0.7, 0)
toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
toggle.Font = Enum.Font.SourceSans
toggle.TextScaled = true
toggle.Text = "Inf Money: OFF"

local loopEnabled = false
toggle.MouseButton1Click:Connect(function()
	loopEnabled = not loopEnabled
	toggle.Text = "Inf Money: " .. (loopEnabled and "ON" or "OFF")
	if loopEnabled then
		task.spawn(function()
			while loopEnabled do
				local args = {9999999}
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("GiveMoneyEvent"):FireServer(unpack(args))
				task.wait(0.1)
			end
		end)
	end
end)

print("Thank you for using Sike! Scripts")
