-- Zephyr V2 | Dead Rails (Fixed)
-- Deobfuscated version

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService") 
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

-- Create intro screen 
local gui = Instance.new("ScreenGui")
local imageLabel = Instance.new("ImageLabel")
local corner = Instance.new("UICorner")

gui.Name = "Intro"
gui.Parent = LocalPlayer:WaitForChild("PlayerGui")
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

imageLabel.Name = "Logo"
imageLabel.Parent = gui
imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
imageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
imageLabel.BackgroundTransparency = 1
imageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
imageLabel.BorderSizePixel = 0
imageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
imageLabel.Size = UDim2.new(0, 240, 0, 240)
imageLabel.Image = "rbxassetid://13575694233"
imageLabel.ImageTransparency = 0.85
imageLabel.ScaleType = Enum.ScaleType.Crop

corner.CornerRadius = UDim.new(0, 69420) -- Circle
corner.Parent = imageLabel

-- Create intro animation
local introCoroutine = coroutine.wrap(function()
    wait(5)
    -- Load main Dead Rails script
    loadstring(game:HttpGet("https://pastebin.com/raw/HsX0hBQ3"))()
end)
introCoroutine()

-- Main GUI setup for Dead Rails
local mainGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local button = Instance.new("TextButton")

mainGui.ResetOnSpawn = false
mainGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

frame.Size = UDim2.new(0, 350, 0, 200)
frame.Position = UDim2.new(0.5, -175, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.Parent = mainGui

-- Frame styling
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 12)
frameCorner.Parent = frame

-- Enhanced button for Dead Rails
button.Size = UDim2.new(0.8, 0, 0, 40)
button.Position = UDim2.new(0.1, 0, 0.1, 0)
button.Image = "rbxassetid://3570695787"
button.ImageColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(38, 50, 56)
button.BackgroundTransparency = 0.2
button.Parent = frame

-- Button properties
button.Slice = Enum.Slice.Center
button.SliceCenter = Rect.new(100, 100, 100, 100)
button.SliceScale = 0.12
button.Active = true
button.ZIndex = 36
button.Font = Enum.Font.SourceSans
button.Text = "Zephyr V2 - Dead Rails"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 20
button.TextWrapped = true

-- Button events
button.MouseButton1Down:Connect(function()
    -- Handle button press for Dead Rails
end)

button.InputBegan:Connect(function(input)
    -- Handle input began
end)

button.InputEnded:Connect(function(input) 
    -- Handle input ended
end)

button.InputChanged:Connect(function(input)
    -- Handle input changed  
end)

-- Create Dead Rails library
local Library = {}

-- Main library creation function
Library.CreateLib = function(title, darkTheme)
    local lib = {}
    
    -- Create new tab
    lib.NewTab = function(tabName)
        local tab = {}
        
        -- Create new section
        tab.NewSection = function(sectionName)
            local section = {}
            
            -- Toggle functionality
            section.NewToggle = function(name, desc, callback)
                local toggle = {}
                callback = callback or function() end
                return toggle
            end
            
            -- Button functionality  
            section.NewButton = function(name, desc, callback)
                local button = {}
                callback = callback or function() end
                return button
            end
            
            -- Slider functionality
            section.NewSlider = function(name, desc, minVal, maxVal, callback)
                local slider = {}
                callback = callback or function() end
                return slider
            end
            
            -- TextBox functionality
            section.NewTextBox = function(name, desc, callback)
                local textBox = {}
                callback = callback or function() end
                return textBox
            end
            
            return section
        end
        
        return tab
    end
    
    return lib
end

-- Initialize Dead Rails interface
local lib = Library:CreateLib("Zephyr V2 | Dead Rails", true)

-- Main tab for Dead Rails features
local main = lib:NewTab("Main")
local mainSection = main:NewSection("Dead Rails Features")

