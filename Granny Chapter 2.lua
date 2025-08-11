-- Zephyr V2 | Granny Multiplayer | Chapter Two
-- Deobfuscated version

-- Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer

-- Create intro screen (same as Chapter One)
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
    -- Load main script after intro
    loadstring(game:HttpGet("https://pastebin.com/raw/vdc16Dh7"))()
end)
introCoroutine()

-- Main GUI setup (enhanced for Chapter Two)
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

-- Enhanced button for Chapter Two
button.Size = UDim2.new(0.8, 0, 0, 40)
button.Position = UDim2.new(0.1, 0, 0.1, 0)
button.Image = "rbxassetid://3570695787"
button.ImageColor3 = Color3.fromRGB(255, 255, 255)
button.BackgroundColor3 = Color3.fromRGB(38, 50, 56)
button.BackgroundTransparency = 0.2
button.Parent = frame

-- Button styling
button.Slice = Enum.Slice.Center
button.SliceCenter = Rect.new(100, 100, 100, 100)
button.SliceScale = 0.12
button.Active = true
button.ZIndex = 36
button.Font = Enum.Font.SourceSans
button.Text = "Zephyr"
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.TextSize = 20
button.TextWrapped = true

-- Button events
button.MouseButton1Down:Connect(function()
    -- Handle button press
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

-- Create enhanced library for Chapter Two
local Library = {}
Library.CreateLib = function(title, darkTheme)
    local lib = {}
    
    lib.NewTab = function(tabName)
        local tab = {}
        
        tab.NewSection = function(sectionName)
            local section = {}
            
            -- Toggle function
            section.NewToggle = function(name, desc, callback)
                local toggle = {}
                callback = callback or function() end
                return toggle
            end
            
            -- Button function  
            section.NewButton = function(name, desc, callback)
                local button = {}
                callback = callback or function() end
                return button
            end
            
            -- Slider function
            section.NewSlider = function(name, desc, minVal, maxVal, callback)
                local slider = {}
                callback = callback or function() end
                return slider
            end
            
            -- TextBox function
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

-- Initialize Chapter Two interface
local lib = Library:CreateLib("Zephyr V2 | Granny Multiplayer", true)

-- Main tab
local main = lib:NewTab("Main")
local mainSection = main:NewSection("Main Features")

-- Enhanced features for Chapter Two
-- Noclip toggle
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
        end)
    end
end)

-- FullBright toggle
mainSection:NewToggle("FullBright", "Make the map bright", function(state)
    if state then
        game:GetService("Lighting").Ambient = Color3.fromRGB(255, 255, 255)
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").FogEnd = 100000
    else
        game:GetService("Lighting").Ambient = Color3.fromRGB(0, 0, 0)
        game:GetService("Lighting").Brightness = 1
        game:GetService("Lighting").FogEnd = 100000
    end
end)

-- Chapter Two specific features
mainSection:NewButton("Throw Grenade", "Really OP", function()
    -- Throw grenade implementation
    local player = game:GetService("Players").LocalPlayer
    local gui = player.PlayerGui.MainGUI.ScreenGUI.HandGrenadeGUI.EnemyDamage
    gui:FireServer(unpack({}))
end)

mainSection:NewButton("Throw Grenade [BUTTON]", "Not mine", function()
    -- Alternative grenade throw
    loadstring(game:HttpGet("https://pastebin.com/raw/mJfFgCm5"))()
end)

-- Fly GUI button
mainSection:NewButton("Fly Gui V3", "Fly", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YSL3xKY5"))()
end)

