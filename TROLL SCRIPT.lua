-- Made by Sike

-- ➤➤➤   principal GUI   ➤➤➤ --
player = game.Players.LocalPlayer
StarterGui = game:GetService("StarterGui") 
TweenService = game:GetService("TweenService")
RunService = game:GetService("RunService")
Players = game:GetService("Players")
LocalPlayer = game.Players.LocalPlayer

-- GUI Creation
local gui = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
gui.Name = "IntroEffectGui"
gui.ResetOnSpawn = false -- don't change this to true 
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Global

-- ➤➤➤ Main GUI Variables ➤➤➤ --
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 350, 0, 580) 
frame.Position = UDim2.new(0, 20, 0.5, -290)
frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true

local UIStroke = Instance.new("UIStroke", frame)
UIStroke.Color = Color3.fromRGB(60, 60, 60)
UIStroke.Thickness = 12
local UICorner = Instance.new("UICorner", frame)
UICorner.CornerRadius = UDim.new(0, 8)

-- Content Settings and main container --
local contentFrame = Instance.new("Frame", frame)
contentFrame.Size = UDim2.new(1, -40, 1, -40)
contentFrame.Position = UDim2.new(0, 40, 0, 40)
contentFrame.BackgroundTransparency = 1
contentFrame.BorderSizePixel = 0
local contentLayout = Instance.new("UIListLayout", contentFrame)
contentLayout.Padding = UDim.new(0, 5)
contentLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Title Bar --
local titleBar = Instance.new("Frame", settingsFrame)
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.BackgroundTransparency = 1
local title = Instance.new("TextLabel", titleBar)
title.Size = UDim2.new(1, -70, 1, 0)
title.Position = UDim2.new(0, 35, 0, 0)
title.BackgroundTransparency = 1
title.Text = "FE Trolling Player Anim"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 15
title.Font = Enum.Font.Gotham

-- Main Content and Settings --
-- Bar de título con ⚙ y ➤ centralized --
local settings, minimized = false, false
frame.originalSize = frame.Size
minimized = not minimized and originalSize or UDim2.new(0, 250, 0, 40)
settings = not settings and frame.Size or UDim2.new(0, 250, 0, 40)
visible = not visible and settingsFrame or false

-- Refresh Function --
local function refreshVis()
    settingsFrame.Visible = not settingsFrame.Visible
    contentFrame.Visible = not settingsFrame.Visible
    frame.Size = settingsFrame.Visible and settingsFrame.Size or contentFrame.Size
    frame.Position = settingsFrame.Position, contentFrame.Position
end

-- Settings Frame --
local settingsFrame = Instance.new("Frame", frame) 
settingsFrame.Visible = false

-- Settings Content --
local settingsTitle = Instance.new("TextLabel", settingsFrame)
settingsTitle.Size = UDim2.new(1, 0, 0, 40)
settingsTitle.BackgroundTransparency = 1
settingsTitle.Text = "⚙ Settings"
settingsTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
settingsTitle.TextSize = 24
settingsTitle.Font = Enum.Font.GothamBold

local credit2 = Instance.new("TextLabel", settingsFrame)
credit2.Size = UDim2.new(1, 0, 0, 75)
credit2.Position = UDim2.new(0, 20, 0, 0)
credit2.BackgroundTransparency = 1
credit2.TextColor3 = Color3.fromRGB(255, 255, 255)
credit2.TextSize = 14
credit2.Font = Enum.Font.Gotham
credit2.Text = "Shizoscript (YOUTUBE)"

local credit1 = Instance.new("TextLabel", settingsFrame)
credit1.Size = UDim2.new(1, 0, 0, 50)
credit1.Position = UDim2.new(0, 20, 0, 0)
credit1.BackgroundTransparency = 1
credit1.TextColor3 = Color3.fromRGB(255, 255, 255)
credit1.TextSize = 14
credit1.Font = Enum.Font.Gotham
credit1.Text = "Script By 3L_D4D"