-- Dead Rails specific features
-- Player movement enhancements
mainSection:NewToggle("Noclip", "Walk through walls", function(state)
    local noclip = state
    if noclip then
        local player = game:GetService("Players").LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        
        local connection = game:GetService("RunService").Stepped:Connect(function()
            if char:FindFirstChild("Head") then
                char.Head.CanCollide = false
            end
            if char:FindFirstChild("Torso") then  
                char.Torso.CanCollide = false
            end
            if char:FindFirstChild("Right Arm") then
                char["Right Arm"].CanCollide = false
            end
            if char:FindFirstChild("Left Arm") then
                char["Left Arm"].CanCollide = false
            end
            if char:FindFirstChild("Right Leg") then
                char["Right Leg"].CanCollide = false
            end
            if char:FindFirstChild("Left Leg") then
                char["Left Leg"].CanCollide = false
            end
        end)
    end
end)

-- Enhanced FullBright for Dead Rails
mainSection:NewToggle("FullBright", "Make the map bright", function(state)
    if state then
        game:GetService("Lighting").Ambient = Color3.fromRGB(255, 255, 255)
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").FogEnd = 100000
        game:GetService("Lighting").FogStart = 0
        game:GetService("Lighting").GlobalShadows = false
    else
        game:GetService("Lighting").Ambient = Color3.fromRGB(70, 70, 70)
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").FogEnd = 100000
        game:GetService("Lighting").FogStart = 0
        game:GetService("Lighting").GlobalShadows = true
    end
end)

-- Dead Rails specific features
mainSection:NewButton("Auto Farm", "Automatically collect items", function()
    -- Dead Rails auto farm implementation
    spawn(function()
        while true do
            wait(1)
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            
            -- Look for items to collect
            for _, item in pairs(workspace:GetChildren()) do
                if item.Name:find("Item") or item.Name:find("Coin") or item.Name:find("Collectible") then
                    if item:FindFirstChild("ClickDetector") then
                        fireclickdetector(item.ClickDetector)
                    elseif item:FindFirstChild("ProximityPrompt") then
                        fireproximityprompt(item.ProximityPrompt)
                    end
                end
            end
        end
    end)
end)

mainSection:NewButton("God Mode", "Become invincible", function()
    -- God mode implementation
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    if character:FindFirstChild("Humanoid") then
        character.Humanoid.MaxHealth = math.huge
        character.Humanoid.Health = math.huge
    end
end)

