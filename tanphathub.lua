-- Banana Cat Hub.lua
-- Cleaned: no whitelist/key/hwid, no boot-trace system, no loading UI.
-- UI + functional buttons only.

local Features = {}
local HttpService
local Runtime = {}

---------------------------------------------------------------
-- SETTINGS
---------------------------------------------------------------
function Features.initializeSettings()
    Settings = {}
    HttpService = game:GetService("HttpService")
    FolderName = "Banana Cat Hub"
    SaveFileName = game.Players.LocalPlayer.Name .. "-BloxFruitBNNC.json"

    SaveSettings = function(key, subkey, value)
        if subkey ~= nil then
            Settings[key] = Settings[key] or {}
            Settings[key][subkey] = value
        elseif key ~= nil then
            Settings[key] = subkey
        end
        if not isfolder(FolderName) then makefolder(FolderName) end
        writefile(FolderName .. "/" .. SaveFileName, HttpService:JSONEncode(Settings))
    end
end

function Features.normalizeSettings()
    function ReadSetting()
        local ok, res = pcall(function()
            if not isfolder(FolderName) then makefolder(FolderName) end
            return HttpService:JSONDecode(readfile(FolderName .. "/" .. SaveFileName))
        end)
        if ok then return res end
        SaveSettings()
        return ReadSetting()
    end

    Settings = ReadSetting()
    getgenv().Settings = Settings
    return Settings
end

---------------------------------------------------------------
-- SHOP PAGE
---------------------------------------------------------------
function Features.initializeShopPage()
    PageShop = Main.CreatePage({Page_Name = "Shop", Page_Title = "Shop"})
    getgenv().Options = result2.Options
    SectionShopMisc = PageShop.CreateSection("Misc Shop")

    Remote = function(a, b, c)
        if not a and c then
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer(b, true)
            return
        end
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(a, b, c)
    end
    getgenv().tablefruitausea3 = {}
    whitelistedfruit = {}
    TableDevilFruit = {}
end

---------------------------------------------------------------
-- FRUIT / WORLD DATA
---------------------------------------------------------------
function Features.loadFruitAndWorldData()
    getgenv().tablefruitausea3["Dragon (East)-Dragon (East)"] = 15000000
    getgenv().tablefruitausea3["Dragon (West)-Dragon (West)"] = 15000000
    ItemId = require(game.ReplicatedStorage.Economy.ItemId)

    function CheckFruitReal(name)
        for _, f in next, game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits", false) do
            if f.Name == name then return f end
        end
    end

    SkinFruit = {}
    NameWorldMaterials = {
        Ectoplasm = {[getgenv().CheckPlaceId2] = "TravelDressrosa"},
        ["Magma Ore"] = {[getgenv().CheckPlaceId2] = "TravelDressrosa"},
        Leather = {[getgenv().CheckPlaceId] = "TravelZou"},
        ["Scrap Metal"] = {[getgenv().CheckPlaceId] = "TravelZou"},
        ["Angel Wings"] = {[getgenv().CheckPlaceId3] = "TravelMain"},
        ["Fish Tail"] = {[getgenv().CheckPlaceId] = "TravelZou"},
        ["Radioactive Material"] = {[getgenv().CheckPlaceId2] = "TravelDressrosa"},
        ["Vampire Fang"] = {[getgenv().CheckPlaceId2] = "TravelDressrosa"},
        ["Mystic Droplet"] = {[getgenv().CheckPlaceId2] = "TravelDressrosa"},
        ["Mini Tusk"] = {[getgenv().CheckPlaceId] = "TravelZou"},
        Gunpowder = {[getgenv().CheckPlaceId] = "TravelZou"},
        ["Demonic Wisp"] = {[getgenv().CheckPlaceId] = "TravelZou"},
        ["Dragon Scale"] = {[getgenv().CheckPlaceId] = "TravelZou"},
        ["Conjured Cocoa"] = {[getgenv().CheckPlaceId] = "TravelZou"},
        Bones = {[getgenv().CheckPlaceId] = "TravelZou"},
    }
    NameMaterials = {
        Ectoplasm = {"Ship Deckhand","Ship Engineer","Ship Steward","Ship Officer","Cursed Captain"},
        ["Magma Ore"] = {"Lava Pirate","Magma Ninja"},
        Leather = {"Jungle Pirate","Musketeer Pirate"},
        ["Scrap Metal"] = {"Jungle Pirate"},
        ["Angel Wings"] = {"God's Guard","Shanda","Royal Squad","Royal Soldier"},
        ["Fish Tail"] = {"Fishman Raider","Fishman Captain"},
        ["Radioactive Material"] = {"Factory Staff"},
        ["Vampire Fang"] = {"Vampire"},
        ["Mystic Droplet"] = {"Sea Soldier","Water Fighter"},
        ["Mini Tusk"] = {"Mythological Pirate"},
        Gunpowder = {"Pistol Billionaire"},
        ["Demonic Wisp"] = {"Demonic Soul"},
        ["Dragon Scale"] = {"Dragon Crew Archer","Dragon Crew Warrior"},
        ["Conjured Cocoa"] = {"Cocoa Warrior","Chocolate Bar Battler"},
        Bones = {"Reborn Skeleton","Demonic Soul","Living Zombie","Posessed Mummy"},
    }
    TableMaterials = {}