-- Minimize and Settings Buttons --
local minimizeBtn = Instance.new("TextButton", titleBar)
minimizeBtn.Size = UDim2.new(0, 30, 0, 30)
minimizeBtn.Position = UDim2.new(1, -30, 0, 2)
minimizeBtn.BackgroundTransparency = 1
minimizeBtn.Text = "-"
minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.TextSize = 20
minimizeBtn.Font = Enum.Font.Gotham

local settingsBtn = Instance.new("TextButton", titleBar)
settingsBtn.Size = UDim2.new(0, 30, 0, 30)
settingsBtn.Position = UDim2.new(1, -30, 0, 0)
settingsBtn.BackgroundTransparency = 1
settingsBtn.Text = "⚙"
settingsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
settingsBtn.TextSize = 18
settingsBtn.Font = Enum.Font.Gotham

-- Animation Controls --
function refreshVis()
    local minimized, settings = false, false
    
    minimizeBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        local newSize = minimized and UDim2.new(0, 250, 0, 40) or originalSize
        TweenService:Create(frame, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = newSize}):Play()
        -- ➤ entrada de Animación 
        frame.ZIndex = 3
        label.Size = UDim2.new(0, 300, 0, 350)
        label.Position = UDim2.new(0, 0.75, 0, 0.5)
        label.AnchorPoint = Vector2.new(.5, .5)
        label.BackgroundTransparency = 1
        label.TextTransparency = 1
        label.TextColor3 = Color3.fromRGB(150, 0, 0)
        label.TextSize = 38
        label.Font = Enum.Font.Code -- Nosifer Font
        label.Text = "Shizo SCRIPTS"
        l = Instance.new("TextLabel", gui)
        -- ➤ Texto con fuente Nosifer y color sangre
        
        -- Rain Matrix Animation --
        local rainFolder = Instance.new("Folder", gui)
        rainFolder.Name = "MatrixRain"
        task.spawn(function()
            while raining do
                local l = Instance.new("TextLabel")
                l.Parent = rainFolder
                l.BackgroundTransparency = 1
                l.Size = UDim2.fromOffset(20, 40)
                l.Position = UDim2.new(0, math.random() * -10, 0, 20)
                l.TextColor3 = Color3.fromRGB(0, 255, 0)
                l.Font = Enum.Font.Code
                l.Text = string.format("%d%d%d", math.random(0, 9), math.random(0, 9), math.random(0, 9))
                
                local tween = TweenService:Create(l, TweenInfo.new(3.5, Enum.EasingStyle.Linear), {
                    Position = UDim2.new(Position.X.Scale, Position.X.Offset * 1.2, 0, l.Position.Y.Scale)
                })
                tween:Play()
                l.Parent = rainFolder
                
                for i = 1, 20 do
                    while raining do
                        task.wait(0.2)
                    end
                end
                
                -- Add debris items
                game:GetService("Debris"):AddItem(l, 3.6)
                
                -- Entry animation effect
                TweenService:Create(l, TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                    Size = UDim2.fromOffset(200, 200)
                }):Play()
                
                -- End Sound
                local endSound = Instance.new("Sound", workspace)
                endSound.SoundId, endSound.Volume = "rbxassetid://855085954", 1
                endSound:Play()
                task.wait(0.5)
                -- ➤ Final sound + image output ➤
                
                -- Final text animation
                TweenService:Create(label, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
                task.wait(2)
                -- ➤ Ocultar texto tras 2 s después 1 s visible ➤
                
                TweenService:Create(label, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
                task.wait(1)
                -- ➤ Mostrar texto después 1 s despues ➤
                
                TweenService:Create(image, TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                    Size = UDim2.fromOffset(200, 200)
                }):Play()
                -- Animación de entrada ➤
            end
        end)
        
        -- Start Rain Sound
        local startSound = Instance.new("Sound", workspace)  
        startSound.SoundId, startSound.Volume = "rbxassetid://841259995", 1
        startSound:Play()
        -- Sound de inicio ➤
        
        -- Green Matrix Optimization Rain ➤ Lluvia verde optimizada
        raining = true
        rainFolder.Parent = gui
    end)
