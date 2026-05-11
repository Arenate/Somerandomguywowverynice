local player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

-- GUI
local gui = Instance.new("ScreenGui")
gui.Name = "GearGui"
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.fromScale(0.18, 0.25)
frame.Position = UDim2.fromScale(0.4, 0.35)
frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
frame.BorderSizePixel = 0

-- Title
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.fromScale(1, 0.2)
title.BackgroundTransparency = 1
title.Text = "GEAR GUI"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true

-- Target toggle button
local targetBtn = Instance.new("TextButton")
targetBtn.Parent = frame
targetBtn.Size = UDim2.fromScale(0.8, 0.2)
targetBtn.Position = UDim2.fromScale(0.1, 0.25)
targetBtn.BackgroundColor3 = Color3.fromRGB(0,0,0)
targetBtn.TextColor3 = Color3.fromRGB(255,255,255)
targetBtn.Text = "ME"
targetBtn.Font = Enum.Font.SourceSansBold
targetBtn.TextScaled = true

-- Tommy Gun button
local tommy = Instance.new("TextButton")
tommy.Parent = frame
tommy.Size = UDim2.fromScale(0.8, 0.2)
tommy.Position = UDim2.fromScale(0.1, 0.5)
tommy.BackgroundColor3 = Color3.fromRGB(0,0,0)
tommy.TextColor3 = Color3.fromRGB(255,255,255)
tommy.Text = "TOMMY GUN"
tommy.Font = Enum.Font.SourceSansBold
tommy.TextScaled = true

-- Sledge Hammer button
local hammer = Instance.new("TextButton")
hammer.Parent = frame
hammer.Size = UDim2.fromScale(0.8, 0.2)
hammer.Position = UDim2.fromScale(0.1, 0.75)
hammer.BackgroundColor3 = Color3.fromRGB(0,0,0)
hammer.TextColor3 = Color3.fromRGB(255,255,255)
hammer.Text = "SLEDGE HAMMER"
hammer.Font = Enum.Font.SourceSansBold
hammer.TextScaled = true

-- Toggle logic
local targets = {"me", "others", "all"}
local index = 1

targetBtn.MouseButton1Click:Connect(function()
	index = index + 1
	if index > #targets then
		index = 1
	end
	
	targetBtn.Text = string.upper(targets[index])
end)

-- Function to send command
local function sendGear(id)
	local args = {
		";gear " .. targets[index] .. " " .. id
	}
	game:GetService("ReplicatedStorage")
		:WaitForChild("HDAdminHDClient")
		:WaitForChild("Signals")
		:WaitForChild("RequestCommandSilent")
		:InvokeServer(unpack(args))
end

-- Button actions
tommy.MouseButton1Click:Connect(function()
	sendGear("116693764")
end)

hammer.MouseButton1Click:Connect(function()
	sendGear("45177979")
end)

-- DRAG SYSTEM (PC + MOBILE, DELTA BASED)
local dragging = false
local dragStart
local startPos

frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 
	or input.UserInputType == Enum.UserInputType.Touch then
		
		dragging = true
		dragStart = input.Position
		startPos = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

frame.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement 
	or input.UserInputType == Enum.UserInputType.Touch then
		
		if dragging then
			local delta = input.Position - dragStart
			
			frame.Position = UDim2.new(
				startPos.X.Scale,
				startPos.X.Offset + delta.X,
				startPos.Y.Scale,
				startPos.Y.Offset + delta.Y
			)
		end
	end
end)
