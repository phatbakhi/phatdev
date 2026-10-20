-- ============================================================
--  TanPhat Hub | Fishing Master
--  Bước 1: nhập key (kiểm tra qua Firebase)  ->  Bước 2: mở UI chính
-- ============================================================
local DB_URL     = "https://getkey-5c61e-default-rtdb.asia-southeast1.firebasedatabase.app"
local GETKEY_URL = "https://tanphathub.gt.tc"
local UI_LIB_URL = "https://raw.githubusercontent.com/Rizeniii/diamond/refs/heads/main/zero/main.luau"
local ICON       = { "rbxassetid://138770682187300", "rbxassetid://110961158970233" } -- thay bằng icon của bạn

DB_URL = DB_URL:gsub("%s", ""):gsub("/+$", "")
local TTL      = 24 * 60 * 60
local KEY_FILE = "TanPhatHub_key.txt"

local Http    = game:GetService("HttpService")
local Players = game:GetService("Players")
local VIM     = game:GetService("VirtualInputManager")
local RS      = game:GetService("ReplicatedStorage")
local lp      = Players.LocalPlayer

if getgenv then
    if getgenv().TanPhatHubLoaded then return end
    getgenv().TanPhatHubLoaded = true
end

-- ============================================================
--  CẤU HÌNH GAME (chỉnh ở đây nếu game đổi tên GUI)
-- ============================================================
local Config = {
    FishingGuiNames = { "Fishing", "Reel", "Minigame", "FishBar", "CatchBar" }, -- tên GUI khi đang câu (đoán)
    ScanInterval    = 0.12,  -- giây giữa các lần quét
    CastHold        = 0.5,   -- giữ chuột bao lâu khi thả cần
    CastCooldown    = 2,     -- tối thiểu giữa 2 lần thả cần
    PostCatchDelay  = 1.5,   -- đợi sau khi câu xong rồi mới thả cần
    ReelClickDelay  = 0.12,  -- giây giữa các lần click dựt cá (chỉnh bằng slider)
}

local State = { AutoCast = false, AutoSkill = false, AutoBuy = false }
local SkillSlots = { "X", "Z", "C", "V" }
local SkillDelay = 2
local SelectedRod = nil

-- ============================================================
--  HÀM TIỆN ÍCH
-- ============================================================
local function gui() return lp:FindFirstChildOfClass("PlayerGui") end

local function click(hold)
    local v = workspace.CurrentCamera.ViewportSize
    VIM:SendMouseButtonEvent(v.X / 2, v.Y / 2, 0, true, game, 0)
    if hold then task.wait(hold) end
    VIM:SendMouseButtonEvent(v.X / 2, v.Y / 2, 0, false, game, 0)
end

local function press(code, hold)
    VIM:SendKeyEvent(true, code, false, game)
    task.wait(hold or 0.08)
    VIM:SendKeyEvent(false, code, false, game)
end

local function isVisible(o)
    local root = gui()
    while o and o ~= root do
        if o:IsA("GuiObject") and not o.Visible then return false end
        if o:IsA("ScreenGui") and not o.Enabled then return false end
        o = o.Parent
    end
    return true
end

-- Quét GUI: đang câu cá không + hệ thống đang yêu cầu kéo hướng nào (W / A / D)
local function scanFishing()
    local root = gui()
    if not root then return false, nil end
    local active, prompt = false, nil
    for _, o in ipairs(root:GetDescendants()) do
        if o:IsA("GuiObject") and isVisible(o) then
            if o:IsA("TextLabel") or o:IsA("TextButton") then
                local t = string.upper((string.gsub(o.Text, "%s", "")))
                if t == "W" or t == "A" or t == "D" then
                    prompt = t
                    active = true
                end
            end
            for _, n in ipairs(Config.FishingGuiNames) do
                if o.Name == n then active = true end
            end
        end
    end
    return active, prompt
end

-- ============================================================
--  VÒNG LẶP CHỨC NĂNG
-- ============================================================
-- Auto Cast: câu xong mới cast, trong lúc câu tự dựt cá + bấm W/A/D theo hệ thống
task.spawn(function()
    local lastCast, lastReel, lastActive = 0, 0, 0
    while true do
        task.wait(Config.ScanInterval)
        if State.AutoCast then
            local ok, active, prompt = pcall(scanFishing)
            if ok and active then
                lastActive = os.clock()
                if prompt then press(Enum.KeyCode[prompt]) end
                if os.clock() - lastReel >= Config.ReelClickDelay then
                    click()
                    lastReel = os.clock()
                end
            elseif os.clock() - lastActive >= Config.PostCatchDelay
                and os.clock() - lastCast >= Config.CastCooldown then
                click(Config.CastHold)
                lastCast = os.clock()
            end
        end
    end
end)

-- Auto Use Skill: dùng lần lượt theo thứ tự đã chọn
task.spawn(function()
    while true do
        task.wait(0.2)
        if State.AutoSkill then
            for _, k in ipairs(SkillSlots) do
                if not State.AutoSkill then break end
                if Enum.KeyCode[k] then
                    press(Enum.KeyCode[k])
                    task.wait(SkillDelay)
                end
            end
        end
    end
end)