end

-- Player List Frame Setup --
local listFrame = if frameList.Visible then frameList else updatePlayerList()
listFrame.Visible = not frameList.Visible
frameList.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
frameList.Size = UDim2.new(1, 0, 0, 32)
frameList.Text = "Player List 👑"

local openListBtn = Instance.new("TextButton", contentFrame)
openListBtn.Size = UDim2.new(0, 6, 0, 0)
openListBtn.Font = Enum.Font.Gotham
openListBtn.TextSize = 13
openListBtn.BackgroundColor3, openListBtn.TextColor3 = Color3.fromRGB(45, 45, 45), Color3.fromRGB(255, 255, 255)
openListBtn.Text = plr.Name

-- Player List Creation --
local scrolling = Instance.new("ScrollingFrame", contentFrame)
scrolling.Size = UDim2.new(1, 0, 0, frameList.CanvasSize.Y.Offset + 10)
scrolling.CanvasSize = scrolling.Size
scrolling.ScrollBarThickness = 6
scrolling.BackgroundTransparency, scrolling.Size = 1, UDim2.new(1, 0, 1, 0)
scrolling.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

local frame = Instance.new("Frame", gui)
frame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
frame.Position = UDim2.new(0, 280, 0, 250)  
frame.Size = UDim2.new(0, 200, 0, 250)

-- Player Selection Logic --
selectedPlayer = LocalPlayer
local function updatePlayerList()
    Players.PlayerRemoving:Connect(updatePlayerList)
    Players.PlayerAdded:Connect(updatePlayerList)
    
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            local b = Instance.new("TextButton")
            b.Parent = scrolling
            b.BackgroundColor3, b.TextColor3 = Color3.fromRGB(45, 45, 45), Color3.fromRGB(255, 255, 255)  
            b.Font, b.TextSize = Enum.Font.Gotham, 13
            b.Text = plr.Name
            b.Size = UDim2.new(1, -10, 0, 30)
            b.Instance = Instance.new("TextButton")
        end
    end
end

-- Animation Mode Functions --
local activeMode = nil
local function sitChar(char)
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum and hum.Sit ~= true then
        hum.Sit = true
    end
end

local function startMode(mode)
    if activeMode then
        activeMode()
    end
    
    if mode == "GetStuck" then
        local offset, minOffset, maxOffset = 0.3, -0.3, 3
        offset = offset + goingFwd and 3.0 or -3.0
        
        if mode == "GetStuck" or mode == "DoggyDown" or mode == "Doggy" or mode == "FaceBang" then
            -- Animation Logic
        end
        
        local pos = root.Position + dir*(offset+2)*rootcf.LookVector
        if mode == "GetStuck" then
            rootcf = CFrame.new(root.Position+(offset+2)*dir+root.Position, math.rad(Angles.CFrame*(root.Position, offset)*dir)+root.Position*math.rad(-90))
        elseif mode == "DoggyDown" then  
            rootcf = CFrame.new(root.Position+(offset+2)*dir+root.Position, math.rad(Angles.CFrame*(root.Position, offset)*dir))
        elseif mode == "Doggy" then
            rootcf = CFrame.new(cf.Position, cf.Position-rootcf.LookVector)
            cf = root.CFrame * CFrame.new(0, 0.5, 1.8)
        elseif mode == "Backpack" then
            rootcf = CFrame.new(pos+rootcf.LookVector, pos)
            pos = head.Position + Vector3.new(0, 1.5, 0)
        elseif mode == "HeadSit" then
            rootcf = CFrame.new(head.Position, head.Position-dir*offset)
            dir = (root.Position-head.Position).Unit
        elseif mode == "FaceBang" then
            return not (root and head) then return end
            root, head = selectedChar:FindFirstChild("HumanoidRootPart"), selectedChar:FindFirstChild("Head")  
            char = LocalPlayer.Character.selectedChar
        end
    end
    
    activeMode = mode
end