end

---------------------------------------------------------------
-- SHOP OPTIONS
---------------------------------------------------------------
function Features.initializeShopOptions()
    SectionShopMisc.CreateButton({Title = "Redeem Code"}, function()
        local codes = {
            "SUB2GAMERROBOT_EXP1","StrawHatMaine","Sub2OfficialNoobie","THEGREATACE",
            "SUB2NOOBMASTER123","Sub2Daigrock","Axiore","TantaiGaming","Bluxxy",
            "STRAWHATMAINE","3BVISITS","UPD16","Sub2Fer999","Enyu_is_Pro","JCWK",
            "StarcodeHEO","MagicBUS","KittGaming","Sub2CaptainMaui","CODESLIDE",
            "NOOB2ADMIN","NOEXPLOIT","FIGHT4FRUIT","EARN_FRUITS","EXP_5B",
        }
        for _, code in ipairs(codes) do
            game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(code)
        end
    end)
    SectionShopMisc.CreateButton({Title = "Teleport Old World"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({"TravelMain"}))
    end)
    SectionShopMisc.CreateButton({Title = "Teleport New World"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({"TravelDressrosa"}))
    end)
    SectionShopMisc.CreateButton({Title = "Teleport Third Sea"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack({"TravelZou"}))
    end)
    SectionShopMisc.CreateButton({Title = "Buy Dual Flintlock"}, function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Dual Flintlock")
    end)
    SectionShopMisc.CreateButton({Title = "Buy Cannon"}, function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BuyItem", "Cannon")
    end)
    SectionShopMisc.CreateButton({Title = "Reroll Race"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2")
    end)
    SectionShopMisc.CreateButton({Title = "Reset Stats"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2")
    end)
    SectionShopMisc.CreateButton({Title = "Buy Race Cyborg"}, function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CyborgTrainer", "Buy")
    end)
    SectionShopMisc.CreateButton({Title = "Buy Race Ghoul"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "BuyCheck", 4)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm", "Change", 4)
    end)

    SectionShopFighting = PageShop.CreateSection("Fighting Shop")
    Runtime.data7 = {}
    getgenv().notsave = Runtime.data7
    Runtime.data = {
        BuyBlackLeg = "Dark Step Teacher",
        BuySuperhuman = "Martial Arts Master",
        BuySharkmanKarate = "Sharkman Teacher",
        DragonClaw = "Sabi",
        BuyDragonTalon = "Uzoth",
        BuyElectro = "Mad Scientist",
        BuyFishmanKarate = "Water Kung-fu Teacher",
        BuyDeathStep = "Phoeyu, the Reformed",
        BuyGodhuman = "Ancient Monk",
        BuyElectricClaw = "Previous Hero",
        BuySanguineArt = "Shafi",
    }
    NPCManager = require(game:GetService("ReplicatedStorage").NPCManager)

    function DetectNpc(name)
        local lp = game:GetService("Players").LocalPlayer
        local hrp = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
        if not hrp then return end
        local bestDist, best = math.huge, nil
        for _, root in next, {workspace.NPCs, game:GetService("ReplicatedStorage").NPCs} do
            for _, npc in next, root:GetChildren() do
                if npc:GetAttribute("NPCLoaded") and npc:GetAttribute("NPCReady")
                    and npc.Name == name and npc:FindFirstChild("HumanoidRootPart") then
                    local d = (hrp.Position - npc.HumanoidRootPart.Position).Magnitude
                    if d < bestDist then bestDist, best = d, npc end
                end
            end
        end
        if not best then
            local entry = NPCManager.getNPCsByName(name)[1]
            return entry and entry._modelState and entry._modelState._instance
        end
        return best, bestDist
    end

    local function makeToggler(key, npcKey, buyMethod, customBuy)
        return function(enabled)
            Runtime.data7[key] = enabled
            if not enabled then return end
            spawn(function()
                while Runtime.data7[key] do
                    task.wait()
                    pcall(function()
                        local npc = DetectNpc(Runtime.data[npcKey])
                        if npc and npc.HumanoidRootPart then
                            local lp = game:GetService("Players").LocalPlayer
                            if lp:DistanceFromCharacter(npc.HumanoidRootPart.Position) < 8 then
                                if customBuy then
                                    customBuy()
                                else
                                    Remote(buyMethod)
                                end
                            end
                            if getgenv().BackupTween then
                                getgenv().BackupTween(npc.HumanoidRootPart.CFrame * CFrame.new(0, 4, 4))
                            end
                        end
                    end)
                end
            end)
        end
    end

    SectionShopFighting.CreateToggle({Title = "Black Leg", Default = false},
        makeToggler("Black Leg", "BuyBlackLeg", "BuyBlackLeg"))
    SectionShopFighting.CreateToggle({Title = "Fishman Karate", Default = false},
        makeToggler("Fishman Karate", "BuyFishmanKarate", "BuyFishmanKarate"))
    SectionShopFighting.CreateToggle({Title = "Electro", Default = false},
        makeToggler("Electro", "BuyElectro", "BuyElectro"))
    SectionShopFighting.CreateToggle({Title = "Dragon Breath", Default = false},
        makeToggler("DragonClaw", "DragonClaw", nil, function()
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
        end))
    SectionShopFighting.CreateToggle({Title = "SuperHuman", Default = false},
        makeToggler("SuperHuman", "BuySuperhuman", "BuySuperhuman"))
    SectionShopFighting.CreateToggle({Title = "Death Step", Default = false},
        makeToggler("Death Step", "BuyDeathStep", "BuyDeathStep"))
    SectionShopFighting.CreateToggle({Title = "Sharkman Karate", Default = false},
        makeToggler("Sharkman Karate", "BuySharkmanKarate", "BuySharkmanKarate"))
    SectionShopFighting.CreateToggle({Title = "Electric Claw", Default = false},
        makeToggler("Electric Claw", "BuyElectricClaw", "BuyElectricClaw"))
    SectionShopFighting.CreateToggle({Title = "Dragon Talon", Default = false},
        makeToggler("Dragon Talon", "BuyDragonTalon", "BuyDragonTalon"))
    SectionShopFighting.CreateToggle({Title = "God Human", Default = false},
        makeToggler("God Human", "BuyGodhuman", "BuyGodhuman"))
    SectionShopFighting.CreateToggle({Title = "Sanguine Art", Default = false},
        makeToggler("Sanguine Art", "BuySanguineArt", "BuySanguineArt"))

    SectionShopAbilities = PageShop.CreateSection("Abilities Shop")
    SectionShopAbilities.CreateButton({Title = "Skyjump [ $10,000 Beli ]"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
    end)
    SectionShopAbilities.CreateButton({Title = "Buso Haki [ $25,000 Beli ]"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
    end)
    SectionShopAbilities.CreateButton({Title = "Observation Haki [ $750,000 Beli ]"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy")
    end)
    SectionShopAbilities.CreateButton({Title = "Soru [ $100,000 Beli ]"}, function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
    end)
end

---------------------------------------------------------------
-- STATUS + SERVER PAGE
---------------------------------------------------------------
function Features.initializeStatusAndServerPages()
    PageStatusAndServer = Main.CreatePage({Page_Name = "Status And Server", Page_Title = "Status And Server"})
    SectionStatus = PageStatusAndServer.CreateSection("Status")
    TimerLabel = SectionStatus.CreateLabel({Title = "Timer"})
    TimerServerLabel = SectionStatus.CreateLabel({Title = "Timer Server"})
    NextTimerServerLabel = SectionStatus.CreateLabel({Title = "Next Spawn Fist of Darkness / God's Chalice"})
    StatusEliteHunter = SectionStatus.CreateLabel({Title = "Elite"})
    StatusTyrant = SectionStatus.CreateLabel({Title = "Eyes Summon Tyrant"})
    StatusKatakuri = SectionStatus.CreateLabel({Title = "Summon Katakuri"})
    Statusspy = SectionStatus.CreateLabel({Title = "Status SPY"})
    StatusMirage = SectionStatus.CreateLabel({Title = "Mirage"})
    StatusPrehistoricIsland = SectionStatus.CreateLabel({Title = "Prehistoric Island"})
    StatusFrozenDimension = SectionStatus.CreateLabel({Title = "Frozen Dimension"})
    StatusMoon = SectionStatus.CreateLabel({Title = "Moon"})
    StatusGear = SectionStatus.CreateLabel({Title = "Ancient One Status"})
    SectionServer = PageStatusAndServer.CreateSection("Server")

    SectionServer.CreateButton({Title = "Open GUI Server Browser (Low Player & Ping)"}, function()
        local HttpSvc = game:GetService("HttpService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local placeId = game.PlaceId
        local request2 = syn and syn.request or http_request
        if not request2 then
            warn("[ServerBrowser] No HTTP request function available.")
            return
        end
        if game.CoreGui:FindFirstChild("SB_UI") then game.CoreGui.SB_UI:Destroy() end

        local CFG = {RETRY_MAX = 4, RETRY_BASE = 2, RETRY_JITTER = 5, RATE_COOLDOWN = 30, MAX_SHOW = 50}
        local CLR = {
            BG = Color3.fromRGB(10, 11, 16), SURFACE = Color3.fromRGB(13, 14, 20),
            ROW = Color3.fromRGB(16, 17, 26), BORDER = Color3.fromRGB(28, 31, 48),
            CYAN = Color3.fromRGB(0, 212, 255), CYAN_DIM = Color3.fromRGB(0, 80, 120),
            GREEN = Color3.fromRGB(0, 204, 102), AMBER = Color3.fromRGB(255, 170, 0),
            RED = Color3.fromRGB(255, 68, 85), TEXT_PRI = Color3.fromRGB(232, 234, 240),
            TEXT_SEC = Color3.fromRGB(80, 90, 120), TEXT_DIM = Color3.fromRGB(45, 52, 82),
        }

        local function mk(cls, props, parent)
            local inst = Instance.new(cls)
            for k, v in pairs(props or {}) do inst[k] = v end
            if parent then inst.Parent = parent end
            return inst
        end
        local function corner(r, parent) return mk("UICorner", {CornerRadius = UDim.new(0, r)}, parent) end
        local function stroke(w, c, t, parent) return mk("UIStroke", {Thickness = w, Color = c, Transparency = t or 0}, parent) end
        local function tween(obj, props, dur, style, dir)
            TweenService:Create(obj, TweenInfo.new(dur or 0.15, style or Enum.EasingStyle.Quad, dir or Enum.EasingDirection.Out), props):Play()
        end
        local function hover(btn, base, hov)
            btn.MouseEnter:Connect(function() tween(btn, {BackgroundColor3 = hov}) end)
            btn.MouseLeave:Connect(function() tween(btn, {BackgroundColor3 = base}) end)
        end

        local ScreenGui = mk("ScreenGui", {
            Name = "SB_UI", ResetOnSpawn = false,
            ZIndexBehavior = Enum.ZIndexBehavior.Sibling, IgnoreGuiInset = true,
        }, game.CoreGui)

        local Win = mk("Frame", {
            Name = "Window", Size = UDim2.new(0, 580, 0, 500),
            Position = UDim2.new(0.5, -290, 0.5, -250),
            BackgroundColor3 = CLR.SURFACE, BorderSizePixel = 0, ClipsDescendants = true,
        }, ScreenGui)
        corner(4, Win); stroke(1, CLR.BORDER, 0, Win)

        local dragging, dragStart, startPos
        Win.InputBegan:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 then
                dragging = true; dragStart = i.Position; startPos = Win.Position
            end
        end)
        Win.InputEnded:Connect(function(i)
            if i.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
        end)
        game:GetService("UserInputService").InputChanged:Connect(function(i)
            if dragging and i.UserInputType == Enum.UserInputType.MouseMovement then
                local d = i.Position - dragStart
                Win.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + d.X, startPos.Y.Scale, startPos.Y.Offset + d.Y)
            end
        end)

        local Header = mk("Frame", {Size = UDim2.new(1, 0, 0, 52), BackgroundColor3 = CLR.BG, BorderSizePixel = 0}, Win)
        mk("TextLabel", {
            Size = UDim2.new(0, 300, 0, 18), Position = UDim2.new(0, 18, 0, 9),
            BackgroundTransparency = 1, Text = "SERVER BROWSER",
            TextColor3 = CLR.TEXT_PRI, Font = Enum.Font.GothamBold, TextSize = 13,
            TextXAlignment = Enum.TextXAlignment.Left,
        }, Header)
        mk("TextLabel", {
            Size = UDim2.new(0, 360, 0, 14), Position = UDim2.new(0, 18, 0, 30),
            BackgroundTransparency = 1, Text = "CACHE PAGE  ·  LOAD MORE  ·  LOWEST PLAYER / PING",
            TextColor3 = CLR.TEXT_DIM, Font = Enum.Font.Gotham, TextSize = 10,
            TextXAlignment = Enum.TextXAlignment.Left,
        }, Header)
        local CloseBtn = mk("TextButton", {
            Size = UDim2.new(0, 28, 0, 28), Position = UDim2.new(1, -42, 0, 12),
            BackgroundColor3 = Color3.fromRGB(26, 13, 13), BorderSizePixel = 0,
            Text = "X", TextColor3 = CLR.RED, Font = Enum.Font.GothamBold, TextSize = 11,
        }, Header)
        corner(3, CloseBtn); hover(CloseBtn, Color3.fromRGB(26, 13, 13), Color3.fromRGB(60, 20, 20))
        CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)

        local Toolbar = mk("Frame", {
            Size = UDim2.new(1, 0, 0, 42), Position = UDim2.new(0, 0, 0, 52),
            BackgroundColor3 = Color3.fromRGB(11, 12, 17), BorderSizePixel = 0,
        }, Win)
        local StatusDot = mk("Frame", {
            Size = UDim2.new(0, 6, 0, 6), Position = UDim2.new(0, 14, 0.5, -3),
            BackgroundColor3 = CLR.TEXT_DIM, BorderSizePixel = 0,
        }, Toolbar)
        corner(99, StatusDot)
        local StatusLbl = mk("TextLabel", {
            Size = UDim2.new(1, -300, 1, 0), Position = UDim2.new(0, 26, 0, 0),
            BackgroundTransparency = 1, Text = "READY",
            TextColor3 = CLR.TEXT_SEC, Font = Enum.Font.Gotham, TextSize = 11,
            TextXAlignment = Enum.TextXAlignment.Left,
        }, Toolbar)
        local RefreshBtn = mk("TextButton", {
            Size = UDim2.new(0, 82, 0, 26), Position = UDim2.new(1, -270, 0.5, -13),
            BackgroundColor3 = Color3.fromRGB(14, 22, 40), BorderSizePixel = 0,
            Text = "REFRESH", TextColor3 = Color3.fromRGB(100, 140, 200),
            Font = Enum.Font.GothamBold, TextSize = 10,
        }, Toolbar)
        corner(3, RefreshBtn); hover(RefreshBtn, Color3.fromRGB(14, 22, 40), Color3.fromRGB(10, 30, 55))
        local LoadBtn = mk("TextButton", {
            Size = UDim2.new(0, 82, 0, 26), Position = UDim2.new(1, -182, 0.5, -13),
            BackgroundColor3 = Color3.fromRGB(16, 32, 24), BorderSizePixel = 0,
            Text = "LOAD MORE", TextColor3 = CLR.GREEN,
            Font = Enum.Font.GothamBold, TextSize = 10,
        }, Toolbar)
        corner(3, LoadBtn); hover(LoadBtn, Color3.fromRGB(16, 32, 24), Color3.fromRGB(10, 48, 28))
        local ResetBtn = mk("TextButton", {
            Size = UDim2.new(0, 82, 0, 26), Position = UDim2.new(1, -94, 0.5, -13),
            BackgroundColor3 = Color3.fromRGB(38, 18, 18), BorderSizePixel = 0,
            Text = "RESET", TextColor3 = CLR.RED,
            Font = Enum.Font.GothamBold, TextSize = 10,
        }, Toolbar)
        corner(3, ResetBtn); hover(ResetBtn, Color3.fromRGB(38, 18, 18), Color3.fromRGB(60, 20, 20))

        local ColHead = mk("Frame", {
            Size = UDim2.new(1, 0, 0, 24), Position = UDim2.new(0, 0, 0, 94),
            BackgroundColor3 = Color3.fromRGB(11, 12, 17), BorderSizePixel = 0,
        }, Win)
        for _, c in ipairs({{"#", 14, 28}, {"JOB ID", 42, 170}, {"PLAYERS", 220, 80}, {"PING", 310, 60}}) do
            mk("TextLabel", {
                Size = UDim2.new(0, c[3], 1, 0), Position = UDim2.new(0, c[2], 0, 0),
                BackgroundTransparency = 1, Text = c[1], TextColor3 = CLR.TEXT_DIM,
                Font = Enum.Font.GothamBold, TextSize = 9,
                TextXAlignment = Enum.TextXAlignment.Left,
            }, ColHead)
        end

        local Scroll = mk("ScrollingFrame", {
            Size = UDim2.new(1, -8, 1, -172), Position = UDim2.new(0, 4, 0, 118),
            BackgroundTransparency = 1, BorderSizePixel = 0,
            ScrollBarThickness = 3, ScrollBarImageColor3 = CLR.CYAN_DIM,
            CanvasSize = UDim2.new(0, 0, 0, 0),
        }, Win)
        mk("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, Scroll)
        mk("UIPadding", {
            PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 4),
            PaddingRight = UDim.new(0, 4), PaddingBottom = UDim.new(0, 6),
        }, Scroll)

        local Footer = mk("Frame", {
            Size = UDim2.new(1, 0, 0, 30), Position = UDim2.new(0, 0, 1, -30),
            BackgroundColor3 = Color3.fromRGB(10, 11, 15), BorderSizePixel = 0,
        }, Win)
        mk("TextLabel", {
            Size = UDim2.new(0.5, 0, 1, 0), Position = UDim2.new(0, 14, 0, 0),
            BackgroundTransparency = 1, Text = "PLACE · " .. tostring(placeId),
            TextColor3 = CLR.TEXT_DIM, Font = Enum.Font.Gotham, TextSize = 9,
            TextXAlignment = Enum.TextXAlignment.Left,
        }, Footer)
        local CountLbl = mk("TextLabel", {
            Size = UDim2.new(0.5, -14, 1, 0), Position = UDim2.new(0.5, 0, 0, 0),
            BackgroundTransparency = 1, Text = "SHOWING 0 / 0",
            TextColor3 = CLR.TEXT_DIM, Font = Enum.Font.Gotham, TextSize = 9,
            TextXAlignment = Enum.TextXAlignment.Right,
        }, Footer)

        local LoadOverlay = mk("Frame", {
            Size = UDim2.new(1, 0, 1, -52), Position = UDim2.new(0, 0, 0, 52),
            BackgroundColor3 = CLR.SURFACE, BackgroundTransparency = 0.05,
            ZIndex = 20, Visible = false,
        }, Win)
        local LoadLbl = mk("TextLabel", {
            Size = UDim2.new(1, -20, 0, 36), Position = UDim2.new(0, 10, 0.5, 10),
            BackgroundTransparency = 1, Text = "SCANNING SERVERS...",
            TextColor3 = CLR.CYAN, Font = Enum.Font.GothamBold, TextSize = 10,
            TextXAlignment = Enum.TextXAlignment.Center, TextWrapped = true, ZIndex = 21,
        }, LoadOverlay)

        local RateBanner = mk("Frame", {
            Size = UDim2.new(1, -8, 0, 28), Position = UDim2.new(0, 4, 0, 118),
            BackgroundColor3 = Color3.fromRGB(38, 24, 6), BorderSizePixel = 0,
            ZIndex = 15, Visible = false,
        }, Win)
        corner(3, RateBanner); stroke(1, CLR.AMBER, 0.4, RateBanner)
        local RateLbl = mk("TextLabel", {
            Size = UDim2.new(1, -12, 1, 0), Position = UDim2.new(0, 6, 0, 0),
            BackgroundTransparency = 1, Text = "⏳ 429 RATE LIMITED — WAITING...",
            TextColor3 = CLR.AMBER, Font = Enum.Font.GothamBold, TextSize = 10,
            TextXAlignment = Enum.TextXAlignment.Center, ZIndex = 16,
        }, RateBanner)

        local function showRate(text)
            RateLbl.Text = text
            RateBanner.Visible = true
            Scroll.Position = UDim2.new(0, 4, 0, 150)
            Scroll.Size = UDim2.new(1, -8, 1, -204)
        end
        local function hideRate()
            RateBanner.Visible = false
            Scroll.Position = UDim2.new(0, 4, 0, 118)
            Scroll.Size = UDim2.new(1, -8, 1, -172)
        end

        local Toast = mk("Frame", {
            Size = UDim2.new(0, 360, 0, 36), Position = UDim2.new(0.5, -180, 1, -50),
            BackgroundColor3 = Color3.fromRGB(10, 26, 40), BorderSizePixel = 0,
            ZIndex = 30, Visible = false,
        }, Win)
        corner(3, Toast)
        local ToastLbl = mk("TextLabel", {
            Size = UDim2.new(1, -12, 1, 0), Position = UDim2.new(0, 6, 0, 0),
            BackgroundTransparency = 1, Text = "READY",
            TextColor3 = CLR.CYAN, Font = Enum.Font.GothamBold,
            TextSize = 10, TextWrapped = true, ZIndex = 31,
        }, Toast)
        local toastThread
        local function toast(text, color)
            if toastThread then task.cancel(toastThread) end
            ToastLbl.Text = text
            ToastLbl.TextColor3 = color or CLR.CYAN
            Toast.Visible = true
            toastThread = task.delay(3.5, function() Toast.Visible = false end)
        end
        local function setStatus(text, color)
            StatusLbl.Text = text
            StatusDot.BackgroundColor3 = color or CLR.TEXT_DIM
        end

        local state = {servers = {}, cursor = nil, finished = false, pages = 0}

        local function fetchPage(cursor)
            local url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=Asc&limit=100"
            if cursor then url = url .. "&cursor=" .. cursor end
            local attempt = 0
            while attempt <= CFG.RETRY_MAX do
                local ok, res = pcall(function()
                    return request2({
                        Url = url, Method = "GET",
                        Headers = {["User-Agent"] = "Mozilla/5.0", Accept = "application/json"},
                    })
                end)
                if ok and res and res.StatusCode == 200 and res.Body and res.Body ~= "" then
                    local ok2, decoded = pcall(HttpSvc.JSONDecode, HttpSvc, res.Body)
                    if ok2 and decoded then return decoded, nil end
                    return nil, "INVALID_JSON"
                end
                if ok and res and res.StatusCode == 429 then
                    attempt = attempt + 1
                    if attempt > CFG.RETRY_MAX then return nil, "RATE_LIMIT" end
                    local waitTime = (attempt >= 2 and CFG.RATE_COOLDOWN or math.pow(CFG.RETRY_BASE, attempt)) + math.random() * CFG.RETRY_JITTER
                    showRate(("⏳ 429 — RETRYING IN %.0fs (%d/%d)"):format(waitTime, attempt, CFG.RETRY_MAX))
                    setStatus("RATE LIMITED — WAITING " .. math.floor(waitTime) .. "s", CLR.AMBER)
                    task.wait(waitTime)
                    hideRate()
                else
                    return nil, "NETWORK_ERROR"
                end
            end
            return nil, "RATE_LIMIT"
        end

        local shown = 0
        local function updateCount()
            CountLbl.Text = ("SHOWING %d / %d"):format(shown, #state.servers)
        end

        local function renderRow(index, data)
            local row = mk("Frame", {
                Size = UDim2.new(1, 0, 0, 30),
                BackgroundColor3 = CLR.ROW, BorderSizePixel = 0, LayoutOrder = index,
            }, Scroll)
            corner(3, row)
            mk("TextLabel", {
                Size = UDim2.new(0, 28, 1, 0), Position = UDim2.new(0, 14, 0, 0),
                BackgroundTransparency = 1, Text = tostring(index),
                TextColor3 = CLR.TEXT_SEC, Font = Enum.Font.Gotham, TextSize = 10,
                TextXAlignment = Enum.TextXAlignment.Left,
            }, row)
            mk("TextLabel", {
                Size = UDim2.new(0, 170, 1, 0), Position = UDim2.new(0, 42, 0, 0),
                BackgroundTransparency = 1, Text = tostring(data.id):sub(1, 18),
                TextColor3 = CLR.TEXT_PRI, Font = Enum.Font.Gotham, TextSize = 10,
                TextXAlignment = Enum.TextXAlignment.Left,
            }, row)
            local pCount = (data.playing or 0) .. "/" .. (data.maxPlayers or 0)
            mk("TextLabel", {
                Size = UDim2.new(0, 80, 1, 0), Position = UDim2.new(0, 220, 0, 0),
                BackgroundTransparency = 1, Text = pCount,
                TextColor3 = (data.playing or 0) < (data.maxPlayers or 100) and CLR.GREEN or CLR.RED,
                Font = Enum.Font.Gotham, TextSize = 10,
                TextXAlignment = Enum.TextXAlignment.Left,
            }, row)
            mk("TextLabel", {
                Size = UDim2.new(0, 60, 1, 0), Position = UDim2.new(0, 310, 0, 0),
                BackgroundTransparency = 1, Text = tostring(data.ping or "?"),
                TextColor3 = CLR.TEXT_SEC, Font = Enum.Font.Gotham, TextSize = 10,
                TextXAlignment = Enum.TextXAlignment.Left,
            }, row)
            local JoinBtn = mk("TextButton", {
                Size = UDim2.new(0, 70, 0, 22), Position = UDim2.new(1, -80, 0.5, -11),
                BackgroundColor3 = Color3.fromRGB(14, 32, 50), BorderSizePixel = 0,
                Text = "JOIN", TextColor3 = CLR.CYAN,
                Font = Enum.Font.GothamBold, TextSize = 10,
            }, row)
            corner(3, JoinBtn); hover(JoinBtn, Color3.fromRGB(14, 32, 50), Color3.fromRGB(0, 60, 90))
            JoinBtn.MouseButton1Click:Connect(function()
                pcall(function()
                    Players:TeleportToPlaceInstance(placeId, data.id, Players.LocalPlayer)
                end)
            end)
        end

        local function loadPage(reset)
            if reset then
                state = {servers = {}, cursor = nil, finished = false, pages = 0}
                Scroll:ClearAllChildren()
                mk("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, Scroll)
                mk("UIPadding", {
                    PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 4),
                    PaddingRight = UDim.new(0, 4), PaddingBottom = UDim.new(0, 6),
                }, Scroll)
                shown = 0
            end
            if state.finished then
                toast("NO MORE SERVERS", CLR.AMBER)
                return
            end
            LoadOverlay.Visible = true
            setStatus("SCANNING...", CLR.CYAN)
            local data, err = fetchPage(state.cursor)
            LoadOverlay.Visible = false
            if err then
                toast("FAILED: " .. err, CLR.RED)
                setStatus("ERROR: " .. err, CLR.RED)
                return
            end
            if data and data.data then
                for _, srv in ipairs(data.data) do
                    state.servers[#state.servers + 1] = srv
                end
                state.cursor = data.nextPageCursor
                state.finished = not data.nextPageCursor
                state.pages = state.pages + 1
                table.sort(state.servers, function(a, b)
                    if (a.playing or 0) ~= (b.playing or 0) then
                        return (a.playing or 0) < (b.playing or 0)
                    end
                    return (a.ping or 999) < (b.ping or 999)
                end)
                for i = shown + 1, math.min(#state.servers, CFG.MAX_SHOW) do
                    renderRow(i, state.servers[i])
                    shown = i
                end
                updateCount()
                setStatus(("PAGE %d · %d SERVERS"):format(state.pages, #state.servers), CLR.GREEN)
            end
        end

        RefreshBtn.MouseButton1Click:Connect(function() loadPage(true) end)
        LoadBtn.MouseButton1Click:Connect(function() loadPage(false) end)
        ResetBtn.MouseButton1Click:Connect(function()
            state = {servers = {}, cursor = nil, finished = false, pages = 0}
            Scroll:ClearAllChildren()
            mk("UIListLayout", {Padding = UDim.new(0, 3), SortOrder = Enum.SortOrder.LayoutOrder}, Scroll)
            mk("UIPadding", {
                PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 4),
                PaddingRight = UDim.new(0, 4), PaddingBottom = UDim.new(0, 6),
            }, Scroll)
            shown = 0
            updateCount()
            setStatus("RESET", CLR.TEXT_SEC)
        end)
        loadPage(true)
    end)
end

---------------------------------------------------------------
-- ENTRY
---------------------------------------------------------------
local ok, err = pcall(function()
    Features.initializeSettings()
    Features.normalizeSettings()

    if getgenv().Library then
        Main = getgenv().Library
        result2 = getgenv().Library
    end

    Features.initializeShopPage()
    Features.loadFruitAndWorldData()
    Features.initializeShopOptions()
    Features.initializeStatusAndServerPages()
    print("[Banana Cat Hub] loaded.")
end)

if not ok then
    warn("[Banana Cat Hub] boot error: " .. tostring(err))
end