-- Quét cần câu đang bán -> danh sách "Tên cần | Giá"
local function scanRods()
    local list, seen = {}, {}
    for _, root in ipairs({ RS, gui() }) do
        if root then
            for _, o in ipairs(root:GetDescendants()) do
                local n = o.Name
                if string.find(string.lower(n), "rod") and not seen[n] then
                    local price = o:GetAttribute("Price") or o:GetAttribute("Cost")
                    if not price then
                        local v = o:FindFirstChild("Price") or o:FindFirstChild("Cost")
                        if v then
                            if v:IsA("ValueBase") then price = v.Value
                            elseif v:IsA("TextLabel") then price = v.Text end
                        end
                    end
                    if price ~= nil then
                        seen[n] = true
                        table.insert(list, n .. " | " .. tostring(price))
                    end
                end
            end
        end
    end
    if #list == 0 then list = { "Không quét được cần câu" } end
    return list
end

-- Mua cần: thử remote có tên chứa "buy"/"purchase" (đoán, cần chỉnh theo game)
local function buyRod(name)
    for _, r in ipairs(RS:GetDescendants()) do
        local ln = string.lower(r.Name)
        if string.find(ln, "buy") or string.find(ln, "purchase") then
            if r:IsA("RemoteEvent") then
                pcall(function() r:FireServer(name) end)
                return true
            elseif r:IsA("RemoteFunction") then
                pcall(function() r:InvokeServer(name) end)
                return true
            end
        end
    end
    return false
end

task.spawn(function()
    while true do
        task.wait(10)
        if State.AutoBuy and SelectedRod then buyRod(SelectedRod) end
    end
end)

-- ============================================================
--  UI CHÍNH
-- ============================================================
local function startHub()
    local ok, ModernUI = pcall(function() return loadstring(game:HttpGet(UI_LIB_URL))() end)
    if not ok or not ModernUI then
        warn("Không tải được UI library: " .. tostring(ModernUI))
        return
    end

    local UI = ModernUI.new({
        Title = "TanPhat Hub | Fishing Master",
        SubTitle = "Fishing Master",
        Icon = ICON,
        IconFPS = 0.1,
        FloatingButton = { Icon = ICON, Size = 52, Position = UDim2.new(1, -70, 0.5, -26) },
    })

    local function notYet(name)
        UI:Notify({ Title = name, Body = "Chức năng này chưa hoạt động.", Icon = ICON, Duration = 10 })
    end

    -- Tab 1: Auto Fish
    local fish = UI:CreateTab({ Name = "Auto Fish", Icon = ICON })
    UI:AddSection(fish, { Name = "Câu cá tự động" })
    UI:AddToggle(fish, { Name = "Auto Cast", Default = false, Callback = function(s) State.AutoCast = s end })
    UI:AddSlider(fish, {
        Name = "Tốc độ dựt cá (ms)", Min = 50, Max = 500, Default = 120,
        Callback = function(v) Config.ReelClickDelay = v / 1000 end,
    })

    -- Tab 2: Skill
    local skill = UI:CreateTab({ Name = "Skill", Icon = ICON })
    UI:AddSection(skill, { Name = "Thứ tự dùng skill" })
    local opts = { "X", "Z", "C", "V", "Không dùng" }
    for i = 1, 4 do
        UI:AddDropdown(skill, {
            Name = "Ưu tiên " .. i, Options = opts, Default = SkillSlots[i],
            Callback = function(v) SkillSlots[i] = v end,
        })
    end
    UI:AddSlider(skill, {
        Name = "Delay giữa các skill (giây)", Min = 1, Max = 10, Default = 2,
        Callback = function(v) SkillDelay = v end,
    })
    UI:AddToggle(skill, { Name = "Auto Use Skill", Default = false, Callback = function(s) State.AutoSkill = s end })

    -- Tab 3: Shop
    local shop = UI:CreateTab({ Name = "Shop", Icon = ICON })
    UI:AddSection(shop, { Name = "Mua cần câu" })
    local rods = scanRods()
    SelectedRod = string.match(rods[1], "^(.-) | ")
    UI:AddDropdown(shop, {
        Name = "Chọn cần (Tên | Giá)", Options = rods, Default = rods[1],
        Callback = function(v) SelectedRod = string.match(v, "^(.-) | ") end,
    })
    UI:AddToggle(shop, { Name = "Auto mua cần", Default = false, Callback = function(s) State.AutoBuy = s end })

    -- Tab 4: Khác
    local misc = UI:CreateTab({ Name = "Khác", Icon = ICON })
    UI:AddSection(misc, { Name = "Đang phát triển" })
    UI:AddToggle(misc, { Name = "Auto Sell Fish", Default = false, Callback = function(s) if s then notYet("Auto Sell Fish") end end })
    UI:AddToggle(misc, { Name = "Auto Finish All Quest", Default = false, Callback = function(s) if s then notYet("Auto Finish All Quest") end end })
    UI:AddSection(misc, { Name = "Liên hệ" })
    UI:AddButton(misc, {
        Name = "Sao chép email hỗ trợ",
        Callback = function() if setclipboard then setclipboard("maitanphat632@gmail.com") end end,
    })