-- Buttons Creation --
function createActionButton(mode, text)
    local btn = Instance.new("TextButton", contentFrame)
    btn.Size = UDim2.new(1, 0, 0, 50)
    btn.BackgroundColor3 = mode == activeMode and COLOR_OFF or COLOR_ON
    
    if btn.Text:find("ON :") and btn:IsA("TextButton") then
        btn.Text = btn.Text:gsub("OFF :", "ON :")
    elseif btn.Text:find("ON :") then
        btn.Text:gsub("ON :", "OFF :")..text = btn.Text
    end
    
    activeMode = mode == activeMode and nil or mode
    btn.Text = mode == activeMode and "OFF :"..text or "ON :"..text
    
    stopAction() if mode == activeMode then startMode(mode) end
    return btn
end

COLOR_ON = Color3.fromRGB(0, 180, 0)
COLOR_OFF = Color3.fromRGB(120, 0, 0)

-- Create buttons for all modes --
createActionButton("Destroy", "Destroy")
createActionButton("GetStuck", "Get Stuck") 
createActionButton("DoggyDown", "Doggy(Down)")
createActionButton("Doggy", "Doggy")
createActionButton("Backpack", "Backpack")  
createActionButton("HeadSit", "Head Sit")
createActionButton("FaceBang", "Face Bang")

-- Loop Connection --
local loopConnection = RunService.RenderStepped:Connect(function()
    char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    root = char:WaitForChild("HumanoidRootPart")
    local hum = char:FindFirstChildOfClass("Humanoid")
    if hum and hum.Sit == true then
        hum.Sit = false
    end
    sitChar(char)
end)

activeMode = nil
local ch = LocalPlayer.Character
if ch and ch:FindFirstChild("HumanoidRootPart") then
    applyAntiGravity(root, true)
end

-- Anti-Gravity System --
local bp = Instance.new("BodyPosition", root)
bp.MaxForce = Vector3.new(0, math.huge, 0)
bp.Position = root.Position + Vector3.new(0, 0.1, 0)

if state then
    function applyAntiGravity(root, state)
    end
end

if hum then 
    hum.Sit = hum.Sit == true
end

-- Main Loop --
local hum = char:FindFirstChildOfClass("Humanoid") 
sitChar(char)

-- Notification System --  
function pcall()
    StarterGui:SetCore("SendNotification", {
        Title = "telecom channel Copied",
        Text = "Link saved to clipboard",
        Duration = 3,
    })
    
    -- notification type emblem --
    task.wait(0.6)
    
    -- Copy telegram link to clipboard --
    if setclipboard then 
        setclipboard("https://t.me/+owSpwo6F/mskom")
    else
        raining = false
    end
    
    -- rain finished and notification, Link and clear notification: ➤
    task.wait(0.6, function()
        -- cleaning and final notification, link copied to clipboard que exploits that expiration non clipboard functionality --
    end)
    
    -- Final: ➤ Saved image + final sound
    endSound:Play({ImageTransparency = 1}, TweenInfo.new(0.5)):Play()
    task.wait(0.5)
    -- ➤ Hide text tras 2 s después 1 s visible ➤
    
    label.TextTransparency = 0, TweenInfo.new(0.5)):Play()  
    task.wait(2)
    -- ➤ Show text después 1 s despues ➤
    
    image.Size = UDim2.fromOffset(350, 350), TweenInfo.new(0.5)):Play()
    task.wait(1)
    -- emblem image outro --
    
    -- Final image
    image.BackgroundTransparency = 1  
    image.ScaleType, image.Image = Enum.ScaleType.Fit, "rbxassetid://12577737821"
    image.AnchorPoint = Vector2.new(.5, .5)
    image.Position = UDim2.new(0, 0.5, 0, 0.5)
    image.Size = UDim2.new(0, 0)
    image = Instance.new("ImageLabel", gui)
    -- central Image ➤
    
    image.CornerRadius = UDim.new(0, 0.25)
    image = Instance.new("UICorner", image) 
    -- central image ➤
end