mainSection:NewButton("Infinite Jump", "Jump infinitely", function()
    -- Infinite jump implementation
    local player = game:GetService("Players").LocalPlayer
    local mouse = player:GetMouse()
    
    mouse.KeyDown:Connect(function(key)
        if key == " " then -- Spacebar
            local character = player.Character or player.CharacterAdded:Wait()
            if character:FindFirstChild("Humanoid") then
                character.Humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
end)

-- Movement controls
mainSection:NewSlider("Walkspeed", "Speed", 16, 200, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

mainSection:NewSlider("Jump Power", "Jump Height", 50, 500, function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

-- Visual enhancements
mainSection:NewSlider("FOV", "Field Of View", 70, 120, function(value)
    workspace.CurrentCamera.FieldOfView = value
end)

-- Teleport features
local teleportSection = main:NewSection("Teleports")

teleportSection:NewButton("Safe Zone", "Teleport to safe area", function()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    if character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.CFrame = CFrame.new(0, 100, 0) -- Safe high position
    end
end)

teleportSection:NewButton("Spawn", "Teleport to spawn", function()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    for _, spawnLocation in pairs(workspace:GetChildren()) do
        if spawnLocation.Name == "SpawnLocation" or spawnLocation.Name:find("Spawn") then
            if character:FindFirstChild("HumanoidRootPart") then
                character.HumanoidRootPart.CFrame = spawnLocation.CFrame + Vector3.new(0, 5, 0)
                break
            end
        end
    end
end)

-- Dead Rails specific tools
local toolsSection = main:NewSection("Dead Rails Tools")

toolsSection:NewButton("Fly", "Enable flying", function()
    -- Basic fly implementation
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    local rootPart = character:WaitForChild("HumanoidRootPart")
    
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
    bodyVelocity.Velocity = Vector3.new(0, 0, 0)
    bodyVelocity.Parent = rootPart
    
    local flying = true
    
    spawn(function()
        while flying and bodyVelocity do
            wait()
            local camera = workspace.CurrentCamera
            local moveVector = humanoid.MoveDirection
            
            if moveVector.Magnitude > 0 then
                bodyVelocity.Velocity = (camera.CFrame.LookVector * moveVector.Z + camera.CFrame.RightVector * moveVector.X) * 50
            else
                bodyVelocity.Velocity = Vector3.new(0, 0, 0)
            end
        end
    end)
end)

toolsSection:NewButton("ESP", "See players through walls", function()
    -- ESP implementation for Dead Rails
    for _, player in pairs(game:GetService("Players"):GetPlayers()) do
        if player ~= game:GetService("Players").LocalPlayer and player.Character then
            local character = player.Character
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            
            if rootPart then
                local billboard = Instance.new("BillboardGui")
                billboard.Size = UDim2.new(0, 100, 0, 50)
                billboard.StudsOffset = Vector3.new(0, 3, 0)
                billboard.Parent = rootPart
                
                local nameLabel = Instance.new("TextLabel")
                nameLabel.Size = UDim2.new(1, 0, 1, 0)
                nameLabel.BackgroundTransparency = 1
                nameLabel.Text = player.Name
                nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                nameLabel.TextStrokeTransparency = 0
                nameLabel.TextScaled = true
                nameLabel.Parent = billboard
                
                -- Highlight player
                local highlight = Instance.new("Highlight")
                highlight.Parent = character
                highlight.FillColor = Color3.fromRGB(255, 0, 0)
                highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
            end
        end
    end
end)

-- Custom Dead Rails features
toolsSection:NewButton("Unlock All Items", "Unlock everything", function()
    -- Dead Rails specific unlock system
    local player = game:GetService("Players").LocalPlayer
    
    -- Look for unlock systems in the game
    for _, item in pairs(workspace:GetDescendants()) do
        if item.Name:find("Lock") or item.Name:find("Door") or item.Name:find("Gate") then
            if item:FindFirstChild("ClickDetector") then
                fireclickdetector(item.ClickDetector)
            end
        end
    end
end)

-- Anti-detection features
local antiDetectionSection = main:NewSection("Anti-Detection")

antiDetectionSection:NewToggle("Anti-Ban", "Reduce detection risk", function(state)
    if state then
        -- Basic anti-detection measures
        local mt = getrawmetatable(game)
        local oldNamecall = mt.__namecall
        
        setreadonly(mt, false)
        mt.__namecall = function(self, ...)
            local args = {...}
            local method = getnamecallmethod()
            
            if method == "FireServer" or method == "InvokeServer" then
                -- Block suspicious remote calls
                if tostring(self):find("Ban") or tostring(self):find("Kick") or tostring(self):find("Anti") then
                    return
                end
            end
            
            return oldNamecall(self, ...)
        end
        setreadonly(mt, true)
    end
end)

-- Reset functions
local resetSection = main:NewSection("Reset Functions")

resetSection:NewButton("Reset Character", "Respawn player", function()
    local player = game:GetService("Players").LocalPlayer
    if player.Character then
        player.Character:BreakJoints()
    end
end)

resetSection:NewButton("Reset WalkSpeed", "Reset to default speed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

resetSection:NewButton("Reset FOV", "Reset field of view", function()
    workspace.CurrentCamera.FieldOfView = 70
end)

resetSection:NewButton("Fix Character", "Fix character issues", function()
    local player = game:GetService("Players").LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    
    -- Fix common character issues
    if character:FindFirstChild("Humanoid") then
        character.Humanoid.PlatformStand = false
        character.Humanoid.Sit = false
    end
    
    if character:FindFirstChild("HumanoidRootPart") then
        character.HumanoidRootPart.Anchored = false
    end
end)