end

-- ============================================================
--  KIỂM TRA KEY
-- ============================================================
local function verifyKey(key)
    key = string.upper((string.gsub(key or "", "%s", "")))
    if not key:match("^%x%x%x%x%-%x%x%x%x%-%x%x%x%x%-%x%x%x%x$") then
        return false, "Key sai định dạng"
    end
    local ok, body = pcall(function() return game:HttpGet(DB_URL .. "/keys/" .. key .. ".json") end)
    if not ok then return false, "Không kết nối được server" end
    local ok2, data = pcall(function() return Http:JSONDecode(body) end)
    if not ok2 then return false, "Server trả về dữ liệu lỗi" end
    if type(data) ~= "table" or type(data.created) ~= "number" then return false, "Key không tồn tại" end
    local left = math.floor(data.created / 1000) + TTL - os.time()
    if left <= 0 then return false, "Key đã hết hạn" end
    return true, math.ceil(left / 3600) .. " giờ còn lại", key
end

-- Có key đã lưu và còn hạn thì vào thẳng
if isfile and readfile and pcall(isfile, KEY_FILE) and isfile(KEY_FILE) then
    local okSaved = verifyKey(readfile(KEY_FILE))
    if okSaved then return startHub() end
end

-- Giao diện nhập key
local parent = (gethui and gethui()) or game:GetService("CoreGui")
local old = parent:FindFirstChild("KeyMenu")
if old then old:Destroy() end

local sg = Instance.new("ScreenGui")
sg.Name = "KeyMenu"
sg.ResetOnSpawn = false
sg.Parent = parent

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(340, 230)
frame.Position = UDim2.new(0.5, -170, 0.5, -115)
frame.BackgroundColor3 = Color3.fromRGB(22, 40, 63)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = sg
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 10)

local function label(text, y, size, font, h)
    local l = Instance.new("TextLabel")
    l.Size = UDim2.new(1, -20, 0, h)
    l.Position = UDim2.fromOffset(10, y)
    l.BackgroundTransparency = 1
    l.Text = text
    l.Font = font
    l.TextSize = size
    l.TextColor3 = Color3.new(1, 1, 1)
    l.Parent = frame
    return l
end

label("TanPhat Hub | Fishing Master", 8, 17, Enum.Font.GothamBold, 28)
label("Nhập key để tiếp tục", 36, 13, Enum.Font.Gotham, 20)

local box = Instance.new("TextBox")
box.Size = UDim2.new(1, -30, 0, 36)
box.Position = UDim2.fromOffset(15, 68)
box.BackgroundColor3 = Color3.fromRGB(10, 22, 38)
box.PlaceholderText = "XXXX-XXXX-XXXX-XXXX"
box.Text = ""
box.ClearTextOnFocus = false
box.Font = Enum.Font.Gotham
box.TextSize = 15
box.TextColor3 = Color3.new(1, 1, 1)
box.Parent = frame
Instance.new("UICorner", box).CornerRadius = UDim.new(0, 8)

local function button(text, y, color)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(1, -30, 0, 34)
    b.Position = UDim2.fromOffset(15, y)
    b.BackgroundColor3 = color
    b.Text = text
    b.Font = Enum.Font.GothamBold
    b.TextSize = 14
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Parent = frame
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 8)
    return b
end

local checkBtn = button("Kiểm tra key", 112, Color3.fromRGB(47, 128, 200))
local copyBtn  = button("Sao chép link lấy key", 152, Color3.fromRGB(70, 90, 120))
local status   = label("", 192, 13, Enum.Font.Gotham, 30)

copyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(GETKEY_URL)
        status.TextColor3 = Color3.fromRGB(120, 230, 150)
        status.Text = "Đã sao chép link, dán vào trình duyệt."
    else
        status.TextColor3 = Color3.fromRGB(248, 113, 113)
        status.Text = "Không copy được: " .. GETKEY_URL
    end
end)

local busy = false
checkBtn.MouseButton1Click:Connect(function()
    if busy then return end
    busy = true
    status.TextColor3 = Color3.new(1, 1, 1)
    status.Text = "Đang kiểm tra..."
    local ok, info, clean = verifyKey(box.Text)
    if ok then
        if writefile then pcall(writefile, KEY_FILE, clean) end
        status.TextColor3 = Color3.fromRGB(120, 230, 150)
        status.Text = "Hợp lệ! " .. info
        task.wait(0.8)
        sg:Destroy()
        startHub()
    else
        status.TextColor3 = Color3.fromRGB(248, 113, 113)
        status.Text = info
    end
    busy = false
end)
