-- Zephyr V2 | Granny Multiplayer | Chapter One
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
    -- Load main script after intro
    loadstring(game:HttpGet("https://pastebin.com/raw/vdc16Dh7"))()
end)
introCoroutine()

-- Main GUI setup
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

-- Button
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

-- Create main library
local Library = {}
Library.CreateLib = function(title, darkTheme)
    -- Create main library interface
    local lib = {}
    
    -- Create window
    lib.NewTab = function(tabName)
        local tab = {}
        
        -- Create sections
        tab.NewSection = function(sectionName)
            local section = {}
            
            -- Toggle function
            section.NewToggle = function(name, desc, callback)
                local toggle = {}
                callback = callback or function() end
                
                -- Create toggle UI element
                local toggleFrame = Instance.new("Frame")
                -- Toggle implementation here
                
                return toggle
            end
            
            -- Button function  
            section.NewButton = function(name, desc, callback)
                local button = {}
                callback = callback or function() end
                
                -- Create button UI element
                local buttonFrame = Instance.new("Frame")
                -- Button implementation here
                
                return button
            end
            
            -- Slider function
            section.NewSlider = function(name, desc, minVal, maxVal, callback)
                local slider = {}
                callback = callback or function() end
                
                -- Create slider UI element
                local sliderFrame = Instance.new("Frame")
                -- Slider implementation here
                
                return slider
            end
            
            -- TextBox function
            section.NewTextBox = function(name, desc, callback)
                local textBox = {}
                callback = callback or function() end
                
                -- Create textbox UI element
                local textBoxFrame = Instance.new("Frame")
                -- TextBox implementation here
                
                return textBox
            end
            
            return section
        end
        
        return tab
    end
    
    return lib
end

-- Initialize main interface
local lib = Library:CreateLib("Zephyr V2 | Granny Multiplayer", true)

-- Main tab
local main = lib:NewTab("Main")

-- Main section with features
local mainSection = main:NewSection("Main Features")

-- Noclip toggle
mainSection:NewToggle("Noclip", "Walk through walls", function(state)
    local noclip = state
    local player = game.Players.LocalPlayer
    local char = player.Character or player.CharacterAdded:Wait()
    
    if noclip then
        local connection
        connection = game:GetService("RunService").Stepped:Connect(function()
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

-- Fly GUI button
mainSection:NewButton("Fly Gui V3", "Fly", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YSL3xKY5"))()
end)

-- Walkspeed slider
mainSection:NewSlider("Walkspeed", "Speed", 16, 120, function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- FOV slider  
mainSection:NewSlider("Fov", "Field Of View", 70, 120, function(value)
    workspace.CurrentCamera.FieldOfView = value
end)

-- Custom walkspeed textbox
mainSection:NewTextBox("Custom WalkSpeed", "Custom Speed", function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(value) or 16
end)

-- Custom FOV textbox
mainSection:NewTextBox("Custom Fov", "Field Of View", function(value) 
    workspace.CurrentCamera.FieldOfView = tonumber(value) or 70
end)

-- Reset buttons
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
    -- Get all items implementation
    local items = {"General Items", "Crossbow", "Pepper spray", "FreezeTrap"}
    
    for _, itemName in pairs(items) do
        local item = workspace:FindFirstChild("Preset1").Locks:FindFirstChild(itemName)
        if item then
            local interactRemote = item:FindFirstChild("InteractRemote")
            if interactRemote then
                wait(0.3)
                local player = game:GetService("Players").LocalPlayer
                interactRemote:FireServer(unpack({player}))
            end
        end
    end
end)

-- Weapons section  
local weapons = items:NewSection("Weapons")

weapons:NewButton("Get Crossbow", "", function()
    -- Get crossbow implementation
    local player = game:GetService("Players").LocalPlayer
    local item = workspace:FindFirstChild("General Items"):FindFirstChild("Crossbow")
    if item then
        local interactRemote = item:FindFirstChild("InteractRemote") 
        if interactRemote then
            interactRemote:FireServer(unpack({player}))
        end
    end
end)

weapons:NewButton("Get Item", "", function()
    -- Get pepper spray implementation  
    local player = game:GetService("Players").LocalPlayer
    local item = workspace:FindFirstChild("General Items"):FindFirstChild("Pepper spray")
    if item then
        local interactRemote = item:FindFirstChild("InteractRemote")
        if interactRemote then  
            interactRemote:FireServer(unpack({player}))
        end
    end
end)

weapons:NewButton("Get Pepper Spray", "", function()
    -- Get freeze trap implementation
    local player = game:GetService("Players").LocalPlayer  
    local item = workspace:FindFirstChild("General Items"):FindFirstChild("FreezeTrap")
    if item then
        local interactRemote = item:FindFirstChild("InteractRemote")
        if interactRemote then
            interactRemote:FireServer(unpack({player}))
        end
    end
end)

-- Monster section
local monster = lib:NewTab("Monster")
local grannySection = monster:NewSection("Granny")

-- Granny kill presets
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

-- Slendrina Mother section
local slendrinaSection = monster:NewSection("Slendrina Mother")

slendrinaSection:NewButton("Kill Slendrina Mother [PRESET 1]", "", function()
    killMonster(getNil(), workspace.Preset1.Locks.SlendrinaMother.SlendrinaMotherHumanoid, 8, "PlayerBullet", "Part")
end)

slendrinaSection:NewButton("Kill Slendrina Mother", "", function()
    killMonster(getNil(), workspace.Preset2.Locks.SlendrinaMother.SlendrinaMotherHumanoid, 8, "PlayerBullet", "Part")
end)

slendrinaSection:NewButton("Kill Slendrina Mother [PRESET 2]", "", function()
    killMonster(getNil(), workspace.Preset3.Locks.SlendrinaMother.SlendrinaMotherHumanoid, 8, "PlayerBullet", "Part")
end)

slendrinaSection:NewButton("Kill Slendrina Mother [PRESET 3]", "", function()
    killMonster(getNil(), workspace.Preset4.Locks.SlendrinaMother.SlendrinaMotherHumanoid, 8, "PlayerBullet", "Part")
end)

slendrinaSection:NewButton("Kill Slendrina Mother [PRESET 4]", "", function() 
    killMonster(getNil(), workspace.Preset5.Locks.SlendrinaMother.SlendrinaMotherHumanoid, 8, "PlayerBullet", "Part")
end)

slendrinaSection:NewButton("Kill Slendrina Mother [PRESET 5]", "", function()
    killMonster(getNil(), workspace.Preset5.Locks.SlendrinaMother.SlendrinaMotherHumanoid, 8, "PlayerBullet", "Part")
end)

-- Helper functions
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
        if gui:FindFirstChild("CrossbowGUI") then
            remoteEvent = gui.CrossbowGUI.EnemyDamage
        elseif gui:FindFirstChild("ShotgunGUI") then  
            remoteEvent = gui.ShotgunGUI.EnemyDamage
        end
        
        if remoteEvent then
            remoteEvent:FireServer(unpack({nil_obj}))
        end
    end
end
