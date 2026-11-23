-- TanPhat Hub - Fruit Kaitun
local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local FolderName = "TanPhat Hub"
local SaveFileName = LocalPlayer.Name .. "-Kaitun.json"

---------------------------------------------------------------
-- STATE & SAVES
---------------------------------------------------------------
local Settings = {}
local function SaveSettings(key, val)
    Settings[key] = val
    if not isfolder(FolderName) then makefolder(FolderName) end
    pcall(writefile, FolderName .. "/" .. SaveFileName, HttpService:JSONEncode(Settings))
end

local function ReadSettings()
    local ok, res = pcall(function()
        if not isfolder(FolderName) then makefolder(FolderName) end
        return HttpService:JSONDecode(readfile(FolderName .. "/" .. SaveFileName))
    end)
    if ok and res then return res end
    return {}
end

Settings = ReadSettings()

---------------------------------------------------------------
-- CORE LOGIC (from original file)
---------------------------------------------------------------
local function GetCharacter()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    return char, char:FindFirstChild("HumanoidRootPart"), char:FindFirstChildOfClass("Humanoid")
end

-- Replicating the BackupTween logic from the original script
local function BackupTween(targetCFrame, duration)
    local char, hrp, hum = GetCharacter()
    if not hrp or not hum then return end
    hum.WalkSpeed = 0
    local tween = TweenService:Create(hrp, TweenInfo.new(duration or 15, Enum.EasingStyle.Linear), {CFrame = targetCFrame})
    tween:Play()
    tween.Completed:Wait()
    hum.WalkSpeed = 16
end

-- Replicating Fruit detection
local function GetFruits()
    local found = {}
    local fruitFolder = workspace:FindFirstChild("Fruits")
    if not fruitFolder then return found end
    
    for _, obj in pairs(fruitFolder:GetChildren()) do
        if obj:IsA("Tool") or obj:IsA("Model") then
            if string.find(obj.Name, "Fruit") or obj:FindFirstChild("Handle") then
                table.insert(found, obj)
            end
        end
    end
    return found
end

local function GetRandomServer()
    local request2 = syn and syn.request or http_request
    if not request2 then return nil end
    
    local url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local ok, res = pcall(function()
        return request2({Url = url, Method = "GET", Headers = {["User-Agent"] = "Mozilla/5.0"}})
    end)
    
    if ok and res and res.StatusCode == 200 then
        local data = HttpService:JSONDecode(res.Body)
        if data and data.data then
            for _, srv in ipairs(data.data) do
                -- Check cache to make sure we don't rejoin servers we already cleared
                local cache = Settings["ClearedServers"] or {}
                local alreadyCleared = false
                for _, clearedId in ipairs(cache) do
                    if clearedId == srv.id then alreadyCleared = true break end
                end
                
                if not alreadyCleared and srv.playing < srv.maxPlayers then
                    return srv.id
                end
            end
        end
    end
    return nil
end

---------------------------------------------------------------
-- KAITUN LOOP
---------------------------------------------------------------
local KaitunActive = false

local function RunKaitun()
    if KaitunActive then return end
    KaitunActive = true
    
    spawn(function()
        while KaitunActive do
            task.wait(2)
            local fruits = GetFruits()
            
            if #fruits > 0 then
                -- Pick the first fruit found
                local target = fruits[1]
                local handle = target:FindFirstChild("Handle") or target:FindFirstChild("HumanoidRootPart") or target.PrimaryPart
                
                if handle then
                    print("[TanPhat Hub] Found fruit: " .. target.Name .. ". Tweening...")
                    -- Tween to 3 studs above the fruit
                    local targetPos = handle.CFrame * CFrame.new(0, 3, 0)
                    BackupTween(targetPos, 10)
                    
                    -- Wait for pickup (Roblox auto-collects if you touch it)
                    task.wait(2)
                end
            else
                -- No fruits found, mark server as cleared and hop
                print("[TanPhat Hub] No fruits found. Saving JobId and hopping...")
                local cache = Settings["ClearedServers"] or {}
                table.insert(cache, game.JobId)
                -- Keep cache small so it doesn't bloat over time
                if #cache > 50 then table.remove(cache, 1) end
                SaveSettings("ClearedServers", cache)
                
                -- Hop
                local nextServer = GetRandomServer()
                if nextServer then
                    print("[TanPhat Hub] Hopping to: " .. nextServer)
                    pcall(function()
                        TeleportService:TeleportToPlaceInstance(game.PlaceId, nextServer, LocalPlayer)
                    end)
                    task.wait(5) -- wait for teleport to initialize
                else
                    print("[TanPhat Hub] No valid servers found. Waiting 30s...")
                    task.wait(30)
                end
            end
        end
    end)
end

---------------------------------------------------------------
-- UI (Rayfield fallback)
---------------------------------------------------------------
if not getgenv().Library then
    loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
end
local Rayfield = getgenv().Library

local Window = Rayfield:CreateWindow({
    Name = "TanPhat Hub",
    LoadingTitle = "TanPhat Hub",
    LoadingSubtitle = "Fruit Kaitun",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "TanPhat Hub",
        FileName = "KaitunConfig"
    },
    KeySystem = false
})

local MainTab = Window:CreateTab("Kaitun", 4483362458)
local MainSection = MainTab:CreateSection("Fruit Hunter")

MainTab:CreateToggle({
    Name = "Enable Fruit Kaitun",
    CurrentValue = false,
    Flag = "KaitunToggle",
    Callback = function(state)
        KaitunActive = state
        if state then
            RunKaitun()
        else
            print("[TanPhat Hub] Kaitun Paused.")
        end
    end
})

MainTab:CreateButton({
    Name = "Clear Cleared-Servers Cache",
    Callback = function()
        Settings["ClearedServers"] = {}
        SaveSettings("ClearedServers", {})
        Rayfield:Notify({
            Title = "TanPhat Hub",
            Content = "Server cache cleared.",
            Duration = 3,
            Image = 4483362458
        })
    end
})