-- Movement controls
mainSection:NewSlider("Walkspeed", "Speed", 16, 120, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

mainSection:NewSlider("Fov", "Field Of View", 70, 120, function(value)
    workspace.CurrentCamera.FieldOfView = value
end)

-- Custom input boxes
mainSection:NewTextBox("Custom WalkSpeed", "Custom Speed", function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(value) or 16
end)

mainSection:NewTextBox("Custom Fov", "Field Of View", function(value) 
    workspace.CurrentCamera.FieldOfView = tonumber(value) or 70
end)

-- Reset functions
mainSection:NewButton("Reset WalkSpeed", "Reset WalkSpeed", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

mainSection:NewButton("Reset Fov", "Reset The Field Of View", function()
    workspace.CurrentCamera.FieldOfView = 70
end)

-- Items section
local items = lib:NewTab("Items")
local itemsSection = items:NewSection("Items")

itemsSection:NewButton("Get All Items", "", function()
    -- Enhanced item collection for Chapter Two
    local items = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}
    
    for _, preset in pairs(items) do
        local tools = workspace:GetChildren()
        for _, tool in ipairs(tools) do
            if tool:IsA("Tool") then
                for _, item in pairs(tool:GetChildren()) do
                    if item.ClassName == "Tool" and item.Name then
                        local interactRemote = workspace:FindFirstChild("Name"):FindFirstChild("InteractRemote")
                        if interactRemote then
                            wait(0.3)
                            local player = game:GetService("Players").LocalPlayer
                            interactRemote:FireServer(unpack({player}))
                        end
                    end
                end
            end
        end
    end
    print("Didn't Work!")
end)

-- Monster section for Chapter Two
local monster = lib:NewTab("Monster")
local grannySection = monster:NewSection("Granny")

-- Enhanced Granny kill functions for different presets
grannySection:NewButton("Kill Granny [PRESET 1]", "", function()
    killMonster(getNil(), workspace.Preset1.Locks.Granny.Zombie, 8, "PlayerBullet", "Part")
end)

grannySection:NewButton("Kill Granny", "", function()
    killMonster(getNil(), workspace.Preset2.Locks.Granny.Zombie, 8, "PlayerBullet", "Part")
end)

grannySection:NewButton("Kill Granny [PRESET 2]", "", function()
    killMonster(getNil(), workspace.Preset3.Locks.Granny.Zombie, 8, "PlayerBullet", "Part")
end)

grannySection:NewButton("Kill Granny [PRESET 3]", "", function()
    killMonster(getNil(), workspace.Preset4.Locks.Granny.Zombie, 8, "PlayerBullet", "Part")
end)

grannySection:NewButton("Kill Granny [PRESET 4]", "", function()
    killMonster(getNil(), workspace.Preset5.Locks.Granny.Zombie, 8, "PlayerBullet", "Part")
end)

grannySection:NewButton("Kill Granny [PRESET 5]", "", function()
    killMonster(getNil(), workspace.Preset5.Locks.Granny.Zombie, 8, "PlayerBullet", "Part")
end)

-- Chapter Two specific: Grandpa section
local grandpaSection = monster:NewSection("Grandpa")

grandpaSection:NewButton("Kill Grandpa [PRESET 1]", "", function()
    killMonster(getNil(), workspace.Preset1.Locks.Grandpa.Zombie, 8, "PlayerBullet", "Part")
end)

grandpaSection:NewButton("Kill Grandpa", "", function()
    killMonster(getNil(), workspace.Preset2.Locks.Grandpa.Zombie, 8, "PlayerBullet", "Part")
end)

grandpaSection:NewButton("Kill Grandpa [PRESET 2]", "", function()
    killMonster(getNil(), workspace.Preset3.Locks.Grandpa.Zombie, 8, "PlayerBullet", "Part")
end)

grandpaSection:NewButton("Kill Grandpa [PRESET 3]", "", function()
    killMonster(getNil(), workspace.Preset4.Locks.Grandpa.Zombie, 8, "PlayerBullet", "Part")
end)

grandpaSection:NewButton("Kill Grandpa [PRESET 4]", "", function()
    killMonster(getNil(), workspace.Preset5.Locks.Grandpa.Zombie, 8, "PlayerBullet", "Part")
end)

grandpaSection:NewButton("Kill Grandpa [PRESET 5]", "", function()
    killMonster(getNil(), workspace.Preset5.Locks.Grandpa.Zombie, 8, "PlayerBullet", "Part")
end)

-- Chapter Two specific: Troll section
local trollSection = monster:NewSection("Troll")

trollSection:NewButton("Open/Close Camera [CANT TURN OFF]", "Maks cameras go crazy", function()
    -- Camera troll implementation
    local cameraSystem = workspace.CameraSystem.SwitchMonitor.InteractRemote
    cameraSystem:FireServer(unpack({}))
    wait(0.1)
end)

trollSection:NewButton("Open/Close Radio [CANT TURN OFF]", "Maks radio go crazy", function()
    -- Radio troll implementation - similar pattern
    local radioSystem = workspace.RadioSystem.SwitchRadio.InteractRemote  
    radioSystem:FireServer(unpack({}))
    wait(0.1)
end)

trollSection:NewButton("Open/Close Maiden [CANT TURN OFF]", "Make maiden go crazy", function()
    -- Maiden troll implementation - similar pattern
    local maidenSystem = workspace.MaidenSystem.SwitchMaiden.InteractRemote
    maidenSystem:FireServer(unpack({}))
    wait(0.1)
end)

-- Helper functions for Chapter Two
function getNil()
    return setmetatable({}, {
        __index = function(self, key)
            return getNil()
        end,
        __call = function(self, ...)
            return getNil()
        end
    })
end

function killMonster(nil_obj, monster, damage, bulletType, partType)
    local player = game:GetService("Players").LocalPlayer
    local gui = player.PlayerGui.MainGUI.ScreenGUI
    
    if monster then
        local remoteEvent
        if gui:FindFirstChild("StungunGUI") then
            remoteEvent = gui.StungunGUI.EnemyDamage
        end
        
        if remoteEvent then
            remoteEvent:FireServer(unpack({nil_obj}))
        end
    end
end
