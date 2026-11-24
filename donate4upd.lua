-- obfuscated :: layer(string-encrypt + ast-strip + minify)
local _zB3684C = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
local _zB3684R = {}
for _i = 1, #_zB3684C do _zB3684R[_zB3684C:sub(_i,_i)] = _i - 1 end
local function _zB3684(data)
	data = data:gsub("[^".._zB3684C.."=]", "")
	local out = {}
	local len = #data
	local i = 1
	while i <= len do
		local c1 = _zB3684R[data:sub(i,i)] or 0
		local c2 = _zB3684R[data:sub(i+1,i+1)] or 0
		local t3 = data:sub(i+2,i+2)
		local t4 = data:sub(i+3,i+3)
		local c3 = _zB3684R[t3]
		local c4 = _zB3684R[t4]
		local n = c1*262144 + c2*4096 + (c3 or 0)*64 + (c4 or 0)
		local b1 = math.floor(n/65536) % 256
		local b2 = math.floor(n/256) % 256
		local b3 = n % 256
		out[#out+1] = string.char(b1)
		if t3 ~= "=" and t3 ~= "" then out[#out+1] = string.char(b2) end
		if t4 ~= "=" and t4 ~= "" then out[#out+1] = string.char(b3) end
		i = i + 4
	end
	return table.concat(out)
end
local _zK1126 = 63
local function _zD1436(s)
	local raw = _zB3684(s)
	local t = {}
	for i = 1, #raw do
		t[i] = string.char(bit32.bxor(string.byte(raw, i), _zK1126))
	end
	return table.concat(t)
end
-- junk / decoy locals (noise for static readers)
local _qa954 = 9677
local _qa100 = tick()
local function _qa667(_qa121)
	return (_qa121 or 0) + _qa954 - _qa954
end
local _qa277 = { [_qa954] = _qa100 }
local _qa644 = _qa667(_qa954)
-- end obfuscation header


local function geniter(f, s, c)
	if type(f) ~=_zD1436("WUpRXEtWUFE=") then
		local mt = getmetatable(f)

		if type(mt) ==_zD1436("S15dU1o=") and mt.__iter then
			f, s, c = mt.__iter(f)
		elseif type(f) ==_zD1436("S15dU1o=") then
			f, s, c = next, f, nil
		end
	end

	return function()
		local r = table.pack(f(s, c))

		if r[(1+0)] == nil then
			return false
		end

		c = r[(48-47)]

		return true, table.unpack(r, (44-43), r.n)
	end
end

ply = game.Players
plr = ply.LocalPlayer
Root = plr.Character.HumanoidRootPart
replicated = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo="))
Lv = game.Players.LocalPlayer.Data.Level.Value
TeleportService = game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa"))
TW = game:GetService(_zD1436("a0haWlFsWk1JVlxa"))
Lighting = game:GetService(_zD1436("c1ZYV0tWUVg="))
Enemies = workspace.Enemies
vim1 = game:GetService(_zD1436("aVZNS0peU3ZRT0pLcl5RXlhaTQ=="))
vim2 = game:GetService(_zD1436("aVZNS0peU2pMWk0="))
TeamSelf = plr.Team
RunSer = game:GetService(_zD1436("bUpRbFpNSVZcWg=="))
Stats = game:GetService(_zD1436("bEteS0w="))
Energy = plr.Character.Energy.Value
BringConnections = {}
BossList = {}
MaterialList = {}
NPCList = {}
shouldTween = false
getgenv().OnFarm = false
getgenv().AutoMaterial = false
NextIs = false
senth = false
senth2 = false
SoulGuitar = false
KenTest = true
debug = false
Brazier1 = false
Brazier2 = false
Brazier3 = false
Sec = 0.1
ClickState = (746-746)
Num_self = (87-62)

do
	local Loading

	repeat
		Loading = plr.PlayerGui:WaitForChild(_zD1436("cl5WUQ==")):WaitForChild(_zD1436("c1BeW1ZRWA==")) and game:IsLoaded()
		wait()
	until Loading
end

World1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
World2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
World3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089

do
	Marines = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("bFpLa1peUg=="),_zD1436("cl5NVlFaTA=="))
	end
end

do
	Pirates = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("bFpLa1peUg=="),_zD1436("b1ZNXktaTA=="))
	end
end

if World1 then
	BossList = {
_zD1436("a1daH3hQTVZTU14fdFZRWA=="),
_zD1436("fVBdXUY="),
_zD1436("a1daH2xeSA=="),
_zD1436("ZlpLVg=="),
_zD1436("clBdH3NaXltaTQ=="),
_zD1436("aVZcWh9+W1JWTV5T"),
_zD1436("bF5dWk0fekdPWk1L"),
_zD1436("aF5NW1pR"),
_zD1436("fFdWWlkfaF5NW1pR"),
_zD1436("bEheUQ=="),
_zD1436("cl5YUl4ffltSVk1eUw=="),
_zD1436("eVZMV1JeUR9zUE1b"),
_zD1436("aEZMT1pN"),
_zD1436("a1dKUVtaTR94UFs="),
_zD1436("fEZdUE1Y"),
_zD1436("dlxaH35bUlZNXlM="),
_zD1436("eE1aRl1aXk1b")
	}
elseif World2 then
	BossList = {
_zD1436("e1ZeUlBRWw=="),
_zD1436("dVpNWlJG"),
_zD1436("cE1dVktKTA=="),
_zD1436("e1BRH2xIXlE="),
_zD1436("bFJQVFoffltSVk1eUw=="),
_zD1436("fkheVFpRWlsfdlxaH35bUlZNXlM="),
_zD1436("a1ZbWh90WlpPWk0="),
_zD1436("e15NVF1aXk1b"),
_zD1436("fEpNTFpbH3xeT0teVlE="),
_zD1436("cE1bWk0=")
	}
elseif World3 then
	BossList = {
_zD1436("bEtQUVo="),
_zD1436("d0ZbTV4fc1peW1pN"),
_zD1436("dFZTUB9+W1JWTV5T"),
_zD1436("fF5PS15WUR96U1pPV15RSw=="),
_zD1436("fVpeSktWWUpTH29WTV5LWg=="),
_zD1436("fF5UWh9uSlpaUQ=="),
_zD1436("e1BKWFcfdFZRWA=="),
_zD1436("c1BRWFJe"),
_zD1436("bFBKUx9tWl5PWk0="),
_zD1436("TVZPYFZRW01eH2tNSlofeVBNUg=="),
_zD1436("a0ZNXlFLH1BZH0tXWh9sVFZaTA==")
	}
end

if World1 then
	MaterialList = {
_zD1436("c1peS1daTR8UH2xcTV5PH3JaS15T"),
_zD1436("flFYWlMfaFZRWEw="),
_zD1436("cl5YUl4fcE1a"),
_zD1436("eVZMVx9rXlZT")
	}
elseif World2 then
	MaterialList = {
_zD1436("c1peS1daTR8UH2xcTV5PH3JaS15T"),
_zD1436("bV5bVlBeXEtWSVofcl5LWk1WXlM="),
_zD1436("elxLUE9TXkxS"),
_zD1436("ckZMS1ZcH3tNUE9TWks="),
_zD1436("cl5YUl4fcE1a"),
_zD1436("aV5ST1ZNWh95XlFY")
	}
elseif World3 then
	MaterialList = {
_zD1436("bFxNXk8fclpLXlM="),
_zD1436("e1pSUFFWXB9oVkxP"),
_zD1436("fFBRVUpNWlsffFBcUF4="),
_zD1436("e01eWFBRH2xcXlNa"),
_zD1436("eEpRT1BIW1pN"),
_zD1436("eVZMVx9rXlZT"),
_zD1436("clZRVh9rSkxU")
	}
end

local t1 = {
_zD1436("bFFQSB9zSk1UWk0="),
_zD1436("fk1cS1ZcH2heTU1WUE0="),
_zD1436("d1ZbW1pRH3RaRg=="),
_zD1436("fkheVFpRWlsfdlxaH35bUlZNXlM=")
}
local t2 = {
_zD1436("b15NSw=="),
_zD1436("bE9eSFFzUFxeS1ZQUQ=="),
_zD1436("a1pNTV5WUQ=="),
_zD1436("aFpbWFpvXk1L"),
_zD1436("clpMV29eTUs=")
}
local t3 = {
_zD1436("bEheUR9vVk1eS1o="),
_zD1436("dVpNWlJG")
}
local t4 = {
_zD1436("eV5VVkte"),
_zD1436("dVpNWlJG"),
_zD1436("e1ZeUlBRWw==")
}
local t5 = {_zD1436("fFBQVFZaH3xNXllLWk0=") }
local t6 = {_zD1436("bVpdUE1RH2xUWlNaS1BR") }
local t7 = {
	[_zD1436("b1ZNXktaH3JWU1NWUFFeVk1a")] = CFrame.new(-712.8272705078125, 98.577049255371094, 5711.9541015625),
	[_zD1436("b1ZMS1BTH31WU1NWUFFeVk1a")] = CFrame.new(-723.43316650390625, 147.42906188964844, 5931.9931640625),
	[_zD1436("e01eWFBRH3xNWkgfaF5NTVZQTQ==")] = CFrame.new(7021.50439453125, 55.762702941894531, -730.12908935546875),
	[_zD1436("e01eWFBRH3xNWkgffk1cV1pN")] = CFrame.new((11194-4569), (614-236), (436-192)),
	[_zD1436("eVpSXlNaH3ZMU15RW1pN")] = CFrame.new(4692.7939453125, 797.9766845703125, 858.8480224609375),
	[_zD1436("aVpRUFJQSkwffkxMXlZTXlFL")] = CFrame.new((6725-1823), (1070-400), (59-20)),
	[_zD1436("cl5NVlFaH3xQUlJQW1BNWg==")] = CFrame.new((930+1471), (179-56), -(13741-6152)),
	[_zD1436("cl5NVlFaH21aXk0ffltSVk1eUw==")] = CFrame.new((6502-2914), (146+83), -(7126-41)),
	[_zD1436("eVZMV1JeUR9tXlZbWk0=")] = CFrame.new(-(3696+7245), (568-236), -(16587-7827)),
	[_zD1436("eVZMV1JeUR98Xk9LXlZR")] = CFrame.new(-(19685-8650), (606-274), -(4995+4092)),
	[_zD1436("eVBNWkxLH29WTV5LWg==")] = CFrame.new(-(24461-11015), (172+241), -(9915-2155)),
	[_zD1436("ckZLV1BTUFhWXF5TH29WTV5LWg==")] = CFrame.new(-(3840+9670), (1050-466), -(5412+1575)),
	[_zD1436("dUpRWFNaH29WTV5LWg==")] = CFrame.new(-(20701-8923), (113+313), -(3608+6984)),
	[_zD1436("ckpMVFpLWlpNH29WTV5LWg==")] = CFrame.new(-(394+12888), (336+160), -(11143-1578)),
	[_zD1436("bVpdUE1RH2xUWlNaS1BR")] = CFrame.new(-(8503+261), (169-27), (958+5005)),
	[_zD1436("c1ZJVlFYH2VQUl1WWg==")] = CFrame.new(-(15857-5630), (327+94), (2195+3966)),
	[_zD1436("e1pSUFFWXB9sUEpT")] = CFrame.new(-(11466-1887), (1+5), (593+5601)),
	[_zD1436("b1BMWkxMWlsfckpSUkY=")] = CFrame.new(-(12007-2428), (17-11), (6703-509)),
	[_zD1436("b1peUUpLH2xcUEpL")] = CFrame.new(-(363+1630), (19+168), -(1906+8197)),
	[_zD1436("b1peUUpLH29NWkxWW1pRSw==")] = CFrame.new(-(3276-1061), (135+24), -(4964+5510)),
	[_zD1436("dlxaH3xNWl5SH3xXWlk=")] = CFrame.new(-(998-121), (78+40), -(17236-6204)),
	[_zD1436("dlxaH3xNWl5SH3xQUlJeUVtaTQ==")] = CFrame.new(-(797+80), (105+13), -(3917+7115)),
	[_zD1436("fFBQVFZaH3xNXllLWk0=")] = CFrame.new(-(773+1248), (41-3), -(3191+8837)),
	[_zD1436("fF5UWh94Sl5NWw==")] = CFrame.new(-(3107-1083), (47-9), -(10580+1446)),
	[_zD1436("fV5UVlFYH2xLXllZ")] = CFrame.new(-(61+1871), (11+27), -(21707-8859)),
	[_zD1436("d1peWx99XlRaTQ==")] = CFrame.new(-(2622-690), (52-14), -(14609-1761)),
	[_zD1436("fFBcUF4faF5NTVZQTQ==")] = CFrame.new((73+22), (127-54), -(5667+6642)),
	[_zD1436("fFdQXFBTXktaH31eTR99XktLU1pN")] = CFrame.new((1326-679), (34+8), -(1488+10913)),
	[_zD1436("bEhaWksfa1dWWlk=")] = CFrame.new((71+45), (21+15), -(13190-712)),
	[_zD1436("fF5RW0YfbVpdWlM=")] = CFrame.new((28+19), (75-14), -(15573-2684)),
	Ghost = CFrame.new((8045-2794), (14-9), (1558-447))
}
local t8 = {
	RFJobsRemoteFunction = replicated.Modules.Net[_zD1436("bXkQdVBdTG1aUlBLWnlKUVxLVlBR")],
	RFCraft = replicated:WaitForChild(_zD1436("clBbSlNaTA==")):WaitForChild(_zD1436("cVpL")):WaitForChild(_zD1436("bXkQfE1eWUs="))
}

EquipWeapon = function(p1)
	if not p1 then
		return
	end

	if plr.Backpack:FindFirstChild(p1) then
		plr.Character.Humanoid:EquipTool(plr.Backpack:FindFirstChild(p1))
	end
end
weaponSc = function(p2)
	for _, child in pairs(plr.Backpack:GetChildren()) do
		if child:IsA(_zD1436("a1BQUw==")) and child.ToolTip == p2 then
			EquipWeapon(child.Name)
		end
	end
end

local t9 = {}

t9.__index = t9

do
	t9.Alive = function(p3)
		if not p3 then
			return
		end

		local Humanoid = p3:FindFirstChild(_zD1436("d0pSXlFQVls="))

		return Humanoid and Humanoid.Health > (376-376)
	end
end

t9.Pos = function(p4, p5)
	return (Root.Position - mode.Position).Magnitude <= p5
end
t9.Dist = function(p6, p7)
	return (Root.Position - p6:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")).Position).Magnitude <= p7
end
t9.DistH = function(p8, p9)
	return (Root.Position - p8:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")).Position).Magnitude > p9
end

do
	t9.Kill = function(p10, p11)
		if p10 and p11 then
			if not p10:GetAttribute(_zD1436("c1BcVFpb")) then
				p10:SetAttribute(_zD1436("c1BcVFpb"), p10.HumanoidRootPart.CFrame)
			end

			PosMon = p10:GetAttribute(_zD1436("c1BcVFpb")).Position
			BringEnemy()
			EquipWeapon(_G.SelectWeapon)

			local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass(_zD1436("a1BQUw=="))

			if (Tool and Tool:FindFirstChild(_zD1436("a1BQU2tWTw==")) and Tool.ToolTip or"") ==_zD1436("fVNQRx95TUpWSw==") then
				_tp(p10.HumanoidRootPart.CFrame * CFrame.new((143-143), (41-11), (174-174)) * CFrame.Angles((337-337), math.rad((222-132)), (945-945)))
			else
				_tp(p10.HumanoidRootPart.CFrame * CFrame.new((229-229), (2+8), (26-26)) * CFrame.Angles((102-102), math.rad((184-4)), (277-277)))
			end

			if RandomCFrame then
				wait(0.5)
				_tp(p10.HumanoidRootPart.CFrame * CFrame.new((26-26), (25+5), (1+24)))
				wait(0.5)
				_tp(p10.HumanoidRootPart.CFrame * CFrame.new((34-9), (40-10), (347-347)))
				wait(0.5)
				_tp(p10.HumanoidRootPart.CFrame * CFrame.new(-(10+15), (29+1), (509-509)))
				wait(0.5)
				_tp(p10.HumanoidRootPart.CFrame * CFrame.new((961-961), (100-70), (77-52)))
				wait(0.5)
				_tp(p10.HumanoidRootPart.CFrame * CFrame.new(-(24+1), (7+23), (642-642)))
			end
		end
	end
end

t9.Kill2 = function(p12, p13)
	if p12 and p13 then
		if not p12:GetAttribute(_zD1436("c1BcVFpb")) then
			p12:SetAttribute(_zD1436("c1BcVFpb"), p12.HumanoidRootPart.CFrame)
		end

		PosMon = p12:GetAttribute(_zD1436("c1BcVFpb")).Position
		BringEnemy()
		EquipWeapon(_G.SelectWeapon)

		local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass(_zD1436("a1BQUw=="))
		local ToolTip = Tool and Tool:FindFirstChild(_zD1436("a1BQU2tWTw==")) and Tool.ToolTip

		if (ToolTip or"") ==_zD1436("fVNQRx95TUpWSw==") then
			_tp(p12.HumanoidRootPart.CFrame * CFrame.new((819-819), (89-59), (676-676)) * CFrame.Angles((223-223), math.rad((11+79)), (584-584)))
		else
			_tp(p12.HumanoidRootPart.CFrame * CFrame.new((818-818), (42-32), (26-18)) * CFrame.Angles((256-256), math.rad((379-199)), (334-334)))
		end

		if RandomCFrame then
			wait(0.1)
			_tp(p12.HumanoidRootPart.CFrame * CFrame.new((324-324), (15+15), (60-35)))
			wait(0.1)
			_tp(p12.HumanoidRootPart.CFrame * CFrame.new((58-33), (26+4), (726-726)))
			wait(0.1)
			_tp(p12.HumanoidRootPart.CFrame * CFrame.new(-(23+2), (84-54), (999-999)))
			wait(0.1)
			_tp(p12.HumanoidRootPart.CFrame * CFrame.new((133-133), (25+5), (13+12)))
			wait(0.1)
			_tp(p12.HumanoidRootPart.CFrame * CFrame.new(-(14+11), (12+18), (796-796)))
		end
	end
end

do
	t9.KillSea = function(p14, p15)
		if p14 and p15 then
			if not p14:GetAttribute(_zD1436("c1BcVFpb")) then
				p14:SetAttribute(_zD1436("c1BcVFpb"), p14.HumanoidRootPart.CFrame)
			end

			PosMon = p14:GetAttribute(_zD1436("c1BcVFpb")).Position
			BringEnemy()
			EquipWeapon(_G.SelectWeapon)

			local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass(_zD1436("a1BQUw=="))

			if (Tool and Tool:FindFirstChild(_zD1436("a1BQU2tWTw==")) and Tool.ToolTip or"") ==_zD1436("fVNQRx95TUpWSw==") then
				_tp(p14.HumanoidRootPart.CFrame * CFrame.new((770-770), (62-32), (947-947)) * CFrame.Angles((917-917), math.rad((109-19)), (234-234)))
			else
				notween(p14.HumanoidRootPart.CFrame * CFrame.new((505-505), (6+44), (22-14)))
				wait(0.85)
				notween(p14.HumanoidRootPart.CFrame * CFrame.new((810-810), (837-437), (791-791)))
				wait((1+0))
			end
		end
	end
end

do
	t9.Sword = function(p16, p17)
		if p16 then
			if p17 then
				if not p16:GetAttribute(_zD1436("c1BcVFpb")) then
					p16:SetAttribute(_zD1436("c1BcVFpb"), p16.HumanoidRootPart.CFrame)
				end

				PosMon = p16:GetAttribute(_zD1436("c1BcVFpb")).Position
				BringEnemy()
				weaponSc(_zD1436("bEhQTVs="))
				_tp(p16.HumanoidRootPart.CFrame * CFrame.new((448-448), (58-28), (698-698)))

				if RandomCFrame then
					wait(0.1)
					_tp(p16.HumanoidRootPart.CFrame * CFrame.new((424-424), (51-21), (77-52)))
					wait(0.1)
					_tp(p16.HumanoidRootPart.CFrame * CFrame.new((47-22), (53-23), (59-59)))
					wait(0.1)
					_tp(p16.HumanoidRootPart.CFrame * CFrame.new(-(5+20), (104-74), (330-330)))
					wait(0.1)
					_tp(p16.HumanoidRootPart.CFrame * CFrame.new((222-222), (78-48), (54-29)))
					wait(0.1)
					_tp(p16.HumanoidRootPart.CFrame * CFrame.new(-(58-33), (86-56), (609-609)))
				end
			end
		end
	end
end

t9.Mas = function(p18, p19)
	if p18 and p19 then
		if not p18:GetAttribute(_zD1436("c1BcVFpb")) then
			p18:SetAttribute(_zD1436("c1BcVFpb"), p18.HumanoidRootPart.CFrame)
		end

		PosMon = p18:GetAttribute(_zD1436("c1BcVFpb")).Position
		BringEnemy()

		if p18.Humanoid.Health <= HealthM then
			_tp(p18.HumanoidRootPart.CFrame * CFrame.new((17-17), (16+4), (712-712)))

			local SelectedMasterySkills = _G.SelectedMasterySkills

			if type(SelectedMasterySkills) ~=_zD1436("S15dU1o=") then
				SelectedMasterySkills = {
_zD1436("ZQ=="),
_zD1436("Zw=="),
_zD1436("fA=="),
_zD1436("aQ=="),
_zD1436("eQ==")
				}
			end

			for k, SelectedMasterySkill in pairs(SelectedMasterySkills) do
				if type(k) ==_zD1436("UUpSXVpN") then
					Useskills(_zD1436("fVNQRx95TUpWSw=="), SelectedMasterySkill)
				elseif type(k) ==_zD1436("TEtNVlFY") and SelectedMasterySkill == true then
					Useskills(_zD1436("fVNQRx95TUpWSw=="), k)
				end
			end
		else
			weaponSc(_zD1436("clpTWlo="))
			_tp(p18.HumanoidRootPart.CFrame * CFrame.new((93-93), (5+25), (90-90)))
		end
	end
end

do
	t9.Masgun = function(p20, p21)
		if p20 and p21 then
			if not p20:GetAttribute(_zD1436("c1BcVFpb")) then
				p20:SetAttribute(_zD1436("c1BcVFpb"), p20.HumanoidRootPart.CFrame)
			end

			PosMon = p20:GetAttribute(_zD1436("c1BcVFpb")).Position
			BringEnemy()

			if p20.Humanoid.Health <= HealthM then
				_tp(p20.HumanoidRootPart.CFrame * CFrame.new((921-921), (31+4), (1+7)))

				local SelectedMasterySkills = _G.SelectedMasterySkills

				if type(SelectedMasterySkills) ~=_zD1436("S15dU1o=") then
					SelectedMasterySkills = {
_zD1436("ZQ=="),
_zD1436("Zw=="),
_zD1436("fA=="),
_zD1436("aQ=="),
_zD1436("eQ==")
					}
				end

				for k, SelectedMasterySkill in pairs(SelectedMasterySkills) do
					if type(k) ==_zD1436("UUpSXVpN") then
						Useskills(_zD1436("eEpR"), SelectedMasterySkill)
					elseif type(k) ==_zD1436("TEtNVlFY") and SelectedMasterySkill == true then
						Useskills(_zD1436("eEpR"), k)
					end
				end
			else
				weaponSc(_zD1436("clpTWlo="))
				_tp(p20.HumanoidRootPart.CFrame * CFrame.new((906-906), (49-19), (974-974)))
			end
		end
	end
end

statsSetings = function(p22, p23)
	if p22 ==_zD1436("clpTWlo=") then
		if plr.Data.Points.Value ~= (34-34) then
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fltbb1BWUUs="),_zD1436("clpTWlo="), p23)
		end
	elseif p22 ==_zD1436("e1pZWlFMWg==") then
		if plr.Data.Points.Value ~= (863-863) then
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fltbb1BWUUs="),_zD1436("e1pZWlFMWg=="), p23)
		end
	elseif p22 ==_zD1436("bEhQTVs=") then
		if plr.Data.Points.Value ~= (64-64) then
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fltbb1BWUUs="),_zD1436("bEhQTVs="), p23)
		end
	elseif p22 ==_zD1436("eEpR") then
		if plr.Data.Points.Value ~= (122-122) then
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fltbb1BWUUs="),_zD1436("eEpR"), p23)
		end
	elseif p22 ==_zD1436("e1pJVlM=") and plr.Data.Points.Value ~= (794-794) then
		replicated.Remotes.CommF_:InvokeServer(_zD1436("fltbb1BWUUs="),_zD1436("e1pSUFEfeU1KVks="), p23)
	end
end
BringEnemy = function(p24)
	if not _B then
		return
	end

	if not p24 then
		local HumanoidRootPart = plr.Character and plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

		if not HumanoidRootPart then
			return
		end

		local huge = math.huge

		for _, child in ipairs(workspace.Enemies:GetChildren()) do
			local Humanoid = child:FindFirstChildOfClass(_zD1436("d0pSXlFQVls="))
			local HumanoidRootPart2 = child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

			if Humanoid and HumanoidRootPart2 and Humanoid.Health > (510-510) then
				local Magnitude = (HumanoidRootPart2.Position - HumanoidRootPart.Position).Magnitude

				if Magnitude < huge then
					huge = Magnitude
					p24 = child
				end
			end
		end

		if not p24 then
			return
		end
	end

	local u34 = false

	local function v35(p25)
		local Humanoid = p25:FindFirstChildOfClass(_zD1436("d0pSXlFQVls="))
		local HumanoidRootPart = p25:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

		return Humanoid and HumanoidRootPart and Humanoid.Health > (264-264), HumanoidRootPart, Humanoid
	end
	local function v38(p26)
		if isnetworkowner then
			return isnetworkowner(p26)
		end

		return p26.ReceiveAge == (372-372) and not p26.Anchored and p26.Velocity.Magnitude > (268-268)
	end

	pcall(function()
		if sethiddenproperty then
			sethiddenproperty(plr,_zD1436("bFZSSlNeS1ZQUW1eW1ZKTA=="), math.huge)
		end

		local Position = p24.HumanoidRootPart.Position

		for _, child in ipairs(workspace.Enemies:GetChildren()) do
			if child ~= p24 then
				local v42, v43, v44 = v35(child)

				if v42 and child.Name == p24.Name then
					local Magnitude = (v43.Position - Position).Magnitude

					if Magnitude <= (560+2440) then
						if not v43:FindFirstChild(_zD1436("fVBbRmlaU1BcVktG")) then
							local BodyVelocity = Instance.new(_zD1436("fVBbRmlaU1BcVktG"))

							BodyVelocity.Name =_zD1436("fVBbRmlaU1BcVktG")
							BodyVelocity.MaxForce = Vector3.new(1e9, 1e9, 1e9)
							BodyVelocity.Velocity = Vector3.zero
							BodyVelocity.Parent = v43
						end

						if Magnitude <= (1+9) then
							u34 = true
						end

						if not u34 and v38(v43) then
							v43.CFrame = CFrame.new(Position)
						end

						v43.CanCollide = false
						v44.WalkSpeed = (651-651)
						v44.JumpPower = (403-403)
					end
				end
			end
		end

		if p24 and p24:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
			p24.HumanoidRootPart.CanCollide = false
			p24.Humanoid.WalkSpeed = (739-739)
			p24.Humanoid.JumpPower = (121-121)
		end
	end)
end

do
	local function v47(p27, p28)
		local LocalPlayer = game.Players.LocalPlayer
		local Name
		local v50, v51, v52 = pairs(LocalPlayer.Character:GetChildren())
		local v53 = geniter(v50, v51, v52)

		while true do
			local v54 = table.pack(v53())

			if not v54[(17-16)] then
				break
			end

			local v55 = v54[(47-44)]

			if v55:IsA(_zD1436("a1BQUw==")) and v55.ToolTip == p27 then
				Name = v55.Name

				break
			end
		end

		if not Name then
			local v56, v57, v58 = pairs(LocalPlayer.Backpack:GetChildren())

			for _, v1 in v56, v57, v58 do
				if v1:IsA(_zD1436("a1BQUw==")) then
					if v1.ToolTip == p27 then
						Name = v1.Name

						break
					end
				end
			end
		end

		if Name then
			if LocalPlayer.PlayerGui:FindFirstChild(_zD1436("cl5WUQ==")) then
				if LocalPlayer.PlayerGui.Main:FindFirstChild(_zD1436("bFRWU1NM")) then
					local v61 = LocalPlayer.PlayerGui.Main.Skills:FindFirstChild(Name)

					if v61 then
						local v62 = v61:FindFirstChild(p28)

						if not v62 then
							return false
						end

						local Title = v62:FindFirstChild(_zD1436("a1ZLU1o="))

						if Title and Title:IsA(_zD1436("a1pHS3NeXVpT")) and Title.TextColor3.R < 0.5 then
							return false
						end

						local Cooldown = v62:FindFirstChild(_zD1436("fFBQU1tQSFE="))

						if Cooldown and (Cooldown.Size.X.Scale > (956-956) or Cooldown.AbsoluteSize.X > (133-133)) then
							return false
						end

						return true
					end
				end
			end
		end

		return true
	end

	Useskills = function(p29, p30)
		if p29 ==_zD1436("clpTWlo=") then
			weaponSc(_zD1436("clpTWlo="))

			if not v47(p29, p30) then
				return
			end

			if p30 ==_zD1436("ZQ==") then
				vim1:SendKeyEvent(true,_zD1436("ZQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("ZQ=="), false, game)
			elseif p30 ==_zD1436("Zw==") then
				vim1:SendKeyEvent(true,_zD1436("Zw=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("Zw=="), false, game)
			elseif p30 ==_zD1436("fA==") then
				vim1:SendKeyEvent(true,_zD1436("fA=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("fA=="), false, game)
			elseif p30 ==_zD1436("aQ==") then
				vim1:SendKeyEvent(true,_zD1436("aQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("aQ=="), false, game)
			elseif p30 ==_zD1436("eQ==") then
				vim1:SendKeyEvent(true,_zD1436("eQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("eQ=="), false, game)
			elseif p30 ==_zD1436("Zg==") then
				vim1:SendKeyEvent(true,_zD1436("Zg=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("Zg=="), false, game)
			end
		elseif p29 ==_zD1436("bEhQTVs=") then
			weaponSc(_zD1436("bEhQTVs="))

			if not v47(p29, p30) then
				return
			end

			if p30 ==_zD1436("ZQ==") then
				vim1:SendKeyEvent(true,_zD1436("ZQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("ZQ=="), false, game)
			elseif p30 ==_zD1436("Zw==") then
				vim1:SendKeyEvent(true,_zD1436("Zw=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("Zw=="), false, game)
			elseif p30 ==_zD1436("fA==") then
				vim1:SendKeyEvent(true,_zD1436("fA=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("fA=="), false, game)
			elseif p30 ==_zD1436("aQ==") then
				vim1:SendKeyEvent(true,_zD1436("aQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("aQ=="), false, game)
			elseif p30 ==_zD1436("eQ==") then
				vim1:SendKeyEvent(true,_zD1436("eQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("eQ=="), false, game)
			elseif p30 ==_zD1436("Zg==") then
				vim1:SendKeyEvent(true,_zD1436("Zg=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("Zg=="), false, game)
			end
		elseif p29 ==_zD1436("fVNQRx95TUpWSw==") then
			weaponSc(_zD1436("fVNQRx95TUpWSw=="))

			if not v47(p29, p30) then
				return
			end

			if p30 ==_zD1436("ZQ==") then
				vim1:SendKeyEvent(true,_zD1436("ZQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("ZQ=="), false, game)
			elseif p30 ==_zD1436("Zw==") then
				vim1:SendKeyEvent(true,_zD1436("Zw=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("Zw=="), false, game)
			elseif p30 ==_zD1436("fA==") then
				vim1:SendKeyEvent(true,_zD1436("fA=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("fA=="), false, game)
			elseif p30 ==_zD1436("aQ==") then
				vim1:SendKeyEvent(true,_zD1436("aQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("aQ=="), false, game)
			elseif p30 ==_zD1436("eQ==") then
				vim1:SendKeyEvent(true,_zD1436("eQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("eQ=="), false, game)
			elseif p30 ==_zD1436("Zg==") then
				vim1:SendKeyEvent(true,_zD1436("Zg=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("Zg=="), false, game)
			end
		elseif p29 ==_zD1436("eEpR") then
			weaponSc(_zD1436("eEpR"))

			if not v47(p29, p30) then
				return
			end

			if p30 ==_zD1436("ZQ==") then
				vim1:SendKeyEvent(true,_zD1436("ZQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("ZQ=="), false, game)
			elseif p30 ==_zD1436("Zw==") then
				vim1:SendKeyEvent(true,_zD1436("Zw=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("Zw=="), false, game)
			elseif p30 ==_zD1436("fA==") then
				vim1:SendKeyEvent(true,_zD1436("fA=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("fA=="), false, game)
			elseif p30 ==_zD1436("aQ==") then
				vim1:SendKeyEvent(true,_zD1436("aQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("aQ=="), false, game)
			elseif p30 ==_zD1436("eQ==") then
				vim1:SendKeyEvent(true,_zD1436("eQ=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("eQ=="), false, game)
			elseif p30 ==_zD1436("Zg==") then
				vim1:SendKeyEvent(true,_zD1436("Zg=="), false, game)
				vim1:SendKeyEvent(false,_zD1436("Zg=="), false, game)
			end
		end

		if p29 ==_zD1436("UVZT") and p30 ==_zD1436("Zg==") then
			vim1:SendKeyEvent(true,_zD1436("Zg=="), false, game)
			vim1:SendKeyEvent(false,_zD1436("Zg=="), false, game)
		end
	end
end

do
	local v65 = getrawmetatable(game)
	local __namecall = v65.__namecall

	setreadonly(v65, false)
	v65.__namecall = newcclosure(function(...)
		local v67 = getnamecallmethod()
		local t10 = { ... }

		if tostring(v67) ==_zD1436("eVZNWmxaTUlaTQ==") and tostring(t10[(14-13)]) ==_zD1436("bVpSUEtaeklaUUs=") and tostring(t10[(18-16)]) ~=_zD1436("S01KWg==") and tostring(t10[(1+1)]) ~=_zD1436("WV5TTFo=") then
			if _G.FarmMastery_G and not SoulGuitar or _G.FarmMastery_Dev or _G.FarmBlazeEM or _G.Prehis_Skills or _G.SeaBeast1 or _G.FishBoat or _G.PGB or _G.Leviathan1 or _G.Complete_Trials or _G.AimMethod and ABmethod ==_zD1436("flZSH29TXkZaTQ==") or _G.AimMethod and ABmethod ==_zD1436("cVpeTVpMSx9+VlI=") then
				t10[(23-21)] = MousePos

				return __namecall(unpack(t10))
			end
		end

		return __namecall(...)
	end)
end

GetConnectionEnemies = function(p31)
	for _, child in pairs(replicated:GetChildren()) do
		if child:IsA(_zD1436("clBbWlM=")) then
			if (typeof(p31) ==_zD1436("S15dU1o=") and table.find(p31, child.Name) or child.Name == p31) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child.Humanoid.Health > (89-89) then
				return child
			end
		end
	end

	local children, v72 = game.Workspace.Enemies:GetChildren()

	for _, v1 in next, children, v72 do
		if v1:IsA(_zD1436("clBbWlM=")) then
			if (typeof(p31) ==_zD1436("S15dU1o=") and table.find(p31, v1.Name) or v1.Name == p31) and v1:FindFirstChild(_zD1436("d0pSXlFQVls=")) and v1.Humanoid.Health > (123-123) then
				return v1
			end
		end
	end
end
LowCpu = function()
	local Terrain = game.Workspace.Terrain

	Terrain.WaterWaveSize = (176-176)
	Terrain.WaterWaveSpeed = (547-547)
	Terrain.WaterReflectance = (369-369)
	Terrain.WaterTransparency = (792-792)
	game.Lighting.GlobalShadows = false
	game.Lighting.FogEnd = 9e9
	game.Lighting.Brightness = (265-265)
	settings().Rendering.QualityLevel =_zD1436("c1pJWlMPDg==")

	for _, descendant in pairs(game:GetDescendants()) do
		if not (descendant:IsA(_zD1436("b15NSw==")) or descendant:IsA(_zD1436("alFWUFE=")) or descendant:IsA(_zD1436("fFBNUVpNaFpbWFpvXk1L"))) then
			if not descendant:IsA(_zD1436("a01KTExvXk1L")) then
				if not descendant:IsA(_zD1436("e1pcXlM=")) then
					if not descendant:IsA(_zD1436("a1pHS0pNWg==")) then
						if descendant:IsA(_zD1436("b15NS1ZcU1p6UlZLS1pN")) or descendant:IsA(_zD1436("a01eVlM=")) then
							descendant.Lifetime = NumberRange.new((645-645))
						elseif descendant:IsA(_zD1436("ekdPU1BMVlBR")) then
							descendant.BlastPressure = (20-19)
							descendant.BlastRadius = (1+0)
						elseif descendant:IsA(_zD1436("eVZNWg==")) or descendant:IsA(_zD1436("bE9QS3NWWFdL")) or descendant:IsA(_zD1436("bFJQVFo=")) or descendant:IsA(_zD1436("bE9eTVRTWkw=")) then
							descendant.Enabled = false
						elseif descendant:IsA(_zD1436("clpMV29eTUs=")) then
							descendant.Material =_zD1436("b1NeTEtWXA==")
							descendant.Reflectance = (782-782)
							descendant.TextureID = 10385902758728956
						end

						continue
					end
				end

				descendant.Transparency = (47-46)

				continue
			end
		end

		descendant.Material =_zD1436("b1NeTEtWXA==")
		descendant.Reflectance = (422-422)
	end

	for _, child in pairs(game.Lighting:GetChildren()) do
		if child:IsA(_zD1436("fVNKTXpZWVpcSw==")) or child:IsA(_zD1436("bEpRbV5GTHpZWVpcSw==")) or child:IsA(_zD1436("fFBTUE18UE1NWlxLVlBRellZWlxL")) or child:IsA(_zD1436("fVNQUFJ6WVlaXEs=")) or child:IsA(_zD1436("e1pPS1dwWXlWWlNbellZWlxL")) then
			child.Enabled = false
		end
	end
end
CheckF = function()
	if not (GetBP(_zD1436("e01eWFBREntNXlhQUQ==")) or GetBP(_zD1436("eF5MEnheTA=="))) then
		if not (GetBP(_zD1436("ZlpLVhJmWktW")) or GetBP(_zD1436("dFZLTEpRWhJ0VktMSlFa")) or not not GetBP(_zD1436("axJtWkcSaxJtWkc="))) then
			return
		end
	end

	return true
end
CheckBoat = function()
	local v80, v81, v82 = pairs(workspace.Boats:GetChildren())
	local v83 = geniter(v80, v81, v82)
	local v84 = table.pack(v83())

	if v84[(51-50)] then
		local v85 = v84[(37-34)]

		while tostring(v85.Owner.Value) ~= tostring(plr.Name) do
			local v86 = table.pack(v83())

			if not v86[(44-43)] then
				return false
			end

			v85 = v86[(2+1)]
		end

		return v85
	end

	return false
end
CheckEnemiesBoat = function()
	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name ==_zD1436("eVZMV31QXks=") then
			if child:FindFirstChild(_zD1436("d1peU0tX")).Value > (526-526) then
				return true
			end
		end
	end

	return false
end
CheckPirateGrandBrigade = function()
	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if (child.Name ==_zD1436("b1ZNXktaeE1eUVt9TVZYXlta") or child.Name ==_zD1436("b1ZNXktafU1WWF5bWg==")) and child:FindFirstChild(_zD1436("d1peU0tX")).Value > (161-161) then
			return true
		end
	end

	return false
end
CheckShark = function()
	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name ==_zD1436("bFdeTVQ=") and t9.Alive(child) then
			return true
		end
	end

	return false
end

do
	CheckTerrorShark = function()
		for _, child in pairs(workspace.Enemies:GetChildren()) do
			if child.Name ==_zD1436("a1pNTVBNTFdeTVQ=") and t9.Alive(child) then
				return true
			end
		end

		return false
	end
end

do
	CheckPiranha = function()
		for _, child in pairs(workspace.Enemies:GetChildren()) do
			if child.Name ==_zD1436("b1ZNXlFXXg==") then
				if t9.Alive(child) then
					return true
				end
			end
		end

		return false
	end
end

CheckFishCrew = function()
	for _, child in pairs(workspace.Enemies:GetChildren()) do
		if child.Name ~=_zD1436("eVZMVx98TVpIH3JaUl1aTQ==") then
			if child.Name ~=_zD1436("d15KUUtaWx98TVpIH3JaUl1aTQ==") then
				continue
			end
		end

		if t9.Alive(child) then
			return true
		end
	end

	return false
end

do
	CheckHauntedCrew = function()
		for _, child in pairs(workspace.Enemies:GetChildren()) do
			if child.Name ==_zD1436("d15KUUtaWx98TVpIH3JaUl1aTQ==") and t9.Alive(child) then
				return true
			end
		end

		return false
	end
end

do
	CheckSeaBeast = function()
		if workspace.SeaBeasts:FindFirstChild(_zD1436("bFpefVpeTEsO")) then
			return true
		end

		return false
	end
end

do
	CheckLeviathan = function()
		if workspace.SeaBeasts:FindFirstChild(_zD1436("c1pJVl5LV15R")) then
			return true
		end

		return false
	end
end

do
	UpdStFruit = function()
		local children, v102 = plr.Backpack:GetChildren()

		for _, v1 in next, children, v102 do
			StoreFruit = v1:FindFirstChild(_zD1436("el5LbVpSUEta"), true)

			if StoreFruit then
				replicated.Remotes.CommF_:InvokeServer(_zD1436("bEtQTVp5TUpWSw=="), StoreFruit.Parent:GetAttribute(_zD1436("cE1WWFZRXlNxXlJa")), plr.Backpack:FindFirstChild(v1.Name))
			end
		end
	end
end

collectFruits = function(p32)
	if p32 then
		local Character = plr.Character

		for _, child in pairs(workspace:GetChildren()) do
			if string.find(child.Name,_zD1436("eU1KVks=")) then
				child.Handle.CFrame = Character.HumanoidRootPart.CFrame
			end
		end
	end
end
Getmoon = function()
	if World1 then
		return Lighting.FantasySky.MoonTextureId
	end

	if World2 then
		return Lighting.FantasySky.MoonTextureId
	end

	if World3 then
		return Lighting.Sky.MoonTextureId
	end
end
DropFruits = function()
	local children, v109 = plr.Backpack:GetChildren()

	for _, v1 in next, children, v109 do
		if string.find(v1.Name,_zD1436("eU1KVks=")) then
			EquipWeapon(v1.Name)
			wait(0.1)

			if plr.PlayerGui.Main.Dialogue.Visible == true then
				plr.PlayerGui.Main.Dialogue.Visible = false
			end

			EquipWeapon(v1.Name)
			plr.Character:FindFirstChild(v1.Name).EatRemote:InvokeServer(_zD1436("e01QTw=="))
		end
	end

	for _, child in pairs(plr.Character:GetChildren()) do
		if string.find(child.Name,_zD1436("eU1KVks=")) then
			EquipWeapon(child.Name)
			wait(0.1)

			if plr.PlayerGui.Main.Dialogue.Visible == true then
				plr.PlayerGui.Main.Dialogue.Visible = false
			end

			EquipWeapon(child.Name)
			plr.Character:FindFirstChild(child.Name).EatRemote:InvokeServer(_zD1436("e01QTw=="))
		end
	end
end

do
	GetBP = function(p33)
		return plr.Backpack:FindFirstChild(p33) or plr.Character:FindFirstChild(p33)
	end
end

do
	GetIn = function(p34)
		for _, v1 in pairs(replicated.Remotes.CommF_:InvokeServer(_zD1436("WFpLdlFJWlFLUE1G"))) do
			if type(v1) ==_zD1436("S15dU1o=") then
				if v1.Name == p34 then
					return true
				end

				if plr.Character:FindFirstChild(p34) then
					return true
				end

				if plr.Backpack:FindFirstChild(p34) then
					return true
				end
			end
		end

		return false
	end
end

GetM = function(p35)
	for _, v1 in pairs(replicated.Remotes.CommF_:InvokeServer(_zD1436("WFpLdlFJWlFLUE1G"))) do
		if type(v1) ==_zD1436("S15dU1o=") and v1.Type ==_zD1436("cl5LWk1WXlM=") and v1.Name == p35 then
			return v1.Count
		end
	end

	return (315-315)
end
GetWP = function(p36)
	local response = replicated.Remotes.CommF_:InvokeServer(_zD1436("WFpLdlFJWlFLUE1G"))

	if type(response) ~=_zD1436("S15dU1o=") then
		return false
	end

	for _, v1 in pairs(response) do
		if type(v1) ==_zD1436("S15dU1o=") and v1.Type ==_zD1436("bEhQTVs=") then
			if v1.Name == p36 then
				return true
			end

			if plr.Character then
				if plr.Character:FindFirstChild(p36) then
					return true
				end
			end

			if not plr.Backpack then
				continue
			end

			if plr.Backpack:FindFirstChild(p36) then
				return true
			end
		end
	end

	return false
end
getInfinity_Ability = function(p37, p38)
	if not Root then
		return
	end

	if p37 ==_zD1436("bFBNSg==") and p38 then
		local next_ = next
		local v122, v123 = getgc()

		for _, v1 in next_, v122, v123 do
			if plr.Character.Soru then
				if typeof(v1) ==_zD1436("WUpRXEtWUFE=") and getfenv(v1).script == plr.Character.Soru then
					local next_2 = next
					local v127, v128 = getupvalues(v1)

					for _, v2 in next_2, v127, v128 do
						if typeof(v2) ==_zD1436("S15dU1o=") then
							repeat
								wait(Sec)
								v2.LastUse = (179-179)
							until plr.Character.Humanoid.Health <= (268-268)
						end
					end
				end
			end
		end
	elseif p37 ==_zD1436("elFaTVhG") and p38 then
		plr.Character.Energy.Changed:connect(function()
			if p38 then
				plr.Character.Energy.Value = Energy
			end
		end)
	elseif p37 ==_zD1436("cF1MWk1JXktWUFE=") and p38 then
		plr.VisionRadius.Value = math.huge
	end
end
Hop = function()
	pcall(function()
		for i = math.random((32-31), math.random((20+20), (187-112))), (217-117) do
			for k, v1 in next, replicated.__ServerBrowser:InvokeServer(i), nil do
				if tonumber(v1.Count) < (33-21) then
					TeleportService:TeleportToPlaceInstance(game.PlaceId, k)
				end
			end
		end
	end)
end

local Part = Instance.new(_zD1436("b15NSw=="), workspace)

Part.Size = Vector3.new((42-41), (19-18), (49-48))
Part.Name =_zD1436("bVZPYHZRW01e")
Part.Anchored = true
Part.CanCollide = false
Part.CanTouch = false
Part.Transparency = (24-23)

do
	local PartName = workspace:FindFirstChild(Part.Name)

	if PartName and PartName ~= Part then
		PartName:Destroy()
	end
end

do
	task.spawn(function()
		while task.wait() do
			if Part and Part.Parent == workspace then
				if shouldTween then
					getgenv().OnFarm = true
				else
					getgenv().OnFarm = false
				end
			else
				getgenv().OnFarm = false
			end
		end
	end)
end

do
	task.spawn(function()
		local LocalPlayer = game.Players.LocalPlayer

		while true do
			task.wait()

			if not LocalPlayer.Character then
				continue
			end

			if LocalPlayer.Character.PrimaryPart then
				break
			end
		end

		Part.CFrame = LocalPlayer.Character.PrimaryPart.CFrame

		while task.wait() do
			pcall(function()
				if getgenv().OnFarm then
					if not _G.WasOnFarm then
						_G.WasOnFarm = true
					end

					if Part and Part.Parent == workspace then
						local PrimaryPart = LocalPlayer.Character and LocalPlayer.Character.PrimaryPart

						if PrimaryPart and (PrimaryPart.Position - Part.Position).Magnitude <= (171+29) then
							PrimaryPart.CFrame = CFrame.new(Part.Position)
						else
							Part.CFrame = PrimaryPart.CFrame
						end
					end

					local Character = LocalPlayer.Character

					if Character then
						for _, child in pairs(Character:GetChildren()) do
							if child:IsA(_zD1436("fV5MWm9eTUs=")) then
								child.CanCollide = false
							end
						end
					end
				elseif _G.WasOnFarm then
					_G.WasOnFarm = false

					local Character = LocalPlayer.Character

					if Character then
						for _, child in pairs(Character:GetChildren()) do
							if child:IsA(_zD1436("fV5MWm9eTUs=")) then
								child.CanCollide = true
							end
						end
					end
				end
			end)
		end
	end)
end

local ReplicatedStorage = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo="))

game:GetService(_zD1436("a0haWlFsWk1JVlxa"))
game:GetService(_zD1436("bUpRbFpNSVZcWg=="))

do
	local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer

	sea1 = game.PlaceId == 2753915549 or game.PlaceId == 85211729168715
	sea2 = game.PlaceId == 4442272183 or game.PlaceId == 79091703265657
	sea3 = game.PlaceId == 7449423635 or game.PlaceId == 100117331123089

	local t11 = {
		[_zD1436("a0haWlEfbE9aWls=")] = (397-197),
		[_zD1436("fUZPXkxMH2taU1pPUE1L")] = false,
		[_zD1436("ak8fZg==")] = false,
		[_zD1436("ak8fZh9oV1pRH3NQSB93Wl5TS1c=")] = false,
		[_zD1436("bF5SWh9m")] = false
	}
	local cFrame = CFrame.new(10641.0918, -1953.92981, 9825.07031, -0.652825892, -9.2805891e-(8+0), -0.757508039, -2.73638356e-(44-36), (2-1), -9.89323823e-(7+1), 0.757508039, -4.38572947e-(14-6), -0.652825892)
	local cFrame2 = CFrame.new(-16271.126, 25.5847301, 1371.98755, 0.999396622, -5.78875188e-(48-40), -0.0347310975, 5.52972779e-(6+2), (1+0), -8.7544322e-(16-8), 0.034731105, 8.28877091e-(36-28), 0.999396741)

	Convert_CFrame = function(p39)
		if not p39 then
			return
		end

		if typeof(p39) ==_zD1436("aVpcS1BNDA==") then
			return CFrame.new(p39)
		end

		if typeof(p39) ==_zD1436("fHlNXlJa") then
			return p39
		end

		if typeof(p39) ==_zD1436("clBbWlM=") then
			return p39:GetPivot()
		end

		if p39.CFrame then
			return p39.CFrame
		end

		return nil
	end
	GetDistance = function(p40, p41, p42)
		if p40 == nil then
			return 9e9
		end

		local Character = LocalPlayer.Character

		if not Character then
			return 9e9
		end

		local Humanoid = Character:FindFirstChild(_zD1436("d0pSXlFQVls="))

		if not Humanoid or Humanoid.Health <= (164-164) then
			return 9e9
		end

		if p41 == nil then
			p41 = Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

			if not p41 then
				return 9e9
			end
		end

		local v151 = Convert_CFrame(p40)
		local v152 = Convert_CFrame(p41)

		if p42 then
			return (Vector3.new(v151.X, (951-951), v151.Z) - Vector3.new(v152.X, (641-641), v152.Z)).Magnitude
		end

		return (v151.Position - v152.Position).Magnitude
	end
	InArea = function(p43)
		local _WorldOrigin = workspace:FindFirstChild(_zD1436("YGhQTVNbcE1WWFZR"))

		if not _WorldOrigin then
			return {
				Name =""
			}
		end

		local v154 = Convert_CFrame(p43)
		local children, v156 = _WorldOrigin.Locations:GetChildren()

		for _, v1 in next, children, v156 do
			if v1:FindFirstChild(_zD1436("clpMVw==")) and (v154.Position - v1.Position).Magnitude <= v1.Mesh.Scale.X then
				return v1
			end
		end

		return {
			Name =""
		}
	end
	GetSpawnPoint = function(p44)
		local Pirates_ = workspace:FindFirstChild(_zD1436("YGhQTVNbcE1WWFZR")) and workspace._WorldOrigin:FindFirstChild(_zD1436("b1NeRlpNbE9eSFFM")) and workspace._WorldOrigin.PlayerSpawns:FindFirstChild(_zD1436("b1ZNXktaTA=="))

		if not Pirates_ then
			return
		end

		local children, v161 = Pirates_:GetChildren()

		for _, v1 in next, children, v161 do
			if v1:FindFirstChild(_zD1436("b15NSw==")) and (v1.Part.Position - p44.Position).Magnitude <= (571+1929) then
				return v1
			end
		end
	end
	CheckLegendaryItems = function()
		local function v164(p45)
			local children, v166 = LocalPlayer.Backpack:GetChildren()

			for _, v1 in next, children, v166 do
				if v1:IsA(_zD1436("a1BQUw==")) then
					if v1.Name == p45 then
						return v1
					end

					if string.find(v1.Name, p45) then
						return v1
					end
				end
			end

			local children2, v170 = LocalPlayer.Character:GetChildren()

			for _, v1 in next, children2, v170 do
				if v1:IsA(_zD1436("a1BQUw==")) and (v1.Name == p45 or string.find(v1.Name, p45)) then
					return v1
				end
			end
		end

		if v164(_zD1436("eFBbGEwffFdeU1ZcWg==")) or v164(_zD1436("eVZMSx9QWR97Xk1UUVpMTA==")) or v164(_zD1436("bEhaWksffFdeU1ZcWg==")) or v164(_zD1436("d15TU1BIH3pMTFpRXFo=")) or v164(_zD1436("eVNQSFpNDg==")) then
			return true
		end

		return false
	end
	WaitForHumanoid = function()
		local Character = LocalPlayer.Character

		if not Character then
			return nil
		end

		local Humanoid = Character:FindFirstChild(_zD1436("d0pSXlFQVls="))

		if Humanoid then
			return Humanoid
		end

		local v175 = tick() + (4+1)
		local Humanoid2

		while true do
			if not (tick() < v175) then
				return nil
			end

			Humanoid2 = Character:FindFirstChild(_zD1436("d0pSXlFQVls="))

			if Humanoid2 then
				break
			end

			task.wait(0.1)
		end

		return Humanoid2
	end
	checkinventory = function(p46)
		if p46 then
			for _, v1 in pairs(ReplicatedStorage.Remotes.CommF_:InvokeServer(_zD1436("WFpLdlFJWlFLUE1G"))) do
				if v1.Name == p46 then
					return true
				end
			end
		end

		return false
	end
	getdis = function(p47, p48)
		local CFrame_ = p48 or LocalPlayer.Character.HumanoidRootPart.CFrame

		return (CFrame.new(p47.X, CFrame_.Y, p47.Z).Position - CFrame.new(CFrame_.X, CFrame_.Y, CFrame_.Z).Position).Magnitude
	end
	CanBypassTeleport = function(p49)
		local Name = InArea(p49).Name

		if Name =="" then
			return false
		end

		if t11[_zD1436("fUZPXkxMH2taU1pPUE1L")] and not Name:find(_zD1436("e1ZSWlFMVlBR")) then
			if not (Name:find(_zD1436("bEpdUlpNWFpb")) or Name ==_zD1436("bFpeU1pbH3xeSVpNUQ==")) then
				if not Name:lower():find(_zD1436("SlFbWk0=")) and not CheckLegendaryItems() then
					if LocalPlayer.Data and LocalPlayer.Data.LastSpawnPoint and LocalPlayer.Data.LastSpawnPoint.Value ==_zD1436("bEpdUlpNWFpbdkxTXlFb") then
						return false
					end

					if GetDistance(p49.Position) <= (4691-1191) then
						return false
					end

					return true
				end
			end
		end

		return false
	end
	GetBypassCFrame = function(p50)
		local huge = math.huge
		local v182
		local children = workspace._WorldOrigin.PlayerSpawns.Pirates:GetChildren()
		local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

		if not HumanoidRootPart then
			return nil
		end

		for _, v1 in next, children, nil do
			if v1:FindFirstChild(_zD1436("b15NSw==")) and (p50.Position - HumanoidRootPart.Position).Magnitude >= (3549-549) and GetSpawnPoint(v1.Part) ~= GetSpawnPoint(HumanoidRootPart) and (v1.Part.Position - HumanoidRootPart.Position).Magnitude <= (13232-3232) and (v1.Part.Position - p50.Position).Magnitude <= huge then
				huge = (v1.Part.Position - p50.Position).Magnitude
				v182 = v1
			end
		end

		return v182
	end
	BypassTP = function(p51)
		local Character = LocalPlayer.Character

		if not Character then
			return
		end

		local v188 = WaitForHumanoid()

		if not v188 or v188.Health <= (104-104) then
			return
		end

		if CanBypassTeleport(p51) and GetBypassCFrame(p51) then
			local v189 = GetBypassCFrame(p51)

			if v189 and v189:FindFirstChild(_zD1436("b15NSw==")) then
				Character.LastSpawnPoint.Disabled = true
				ReplicatedStorage.Remotes.CommF_:InvokeServer(_zD1436("bFpLc15MS2xPXkhRb1BWUUs="), v189.Name)
				ReplicatedStorage.Remotes.CommF_:InvokeServer(_zD1436("bFpLbE9eSFFvUFZRSw=="))
				Character:PivotTo(v189.Part.CFrame)
				v188:ChangeState((24-9))

				while true do
					task.wait()

					if not LocalPlayer.Character then
						continue
					end

					if WaitForHumanoid() and WaitForHumanoid().Health > (13-13) then
						break
					end
				end
			end
		end
	end
	totopofgreattree = function()
		if getdis(CFrame.new(28310.0234, 14895.1123, 109.456741)) > (2937-1437) then
			ReplicatedStorage.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(28310.0234, 14895.1123, 109.456741))
			wait(0.3)
		end

		local cFrame3 = CFrame.new(28607.5352, 14896.5449, 106.011726)

		_tp(cFrame3)

		repeat
			wait()
		until getdis(cFrame3) <= (25-20)

		wait(0.5)

		for i = (28-27), (3+1) do
			ReplicatedStorage.Remotes.CommF_:InvokeServer(_zD1436("bV5cWmkLb01QWE1aTEw="),_zD1436("a1pTWk9QTUt9XlxU"))
		end
	end
	requestentrance = function(p52)
		local Position = p52

		if typeof(p52) ==_zD1436("fHlNXlJa") then
			Position = p52.Position
		end

		local t12

		if sea1 then
			t12 = {
				Sky3 = Vector3.new(-(2117+5777), (401+5146), -(731-351)),
				Sky3Exit = Vector3.new(-(3977+630), (445+429), -(466+1201)),
				UnderWater = Vector3.new((102055-40892), (5+6), (2507-688)),
				[_zD1436("alFbWk1IXktaTR98VktG")] = Vector3.new(61165.19140625, 0.18704631924629211, 1897.379150390625),
				[_zD1436("b1ZNXktaH2lWU1NeWFo=")] = Vector3.new(-1242.4625244140625, 4.7870597839355469, 3901.282958984375),
				UnderwaterExit = Vector3.new((3720+330), -(49-48), -(2723-909))
			}
		elseif sea2 then
			t12 = {
				[_zD1436("bEheUR9yXlFMVlBR")] = Vector3.new(-(568-178), (216+116), (536+137)),
				[_zD1436("bEheUR9tUFBS")] = Vector3.new((2969-684), (6+9), (774+131)),
				[_zD1436("fEpNTFpbH2xXVk8=")] = Vector3.new((326+597), (132-6), (24682+8170)),
				[_zD1436("ZVBSXVZaH3ZMU15RWw==")] = Vector3.new(-(6489+20), (80+3), -(216-83))
			}
		else
			t12 = {
				[_zD1436("d0ZbTV4fdkxTXlFb")] = Vector3.new(5657.88623046875, 1013.0790405273438, -335.4996337890625),
				Mansion = Vector3.new(-(4045+8417), (9+366), -(8001-449)),
				Castle = Vector3.new(-(2323+2713), (186+129), -(165+3014)),
				[_zD1436("a1pST1NaH1BZH2tWUlo=")] = Vector3.new((19538+8748), (17712-2815), (123-20)),
				[_zD1436("eE1aXktaH2tNWlo=")] = Vector3.new(3024.1709, 2280.69434, -7325.12793)
			}

			if not checkinventory(_zD1436("aV5TVEZNVlofd1pTUg==")) then
				return
			end
		end

		local v194
		local huge = math.huge

		for _, v1 in pairs(t12) do
			local Magnitude = typeof(v1) ==_zD1436("aVpcS1BNDA==") and (v1 - Position).Magnitude or (v1.Position - Position).Magnitude

			if Magnitude < huge then
				huge = Magnitude
				v194 = v1
			end
		end

		if v194 and huge and huge < getdis(p52) then
			pcall(function()
				if _G.TweenCache then
					_G.TweenCache:Cancel()
				end
			end)

			local ok = not (typeof(v194) ==_zD1436("aVpcS1BNDA==") and v194.X == 3024.1709 and v194.Y == 2280.69434 and v194.Z == -7325.12793)

			if not ok then
				ok = not (ReplicatedStorage.Remotes.CommF_:InvokeServer(_zD1436("bV5cWmkLb01QWE1aTEw="),_zD1436("fFdaXFQ=")) >= (35-33))
			end

			if ok then
				if huge < getdis(p52) then
					ReplicatedStorage.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), typeof(v194) ==_zD1436("aVpcS1BNDA==") and v194 or v194.Position)
					wait((1+0))
				end
			else
				totopofgreattree()
				wait((26-25))
			end
		end
	end
	_tp = function(p53)
		local cFrame3

		if typeof(p53) ==_zD1436("aVpcS1BNDA==") then
			cFrame3 = CFrame.new(p53)
		elseif typeof(p53) ==_zD1436("fHlNXlJa") then
			cFrame3 = p53
		else
			cFrame3 = p53 and p53.CFrame
		end

		if not cFrame3 then
			return
		end

		if not plr.Character or not plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
			return
		end

		local HumanoidRootPart = plr.Character.HumanoidRootPart

		getgenv().OnFarm = false
		pcall(function()
			if CanBypassTeleport(cFrame3) then
				BypassTP(cFrame3)
				task.wait(0.5)
			end
		end)
		pcall(function()
			requestentrance(p53)
		end)

		if sea3 then
			if getdis(cFrame3.Position, cFrame.Position) < (1302+698) then
				local HumanoidRootPart2 = plr.Character.HumanoidRootPart

				if math.abs(cFrame.Position.Y - HumanoidRootPart2.CFrame.Y) > (1501-501) then
					repeat
						task.wait()
						old_tp(cFrame2)

						if getdis(cFrame2) < (69-59) then
							local Net = ReplicatedStorage.Modules.Net

							Net[_zD1436("bXkQbEpdUl5NVlFaaFBNVFpNbE9aXlQ=")]:InvokeServer(_zD1436("fkxUdFZTU1pba1ZUVn1QTEw="))
							task.wait(0.5)
							Net[_zD1436("bXkQbEpdUl5NVlFaaFBNVFpNbE9aXlQ=")]:InvokeServer(_zD1436("a01eSVpTa1BsSl1SWk1YWlt2TFNeUVs="))
						end
					until getdis(cFrame3.Position) < (3287-1287)

					task.wait(0.6)
					pcall(function()
						if HumanoidRootPart2:FindFirstChild(_zD1436("fVBbRnxTVk8=")) then
							HumanoidRootPart2.BodyClip:Destroy()
						end
					end)
				end
			end
		end

		local Magnitude = (cFrame3.Position - HumanoidRootPart.Position).Magnitude
		local tweenInfo = TweenInfo.new(Magnitude / (Magnitude <= (15+0) and (getgenv().TweenSpeedNear or (406-226)) or getgenv().TweenSpeedFar or (125+25)), Enum.EasingStyle.Linear)
		local tween = game:GetService(_zD1436("a0haWlFsWk1JVlxa")):Create(Part, tweenInfo, {
			CFrame = CFrame.new(cFrame3.Position)
		})

		if plr.Character.Humanoid.Sit == true then
			Part.CFrame = CFrame.new(Part.Position.X, cFrame3.Y, Part.Position.Z)
		end

		tween:Play()
		task.spawn(function()
			while tween.PlaybackState == Enum.PlaybackState.Playing do
				if shouldTween then
					task.wait(0.1)
				else
					tween:Cancel()

					break
				end
			end

			getgenv().OnFarm = true
		end)

		return tween
	end
end

old_tp = function(p54)
	if plr.Character and plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
		plr.Character.HumanoidRootPart.CFrame = p54
	end
end
TeleportToTarget = function(p55)
	local v207 = _tp(p55)

	if v207 then
		v207.Completed:Wait()
	end

	task.wait(0.1)
end
notween = function(p56)
	plr.Character.HumanoidRootPart.CFrame = p56
end

do
	BTP = function(p57)
		local LocalPlayer = game.Players.LocalPlayer
		local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
		local Humanoid = LocalPlayer.Character.Humanoid
		local Main = LocalPlayer.PlayerGui.Main
		local Position = HumanoidRootPart.Position

		repeat
			Humanoid.Health = (682-682)
			HumanoidRootPart.CFrame = p57
			Main.Quest.Visible = false

			if (HumanoidRootPart.Position - Position).Magnitude > (18-17) then
				Position = HumanoidRootPart.Position
				HumanoidRootPart.CFrame = p57
			end

			task.wait(0.5)
		until (p57.Position - HumanoidRootPart.Position).Magnitude <= (1731+269)
	end
end

do
	spawn(function()
		while task.wait() do
			pcall(function()
				if _G.Auto_StartRaid or _G.SailBoat_Hydra or _G.WardenBoss or _G.AutoFactory or _G.HighestMirage or _G.HCM or _G.PGB or _G.Leviathan1 or _G.UPGDrago or _G.Complete_Trials or _G.TpDrago_Prehis or _G.BuyDrago or _G.AutoFireFlowers or _G.DT_Uzoth or _G.AutoBerry or _G.Prefully or _G.Prehis_Find or _G.Prehis_Skills or _G.Prehis_DB or _G.Prehis_DE or _G.FarmBlazeEM or _G.Dojoo or _G.CollectPresent or _G.AutoLawKak or _G.TpLab or _G.AutoPhoenixF or _G.AutoFarmChest or _G.AutoHytHallow or _G.LongsWord or _G.BlackSpikey or _G.AutoHolyTorch or _G.TrainDrago or _G.AutoSaber or _G.FarmMastery_Dev or _G.CitizenQuest or _G.AutoEctoplasm or _G.KeysRen or _G.Auto_Rainbow_Haki or _G.obsFarm or _G.AutoBigmom or _G.Doughv2 or _G.AuraBoss or _G.Raiding or _G.Auto_Cavender or _G.TpPly or _G.Bartilo_Quest or _G.Level or _G.FarmEliteHunt or _G.AutoZou or _G.AutoFarm_Bone or getgenv().AutoMaterial or _G.CraftVM or _G.FrozenTP or _G.TPDoor or _G.AcientOne or _G.AutoFarmNear or _G.AutoRaidCastle or _G.DarkBladev3 or _G.AutoFarmRaid or _G.Auto_Cake_Prince or _G.Addealer or _G.TPNpc or _G.TwinHook or _G.FindMirage or _G.FarmChestM or _G.Shark or _G.TerrorShark or _G.Piranha or _G.MobCrew or _G.SeaBeast1 or _G.FishBoat or _G.AutoPole or _G.AutoPoleV2 or _G.Auto_SuperHuman or _G.AutoDeathStep or _G.Auto_SharkMan_Karate or _G.Auto_Electric_Claw or _G.AutoDragonTalon or _G.Auto_Def_DarkCoat or _G.Auto_God_Human or _G.Auto_Tushita or _G.AutoMatSoul or _G.AutoKenVTWO or _G.AutoSerpentBow or _G.AutoFMon or _G.Auto_Soul_Guitar or _G.TPGEAR or _G.AutoSaw or _G.AutoTridentW2 or _G.AutoEvoRace or _G.AutoGetQuestBounty or _G.MarinesCoat or _G.TravelDres or _G.Defeating or _G.DummyMan or _G.Auto_Yama or _G.Auto_SwanGG or _G.SwanCoat or _G.AutoEcBoss or _G.Auto_Mink or _G.Auto_Human or _G.Auto_Skypiea or _G.Auto_Fish or _G.CDK_TS or _G.CDK_YM or _G.CDK or _G.AutoFarmGodChalice or _G.AutoFistDarkness or _G.AutoMiror or _G.Teleport or _G.AutoKilo or _G.AutoGetUsoap or _G.Praying or _G.TryLucky or _G.AutoColShad or _G.AutoUnHaki or _G.Auto_DonAcces or _G.AutoRipIngay or _G.DragoV3 or _G.DragoV1 or _G.SailBoats or NextIs or _G.FarmGodChalice or _G.IceBossRen or senth or senth2 or _G.Lvthan or _G.beasthunter or _G.DangerLV or _G.Relic123 or _G.tweenKitsune or _G.Collect_Ember or _G.AutofindKitIs or _G.snaguine or _G.TwFruits or _G.tweenKitShrine or _G.Tp_LgS or _G.Tp_MasterA or _G.tweenShrine or _G.FarmMastery_G or _G.FarmMastery_S or _G.FarmBoss or _G.AutoFarmAllBoss or _G.AutoFishSlap or _G.FarmTyrant or _G.FarmPhaBinh or _G.AutoSpawnCP or _G.AutoBerryH or _G.AutoChestBP or _G.FarmEliteHop or _G.AutoHop_Dough or _G.AutoDoughKing or _G.AutoAttackDoughKing or _G.StartEvent or _G.AutoMysticIsland or _G.AutoPlayerHunter or _G.SafeMode or _G.AutoKillMob or _G.AutoStartPrehistoric or _G.AutoUnHaki or _G.AutoAttackRipIndra or _G.AutoFarmIsland or _G.AutoFarmDungeon or _G.AutoFarmCandy or _G.AutoTP_Gift or _G.AutoTPGift or _G.AutoTPAndCollect or _G.MasterAutoLevel or _G.MasterAutoCandy or _G.TPFloor1 or _G.TPFloor2 or _G.TPFloor3 or _G.TPFloor4 or _G.AutoMagnetToken or _G.FarmTyrantHop or _G.Rip_Indra_Hop or _G.DarkbeardHop or _G.EliteHop or _G.DoughKingHop or _G.SoulReaperHop or _G.obsFarm or _G.FruitsFarmingHOP then
					shouldTween = true

					if not plr.Character.HumanoidRootPart:FindFirstChild(_zD1436("fVBbRnxTVk8=")) then
						local BodyVelocity = Instance.new(_zD1436("fVBbRmlaU1BcVktG"))

						BodyVelocity.Name =_zD1436("fVBbRnxTVk8=")
						BodyVelocity.Parent = plr.Character.HumanoidRootPart
						BodyVelocity.MaxForce = Vector3.new((144595-44595), (47798+52202), (170510-70510))
						BodyVelocity.Velocity = Vector3.new((975-975), (551-551), (449-449))
					end

					if not plr.Character:FindFirstChild(_zD1436("V1ZYV1NWWFdL")) then
						local Highlight = Instance.new(_zD1436("d1ZYV1NWWFdL"))

						Highlight.Name =_zD1436("V1ZYV1NWWFdL")
						Highlight.Enabled = true
						Highlight.FillColor = Color3.fromRGB((504-504), (220+35), (45+209))
						Highlight.OutlineColor = Color3.fromRGB((720-720), (3+252), (441-187))
						Highlight.FillTransparency = 0.5
						Highlight.OutlineTransparency = 0.2
						Highlight.Parent = plr.Character
					end

					for _, descendant in pairs(plr.Character:GetDescendants()) do
						if descendant:IsA(_zD1436("fV5MWm9eTUs=")) then
							descendant.CanCollide = false
						end
					end
				else
					shouldTween = false

					if plr.Character.HumanoidRootPart:FindFirstChild(_zD1436("fVBbRnxTVk8=")) then
						plr.Character.HumanoidRootPart:FindFirstChild(_zD1436("fVBbRnxTVk8=")):Destroy()
					end

					if plr.Character:FindFirstChild(_zD1436("V1ZYV1NWWFdL")) then
						plr.Character:FindFirstChild(_zD1436("V1ZYV1NWWFdL")):Destroy()
					end
				end
			end)
		end
	end)
end

QuestB = function()
	if World1 then
		if _G.FindBoss ==_zD1436("a1daH3hQTVZTU14fdFZRWA==") then
			bMon =_zD1436("a1daH3hQTVZTU14fdFZRWA==")
			Qname =_zD1436("dUpRWFNabkpaTEs=")
			Qdata = (1+2)
			PosQBoss = CFrame.new(-1601.6553955078, 36.85213470459, 153.38809204102)
			PosB = CFrame.new(-1088.75977, 8.13463783, -488.559906, -0.707134247, (656-656), 0.707079291, (589-589), (52-51), (588-588), -0.707079291, (922-922), -0.707134247)
		elseif _G.FindBoss ==_zD1436("fVBdXUY=") then
			bMon =_zD1436("fVBdXUY=")
			Qname =_zD1436("fUpYWEZuSlpMSw4=")
			Qdata = (2+1)
			PosQBoss = CFrame.new(-1140.1761474609, 4.752049446106, 3827.4057617188)
			PosB = CFrame.new(-1087.3760986328, 46.949409484863, 4040.1462402344)
		elseif _G.FindBoss ==_zD1436("a1daH2xeSA==") then
			bMon =_zD1436("a1daH2xeSA==")
			PosB = CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906)
		elseif _G.FindBoss ==_zD1436("ZlpLVg==") then
			bMon =_zD1436("ZlpLVg==")
			Qname =_zD1436("bFFQSG5KWkxL")
			Qdata = (3+0)
			PosQBoss = CFrame.new(1386.8073730469, 87.272789001465, -1298.3576660156)
			PosB = CFrame.new(1218.7956542969, 138.01184082031, -1488.0262451172)
		elseif _G.FindBoss ==_zD1436("clBdH3NaXltaTQ==") then
			bMon =_zD1436("clBdH3NaXltaTQ==")
			PosB = CFrame.new(-2844.7307128906, 7.4180502891541, 5356.6723632813)
		elseif _G.FindBoss ==_zD1436("aVZcWh9+W1JWTV5T") then
			bMon =_zD1436("aVZcWh9+W1JWTV5T")
			Qname =_zD1436("cl5NVlFabkpaTEsN")
			Qdata = (2+0)
			PosQBoss = CFrame.new(-5036.2465820313, 28.677835464478, 4324.56640625)
			PosB = CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375)
		elseif _G.FindBoss ==_zD1436("bF5dWk0fekdPWk1L") then
			bMon =_zD1436("bF5dWk0fekdPWk1L")
			PosB = CFrame.new(-1458.89502, 29.8870335, -50.633564)
		elseif _G.FindBoss ==_zD1436("aF5NW1pR") then
			bMon =_zD1436("aF5NW1pR")
			Qname =_zD1436("dlJPWlNuSlpMSw==")
			Qdata = (1+0)
			PosB = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, -4.49946401e-(1+5), 0.975376427, -1.95412576e-(51-46), (1+0), 9.03162072e-(3+3), -0.975376427, -2.10519756e-(3+2), 0.220546961)
			PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, (881-881), 0.681965172, (684-684), (41-40), (62-62), -0.681965172, (93-93), -0.731384635)
		elseif _G.FindBoss ==_zD1436("fFdWWlkfaF5NW1pR") then
			bMon =_zD1436("fFdWWlkfaF5NW1pR")
			Qname =_zD1436("dlJPWlNuSlpMSw==")
			Qdata = (2+0)
			PosB = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-(34-29), -0.939682961, 0.00181045406, 0.342041939)
			PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, (901-901), 0.681965172, (645-645), (1+0), (951-951), -0.681965172, (293-293), -0.731384635)
		elseif _G.FindBoss ==_zD1436("bEheUQ==") then
			bMon =_zD1436("bEheUQ==")
			Qname =_zD1436("dlJPWlNuSlpMSw==")
			Qdata = (2+1)
			PosB = CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, (954-954), 0.951042235, (87-87), (19-18), (675-675), -0.951042235, (270-270), -0.309060812)
			PosQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, -0.731384635, (77-77), 0.681965172, (494-494), (1+0), (870-870), -0.681965172, (879-879), -0.731384635)
		elseif _G.FindBoss ==_zD1436("cl5YUl4ffltSVk1eUw==") then
			bMon =_zD1436("cl5YUl4ffltSVk1eUw==")
			Qname =_zD1436("cl5YUl5uSlpMSw==")
			Qdata = (3+0)
			PosQBoss = CFrame.new(-5314.6220703125, 12.262420654297, 8517.279296875)
			PosB = CFrame.new(-5765.8969726563, 82.92064666748, 8718.3046875)
		elseif _G.FindBoss ==_zD1436("eVZMV1JeUR9zUE1b") then
			bMon =_zD1436("eVZMV1JeUR9zUE1b")
			Qname =_zD1436("eVZMV1JeUW5KWkxL")
			Qdata = (16-13)
			PosQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
			PosB = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984)
		elseif _G.FindBoss ==_zD1436("aEZMT1pN") then
			bMon =_zD1436("aEZMT1pN")
			Qname =_zD1436("bFRGekdPDm5KWkxL")
			Qdata = (2+1)
			PosQBoss = CFrame.new(-7861.947265625, 5545.517578125, -379.85974121094)
			PosB = CFrame.new(-7866.1333007813, 5576.4311523438, -546.74816894531)
		elseif _G.FindBoss ==_zD1436("a1dKUVtaTR94UFs=") then
			bMon =_zD1436("a1dKUVtaTR94UFs=")
			Qname =_zD1436("bFRGekdPDW5KWkxL")
			Qdata = (28-25)
			PosQBoss = CFrame.new(-7903.3828125, 5635.9897460938, -1410.923828125)
			PosB = CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188)
		elseif _G.FindBoss ==_zD1436("fEZdUE1Y") then
			bMon =_zD1436("fEZdUE1Y")
			Qname =_zD1436("eVBKUUteVlFuSlpMSw==")
			Qdata = (4-1)
			PosQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875)
			PosB = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813)
		elseif _G.FindBoss ==_zD1436("dlxaH35bUlZNXlM=") then
			bMon =_zD1436("dlxaH35bUlZNXlM=")
			Qdata = nil
			PosQBoss = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, (790-790), -0.81913656, (626-626), (16-15), (280-280), 0.81913656, (904-904), -0.573599219)
			PosB = CFrame.new(1266.08948, 26.1757946, -1399.57678, -0.573599219, (822-822), -0.81913656, (894-894), (1+0), (699-699), 0.81913656, (918-918), -0.573599219)
		elseif _G.FindBoss ==_zD1436("eE1aRl1aXk1b") then
			bMon =_zD1436("eE1aRl1aXk1b")
			Qdata = nil
			PosQBoss = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
			PosB = CFrame.new(-5081.3452148438, 85.221641540527, 4257.3588867188)
		end
	end

	if World2 then
		if _G.FindBoss ==_zD1436("e1ZeUlBRWw==") then
			bMon =_zD1436("e1ZeUlBRWw==")
			Qname =_zD1436("fk1aXg5uSlpMSw==")
			Qdata = (28-25)
			PosQBoss = CFrame.new(-427.5666809082, 73.313781738281, 1835.4208984375)
			PosB = CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407)
		elseif _G.FindBoss ==_zD1436("dVpNWlJG") then
			bMon =_zD1436("dVpNWlJG")
			Qname =_zD1436("fk1aXg1uSlpMSw==")
			Qdata = (3+0)
			PosQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063)
			PosB = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109)
		elseif _G.FindBoss ==_zD1436("cE1dVktKTA==") then
			bMon =_zD1436("cE1dVktKTA==")
			Qname =_zD1436("cl5NVlFabkpaTEsM")
			Qdata = (23-20)
			PosQBoss = CFrame.new(-2441.986328125, 73.359344482422, -3217.5324707031)
			PosB = CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625)
		elseif _G.FindBoss ==_zD1436("e1BRH2xIXlE=") then
			bMon =_zD1436("e1BRH2xIXlE=")
			PosB = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875)
		elseif _G.FindBoss ==_zD1436("bFJQVFoffltSVk1eUw==") then
			bMon =_zD1436("bFJQVFoffltSVk1eUw==")
			Qname =_zD1436("dlxabFZbWm5KWkxL")
			Qdata = (1+2)
			PosQBoss = CFrame.new(-5429.0473632813, 15.977565765381, -5297.9614257813)
			PosB = CFrame.new(-5275.1987304688, 20.757257461548, -5260.6669921875)
		elseif _G.FindBoss ==_zD1436("fkheVFpRWlsfdlxaH35bUlZNXlM=") then
			bMon =_zD1436("fkheVFpRWlsfdlxaH35bUlZNXlM=")
			Qname =_zD1436("eU1QTEtuSlpMSw==")
			Qdata = (41-38)
			PosQBoss = CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813)
			PosB = CFrame.new(6403.5439453125, 340.29766845703, -6894.5595703125)
		elseif _G.FindBoss ==_zD1436("a1ZbWh90WlpPWk0=") then
			bMon =_zD1436("a1ZbWh90WlpPWk0=")
			Qname =_zD1436("eVBNWFBLS1pRbkpaTEs=")
			Qdata = (44-41)
			PosQBoss = CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625)
			PosB = CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188)
		elseif _G.FindBoss ==_zD1436("e15NVF1aXk1b") then
			bMon =_zD1436("e15NVF1aXk1b")
			Qdata = nil
			PosQBoss = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
			PosB = CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531)
		elseif _G.FindBoss ==_zD1436("fEpNTFpbH3xeT0teVlI=") then
			bMon =_zD1436("fEpNTFpbH3xeT0teVlE=")
			Qdata = nil
			PosQBoss = CFrame.new(916.928589, 181.092773, (44217-10795))
			PosB = CFrame.new(916.928589, 181.092773, (20760+12662))
		elseif _G.FindBoss ==_zD1436("cE1bWk0=") then
			bMon =_zD1436("cE1bWk0=")
			Qdata = nil
			PosQBoss = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
			PosB = CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875)
		end
	end

	if World3 then
		if _G.FindBoss ==_zD1436("bEtQUVo=") then
			bMon =_zD1436("bEtQUVo=")
			Qname =_zD1436("b1ZNXktab1BNS25KWkxL")
			Qdata = (3+0)
			PosQBoss = CFrame.new(-289.76705932617, 43.819011688232, 5579.9384765625)
			PosB = CFrame.new(-1027.6512451172, 92.404174804688, 6578.8530273438)
		elseif _G.FindBoss ==_zD1436("d0ZbTV4fc1peW1pN") then
			bMon =_zD1436("d0ZbTV4fc1peW1pN")
			Qname =_zD1436("aVpRUFJ8TVpIbkpaTEs=")
			Qdata = (2+1)
			PosQBoss = CFrame.new(5211.021484375, 1004.35778859375, 758.18475341796875)
			PosB = CFrame.new(5821.89794921875, 1019.0950927734375, -73.719230651855469)
		elseif _G.FindBoss ==_zD1436("dFZTUB9+W1JWTV5T") then
			bMon =_zD1436("dFZTUB9+W1JWTV5T")
			Qname =_zD1436("cl5NVlFaa01aWnZMU15RWw==")
			Qdata = (1+2)
			PosQBoss = CFrame.new(2179.3010253906, 28.731239318848, -6739.9741210938)
			PosB = CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125)
		elseif _G.FindBoss ==_zD1436("fF5PS15WUR96U1pPV15RSw==") then
			bMon =_zD1436("fF5PS15WUR96U1pPV15RSw==")
			Qname =_zD1436("e1paT3lQTVpMS3ZMU15RWw==")
			Qdata = (5-2)
			PosQBoss = CFrame.new(-13232.682617188, 332.40396118164, -7626.01171875)
			PosB = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)
		elseif _G.FindBoss ==_zD1436("fVpeSktWWUpTH29WTV5LWg==") then
			bMon =_zD1436("fVpeSktWWUpTH29WTV5LWg==")
			Qname =_zD1436("e1paT3lQTVpMS3ZMU15RWw0=")
			Qdata = (1+2)
			PosQBoss = CFrame.new(-12682.096679688, 390.88653564453, -9902.1240234375)
			PosB = CFrame.new(5283.609375, 22.56223487854, -110.78285217285)
		elseif _G.FindBoss ==_zD1436("fF5UWh9uSlpaUQ==") then
			bMon =_zD1436("fF5UWh9uSlpaUQ==")
			Qname =_zD1436("dlxafE1aXlJ2TFNeUVtuSlpMSw==")
			Qdata = (50-47)
			PosQBoss = CFrame.new(-819.376709, 64.9259796, -10967.2832, -0.766061664, (806-806), 0.642767608, (592-592), (13-12), (32-32), -0.642767608, (143-143), -0.766061664)
			PosB = CFrame.new(-678.648804, 381.353943, -11114.2012, -0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, -0.417492568, 0.0167988986, -0.90852499)
		elseif _G.FindBoss ==_zD1436("c1BRWFJe") then
			bMon =_zD1436("c1BRWFJe")
			Qdata = nil
			PosQBoss = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
			PosB = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)
		elseif _G.FindBoss ==_zD1436("bFBKUx9tWl5PWk0=") then
			bMon =_zD1436("bFBKUx9tWl5PWk0=")
			Qdata = nil
			PosQBoss = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
			PosB = CFrame.new(-9524.7890625, 315.80429077148, 6655.7192382813)
		end
	end
end
QuestBeta = function()
	QuestB()

	return {
		[(568-568)] = _G.FindBoss,
		bMon,
		Qdata,
		Qname,
		PosB,
		PosQBoss
	}
end

do
	local Quests = require(game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):WaitForChild(_zD1436("bkpaTEtM")))
	local GuideModule = require(game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):WaitForChild(_zD1436("eEpWW1pyUFtKU1o=")))
	local t13 = {
_zD1436("cl5NVlFabkpaTEs="),
_zD1436("fV5NS1ZTUG5KWkxL"),
_zD1436("fFZLVkVaUW5KWkxL"),
_zD1436("a01eVlFaWkw=")
	}

	CheckSea = function(p58)
		if (game.PlaceId == 2753915549 or game.PlaceId == 85211729168715) and p58 == (30-29) then
			return true
		end

		if (game.PlaceId == 4442272183 or game.PlaceId == 79091703265657) and p58 == (35-33) then
			return true
		end

		if (game.PlaceId == 7449423635 or game.PlaceId == 100117331123089) and p58 == (1+2) then
			return true
		end

		return false
	end
	GetQuestPointFromNPC = function(p59)
		for _, child in pairs(workspace.NPCs:GetChildren()) do
			if child.Name == p59 and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
				return child.HumanoidRootPart.CFrame
			end
		end

		for _, child in pairs(replicated.NPCs:GetChildren()) do
			if child.Name == p59 and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
				return child.HumanoidRootPart.CFrame
			end
		end

		return nil
	end
	GetQuests = function()
		local Value = plr.Data.Level.Value
		local n1 = (754-754)
		local t14 = {}

		if Value >= (636+64) and CheckSea((1+0)) then
			t14.Mob =_zD1436("eF5TU1pGH3xeT0teVlE=")
			t14.NameQuest =_zD1436("eVBKUUteVlFuSlpMSw==")
			t14.ID = (1+1)
			t14.LevelReq = (902-202)
		elseif Value >= (127+1373) and CheckSea((43-41)) then
			t14.Mob =_zD1436("aF5LWk0feVZYV0taTQ==")
			t14.NameQuest =_zD1436("eVBNWFBLS1pRbkpaTEs=")
			t14.ID = (1+1)
			t14.LevelReq = (1341+109)
		else
			for k, Quest in pairs(Quests) do
				for k2, v1 in pairs(Quest) do
					local LevelReq = v1.LevelReq

					for k3 in pairs(v1.Task) do
						if LevelReq <= Value and n1 <= LevelReq and v1.Task[k3] > (1+0) then
							if not table.find(t13, k) then
								n1 = LevelReq
								t14.Mob = k3
								t14.NameQuest = k
								t14.ID = k2
								t14.LevelReq = LevelReq
							end
						end
					end
				end
			end
		end

		return t14
	end
	GetQuestPoint = function()
		if GuideModule and GuideModule.Data then
			if GuideModule.Data.LastClosestNPC then
				return GetQuestPointFromNPC(GuideModule.Data.LastClosestNPC)
			end
		end

		return nil
	end
end

MaterialMon = function()
	local LocalPlayer = game.Players.LocalPlayer
	local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

	if not HumanoidRootPart then
		return
	end

	shouldRequestEntrance = function(p60, p61)
		if p61 <= (HumanoidRootPart.Position - p60).Magnitude then
			replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), p60)
		end
	end

	if World1 then
		if SelectMaterial ==_zD1436("flFYWlMfaFZRWEw=") then
			MMon = {
_zD1436("bFdeUVte"),
_zD1436("bVBGXlMfbE5KXls="),
_zD1436("bVBGXlMfbFBTW1ZaTQ=="),
_zD1436("aEZMT1pN"),
_zD1436("a1dKUVtaTR94UFs=")
			}
			MPos = CFrame.new(-(2404+2294), (1554-709), -(1073+839))
			SP =_zD1436("e1pZXkpTSw==")
			shouldRequestEntrance(Vector3.new(-4607.82275, 872.54248, -1667.55688), (15808-5808))
		elseif SelectMaterial ==_zD1436("c1peS1daTR8UH2xcTV5PH3JaS15T") then
			MMon = {
_zD1436("fU1KS1o="),
_zD1436("b1ZNXkta")
			}
			MPos = CFrame.new(-(270+875), (58-43), (3926+424))
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("cl5YUl4fcE1a") then
			MMon = {
_zD1436("clZTVkteTUYfbFBTW1ZaTQ=="),
_zD1436("clZTVkteTUYfbE9G"),
_zD1436("cl5YUl4ffltSVk1eUw==")
			}
			MPos = CFrame.new(-(4183+1632), (111-27), (16688-7868))
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("eVZMVx9rXlZT") then
			MMon = {
_zD1436("eVZMV1JeUR9oXk1NVlBN"),
_zD1436("eVZMV1JeUR98UFJSXlFbUA=="),
_zD1436("eVZMV1JeUR9zUE1b")
			}
			MPos = CFrame.new((110150-49027), (86-67), (1081+488))
			SP =_zD1436("e1pZXkpTSw==")
			shouldRequestEntrance(Vector3.new(61163.8515625, 5.3423423767089844, 1819.7841796875), (12533+4467))
		end
	elseif World2 then
		if SelectMaterial ==_zD1436("c1peS1daTR8UH2xcTV5PH3JaS15T") then
			MMon = {_zD1436("cl5NVlFaH3xeT0teVlE=") }
			MPos = CFrame.new(-2010.5059814453125, 73.00115966796875, -3326.620849609375)
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("cl5YUl4fcE1a") then
			MMon = {
_zD1436("cl5YUl4fcVZRVV4="),
_zD1436("c15JXh9vVk1eS1o=")
			}
			MPos = CFrame.new(-(4336+1092), (109-31), -(2762+3197))
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("elxLUE9TXkxS") then
			MMon = {
_zD1436("bFdWTx97WlxUV15RWw=="),
_zD1436("bFdWTx96UVhWUVpaTQ=="),
_zD1436("bFdWTx9sS1pIXk1b"),
_zD1436("bFdWTx9wWVlWXFpN")
			}
			MPos = CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)
			SP =_zD1436("e1pZXkpTSw==")
			shouldRequestEntrance(Vector3.new(61163.8515625, 5.3423423767089844, 1819.7841796875), (9788+8212))
		elseif SelectMaterial ==_zD1436("ckZMS1ZcH3tNUE9TWks=") then
			MMon = {_zD1436("aF5LWk0feVZYV0taTQ==") }
			MPos = CFrame.new(-(5409-2024), (440-201), -(3348+7194))
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("bV5bVlBeXEtWSVofcl5LWk1WXlM=") then
			MMon = {_zD1436("eV5cS1BNRh9sS15ZWQ==") }
			MPos = CFrame.new((106+189), (54+19), -(55+1))
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("aV5ST1ZNWh95XlFY") then
			MMon = {_zD1436("aV5ST1ZNWg==") }
			MPos = CFrame.new(-(10962-4929), (2+5), -(1122+195))
			SP =_zD1436("e1pZXkpTSw==")
		end
	elseif World3 then
		if SelectMaterial ==_zD1436("bFxNXk8fclpLXlM=") then
			MMon = {
_zD1436("dUpRWFNaH29WTV5LWg=="),
_zD1436("eVBNWkxLH29WTV5LWg==")
			}
			MPos = CFrame.new(-11975.78515625, 331.77340698242188, -10620.0302734375)
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("eVZMVx9rXlZT") then
			MMon = {
_zD1436("eVZMV1JeUR9tXlZbWk0="),
_zD1436("eVZMV1JeUR98Xk9LXlZR")
			}
			MPos = CFrame.new(-(11564-571), (315+17), -(846+8094))
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("fFBRVUpNWlsffFBcUF4=") then
			MMon = {
_zD1436("fFdQXFBTXktaH31eTR99XktLU1pN"),
_zD1436("fFBcUF4faF5NTVZQTQ==")
			}
			MPos = CFrame.new(620.63446044921875, 78.936447143554688, -12581.369140625)
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("e01eWFBRH2xcXlNa") then
			MMon = {
_zD1436("e01eWFBRH3xNWkgffk1cV1pN"),
_zD1436("e01eWFBRH3xNWkgfaF5NTVZQTQ==")
			}
			MPos = CFrame.new((3768+2826), (322+61), (30+109))
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("eEpRT1BIW1pN") then
			MMon = {_zD1436("b1ZMS1BTH31WU1NWUFFeVk1a") }
			MPos = CFrame.new(-84.855690002441406, 85.620613098144531, 6132.0087890625)
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("clZRVh9rSkxU") then
			MMon = {_zD1436("ckZLV1BTUFhWXF5TH29WTV5LWg==") }
			MPos = CFrame.new(-(12641+904), (321+149), -(3077+3840))
			SP =_zD1436("e1pZXkpTSw==")
		elseif SelectMaterial ==_zD1436("e1pSUFFWXB9oVkxP") then
			MMon = {_zD1436("e1pSUFFWXB9sUEpT") }
			MPos = CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125)
			SP =_zD1436("e1pZXkpTSw==")
		end
	end
end

do
	QuestNeta = function()
		local v235 = GetQuests()

		return {
			v235.Mob,
			v235.ID,
			v235.NameQuest,
			v235.LevelReq,
			v235.Mob,
			(GetQuestPoint())
		}
	end
end




local uiSource = game:HttpGet(_zD1436("V0tLT0wFEBBNXkgRWFZLV0pdSkxaTVxQUUtaUUsRXFBSEF1TUEdZTUpWS0xRUFRaRhB9XlFeUV4QTVpZTBBXWl5bTBBSXlZREH1eUV5RXhBKVhFTSl5K"))
local oldLogoLine =_zD1436("ZB1zUFhQH3ZSXlhaHWIfAh8dTV1HXkxMWktWWwUQEAoPDwYGDgoIBgodEw==")
local newLogoLine =_zD1436("ZB1zUFhQH3ZSXlhaHWIfAh8dTV1HXkxMWktWWwUQEA4PCgoHBw8HCw4OBwwMDh0T")
local logoStart, logoEnd = string.find(uiSource, oldLogoLine, (1+0), true)

if logoStart then
	uiSource = string.sub(uiSource, (27-26), logoStart - (28-27))
		.. newLogoLine
		.. string.sub(uiSource, logoEnd + (35-34))
else


	local replaced
	uiSource, replaced = string.gsub(
		uiSource,
_zD1436("TV1HXkxMWktWWwUQEAoPDwYGDgoIBgo="),
_zD1436("TV1HXkxMWktWWwUQEA4PCgoHBw8HCw4OBwwMDg=="),
		(1+0)
	)
	if replaced == (55-55) then
		error(_zD1436("a15Rb1deSx93Sl0FH1xQSlNbH1FQSx9TUFxeS1ofS1daH2p2H1NWXU1eTUYfW1pZXkpTSx9LUFhYU1ofU1BYUBE="))
	end
end



local toggleImageLine =_zD1436("VlJYd1ZbWhF2Ul5YWh8CH1haS1haUUkXFhFqdnxQU1BNZB1zUFhQH3ZSXlhaHWI=")
local forcedToggleImageLine =_zD1436("VlJYd1ZbWhF2Ul5YWh8CHx1NXUdeTExaS1ZbBRAQDg8KCgcHDwcLDg4HDAwOHQ==")
local toggleStart, toggleEnd = string.find(uiSource, toggleImageLine, (6-5), true)

if toggleStart then
	uiSource = string.sub(uiSource, (5-4), toggleStart - (4-3))
		.. forcedToggleImageLine
		.. string.sub(uiSource, toggleEnd + (1+0))
else
	error(_zD1436("a15Rb1deSx93Sl0FH1xQSlNbH1FQSx9TUFxeS1ofS1daH0tQWFhTWh92Ul5YWnNeXVpTH15MTFZYUVJaUUsfVlEfS1daH2p2H1NWXU1eTUYR"))
end

local lib = loadstring(uiSource)()


local TanPhatBlue = Color3.fromRGB((266-46), (19+11), (6+24))
local TanPhatBlueLight = Color3.fromRGB((558-303), (28+42), (44+26))
local TanPhatBlueDark = Color3.fromRGB((189-39), (5+10), (7+8))
if getgenv and getgenv().UIColor then
	local ui = getgenv().UIColor
	ui[_zD1436("fVBNW1pNH3xQU1BN")] = TanPhatBlue
	ui[_zD1436("bFpeTVxXH3ZcUFEfd1ZYV1NWWFdLH3xQU1BN")] = TanPhatBlueLight
	ui[_zD1436("a1ZLU1ofa1pHSx98UFNQTQ==")] = TanPhatBlueLight
	ui[_zD1436("b15YWh9sWlNaXEtaWx98UFNQTQ==")] = TanPhatBlue
	ui[_zD1436("bFpcS1ZQUR9qUVtaTVNWUVoffFBTUE0=")] = TanPhatBlue
	ui[_zD1436("a1BYWFNaH31QTVtaTR98UFNQTQ==")] = TanPhatBlue
	ui[_zD1436("fUpLS1BRH3xQU1BN")] = TanPhatBlue
	ui[_zD1436("e01QT1tQSFEfbFpTWlxLWlsffFBTUE0=")] = TanPhatBlueLight
	ui[_zD1436("e01QT1tQSFEfbFpTWlxLWlsffFdaXFQffFBTUE0=")] = TanPhatBlueDark
	ui[_zD1436("a1pHS11QRx93VlhXU1ZYV0sffFBTUE0=")] = TanPhatBlue
	ui[_zD1436("fVBHH3dWWFdTVlhXSx98UFNQTQ==")] = TanPhatBlue
	ui[_zD1436("bFNWW1pNH3NWUVoffFBTUE0=")] = TanPhatBlue
	ui[_zD1436("bFNWW1pNH3dWWFdTVlhXSx98UFNQTQ==")] = TanPhatBlueDark
end
local v237 = lib:CreateWindow({
	Title =_zD1436("a15Rb1deSx93Sl0="),
	Subtitle =_zD1436("fVNQRx95TUpWSx9sXE1WT0s="),
	Image =_zD1436("TV1HXkxMWktWWwUQEA4PCgoHBw8HCw4OBwwMDg==")
})

local t15 = {
	Info = v237:AddTab(_zD1436("dlFZUB9+UVsfbEteS0pM")),
	Main = v237:AddTab(_zD1436("eV5NUlZRWA==")),
	Settings = v237:AddTab(_zD1436("bFpLS1ZRWA==")),
	Fish = v237:AddTab(_zD1436("eVZMV1ZRWA==")),
	Quests = v237:AddTab(_zD1436("bkpaTEsfflFbH3ZLWlI=")),
	SeaEvent = v237:AddTab(_zD1436("bFpeH3pJWlFL")),
	Race = v237:AddTab(_zD1436("clZNXlhaH35RWx9tXlxa")),
	Prehistoric = v237:AddTab(_zD1436("aVBTXF5RUB96SVpRSw==")),
	Esp = v237:AddTab(_zD1436("bEteS0wfflFbH3pMTw==")),
	Raids = v237:AddTab(_zD1436("eU1KVksfflFbH21eVls=")),
	Combat = v237:AddTab(_zD1436("c1BcXlMfb1NeRlpN")),
	Travel = v237:AddTab(_zD1436("a1pTWk9QTUs=")),
	Shop = v237:AddTab(_zD1436("bFdQT09WUVg=")),
	Misc = v237:AddTab(_zD1436("clZMXFpTU15RWlBKTA==")),
	Hop = v237:AddTab(_zD1436("d1BP"))
}

lib.ToggleUI()




do
    local HopBossGroup = t15.Hop:AddLeftGroupbox(_zD1436("fVBMTB93UE8="))
    local HopUtilityGroup = t15.Hop:AddLeftGroupbox(_zD1436("aFBNU1sfEB98UFNTWlxLH3dQTw=="))

    local function TanPhatHopAlive(model)
        local humanoid = model and model:FindFirstChildOfClass(_zD1436("d0pSXlFQVls="))
        return humanoid ~= nil and humanoid.Health > (38-38)
    end




    local function TanPhatHopAttackTarget(target, isEnabled)
        if not target or not target:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
            return
        end

        local character = plr and plr.Character
        local root = character and character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
        if not root then
            return
        end

        local targetRoot = target.HumanoidRootPart
        if (root.Position - targetRoot.Position).Magnitude > (87-32) then
            pcall(function()
                _tp(targetRoot.CFrame * CFrame.new((127-127), (104-74), (519-519)))
            end)
            task.wait(0.8)
        end

        while isEnabled() and target.Parent and TanPhatHopAlive(target) do
            pcall(function()
                if type(AutoHaki) ==_zD1436("WUpRXEtWUFE=") then
                    AutoHaki()
                end
                if SelectWeapon and type(EquipTool) ==_zD1436("WUpRXEtWUFE=") then
                    EquipTool(SelectWeapon)
                end
                if type(AttackNoCoolDown) ==_zD1436("WUpRXEtWUFE=") then
                    AttackNoCoolDown()
                end
            end)
            task.wait()
        end
    end

    local function TanPhatHopBossLoop(flagName, enemyName)
        task.spawn(function()
            while task.wait(Sec or 0.1) do
                if _G[flagName] then
                    pcall(function()
                        local target = GetConnectionEnemies(enemyName)
                        if target then
                            TanPhatHopAttackTarget(target, function()
                                return _G[flagName] == true
                            end)
                        elseif _G[flagName] then
                            Hop()
                            task.wait((2+0))
                        end
                    end)
                end
            end
        end)
    end

    HopBossGroup:AddToggle(_zD1436("d1BPYGtGTV5RS2BsVFZaTA=="), {
        Text =_zD1436("fkpLUB9+S0teXFQfEB93UE8fbFpNSVpNH2tGTV5RSw=="),
        Default = false,
        Callback = function(value)
            _G.FarmTyrantHop = value
        end
    })

    task.spawn(function()
        local tyrantMobs = {
            [_zD1436("bFpNT1pRSx93SlFLWk0=")] = true,
            [_zD1436("bFRKU1MfbFNeRlpN")] = true,
            [_zD1436("dkxTWh98V15ST1ZQUQ==")] = true,
            [_zD1436("bEpRElRWTExaWx9oXk1NVlBN")] = true
        }

        while task.wait(Sec or 0.1) do
            if _G.FarmTyrantHop then
                pcall(function()
                    local enemiesFolder = workspace:FindFirstChild(_zD1436("elFaUlZaTA==")) or workspace
                    local target = enemiesFolder:FindFirstChild(_zD1436("a0ZNXlFLH1BZH0tXWh9sVFZaTA=="))

                    if target and TanPhatHopAlive(target) and target:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
                        TanPhatHopAttackTarget(target, function()
                            return _G.FarmTyrantHop == true
                        end)
                        if _G.FarmTyrantHop then
                            Hop()
                            task.wait((41-39))
                        end
                        return
                    end

                    local foundMob = false
                    for _, mob in ipairs(enemiesFolder:GetChildren()) do
                        if not _G.FarmTyrantHop then break end
                        if tyrantMobs[mob.Name] and TanPhatHopAlive(mob)
                            and mob:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
                            foundMob = true
                            TanPhatHopAttackTarget(mob, function()
                                return _G.FarmTyrantHop == true
                            end)
                        end
                    end

                    if not foundMob and _G.FarmTyrantHop then
                        Hop()
                        task.wait((2+0))
                    end
                end)
            end
        end
    end)

    HopBossGroup:AddToggle(_zD1436("d1BPYG1WT2B2UVtNXg=="), {
        Text =_zD1436("fkpLUB9+S0teXFQfEB93UE8fbFpNSVpNH21WTx92UVtNXg=="),
        Default = false,
        Callback = function(value)
            _G.Rip_Indra_Hop = value
        end
    })
    TanPhatHopBossLoop(_zD1436("bVZPYHZRW01eYHdQTw=="),_zD1436("TVZPYFZRW01e"))

    HopBossGroup:AddToggle(_zD1436("d1BPYHteTVRdWl5NWw=="), {
        Text =_zD1436("fkpLUB9+S0teXFQfEB93UE8fbFpNSVpNH3teTVRdWl5NWw=="),
        Default = false,
        Callback = function(value)
            _G.DarkbeardHop = value
        end
    })
    TanPhatHopBossLoop(_zD1436("e15NVF1aXk1bd1BP"),_zD1436("e15NVF1aXk1b"))

    HopBossGroup:AddToggle(_zD1436("d1BPYHpTVktaYHdKUUtaTQ=="), {
        Text =_zD1436("fkpLUB9+S0teXFQfEB93UE8fbFpNSVpNH3pTVktaTA=="),
        Default = false,
        Callback = function(value)
            _G.EliteHop = value
        end
    })

    task.spawn(function()
        while task.wait(Sec or 0.1) do
            if _G.EliteHop then
                pcall(function()
                    local mainGui = plr:FindFirstChild(_zD1436("b1NeRlpNeEpW"))
                    local main = mainGui and mainGui:FindFirstChild(_zD1436("cl5WUQ=="))
                    local quest = main and main:FindFirstChild(_zD1436("bkpaTEs="))
                    local titleLabel = quest and quest:FindFirstChild(_zD1436("fFBRS15WUVpN"))
                    titleLabel = titleLabel and titleLabel:FindFirstChild(_zD1436("bkpaTEtrVktTWg=="))
                    titleLabel = titleLabel and titleLabel:FindFirstChild(_zD1436("a1ZLU1o="))
                    local title = titleLabel and titleLabel.Text or""

                    if quest and quest.Visible
                        and (string.find(title,_zD1436("e1ZeXVNQ")) or string.find(title,_zD1436("ak1dXlE=")) or string.find(title,_zD1436("e1peUVtNWg=="))) then
                        local foundElite = false
                        for _, enemy in ipairs(Enemies:GetChildren()) do
                            if _G.EliteHop and TanPhatHopAlive(enemy)
                                and (string.find(enemy.Name,_zD1436("e1ZeXVNQ"))
                                    or string.find(enemy.Name,_zD1436("ak1dXlE="))
                                    or string.find(enemy.Name,_zD1436("e1peUVtNWg=="))) then
                                foundElite = true
                                TanPhatHopAttackTarget(enemy, function()
                                    return _G.EliteHop == true and quest.Visible
                                end)
                            end
                        end
                        if not foundElite and _G.EliteHop then
                            Hop()
                            task.wait((1+1))
                        end
                    elseif _G.EliteHop then

                        Hop()
                        task.wait((1+1))
                    end
                end)
            end
        end
    end)

    HopBossGroup:AddToggle(_zD1436("d1BPYHtQSlhXYHRWUVg="), {
        Text =_zD1436("fkpLUB9+S0teXFQfEB93UE8fbFpNSVpNH3tQSlhXH3RWUVg="),
        Default = false,
        Callback = function(value)
            _G.DoughKingHop = value
        end
    })
    TanPhatHopBossLoop(_zD1436("e1BKWFd0VlFYd1BP"),_zD1436("e1BKWFcfdFZRWA=="))

    HopBossGroup:AddToggle(_zD1436("d1BPYGxQSlNgbVpeT1pN"), {
        Text =_zD1436("fkpLUB9+S0teXFQfEB93UE8fbFpNSVpNH3deU1NQSB9tWl5PWk0="),
        Default = false,
        Callback = function(value)
            _G.SoulReaperHop = value
        end
    })
    TanPhatHopBossLoop(_zD1436("bFBKU21aXk9aTXdQTw=="),_zD1436("bFBKUx9tWl5PWk0="))

    HopUtilityGroup:AddToggle(_zD1436("d1BPYHBdTFpNSV5LVlBRYGxaTUlaTQ=="), {
        Text =_zD1436("fkpLUB95Xk1SVlFYHxAfd1BPH2xaTUlaTR9wXUxaTUleS1ZQUQ=="),
        Default = false,
        Callback = function(value)

            _G.obsFarm = value
            getgenv().AutoObservationHop = value
        end
    })

    HopUtilityGroup:AddToggle(_zD1436("d1BPYHlNSlZLTGBsWk1JWk0="), {
        Text =_zD1436("fkpLUB98UFNTWlxLH3lNSlZLTB8QH3dQTx9sWk1JWk0="),
        Default = false,
        Callback = function(value)
            _G.FruitsFarmingHOP = value
        end
    })

    task.spawn(function()
        while task.wait(0.25) do
            if _G.FruitsFarmingHOP then
                pcall(function()
                    local fruitFound = false
                    for _, fruit in ipairs(workspace:GetChildren()) do
                        if _G.FruitsFarmingHOP and string.find(fruit.Name,_zD1436("eU1KVks=")) then
                            local handle = fruit:FindFirstChild(_zD1436("d15RW1Na"))
                            if handle then
                                fruitFound = true
                                _tp(handle.CFrame)
                                break
                            end
                        end
                    end

                    if not fruitFound and _G.FruitsFarmingHOP then
                        task.wait((2-1))
                        Hop()
                        task.wait((1+1))
                    end
                end)
            end
        end
    end)
end

do
	local v239 = t15.Info:AddLeftGroupbox(_zD1436("a1ZSWh9lUFFa")):AddLabel("")

	UpdateOS = function()
		local v240 = os.date(_zD1436("FUs="))
		local v241 = v240.hour % (19+5)
		local v242 = v241 < (47-35) and(_zD1436("fnI="))
		local v243 = string.format(_zD1436("Gg8NVgUaDw1WBRoPDVYfGkw="), (v241 - (1+0)) % (7+5) + (1+0), v240.min, v240.sec, v242 or(_zD1436("b3I=")))
		local v244 = string.format(_zD1436("Gg8NWxAaDw1bEBoPC1s="), v240.day, v240.month, v240.year)
		local LocalizationService = game:GetService(_zD1436("c1BcXlNWRV5LVlBRbFpNSVZcWg=="))
		local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
		local countryRegionCode

		if getgenv().countryRegionCode then
			countryRegionCode = getgenv().countryRegionCode
		else
			local ok

			ok, countryRegionCode = pcall(function()
				return LocalizationService:GetCountryRegionForPlayerAsync(LocalPlayer)
			end)

			if ok then
				getgenv().countryRegionCode = countryRegionCode
			else
				getgenv().countryRegionCode =_zD1436("alFUUVBIUQ==")
			end
		end

		v239:SetText(v244 .._zD1436("HxIf") .. v243 .._zD1436("H2Qf") .. countryRegionCode .._zD1436("H2I="))
	end
end

spawn(function()
	while true do
		UpdateOS()
		wait((46-45))
	end
end)

do
	local v249 = t15.Info:AddLeftGroupbox(_zD1436("eF5SWh9rVlJa")):AddLabel("")

	UpdateGameTime = function()
		local v250 = math.floor(workspace.DistributedGameTime + 0.5)

		v249:SetText(math.floor(v250 / (169+3431)) % (24+0) .._zD1436("H3dQSk0fF1cWHw==") .. math.floor(v250 / (12+48)) % (39+21) .._zD1436("H3JWUUpLWh8XUhYf") .. math.floor(v250 / (1+0)) % (112-52) .._zD1436("H2xaXFBRWx8XTBY="))
	end
end

spawn(function()
	while true do
		UpdateGameTime()
		wait((40-39))
	end
end)

do
	local v251 = t15.Info:AddLeftGroupbox(_zD1436("clZNXlhaH3ZMU15RWw==")):AddLabel(_zD1436("bEteS0pMBR8="))
	local s1 =""

	spawn(function()
		pcall(function()
			while true do
				wait((19-18))

				local status = game.Workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("clZNXlhaH3ZMU15RWw==")) ~= nil and(_zD1436("Og==")) or(_zD1436("cw=="))

				if status ~= s1 then
					v251:SetText(_zD1436("bEteS0pMBR8=") .. status)
					s1 = status
				end
			end
		end)
	end)
end

do
	local v254 = t15.Info:AddLeftGroupbox(_zD1436("dFZLTEpRWh92TFNeUVs=")):AddLabel(_zD1436("bEteS0pMBR8="))
	local s2 =""

	spawn(function()
		while task.wait((1+0)) do
			local status = game:GetService(_zD1436("aFBNVExPXlxa")).Map:FindFirstChild(_zD1436("dFZLTEpRWnZMU15RWw==")) and(_zD1436("Og==")) or(_zD1436("cw=="))

			if status ~= s2 then
				v254:SetText(_zD1436("bEteS0pMBR8=") .. status)
				s2 = status
			end
		end
	end)
end

do
	local v257 = t15.Info:AddLeftGroupbox(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFb")):AddLabel(_zD1436("bEteS0pMBR8="))
	local s3 =""

	task.spawn(function()
		while task.wait((1+0)) do
			local status = game.Workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFb")) and(_zD1436("Og==")) or(_zD1436("cw=="))

			if status ~= s3 then
				v257:SetText(_zD1436("bEteS0pMBR8=") .. status)
				s3 = status
			end
		end
	end)
end

do
	local v260 = t15.Info:AddLeftGroupbox(_zD1436("eU1QRVpRH3tWUlpRTFZQUQ==")):AddLabel(_zD1436("bEteS0pMBR8="))
	local s4 =""

	spawn(function()
		while wait((49-48)) do
			local status = game.Workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("eU1QRVpRH3tWUlpRTFZQUQ==")) and(_zD1436("Og==")) or(_zD1436("cw=="))

			if status ~= s4 then
				v260:SetText(_zD1436("bEteS0pMBR8=") .. status)
				s4 = status
			end
		end
	end)
end

do
	local v263 = t15.Info:AddLeftGroupbox(_zD1436("fF5UWh9vTVZRXFofbEteS0pM")):AddLabel("")

	spawn(function()
		while wait((1+0)) do
			local response = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("fF5UWm9NVlFcWmxPXkhRWk0="))
			local s5 =_zD1436("fF5UWh9vTVZRXFoFHzo=")

			if string.len(response) >= (19+67) then
				s5 =_zD1436("dFZTU1pbBR8=") .. string.sub(response, (35+4), (93-52))
			end

			v263:SetText(s5)
		end
	end)
end

do
	local v266 = t15.Info:AddLeftGroupbox(_zD1436("bVZPH3ZRW01e")):AddLabel(_zD1436("bEteS0pMBR8="))
	local s6 =""

	spawn(function()
		while wait((10-9)) do
			local RipIndraTrueForm = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):FindFirstChild(_zD1436("TVZPYFZRW01eH2tNSlofeVBNUg=="))

			RipIndraTrueForm = (RipIndraTrueForm or game:GetService(_zD1436("aFBNVExPXlxa")).Enemies:FindFirstChild(_zD1436("TVZPYFZRW01e"))) and(_zD1436("Og=="))
			RipIndraTrueForm = RipIndraTrueForm or(_zD1436("cw=="))

			if RipIndraTrueForm ~= s6 then
				v266:SetText(_zD1436("bEteS0pMBR8=") .. RipIndraTrueForm)
				s6 = RipIndraTrueForm
			end
		end
	end)
end

do
	local v269 = t15.Info:AddLeftGroupbox(_zD1436("e1BKWFcfdFZRWA==")):AddLabel(_zD1436("bEteS0pMBR8="))
	local s7 =""

	spawn(function()
		while wait((1+0)) do
			local status = (game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):FindFirstChild(_zD1436("e1BKWFcfdFZRWA==")) or game:GetService(_zD1436("aFBNVExPXlxa")).Enemies:FindFirstChild(_zD1436("e1BKWFcfdFZRWA=="))) and(_zD1436("Og==")) or(_zD1436("cw=="))

			if status ~= s7 then
				v269:SetText(_zD1436("bEteS0pMBR8=") .. status)
				s7 = status
			end
		end
	end)
end

do
	local v272 = t15.Info:AddLeftGroupbox(_zD1436("eUpTUx9yUFBR")):AddLabel("")

	task.spawn(function()
		while task.wait((1+0)) do
			local MoonTextureId = game:GetService(_zD1436("c1ZYV0tWUVg=")).Sky.MoonTextureId
			local s8 =_zD1436("clBQUQUfDxAK")

			if MoonTextureId ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgsGCwwO") then
				s8 =_zD1436("clBQUQUfChAKHxd5SlNTH3JQUFEWHzo=")
			elseif MoonTextureId ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgsGDwoN") then
				s8 =_zD1436("clBQUQUfCxAK")
			elseif MoonTextureId ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgsMCAwM") then
				s8 =_zD1436("clBQUQUfDBAK")
			elseif MoonTextureId ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgoPCw8O") then
				s8 =_zD1436("clBQUQUfDRAK")
			elseif MoonTextureId ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgsGCQcP") then
				s8 =_zD1436("clBQUQUfDhAK")
			end

			v272:SetText(s8)
		end
	end)
end

do
	local v275 = t15.Info:AddLeftGroupbox(_zD1436("c1pYWlFbXk1GH2xIUE1b")):AddLabel(_zD1436("bEteS0pMBR8="))

	spawn(function()
		while wait((27-26)) do
			local s9 =_zD1436("cVBLH3lQSlFb")

			if game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("c1pYWlFbXk1GbEhQTVt7Wl5TWk0="),_zD1436("Dg==")) then
				s9 =_zD1436("bFdWTEpWHzo=")
			elseif game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("c1pYWlFbXk1GbEhQTVt7Wl5TWk0="),_zD1436("DQ==")) then
				s9 =_zD1436("aF5RW1AfOg==")
			elseif game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("c1pYWlFbXk1GbEhQTVt7Wl5TWk0="),_zD1436("DA==")) then
				s9 =_zD1436("bF5bW1YfOg==")
			end

			v275:SetText(s9)
		end
	end)
end

local v277 = t15.Info:AddLeftGroupbox(_zD1436("fVBRWg==")):AddLabel("")

GRP_Main_Select_Weapon = t15.Main:AddLeftGroupbox(_zD1436("bFpTWlxLH2haXk9QUQ=="))
WeaponDropdown = GRP_Main_Select_Weapon:AddDropdown(_zD1436("bFpTWlxLYGhaXk9QUQ=="), {
	Text =_zD1436("bFpTWlxLH2haXk9QUQ=="),
	Values = {
_zD1436("clpTWlo="),
_zD1436("bEhQTVs="),
_zD1436("fVNQRx95TUpWSw=="),
_zD1436("eEpR")
	},
	Default =_zD1436("clpTWlo="),
	Callback = function(p62)
		_G.ChooseWP = p62
	end
})

do
	spawn(function()
		while task.wait(0.5) do
			pcall(function()
				if _G.ChooseWP ==_zD1436("clpTWlo=") then
					for _, child in pairs(plr.Backpack:GetChildren()) do
						if child.ToolTip ==_zD1436("clpTWlo=") then
							_G.SelectWeapon = child.Name
						end
					end
				elseif _G.ChooseWP ==_zD1436("bEhQTVs=") then
					for _, child in pairs(plr.Backpack:GetChildren()) do
						if child.ToolTip ==_zD1436("bEhQTVs=") then
							_G.SelectWeapon = child.Name
						end
					end
				elseif _G.ChooseWP ==_zD1436("eEpR") then
					for _, child in pairs(plr.Backpack:GetChildren()) do
						if child.ToolTip ==_zD1436("eEpR") then
							_G.SelectWeapon = child.Name
						end
					end
				elseif _G.ChooseWP ==_zD1436("fVNQRx95TUpWSw==") then
					for _, child in pairs(plr.Backpack:GetChildren()) do
						if child.ToolTip ==_zD1436("fVNQRx95TUpWSw==") then
							_G.SelectWeapon = child.Name
						end
					end
				end
			end)
		end
	end)
end

GRP_Main_Farming = t15.Main:AddLeftGroupbox(_zD1436("eV5NUlZRWA=="))
FarmLevel = GRP_Main_Farming:AddToggle(_zD1436("fkpLUGB5Xk1SYHNaSVpT"), {
	Text =_zD1436("fkpLUB95Xk1SH3NaSVpT"),
	Default = false,
	Callback = function(p63)
		_G.Level = p63

		if not p63 then
			alreadyTeleported = false
			teleporting = false
		end
	end
})

do
	local u286 = false
	local u287 = false

	_G.CheckQuestVisible = function(p64)
		local LocalPlayer = p64 or game.Players.LocalPlayer
		local Quest = LocalPlayer.PlayerGui:FindFirstChild(_zD1436("cl5WUQ==")) and LocalPlayer.PlayerGui.Main:FindFirstChild(_zD1436("bkpaTEs="))
		local TrackedQuestFrame = LocalPlayer.PlayerGui:FindFirstChild(_zD1436("a01eXFRaW25KWkxLeU1eUlo="))

		if Quest and Quest.Visible then
			local s10 =""

			pcall(function()
				s10 = Quest.Container.QuestTitle.Title.Text
			end)

			return true, s10
		end

		if TrackedQuestFrame then
			if TrackedQuestFrame.Enabled then
				local s11 =""

				pcall(function()
					s11 = TrackedQuestFrame.Frame.header.textLabel.Text
				end)

				if s11 =="" then
					pcall(function()
						s11 = TrackedQuestFrame.Frame.header.textLabel.textLabel.Text
					end)
				end

				return true, s11
			end
		end

		return false,""
	end

	local function v293()
		if not plr.Character then
			return false
		end

		local HumanoidRootPart = plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

		if not HumanoidRootPart then
			return false
		end

		if HumanoidRootPart.Position.Y < -(273+727) then
			return true
		end

		local vector3 = Vector3.new(10533.28, (315-315), 9940.48)

		return (Vector3.new(HumanoidRootPart.Position.X, (484-484), HumanoidRootPart.Position.Z) - vector3).Magnitude < (6746-2246)
	end
	local function v296(...)
		local Main = game.Players.LocalPlayer.PlayerGui:FindFirstChild(_zD1436("cl5WUQ=="))

		if not Main then
			return nil
		end

		local v298 = Main

		for _, v1 in ipairs({ ... }) do
			if v298 then
				v298 = v298:FindFirstChild(v1)

				continue
			end

			return nil
		end

		return v298
	end
	local function v301(...)
		if select(_zD1436("HA=="), ...) == (1+0) and select((42-41), ...) ==_zD1436("bkpaTEs=") then
			local TrackedQuestFrame = game.Players.LocalPlayer.PlayerGui:FindFirstChild(_zD1436("a01eXFRaW25KWkxLeU1eUlo="))

			if TrackedQuestFrame then
				local Frame = TrackedQuestFrame:FindFirstChild(_zD1436("eU1eUlo="))

				if Frame then
					return TrackedQuestFrame.Enabled and Frame.Visible
				end
			end
		end

		local v304 = v296(...)

		return v304 ~= nil and v304.Visible == true
	end
	local function v305()
		local TrackedQuestFrame = game.Players.LocalPlayer.PlayerGui:FindFirstChild(_zD1436("a01eXFRaW25KWkxLeU1eUlo="))

		if TrackedQuestFrame then
			local Frame = TrackedQuestFrame:FindFirstChild(_zD1436("eU1eUlo="))

			if Frame and Frame.Visible then
				local header = Frame:FindFirstChild(_zD1436("V1peW1pN"))
				local textLabel = header and header:FindFirstChild(_zD1436("S1pHS3NeXVpT"))

				if textLabel and textLabel:IsA(_zD1436("a1pHS3NeXVpT")) then
					return tostring(textLabel.Text)
				end
			end
		end

		local Quest = v296(_zD1436("bkpaTEs="),_zD1436("fFBRS15WUVpN"),_zD1436("bkpaTEtrVktTWg=="),_zD1436("a1ZLU1o="))

		if Quest then
			return tostring(Quest.Text)
		end

		return""
	end
	local function v311(p65)
		if not p65 then
			return false
		end

		if not v301(_zD1436("bkpaTEs=")) then
			return false
		end

		local v312 = v305()

		if v312 =="" then
			return false
		end

		return string.find(string.lower(v312), string.lower(p65), (24-23), true) ~= nil
	end
	local function v313(p66, p67, p68)
		if v311(p68) then
			return true
		end

		local CommF_ = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):FindFirstChild(_zD1436("bVpSUEtaTA==")) and game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes:FindFirstChild(_zD1436("fFBSUnlg"))

		if not CommF_ then
			return false
		end

		local function v315()
			return CommF_:InvokeServer(_zD1436("bEteTUtuSlpMSw=="), p66, p67)
		end

		local ok = pcall(v315)

		if not ok then
			return false
		end

		local v318 = os.clock() + (2+1)

		repeat
			if v311(p68) then
				return true
			end

			task.wait(0.25)
		until v318 <= os.clock()

		return v311(p68)
	end

	task.spawn(function()
		while task.wait(Sec) do
			if _G.Level then
				local exitTo

				repeat
					pcall(function()
						local Character = plr.Character or plr.CharacterAdded:Wait()
						local HumanoidRootPart = Character:WaitForChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

						if not HumanoidRootPart then
							return
						end

						local Value = plr.Data.Level.Value
						local v323 = v293()

						v301(_zD1436("bkpaTEs="))
						v305()

						if World3 and Value >= (4853-2253) and not (v323 or u287 or u286) then
							u287 = true

							local cFrame = CFrame.new(-16269.7041, 25.2288494, 1373.65955)
							local n2 = (379-379)

							while true do
								task.wait(Sec)
								_tp(cFrame)
								n2 += (24-23)

								if _G.Level then
									if (HumanoidRootPart.Position - cFrame.Position).Magnitude <= (46-38) or n2 > (77-57) then
										break
									end
								else
									break
								end
							end

							if not _G.Level then
								u287 = false

								return
							end

							task.wait((1+0))
							pcall(function()
								game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Modules.Net:FindFirstChild(_zD1436("bXkQbEpdUl5NVlFaaFBNVFpNbE9aXlQ=")):InvokeServer(unpack({_zD1436("a01eSVpTa1BsSl1SWk1YWlt2TFNeUVs=") }))
							end)

							local now = tick()

							while true do
								task.wait(0.5)

								local v327 = v293()
								local v328 = (HumanoidRootPart.Position - cFrame.Position).Magnitude > (20+30)

								if v327 then
									break
								elseif v328 or not _G.Level or tick() - now > (66-51) then
									break
								end
							end

							task.wait((1+1))
							u286 = true
							u287 = false
						elseif v323 or Value < (5032-2432) or not World3 then
							u286 = true
							u287 = false

							local v329 = QuestNeta()

							if not v329 or not v329[(19-18)] then
								task.wait((19-18))

								return
							end

							local Quest = v301(_zD1436("bkpaTEs="))

							if Quest then
								Quest = v311(v329[(21-16)] or v329[(1+0)])
							end

							if v301(_zD1436("bkpaTEs=")) and not Quest then
								replicated.Remotes.CommF_:InvokeServer(_zD1436("fl1eUVtQUW5KWkxL"))
								task.wait(0.2)

								return
							end

							if not Quest then
								local v331 = v329[(4+2)]

								if v331 then
									_tp(v331)
									task.wait((53-51))

									if (HumanoidRootPart.Position - v331.Position).Magnitude <= (6+4) then
										v313(v329[(3+0)], v329[(1+1)], v329[(1+4)] or v329[(39-38)])
									end
								else
									v313(v329[(48-45)], v329[(2+0)], v329[(1+4)] or v329[(1+0)])
								end

								return
							end

							local v332 = v329[(1+0)]
							local v333 = false
							local v334, v335, v336 = pairs(workspace.Enemies:GetChildren())
							local v337 = geniter(v334, v335, v336)
							local exitTo
							local v339

							while true do
								local v340 = table.pack(v337())

								if not v340[(22-21)] then
									break
								end

								v339 = v340[(24-21)]

								if string.find(v339.Name, v332) and t9.Alive(v339) then
									exitTo = (32-31)

									break
								end
							end

							if exitTo == (1+0) then
								v333 = true

								while true do
									task.wait(Sec)
									_tp(v339.HumanoidRootPart.CFrame * CFrame.new((925-925), (35-15), (191-191)))
									t9.Kill(v339, _G.Level)

									if v301(_zD1436("bkpaTEs=")) then
										if not _G.Level or not v339.Parent or v339.Humanoid.Health <= (202-202) then
											break
										end
									else
										break
									end
								end
							end

							if not v333 then
								local v341, v342, v343 = pairs(replicated:GetChildren())
								local v344 = geniter(v341, v342, v343)

								while true do
									local v345 = table.pack(v344())

									if not v345[(47-46)] then
										break
									end

									local v346 = v345[(42-39)]

									if string.find(v346.Name, v332) then
										if t9.Alive(v346) then
											v333 = true
											_tp(v346.HumanoidRootPart.CFrame * CFrame.new((38-38), (6+14), (597-597)))

											break
										end
									end
								end
							end

							if not v333 then
								local v347, v348, v349 = pairs(workspace._WorldOrigin.EnemySpawns:GetChildren())

								for _, v1 in v347, v348, v349 do
									if string.find(v1.Name, v332) then
										_tp(v1.CFrame * CFrame.new((546-546), (9+11), (608-608)))

										break
									end
								end
							end
						end
					end)
					exitTo = nil

					while task.wait(Sec) do
						if _G.Level then
							exitTo = (1+0)

							break
						end

						u287 = false
						u286 = false
					end
				until exitTo ~= (1+0)

				return
			end

			u287 = false
			u286 = false
		end
	end)
end

ClosetMons = GRP_Main_Farming:AddToggle(_zD1436("fkpLUGB5Xk1SYHFaXk1aTEs="), {
	Text =_zD1436("fkpLUB95Xk1SH3FaXk1aTEs="),
	Default = false,
	Callback = function(p69)
		_G.AutoFarmNear = p69
	end
})
spawn(function()
	if wait() then
		repeat
			pcall(function()
				if _G.AutoFarmNear then
					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if (child:FindFirstChild(_zD1436("d0pSXlFQVls=")) or child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))) and child.Humanoid.Health > (355-355) then
							while true do
								wait()
								t9.Kill(child, _G.AutoFarmNear)

								if _G.AutoFarmNear then
									if not child.Parent or child.Humanoid.Health <= (775-775) then
										break
									end
								else
									break
								end
							end
						end
					end
				end
			end)
		until not wait()
	end
end)
FactoryRaids = GRP_Main_Farming:AddToggle(_zD1436("fkpLUGB5XlxLUE1GYG1eVls="), {
	Text =_zD1436("fkpLUB95XlxLUE1GH21eVls="),
	Default = false,
	Callback = function(p70)
		_G.AutoFactory = p70
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.AutoFactory then
				local Core = GetConnectionEnemies(_zD1436("fFBNWg=="))

				if Core then
					while true do
						wait()
						EquipWeapon(_G.SelectWeapon)
						_tp(CFrame.new(448.46756, 199.356781, -441.389252))

						if Core.Humanoid.Health <= (785-785) then
							break
						elseif _G.AutoFactory == false then
							break
						end
					end
				else
					_tp(CFrame.new(448.46756, 199.356781, -441.389252))
				end
			end
		end)
	end
end)

do
	CastleRaids = GRP_Main_Farming:AddToggle(_zD1436("fkpLUGBvVk1eS1pgbV5WWw=="), {
		Text =_zD1436("fkpLUB9vVk1eS1ofbV5WWw=="),
		Default = false,
		Callback = function(p71)
			_G.AutoRaidCastle = p71
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.AutoRaidCastle then
				pcall(function()
					local cFrame = CFrame.new(-5496.17432, 313.768921, -2841.53027, 0.924894512, 7.37058015e-(3+6), 0.380223751, 3.5881019e-(7+1), (26-25), -1.06665446e-(22-15), -0.380223751, 1.12297109e-(51-44), 0.924894512)

					if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - Root.Position).Magnitude <= (261+239) then
						for _, child in pairs(workspace.Enemies:GetChildren()) do
							if child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child.Humanoid.Health > (130-130) and child.Name and (child.HumanoidRootPart.Position - Root.Position).Magnitude <= (703+1297) then
								while true do
									wait()
									t9.Kill(child, _G.AutoRaidCastle)

									if _G.AutoRaidCastle and child.Parent and not (child.Humanoid.Health <= (146-146)) then
										if not workspace.Enemies:FindFirstChild(child.Name) then
											break
										end
									else
										break
									end
								end
							end
						end
					else
						local t16 = {
_zD1436("eF5TU1pGH29WTV5LWg=="),
_zD1436("eF5TU1pGH3xeT0teVlE="),
_zD1436("bV5WW1pN"),
_zD1436("clpNXFpRXk1G"),
_zD1436("aV5ST1ZNWg=="),
_zD1436("ZVBSXVZa"),
_zD1436("bFFQSB9rTVBQT1pN"),
_zD1436("aFZRS1pNH2heTU1WUE0="),
_zD1436("c15dH2xKXVBNW1ZRXkta"),
_zD1436("d1BNUVpbH2heTU1WUE0="),
_zD1436("cl5YUl4fcVZRVV4="),
_zD1436("c15JXh9vVk1eS1o="),
_zD1436("bFdWTx97WlxUV15RWw=="),
_zD1436("bFdWTx96UVhWUVpaTQ=="),
_zD1436("bFdWTx9sS1pIXk1b"),
_zD1436("bFdWTx9wWVlWXFpN"),
_zD1436("fk1cS1ZcH2heTU1WUE0="),
_zD1436("bFFQSB9zSk1UWk0="),
_zD1436("bFpeH2xQU1tWWk0="),
_zD1436("aF5LWk0feVZYV0taTQ==")
						}

						for i = (1+0), #t16 do
							if replicated:FindFirstChild(t16[i]) then
								for _, child in pairs(replicated:GetChildren()) do
									if table.find(t16, child.Name) then
										_tp(cFrame)
									end
								end
							end
						end
					end
				end)
			end
		end
	end)
end

Ecto = GRP_Main_Farming:AddToggle(_zD1436("fkpLUGB5Xk1SYHpcS1BPU15MUg=="), {
	Text =_zD1436("fkpLUB95Xk1SH3pcS1BPU15MUg=="),
	Default = false,
	Callback = function(p72)
		_G.AutoEctoplasm = p72
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.AutoEctoplasm then
				local v362 = GetConnectionEnemies({
_zD1436("bFdWTx97WlxUV15RWw=="),
_zD1436("bFdWTx96UVhWUVpaTQ=="),
_zD1436("bFdWTx9sS1pIXk1b"),
_zD1436("bFdWTx9wWVlWXFpN"),
_zD1436("fk1cS1ZcH2heTU1WUE0=")
				})

				if t9.Alive(v362) then
					while true do
						wait()
						t9.Kill(v362, _G.AutoEctoplasm)

						if _G.AutoEctoplasm then
							if not v362.Parent or v362.Humanoid.Health <= (741-741) then
								break
							end
						else
							break
						end
					end
				else
					replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
				end
			end
		end)
	end
end)
GRP_Main_Chest = t15.Main:AddLeftGroupbox(_zD1436("fFdaTEs="))

do
	ChestTW = GRP_Main_Chest:AddToggle(_zD1436("fkpLUGB5Xk1SYHxXWkxL"), {
		Text =_zD1436("fkpLUB95Xk1SH3xXWkxL"),
		Default = false,
		Callback = function(p73)
			_G.AutoFarmChest = p73
		end
	})
end

spawn(function()
	while wait(Sec) do
		if _G.AutoFarmChest then
			pcall(function()
				local CollectionService = game:GetService(_zD1436("fFBTU1pcS1ZQUWxaTUlWXFo="))
				local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
				local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

				if not Character then
					return
				end

				local Position = Character:GetPivot().Position
				local tagged = CollectionService:GetTagged(_zD1436("YHxXWkxLa15YWFpb"))
				local huge = math.huge
				local v369

				for i = (17-16), #tagged do
					local v371 = tagged[i]
					local Magnitude = (v371:GetPivot().Position - Position).Magnitude

					if (not SelectedIsland or v371:IsDescendantOf(SelectedIsland)) and not v371:GetAttribute(_zD1436("dkx7VkxeXVNaWw==")) and Magnitude < huge then
						huge = Magnitude
						v369 = v371
					end
				end

				if v369 then
					_tp(v369:GetPivot())
				end
			end)
		end
	end
end)

do
	ChestBP = GRP_Main_Chest:AddToggle(_zD1436("fkpLUGB8V1pMS2B9Rk9eTEw="), {
		Text =_zD1436("fkpLUB98V1pMSx99Rk9eTEw="),
		Default = false,
		Callback = function(p74)
			_G.AutoChestBP = p74

			if p74 then
				local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
				local u374 = false
				local t17 = {}
				local u376 = true

				local function v377()
					if not LocalPlayer.Character then
						LocalPlayer.CharacterAdded:Wait()
					end

					LocalPlayer.Character:WaitForChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

					return LocalPlayer.Character
				end
				local function v378()
					if u376 then
						u376 = false

						for _, descendant in pairs(game:GetDescendants()) do
							if descendant.Name:find(_zD1436("fFdaTEs=")) and descendant.ClassName ==_zD1436("b15NSw==") then
								table.insert(t17, descendant)
							end
						end
					end

					local t18 = {}

					for _, v1 in pairs(t17) do
						if v1:FindFirstChild(_zD1436("a1BKXFd2UUtaTVpMSw==")) then
							table.insert(t18, v1)
						end
					end

					local LowerTorso = v377().LowerTorso

					table.sort(t18, function(p75, p76)
						return (LowerTorso.Position - p75.Position).Magnitude < (LowerTorso.Position - p76.Position).Magnitude
					end)

					return t18
				end
				local function v385()
					if u374 then
						return
					end

					u374 = true
					task.spawn(function()
						while _G.AutoChestBP do
							if not LocalPlayer.Character or not LocalPlayer.Character.Parent then
								break
							end

							local v386 = v378()

							if #v386 > (847-847) then
								v377().HumanoidRootPart.CFrame = v386[(33-32)].CFrame
							end

							task.wait(0.1)
						end

						u374 = false
					end)
				end

				LocalPlayer.CharacterAdded:Connect(function()
					v377()
					task.wait(0.5)

					if _G.AutoChestBP then
						v385()
					end
				end)
				v385()
			end
		end
	})
end

do
	StopI = GRP_Main_Chest:AddToggle(_zD1436("bEtQT2B2S1pSTA=="), {
		Text =_zD1436("bEtQTx92S1pSTA=="),
		Default = true,
		Callback = function(p77)
			_G.StopWhenChalice = p77
		end
	})
end

do
	spawn(function()
		while wait(0.2) do
			if _G.StopWhenChalice and (_G.AutoFarmChest or _G.AutoChestBP) then
				local exitTo

				repeat
					pcall(function()
						if GetBP(_zD1436("eFBbGEwffFdeU1ZcWg==")) or GetBP(_zD1436("bEhaWksffFdeU1ZcWg==")) then
							_G.AutoFarmChest = false
							_G.AutoChestBP = false
						elseif GetBP(_zD1436("eVZMSx9QWR97Xk1UUVpMTA==")) then
							_G.AutoFarmChest = false
							_G.AutoChestBP = false

							return
						end
					end)
					exitTo = nil

					while wait(0.2) do
						if _G.StopWhenChalice and (_G.AutoFarmChest or _G.AutoChestBP) then
							exitTo = (1+0)

							break
						end
					end
				until exitTo ~= (41-40)

				return
			end
		end
	end)
end

GRP_Main_Collect_Berry = t15.Main:AddLeftGroupbox(_zD1436("fFBTU1pcSx99Wk1NRg=="))
Berry = GRP_Main_Collect_Berry:AddToggle(_zD1436("fkpLUGB5Xk1SYH1aTU1G"), {
	Text =_zD1436("fkpLUB95Xk1SH31aTU1G"),
	Default = false,
	Callback = function(p78)
		_G.AutoBerry = p78
	end
})
spawn(function()
	while wait(Sec) do
		if _G.AutoBerry then
			local CollectionService = game:GetService(_zD1436("fFBTU1pcS1ZQUWxaTUlWXFo="))
			local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
			local tagged = CollectionService:GetTagged(_zD1436("fVpNTUZ9SkxX"))
			local n3 = (1+0)
			local v392 = #tagged

			if true then
				if n3 <= v392 then

				end

				continue
			end

			if n3 >= v392 then

			end
		end
	end
end)
BerryH = GRP_Main_Collect_Berry:AddToggle(_zD1436("fkpLUGB5Xk1SYH1aTU1GYBRgd1BP"), {
	Text =_zD1436("fkpLUB95Xk1SH31aTU1GHxQfd1BP"),
	Default = false,
	Callback = function(p79)
		_G.AutoBerryH = p79
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.AutoBerryH then
				local CollectionService = game:GetService(_zD1436("fFBTU1pcS1ZQUWxaTUlWXFo="))
				local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
				local tagged = CollectionService:GetTagged(_zD1436("fVpNTUZ9SkxX"))

				if #tagged == (562-562) then
					local TeleportService_ = game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa"))
					local t19 = {}
					local ok = pcall(function()
						t19 = game:GetService(_zD1436("d0tLT2xaTUlWXFo=")):JSONDecode(game:HttpGet(_zD1436("V0tLT0wFEBBYXlJaTBFNUF1TUEcRXFBSEEkOEFheUlpMEA==") .. game.PlaceId .._zD1436("EExaTUlaTUwQb0pdU1ZcAExQTUtwTVtaTQJ+TFwZU1ZSVksCDg8P")))
					end)

					if ok then
						if t19.data then
							for _, v1 in pairs(t19.data) do
								if v1.playing < v1.maxPlayers and v1.id ~= game.JobId then
									TeleportService_:TeleportToPlaceInstance(game.PlaceId, v1.id, LocalPlayer)

									break
								end
							end
						end
					end
				else
					for i = (30-29), #tagged do
						local v403 = tagged[i]

						for _, v1 in pairs(v403:GetAttributes()) do
							if not BerryArray or table.find(BerryArray, v1) then
								_tp(v403.Parent:GetPivot())

								for i2 = (1+0), #tagged do
									for _, child in pairs(tagged[i2]:GetChildren()) do
										if not BerryArray or table.find(BerryArray, child.Name) then
											_tp(child.WorldPivot)
											fireproximityprompt(child.ProximityPrompt, math.huge)
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end)
end

GRP_Main_Farm_Mob = t15.Main:AddLeftGroupbox(_zD1436("eV5NUh9yUF0="))

do
	if World1 then
		GRP_Main_Farm_Mob:AddDropdown(_zD1436("bFpTWlxLYHJQXQ=="), {
			Text =_zD1436("bFpTWlxLH3JQXQ=="),
			Values = {
_zD1436("fV5RW1ZL"),
_zD1436("clBRVFpG"),
_zD1436("eFBNVlNTXg=="),
_zD1436("b1ZNXkta"),
_zD1436("fU1KS1o="),
_zD1436("e1pMWk1LH31eUVtWSw=="),
_zD1436("e1pMWk1LH3BZWVZcWk0="),
_zD1436("bFFQSB99XlFbVks="),
_zD1436("bFFQSFJeUQ=="),
_zD1436("fFdWWlkfb1pLS0YfcFlZVlxaTQ=="),
_zD1436("bFRGH31eUVtWSw=="),
_zD1436("e15NVB9yXkxLWk0="),
_zD1436("a1BYXh9oXk1NVlBN"),
_zD1436("eFNeW1ZeS1BN"),
_zD1436("clZTVkteTUYfbFBTW1ZaTQ=="),
_zD1436("clZTVkteTUYfbE9G"),
_zD1436("eVZMV1JeUR9oXk1NVlBN"),
_zD1436("eVZMV1JeUR98UFJSXlFbUA=="),
_zD1436("eFBbGEwfeEpeTVs="),
_zD1436("bFdeUVte"),
_zD1436("bVBGXlMfbE5KXls="),
_zD1436("bVBGXlMfbFBTW1ZaTQ=="),
_zD1436("eF5TU1pGH29WTV5LWg=="),
_zD1436("eF5TU1pGH3xeT0teVlE=")
			},
			Default = (1+0),
			Callback = function(p80)
				getgenv().SelectMob = p80
			end
		})
	end
end

if World2 then
	GRP_Main_Farm_Mob:AddDropdown(_zD1436("bFpTWlxLYHJQXQ=="), {
		Text =_zD1436("bFpTWlxLH3JQXQ=="),
		Values = {
_zD1436("bV5WW1pN"),
_zD1436("clpNXFpRXk1G"),
_zD1436("bEheUR9vVk1eS1o="),
_zD1436("eV5cS1BNRh9sS15ZWQ=="),
_zD1436("cl5NVlFaH3NWWkpLWlFeUUs="),
_zD1436("cl5NVlFaH3xeT0teVlE="),
_zD1436("ZVBSXVZa"),
_zD1436("aV5ST1ZNWg=="),
_zD1436("bFFQSB9rTVBQT1pN"),
_zD1436("aFZRS1pNH2heTU1WUE0="),
_zD1436("c15dH2xKXVBNW1ZRXkta"),
_zD1436("d1BNUVpbH2heTU1WUE0="),
_zD1436("cl5YUl4fcVZRVV4="),
_zD1436("c15JXh9vVk1eS1o="),
_zD1436("bFdWTx97WlxUV15RWw=="),
_zD1436("bFdWTx96UVhWUVpaTQ=="),
_zD1436("bFdWTx9sS1pIXk1b"),
_zD1436("bFdWTx9wWVlWXFpN"),
_zD1436("fk1cS1ZcH2heTU1WUE0="),
_zD1436("bFFQSB9zSk1UWk0="),
_zD1436("bFpeH2xQU1tWWk0="),
_zD1436("aF5LWk0feVZYV0taTQ==")
		},
		Default = (25-24),
		Callback = function(p81)
			getgenv().SelectMob = p81
		end
	})
end

do
	if World3 then
		GRP_Main_Farm_Mob:AddDropdown(_zD1436("bFpTWlxLYHJQXQ=="), {
			Text =_zD1436("bFpTWlxLH3JQXQ=="),
			Values = {
_zD1436("b1ZNXktaH3JWU1NWUFFeVk1a"),
_zD1436("e01eWFBRH3xNWkgfaF5NTVZQTQ=="),
_zD1436("e01eWFBRH3xNWkgffk1cV1pN"),
_zD1436("eVpSXlNaH3ZMU15RW1pN"),
_zD1436("eFZeUUsfdkxTXlFbWk0="),
_zD1436("cl5NVlFaH3xQUlJQW1BNWg=="),
_zD1436("cl5NVlFaH21aXk0ffltSVk1eUw=="),
_zD1436("eVZMV1JeUR9tXlZbWk0="),
_zD1436("eVZMV1JeUR98Xk9LXlZR"),
_zD1436("eVBNWkxLH29WTV5LWg=="),
_zD1436("ckZLV1BTUFhWXF5TH29WTV5LWg=="),
_zD1436("dUpRWFNaH29WTV5LWg=="),
_zD1436("ckpMVFpLWlpNH29WTV5LWg=="),
_zD1436("bVpdUE1RH2xUWlNaS1BR"),
_zD1436("c1ZJVlFYH2VQUl1WWg=="),
_zD1436("e1pSUFFWXB9sUEpT"),
_zD1436("b1BMWkxMWlsfckpSUkY="),
_zD1436("b1peUUpLH2xcUEpL"),
_zD1436("b1peUUpLH29NWkxWW1pRSw=="),
_zD1436("dlxaH3xNWl5SH3xXWlk="),
_zD1436("dlxaH3xNWl5SH3xQUlJeUVtaTQ=="),
_zD1436("fFBQVFZaH3xNXllLWk0="),
_zD1436("fF5UWh94Sl5NWw=="),
_zD1436("fV5UVlFYH2xLXllZ"),
_zD1436("d1peWx99XlRaTQ=="),
_zD1436("fFBcUF4faF5NTVZQTQ=="),
_zD1436("fFdQXFBTXktaH31eTR99XktLU1pN"),
_zD1436("bEhaWksfa1dWWlk="),
_zD1436("fF5RW0YfbVpdWlM="),
_zD1436("fF5RW0Yfb1ZNXkta"),
_zD1436("bFFQSB97WlJQUQ=="),
_zD1436("dkxTWh9wSktTXkg="),
_zD1436("dkxTXlFbH31QRg=="),
_zD1436("bEpRElRWTExaWx9oXk1NVlBN"),
_zD1436("dkxTWh98V15ST1ZQUQ==")
			},
			Default = (1+0),
			Callback = function(p82)
				getgenv().SelectMob = p82
			end
		})
	end
end

GRP_Main_Farm_Mob:AddToggle(_zD1436("fkpLUGB0VlNTYHJQXQ=="), {
	Text =_zD1436("fkpLUB90VlNTH3JQXQ=="),
	Default = false,
	Callback = function(p83)
		_G.AutoKillMob = p83
	end
})

do
	spawn(function()
		while wait() do
			if _G.AutoKillMob then
				pcall(function()
					if game:GetService(_zD1436("aFBNVExPXlxa")).Enemies:FindFirstChild(getgenv().SelectMob) then
						for _, child in pairs(game:GetService(_zD1436("aFBNVExPXlxa")).Enemies:GetChildren()) do
							if child.Name == getgenv().SelectMob and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child.Humanoid.Health > (527-527) then
								while true do
									game:GetService(_zD1436("bUpRbFpNSVZcWg==")).Heartbeat:Wait()
									t9.Kill(child, _G.AutoKillMob)

									if _G.AutoKillMob then
										if not child.Parent or child.Humanoid.Health <= (393-393) then
											break
										end
									else
										break
									end
								end
							end
						end
					end
				end)
			end
		end
	end)
end

GRP_Main_Farm_All_Island = t15.Main:AddLeftGroupbox(_zD1436("eV5NUh9+U1MfdkxTXlFb"))

do
	local t20 = {
		Pirates = {
			CFrame = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-(4+4), -0.667371571, 4.32403588e-(6+2), (1+0), -1.07884304e-(7+0), 0.667371571, -1.09201515e-(7+0), -0.744724929),
			Mobs = {_zD1436("fV5RW1ZL") }
		},
		Marine = {
			CFrame = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-(17-9), -0.667371571, 4.32403588e-(44-36), (1+0), -1.07884304e-(12-5), 0.667371571, -1.09201515e-(64-57), -0.744724929),
			Mobs = {_zD1436("a01eVlFaWg==") }
		},
		Jungle = {
			CFrame = CFrame.new(-(1340+260), (7+29), (83+67)),
			Mobs = {
_zD1436("clBRVFpG"),
_zD1436("eFBNVlNTXg==")
			}
		},
		[_zD1436("b1ZNXktaH2lWU1NeWFo=")] = {
			CFrame = CFrame.new(-(695+405), (3+1), (1515+2335)),
			Mobs = {
_zD1436("b1ZNXkta"),
_zD1436("fU1KS1o=")
			}
		},
		Desert = {
			CFrame = CFrame.new((815+275), (1+6), (5497-1127)),
			Mobs = {
_zD1436("e1pMWk1LH31eUVtWSw=="),
_zD1436("e1pMWk1LH3BZWVZcWk0=")
			}
		},
		[_zD1436("eU1QRVpRH2lWU1NeWFo=")] = {
			CFrame = CFrame.new((2085-885), (4+24), -(18+1482)),
			Mobs = {
_zD1436("bFFQSB99XlFbVks="),
_zD1436("bFFQSFJeUQ==")
			}
		},
		[_zD1436("cl5NVlFaH3lQTUtNWkxM")] = {
			CFrame = CFrame.new(-(867+3633), (53-33), (3025+1225)),
			Mobs = {_zD1436("fFdWWlkfb1pLS0YfcFlZVlxaTQ==") }
		},
		[_zD1436("bFRGU15RW0wfc1BIWk0=")] = {
			CFrame = CFrame.new(-(103+4897), (262+438), -(3179-679)),
			Mobs = {
_zD1436("bFRGH31eUVtWSw=="),
_zD1436("e15NVB9yXkxLWk0=")
			}
		},
		Prison = {
			CFrame = CFrame.new((1701+3174), (5+1), (825-90)),
			Mobs = {
_zD1436("b01WTFBRWk0="),
_zD1436("e15RWFpNUEpMH29NVkxQUVpN")
			}
		},
		Colosseum = {
			CFrame = CFrame.new(-(488+1012), (46+14), -(472-182)),
			Mobs = {
_zD1436("a1BYXh9oXk1NVlBN"),
_zD1436("eFNeW1ZeS1BN")
			}
		},
		[_zD1436("cl5YUl4faVZTU15YWg==")] = {
			CFrame = CFrame.new(-(7071-1871), (2+6), (42+8358)),
			Mobs = {
_zD1436("clZTVkteTUYfbFBTW1ZaTQ=="),
_zD1436("clZTVkteTUYfbE9G")
			}
		},
		[_zD1436("alFbWk1IXktaTR98VktG")] = {
			CFrame = CFrame.new((119315-58155), (7-2), (1318+501)),
			Mobs = {
_zD1436("eVZMV1JeUR9oXk1NVlBN"),
_zD1436("eVZMV1JeUR98UFJSXlFbUA==")
			}
		},
		[_zD1436("bFRGU15RW0wfak9PWk0=")] = {
			CFrame = CFrame.new(-(7467+413), (8554-3009), -(344+36)),
			Mobs = {
_zD1436("bFdeUVte"),
_zD1436("bVBGXlMfbE5KXls="),
_zD1436("bVBGXlMfbFBTW1ZaTQ==")
			}
		}
	}
	local t21 = {
		[_zD1436("dFZRWFtQUh9QWR9tUExa")] = {
			CFrame = CFrame.new(-(383-62), (70+3), (75+222)),
			Mobs = {
_zD1436("bV5WW1pN"),
_zD1436("clpNXFpRXk1G"),
_zD1436("bEheUR9vVk1eS1o="),
_zD1436("eV5cS1BNRh9sS15ZWQ==")
			}
		},
		[_zD1436("eE1aWlEfZVBRWg==")] = {
			CFrame = CFrame.new(-(1319+1128), (165-92), -(6388-3177)),
			Mobs = {
_zD1436("cl5NVlFaH3NWWkpLWlFeUUs="),
_zD1436("cl5NVlFaH3xeT0teVlE=")
			}
		},
		[_zD1436("eE1eSVpGXk1bH3ZMU15RWw==")] = {
			CFrame = CFrame.new(-(6579+2936), (51+91), (5123+413)),
			Mobs = {
_zD1436("ZVBSXVZa"),
_zD1436("aV5ST1ZNWg==")
			}
		},
		[_zD1436("bFFQSB9yUEpRS15WUQ==")] = {
			CFrame = CFrame.new((586-25), (263+138), -(1633+3673)),
			Mobs = {
_zD1436("bFFQSB9rTVBQT1pN"),
_zD1436("aFZRS1pNH2heTU1WUE0=")
			}
		},
		[_zD1436("d1BLH15RWx98UFNbHxd8UFNbFg==")] = {
			CFrame = CFrame.new(-(7033-1007), (46-31), -(2451+2611)),
			Mobs = {
_zD1436("c15dH2xKXVBNW1ZRXkta"),
_zD1436("d1BNUVpbH2heTU1WUE0=")
			}
		},
		[_zD1436("d1BLH15RWx98UFNbHxd3UEsW")] = {
			CFrame = CFrame.new(-(123+5355), (8+7), -(2038+3202)),
			Mobs = {
_zD1436("cl5YUl4fcVZRVV4="),
_zD1436("c15JXh9vVk1eS1o=")
			}
		},
		[_zD1436("fEpNTFpbH2xXVk8=")] = {
			CFrame = CFrame.new((1043-141), (54+72), (37109-4038)),
			Mobs = {
_zD1436("bFdWTx97WlxUV15RWw=="),
_zD1436("bFdWTx96UVhWUVpaTQ=="),
_zD1436("bFdWTx9sS1pIXk1b"),
_zD1436("bFdWTx9wWVlWXFpN")
			}
		},
		[_zD1436("dlxaH3xeTEtTWg==")] = {
			CFrame = CFrame.new((3988+2149), (367-73), -(11108-4361)),
			Mobs = {
_zD1436("fk1cS1ZcH2heTU1WUE0="),
_zD1436("bFFQSB9zSk1UWk0=")
			}
		},
		[_zD1436("eVBNWFBLS1pRH3ZMU15RWw==")] = {
			CFrame = CFrame.new(-(2111+932), (161+77), -(15645-5454)),
			Mobs = {
_zD1436("bFpeH2xQU1tWWk0="),
_zD1436("aF5LWk0feVZYV0taTQ==")
			}
		}
	}
	local t22 = {
		[_zD1436("b1BNSx9rUEhR")] = {
			CFrame = CFrame.new(-(485-195), (131-87), (7100-1650)),
			Mobs = {
_zD1436("b1ZNXktaH3JWU1NWUFFeVk1a"),
_zD1436("b1ZMS1BTH31WU1NWUFFeVk1a")
			}
		},
		[_zD1436("d0ZbTV4fdkxTXlFb")] = {
			CFrame = CFrame.new((7750-2522), (636-32), (337+8)),
			Mobs = {
_zD1436("e01eWFBRH3xNWkgfaF5NTVZQTQ=="),
_zD1436("e01eWFBRH3xNWkgffk1cV1pN"),
_zD1436("eVpSXlNaH3ZMU15RW1pN"),
_zD1436("eFZeUUsfdkxTXlFbWk0="),
_zD1436("a01eVlFWUVgfe0pSUkY=")
			}
		},
		[_zD1436("eE1aXksfa01aWg==")] = {
			CFrame = CFrame.new((4143-1461), (1548+134), -(13301-6111)),
			Mobs = {
_zD1436("cl5NVlFaH3xQUlJQW1BNWg=="),
_zD1436("cl5NVlFaH21aXk0ffltSVk1eUw==")
			}
		},
		[_zD1436("eVNQXktWUVgfa0pNS1Na")] = {
			CFrame = CFrame.new(-(8341+3659), (77+254), -(5669+2831)),
			Mobs = {
_zD1436("eVBNWkxLH29WTV5LWg=="),
_zD1436("ckZLV1BTUFhWXF5TH29WTV5LWg=="),
_zD1436("dUpRWFNaH29WTV5LWg=="),
_zD1436("ckpMVFpLWlpNH29WTV5LWg=="),
_zD1436("eVZMV1JeUR9tXlZbWk0="),
_zD1436("eVZMV1JeUR98Xk9LXlZR")
			}
		},
		[_zD1436("d15KUUtaWx98XkxLU1o=")] = {
			CFrame = CFrame.new(-(16603-7088), (53+89), (6307-771)),
			Mobs = {
_zD1436("bVpdUE1RH2xUWlNaS1BR"),
_zD1436("c1ZJVlFYH2VQUl1WWg=="),
_zD1436("e1pSUFFWXB9sUEpT"),
_zD1436("b1BMWkxMWlsfckpSUkY=")
			}
		},
		[_zD1436("bFpeH1BZH2tNWl5LTA==")] = {
			CFrame = CFrame.new(-(1502-357), (1+12), -(11858+2592)),
			Mobs = {
_zD1436("b1peUUpLH2xcUEpL"),
_zD1436("b1peUUpLH29NWkxWW1pRSw=="),
_zD1436("dlxaH3xNWl5SH3xQUlJeUVtaTQ=="),
_zD1436("fFBQVFZaH3xNXllLWk0="),
_zD1436("fF5UWh94Sl5NWw=="),
_zD1436("fV5UVlFYH2xLXllZ"),
_zD1436("d1peWx99XlRaTQ=="),
_zD1436("fFBcUF4faF5NTVZQTQ=="),
_zD1436("fFdQXFBTXktaH31eTR99XktLU1pN"),
_zD1436("bEhaWksfa1dWWlk="),
_zD1436("fF5RW0YfbVpdWlM=")
			}
		},
		[_zD1436("a1ZUVh9wSktPUExL")] = {
			CFrame = CFrame.new(-(20384-4184), (41+49), -(19336-2036)),
			Mobs = {
_zD1436("dkxTWh9wSktTXkg="),
_zD1436("dkxTXlFbH31QRg=="),
_zD1436("bEpRElRWTExaWx9oXk1NVlBN"),
_zD1436("dkxTWh98V15ST1ZQUQ==")
			}
		},
		[_zD1436("bEpdUlpNWFpbH3ZMU15RWw==")] = {
			CFrame = CFrame.new(-(3109+91), -(2+8), -(1575+8425)),
			Mobs = {
_zD1436("bVpaWR99XlFbVks="),
_zD1436("fFBNXlMfb1ZNXkta"),
_zD1436("bFpeH3xXXlFLWk0="),
_zD1436("cFxaXlEfb01QT1daSw=="),
_zD1436("d1ZYVx97VkxcVk9TWg=="),
_zD1436("eE1eUVsfe1pJUEtaWg==")
			}
		}
	}

	if World1 then
		GRP_Main_Farm_All_Island:AddDropdown(_zD1436("bFpTWlxLYHZMU15RWw=="), {
			Text =_zD1436("bFpTWlxLH3ZMU15RWw=="),
			Values = {
_zD1436("b1ZNXktaTA=="),
_zD1436("cl5NVlFa"),
_zD1436("dUpRWFNa"),
_zD1436("b1ZNXktaH2lWU1NeWFo="),
_zD1436("e1pMWk1L"),
_zD1436("eU1QRVpRH2lWU1NeWFo="),
_zD1436("cl5NVlFaH3lQTUtNWkxM"),
_zD1436("bFRGU15RW0wfc1BIWk0="),
_zD1436("b01WTFBR"),
_zD1436("fFBTUExMWkpS"),
_zD1436("cl5YUl4faVZTU15YWg=="),
_zD1436("alFbWk1IXktaTR98VktG"),
_zD1436("bFRGU15RW0wfak9PWk0=")
			},
			Default = (1+0),
			Callback = function(p84)
				_G.SelectIsland = p84
			end
		})
	end

	if World2 then
		GRP_Main_Farm_All_Island:AddDropdown(_zD1436("bFpTWlxLYHZMU15RWw=="), {
			Text =_zD1436("bFpTWlxLH3ZMU15RWw=="),
			Values = {
_zD1436("dFZRWFtQUh9QWR9tUExa"),
_zD1436("eE1aWlEfZVBRWg=="),
_zD1436("eE1eSVpGXk1bH3ZMU15RWw=="),
_zD1436("bFFQSB9yUEpRS15WUQ=="),
_zD1436("d1BLH15RWx98UFNbHxd8UFNbFg=="),
_zD1436("d1BLH15RWx98UFNbHxd3UEsW"),
_zD1436("fEpNTFpbH2xXVk8="),
_zD1436("dlxaH3xeTEtTWg=="),
_zD1436("eVBNWFBLS1pRH3ZMU15RWw==")
			},
			Default = (1+0),
			Callback = function(p85)
				_G.SelectIsland = p85
			end
		})
	end

	if World3 then
		GRP_Main_Farm_All_Island:AddDropdown(_zD1436("bFpTWlxLYHZMU15RWw=="), {
			Text =_zD1436("bFpTWlxLH3ZMU15RWw=="),
			Values = {
_zD1436("b1BNSx9rUEhR"),
_zD1436("d0ZbTV4fdkxTXlFb"),
_zD1436("eE1aXksfa01aWg=="),
_zD1436("eVNQXktWUVgfa0pNS1Na"),
_zD1436("d15KUUtaWx98XkxLU1o="),
_zD1436("bFpeH1BZH2tNWl5LTA=="),
_zD1436("a1ZUVh9wSktPUExL"),
_zD1436("bEpdUlpNWFpbH3ZMU15RWw==")
			},
			Default = (28-27),
			Callback = function(p86)
				_G.SelectIsland = p86
			end
		})
	end

	local v414

	if World1 then
		v414 = t20
	elseif World2 then
		v414 = t21
	elseif World3 then
		v414 = t22
	end

	GRP_Main_Farm_All_Island:AddToggle(_zD1436("fkpLUGB5Xk1SYH5TU2B2TFNeUVs="), {
		Text =_zD1436("fkpLUB95Xk1SH35TUx92TFNeUVs="),
		Default = false,
		Callback = function(p87)
			_G.AutoFarmIsland = p87
		end
	})
	task.spawn(function()
		while task.wait(0.2) do
			if _G.AutoFarmIsland and _G.SelectIsland and v414 then
				local v415 = v414[_G.SelectIsland]

				if v415 then
					local CFrame_ = v415.CFrame
					local t23 = {}

					for _, mob in ipairs(v415.Mobs) do
						t23[mob] = true
					end

					local v420 = false

					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if t23[child.Name] then
							if child:FindFirstChild(_zD1436("d0pSXlFQVls=")) then
								if child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child.Humanoid.Health > (217-217) then
									v420 = true

									while true do
										task.wait()
										_tp(child.HumanoidRootPart.CFrame * CFrame.new((484-484), (67-57), (302-302)))
										t9.Kill(child, true)

										if not _G.AutoFarmIsland then
											break
										end

										if child.Parent then
											if not (child.Humanoid.Health <= (258-258)) then
												continue
											end
										end

										break
									end
								end
							end
						end
					end

					if not v420 then
						_tp(CFrame_)
					end
				end
			end
		end
	end)
end

GRP_Main_Farm_Elite_Hunter = t15.Main:AddLeftGroupbox(_zD1436("eV5NUh96U1ZLWh93SlFLWk0="))

do
	local v423 = GRP_Main_Farm_Elite_Hunter:AddLabel(_zD1436("elNWS1ofb01QWE1aTEwfBR8P"))

	spawn(function()
		while wait(Sec) do
			pcall(function()
				v423:SetText(_zD1436("elNWS1ofb01QWE1aTEwfBR8=") .. replicated.Remotes.CommF_:InvokeServer(_zD1436("elNWS1p3SlFLWk0="),_zD1436("b01QWE1aTEw=")))
			end)
		end
	end)
end

do
	local v424 = GRP_Main_Farm_Elite_Hunter:AddLabel(_zD1436("bEteS0pMBR9xUEsfeVBKUVs="))

	spawn(function()
		local s12 =""

		while wait((21-20)) do
			local v426 = (game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):FindFirstChild(_zD1436("e1ZeXVNQ")) or game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):FindFirstChild(_zD1436("e1peUVtNWg==")) or game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):FindFirstChild(_zD1436("ak1dXlE=")) or game:GetService(_zD1436("aFBNVExPXlxa")).Enemies:FindFirstChild(_zD1436("e1ZeXVNQ")) or game:GetService(_zD1436("aFBNVExPXlxa")).Enemies:FindFirstChild(_zD1436("e1peUVtNWg==")) or game:GetService(_zD1436("aFBNVExPXlxa")).Enemies:FindFirstChild(_zD1436("ak1dXlE="))) and(_zD1436("Og==")) or(_zD1436("cw=="))
			local response = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("elNWS1p3SlFLWk0="),_zD1436("b01QWE1aTEw="))

			if v426 ~= s12 then
				v424:SetText(_zD1436("bEteS0pMBR8=") .. v426 .._zD1436("H0MfdFZTU1pbBR8=") .. response)
				s12 = v426
			end
		end
	end)
end

do
	EliteQ = GRP_Main_Farm_Elite_Hunter:AddToggle(_zD1436("fkpLUGB5Xk1SYHpTVkta"), {
		Text =_zD1436("fkpLUB95Xk1SH3pTVkta"),
		Default = false,
		Callback = function(p88)
			_G.FarmEliteHunt = p88
		end
	})
end

do
	spawn(function()
		while wait((1+0)) do
			pcall(function()
				if _G.FarmEliteHunt then
					local Quest = plr.PlayerGui.Main.Quest
					local Text = Quest.Container.QuestTitle.Title.Text

					if Quest.Visible then
						local v430
						local v431, v432, v433 = pairs({
_zD1436("e1ZeXVNQ"),
_zD1436("ak1dXlE="),
_zD1436("e1peUVtNWg==")
						})
						local v434 = geniter(v431, v432, v433)

						while true do
							local v435 = table.pack(v434())

							if not v435[(1+0)] then
								break
							end

							local v436 = v435[(1+2)]

							if string.find(Text, v436) then
								v430 = v436

								break
							end
						end

						if v430 then
							local v437
							local v438, v439, v440 = pairs(replicated:GetChildren())
							local v441 = geniter(v438, v439, v440)

							while true do
								local v442 = table.pack(v441())

								if not v442[(33-32)] then
									break
								end

								local v443 = v442[(3+0)]

								if v443.Name == v430 and v443:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
									v437 = v443

									break
								end
							end

							local v444, v445, v446 = pairs(Enemies:GetChildren())

							for _, v1 in v444, v445, v446 do
								if v1.Name == v430 and t9.Alive(v1) then
									v437 = v1

									break
								end
							end

							if v437 and v437:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
								_tp(v437.HumanoidRootPart.CFrame * CFrame.new((57-57), (108-78), (237-237)))

								while true do
									wait()
									t9.Kill(v437, _G.FarmEliteHunt)

									if _G.FarmEliteHunt then
										if not v437.Parent or v437.Humanoid.Health <= (593-593) or not Quest.Visible then
											break
										end
									else
										break
									end
								end
							else
								wait((33-28))
							end
						else
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fl1eUVtQUW5KWkxL"))
						end
					else
						local response = replicated.Remotes.CommF_:InvokeServer(_zD1436("elNWS1p3SlFLWk0="))

						if response == nil or string.find(response,_zD1436("fFBQU1tQSFE=")) then
							wait((9+1))

							return
						end

						task.wait((7-6))
					end
				end
			end)
		end
	end)
end

do
	EliteH = GRP_Main_Farm_Elite_Hunter:AddToggle(_zD1436("fkpLUGB5Xk1SYHpTVktaYBRgd1BP"), {
		Text =_zD1436("fkpLUB95Xk1SH3pTVktaHxQfd1BP"),
		Default = false,
		Callback = function(p89)
			_G.FarmEliteH = p89
		end
	})
end

do
	local function v450()
		local HttpService = game:GetService(_zD1436("d0tLT2xaTUlWXFo="))
		local TeleportService_ = game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa"))
		local s13 =""
		local v454 = false

		repeat
			local ok, result = pcall(function()
				return game:HttpGet(_zD1436("V0tLT0wFEBBYXlJaTBFNUF1TUEcRXFBSEEkOEFheUlpMEA==") .. game.PlaceId .._zD1436("EExaTUlaTUwQb0pdU1ZcAExQTUtwTVtaTQJ+TFwZU1ZSVksCDg8PGVxKTUxQTQI=") .. s13)
			end)

			if ok and result then
				local data = HttpService:JSONDecode(result)

				if data.data then
					for _, v1 in pairs(data.data) do
						if v1.playing < v1.maxPlayers and v1.id ~= game.JobId then
							v454 = true
							TeleportService_:TeleportToPlaceInstance(game.PlaceId, v1.id)

							break
						end
					end

					s13 = data.nextPageCursor or""
				end
			end
		until not s13 or v454
	end

	spawn(function()
		if task.wait((28-27)) then
			repeat
				pcall(function()
					if _G.FarmEliteH then
						local Quest = plr.PlayerGui.Main.Quest
						local Text = Quest.Container.QuestTitle.Title.Text

						if Quest.Visible then
							local v462
							local v463, v464, v465 = pairs({
_zD1436("e1ZeXVNQ"),
_zD1436("ak1dXlE="),
_zD1436("e1peUVtNWg==")
							})
							local v466 = geniter(v463, v464, v465)

							while true do
								local v467 = table.pack(v466())

								if not v467[(42-41)] then
									break
								end

								local v468 = v467[(25-22)]

								if string.find(Text, v468) then
									v462 = v468

									break
								end
							end

							if v462 then
								local v469
								local v470, v471, v472 = pairs(replicated:GetChildren())
								local v473 = geniter(v470, v471, v472)

								while true do
									local v474 = table.pack(v473())

									if not v474[(1+0)] then
										break
									end

									local v475 = v474[(35-32)]

									if v475.Name == v462 and v475:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
										v469 = v475

										break
									end
								end

								local v476, v477, v478 = pairs(workspace.Enemies:GetChildren())

								for _, v1 in v476, v477, v478 do
									if v1.Name == v462 and t9.Alive(v1) then
										v469 = v1

										break
									end
								end

								if v469 and v469:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
									_tp(v469.HumanoidRootPart.CFrame * CFrame.new((199-199), (95-65), (415-415)))

									while true do
										wait()
										t9.Kill(v469, _G.FarmEliteH)

										if _G.FarmEliteH then
											if not v469.Parent or v469.Humanoid.Health <= (943-943) or not Quest.Visible then
												break
											end
										else
											break
										end
									end
								else
									task.wait((5+0))
									v450()
								end
							else
								replicated.Remotes.CommF_:InvokeServer(_zD1436("fl1eUVtQUW5KWkxL"))
								task.wait((48-47))
								v450()
							end
						else
							local response = replicated.Remotes.CommF_:InvokeServer(_zD1436("elNWS1p3SlFLWk0="))

							if response == nil or string.find(response,_zD1436("fFBQU1tQSFE=")) then
								v450()

								return
							end

							task.wait((1+0))
						end
					end
				end)
			until not task.wait((1+0))
		end
	end)
end

GRP_Main_Farm_Rip_Indra = t15.Main:AddLeftGroupbox(_zD1436("eV5NUh9tVk8fdlFbTV4="))
GRP_Main_Farm_Rip_Indra:AddToggle(_zD1436("fkpLUGB+S0teXFRgbVZPYHZRW01e"), {
	Text =_zD1436("fkpLUB9+S0teXFQfbVZPH3ZRW01e"),
	Default = false,
	Callback = function(p90)
		_G.AutoRipIngay = p90
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.AutoRipIngay then
					local ripIndra = GetConnectionEnemies(_zD1436("TVZPYFZRW01e"))

					if GetWP(_zD1436("e15NVB97XlhYWk0=")) and (GetIn(_zD1436("aV5TVEZNVlo=")) or not ripIndra) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(-5097.93164, 316.447021, -3142.66602, -0.405007899, -4.31682743e-(59-51), 0.914313197, -1.90943332e-(4+4), (52-51), 3.8755779e-(4+4), -0.914313197, -1.76180437e-(8+1), -0.405007899))
						wait(0.1)
						_tp(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
					else
						while true do
							wait()
							t9.Kill(ripIndra, _G.AutoRipIngay)

							if _G.AutoRipIngay then
								if not ripIndra.Parent or ripIndra.Humanoid.Health <= (672-672) then
									break
								end
							else
								break
							end
						end
					end
				end
			end)
		end
	end)
end

GRP_Main_Farm_Rip_Indra:AddToggle(_zD1436("fkpLUGBqUVNQXFRaW2B3XlRW"), {
	Text =_zD1436("fkpLUB9qUVNQXFRaWx93XlRW"),
	Default = false,
	Callback = function(p91)
		_G.AutoUnHaki = p91
	end
})

do
	AuraSkin = function(p92)
		replicated:WaitForChild(_zD1436("clBbSlNaTA==")):WaitForChild(_zD1436("cVpL")):WaitForChild(_zD1436("bXkQeU1KVkt8SkxLUFJWRVpNbXk=")):InvokeServer(unpack({ {
			StorageName = p92,
			Type =_zD1436("fkpNXmxUVlE="),
			Context =_zD1436("ek5KVk8=")
		} }))
	end
end

VaildColor = function(p93)
	if p93 and p93.BrickColor then
		return tostring(p93.BrickColor) ==_zD1436("c1ZSWh9YTVpaUQ==")
	end
end
HakiCalculate = function(p94)
	local t24 = {
		[_zD1436("bVpeU1NGH01aWw==")] =_zD1436("b0pNWh9tWls="),
		Oyster =_zD1436("bFFQSB9oV1ZLWg=="),
		[_zD1436("d1BLH09WUVQ=")] =_zD1436("aFZRS1pNH2xURg==")
	}

	if p94 and p94.BrickColor then
		return t24[tostring(p94.BrickColor)]
	end
end
spawn(function()
	while wait(Sec) do
		if _G.AutoUnHaki then
			pcall(function()
				local Summoner = workspace.Map[_zD1436("fVBeSx98XkxLU1o=")]:FindFirstChild(_zD1436("bEpSUlBRWk0="))

				if Summoner and Summoner:FindFirstChild(_zD1436("fFZNXFNa")) then
					local v485, v486, v487 = pairs(Summoner:FindFirstChild(_zD1436("fFZNXFNa")):GetChildren())
					local v488 = geniter(v485, v486, v487)
					local exitTo
					local v490, Part2

					while true do
						local v492 = table.pack(v488())

						if not v492[(1+0)] then
							break
						end

						v490 = v492[(26-23)]

						if v490.Name ==_zD1436("b15NSw==") then
							Part2 = v490:FindFirstChild(_zD1436("b15NSw=="))

							if VaildColor(Part2) == false then
								exitTo = (1+0)

								break
							end
						end
					end

					if exitTo == (32-31) then
						local exitTo2

						repeat
							AuraSkin(HakiCalculate(v490))

							while true do
								wait()
								_tp(v490.CFrame)

								if VaildColor(Part2) == true then
									break
								elseif not _G.AutoUnHaki then
									break
								end
							end

							exitTo2 = nil

							while true do
								local v494 = table.pack(v488())

								if not v494[(49-48)] then
									break
								end

								v490 = v494[(3+0)]

								if v490.Name ==_zD1436("b15NSw==") then
									Part2 = v490:FindFirstChild(_zD1436("b15NSw=="))

									if VaildColor(Part2) == false then
										exitTo2 = (46-45)

										break
									end
								end
							end
						until exitTo2 ~= (45-44)
					end
				end
			end)
		end
	end
end)
GRP_Main_Farming_Cake = t15.Main:AddLeftGroupbox(_zD1436("eV5NUlZRWB98XlRa"))

do
	local v495 = GRP_Main_Farming_Cake:AddLabel("")

	spawn(function()
		while wait(0.2) do
			pcall(function()
				local v496 = string.match(replicated.Remotes.CommF_:InvokeServer(_zD1436("fF5UWm9NVlFcWmxPXkhRWk0=")),_zD1436("GlsU"))

				if v496 then
					v495:SetText(_zD1436("dFZTU1pbHwUf") .. ((22+478) - tonumber(v496) or (364-364)))
				end
			end)
		end
	end)
end

Cake = GRP_Main_Farming_Cake:AddToggle(_zD1436("fkpLUGB5Xk1SYHxeVFpgb01WUVxa"), {
	Text =_zD1436("fkpLUB95Xk1SH3xeVFofb01WUVxa"),
	Default = false,
	Callback = function(p95)
		_G.Auto_Cake_Prince = p95
	end
})

do
	spawn(function()
		while task.wait() do
			if _G.Auto_Cake_Prince and not _G.AutoRaidCastle then
				local exitTo

				repeat
					pcall(function()
						local LocalPlayer = game.Players.LocalPlayer
						local HumanoidRootPart = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
						local CakeLoaf = workspace.Map:FindFirstChild(_zD1436("fF5UWnNQXlk="))
						local BigMirror = CakeLoaf and CakeLoaf:FindFirstChild(_zD1436("fVZYclZNTVBN"))

						if not HumanoidRootPart then
							return
						end

						if _G.AcceptQuestC and not _G.CheckQuestVisible(LocalPlayer) then
							local cFrame = CFrame.new(-1927.92, 37.8, -12842.54)

							_tp(cFrame)

							while (cFrame.Position - HumanoidRootPart.Position).Magnitude > (75-25) do
								task.wait(0.2)
							end

							local v503 = math.random((1+0), (3+1))
							local t25 = {
								{
_zD1436("bEteTUtuSlpMSw=="),
_zD1436("fF5UWm5KWkxLDQ=="),
									(2+0)
								},
								{
_zD1436("bEteTUtuSlpMSw=="),
_zD1436("fF5UWm5KWkxLDQ=="),
									(4-3)
								},
								{
_zD1436("bEteTUtuSlpMSw=="),
_zD1436("fF5UWm5KWkxLDg=="),
									(16-15)
								},
								{
_zD1436("bEteTUtuSlpMSw=="),
_zD1436("fF5UWm5KWkxLDg=="),
									(1+1)
								}
							}

							pcall(function()
								game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(t25[v503]))
							end)
						end

						if not CakeLoaf then
							_tp(CFrame.new(-(3498-1421), (140+112), -(5035+7338)))
							task.wait((22-20))

							return
						end

						if BigMirror and (BigMirror.Other.Transparency == (409-409) or workspace.Enemies:FindFirstChild(_zD1436("fF5UWh9vTVZRXFo="))) then
							local v505 = GetConnectionEnemies(_zD1436("fF5UWh9vTVZRXFo="))

							if v505 then
								while true do
									task.wait()
									t9.Kill2(v505, _G.Auto_Cake_Prince)

									if _G.Auto_Cake_Prince then
										if not v505.Parent or v505.Humanoid.Health <= (962-962) then
											break
										end
									else
										break
									end
								end
							else
								_tp(CFrame.new(-2151.82, 149.32, -12404.91))
							end
						else
							local v506 = GetConnectionEnemies({
_zD1436("fFBQVFZaH3xNXllLWk0="),
_zD1436("fF5UWh94Sl5NWw=="),
_zD1436("fV5UVlFYH2xLXllZ"),
_zD1436("d1peWx99XlRaTQ==")
							})

							if v506 then
								while true do
									task.wait()
									t9.Kill(v506, _G.Auto_Cake_Prince)

									if _G.Auto_Cake_Prince then
										if not v506.Parent or v506.Humanoid.Health <= (446-446) or BigMirror and BigMirror.Other.Transparency == (297-297) then
											break
										end
									else
										break
									end
								end
							else
								_tp(CFrame.new(-(2118-41), (313-61), -(11264+1109)))
							end
						end
					end)
					exitTo = nil

					while task.wait() do
						if _G.Auto_Cake_Prince and not _G.AutoRaidCastle then
							exitTo = (12-11)

							break
						end
					end
				until exitTo ~= (1+0)

				return
			end
		end
	end)
end

do
	CakeQ = GRP_Main_Farming_Cake:AddToggle(_zD1436("flxcWk9LYG5KWkxLTA=="), {
		Text =_zD1436("flxcWk9LH25KWkxLTA=="),
		Default = false,
		Callback = function(p96)
			_G.AcceptQuestBoss = p96
		end
	})
end

do
	CakeSM = GRP_Main_Farming_Cake:AddToggle(_zD1436("fkpLUGBsSlJSUFFgfF5UWmBvTVZRXFo="), {
		Text =_zD1436("fkpLUB9sSlJSUFEffF5UWh9vTVZRXFo="),
		Default = false,
		Callback = function(p97)
			_G.AutoSpawnCP = p97
		end
	})
end

spawn(function()
	while task.wait((1+1)) do
		if _G.AutoSpawnCP then
			pcall(function()
				local CommF_ = game.ReplicatedStorage.Remotes.CommF_
				local BigMirror = workspace.Map.CakeLoaf:FindFirstChild(_zD1436("fVZYclZNTVBN"))

				if not BigMirror then
					return
				end

				if workspace.Enemies:FindFirstChild(_zD1436("fF5UWh9vTVZRXFo=")) then
					return
				end

				if BigMirror.Other.Transparency == (479-479) then
					return
				end

				CommF_:InvokeServer(_zD1436("fF5UWm9NVlFcWmxPXkhRWk0="), true)
			end)
		end
	end
end)
GRP_Main_Farming_Cake:AddToggle(_zD1436("fkpLUGB7UEpYV2B0VlFYYGR5SlNTRmI="), {
	Text =_zD1436("fkpLUB97UEpYVx90VlFYH2R5SlNTRmI="),
	Default = false,
	Callback = function(p98)
		_G.AutoDoughKing = p98
	end
})

do
	spawn(function()
		while wait() do
			if _G.AutoDoughKing then
				local exitTo

				repeat
					pcall(function()
						if workspace.Map.CakeLoaf:FindFirstChild(_zD1436("bVpbe1BQTQ==")) then
							if workspace.Map.CakeLoaf:FindFirstChild(_zD1436("bVpbe1BQTQ==")) then
								if GetBP(_zD1436("bVpbH3RaRg==")) then
									while true do
										task.wait()
										_tp(CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-(51-43), 0.98883605, 3.60619588e-(26-18), (2-1), 1.35681812e-(5+3), -0.98883605, 3.36376011e-(24-16), 0.149007782))

										if getgenv().AutoDoughKing then
											if (plr.Character.HumanoidRootPart.CFrame - CFrame.new(-2681.97998, 64.3921585, -12853.7363, 0.149007782, -1.87902192e-(4+4), 0.98883605, 3.60619588e-(1+7), (13-12), 1.35681812e-(31-23), -0.98883605, 3.36376011e-(46-38), 0.149007782)).Magnitude <= (55-50) then
												break
											end
										else
											break
										end
									end

									EquipWeapon(_zD1436("bVpbH3RaRg=="))
								end
							elseif GetConnectionEnemies(_zD1436("e1BKWFcfdFZRWA==")) then
								local v510 = GetConnectionEnemies(_zD1436("e1BKWFcfdFZRWA=="))

								if v510 then
									while true do
										task.wait()
										t9.Kill(v510, _G.AutoDoughKing)

										if _G.AutoDoughKing then
											if not v510.Parent or v510.Humanoid.Health <= (84-84) then
												break
											end
										else
											break
										end
									end
								else
									_tp(CFrame.new(-1943.676513671875, 251.50956726074219, -12337.880859375))
								end
							end
						elseif GetBP(_zD1436("bVpbH3RaRg==")) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fF5UWmxcVlpRS1ZMSw=="),_zD1436("fFdaXFQ="))
							replicated.Remotes.CommF_:InvokeServer(_zD1436("bV5WW0xxT1w="),_zD1436("fFdaXFQ="))
						end

						if GetBP(_zD1436("bEhaWksffFdeU1ZcWg==")) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fF5UWm9NVlFcWmxPXkhRWk0="), true)
							_G.AutoAttackDoughKing = true
						else
							_G.AutoAttackDoughKing = false
						end

						if GetBP(_zD1436("eFBbGEwffFdeU1ZcWg==")) and GetM(_zD1436("fFBRVUpNWlsffFBcUF4=")) >= (56-46) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("bEhaWkt8V15TVlxacU9c"))
						end

						local ok = not plr.Backpack:FindFirstChild(_zD1436("eFBbGEwffFdeU1ZcWg=="))

						if not ok then
							ok = not not plr.Character:FindFirstChild(_zD1436("eFBbGEwffFdeU1ZcWg=="))
						end

						if ok then
							_G.FarmEliteHunt = true
						else
							_G.FarmEliteHunt = false
						end

						if GetM(_zD1436("fFBRVUpNWlsffFBcUF4=")) <= (28-18) then
							local v512 = GetConnectionEnemies({
_zD1436("fFBcUF4faF5NTVZQTQ=="),
_zD1436("fFdQXFBTXktaH31eTR99XktLU1pN")
							})

							if v512 then
								while true do
									task.wait()
									t9.Kill(v512, _G.AutoDoughKing)

									if _G.AutoDoughKing == false then
										break
									elseif not v512.Parent or v512.Humanoid.Health <= (603-603) then
										break
									end
								end
							else
								_tp(CFrame.new(402.71890258789062, 81.060501098632812, -12259.54296875))
							end
						end
					end)
					exitTo = nil

					while wait() do
						if _G.AutoDoughKing then
							exitTo = (30-29)

							break
						end
					end
				until exitTo ~= (5-4)

				return
			end
		end
	end)
end

GRP_Main_Farming_Cake:AddToggle(_zD1436("fkpLUGB5Xk1SYHtQSlhXYHRWUVg="), {
	Text =_zD1436("fkpLUB95Xk1SH3tQSlhXH3RWUVg="),
	Default = false,
	Callback = function(p99)
		_G.AutoAttackDoughKing = p99
	end
})
spawn(function()
	while wait() do
		if _G.AutoAttackDoughKing then
			local exitTo

			repeat
				pcall(function()
					local v514 = GetConnectionEnemies(_zD1436("e1BKWFcfdFZRWA=="))

					if v514 then
						while true do
							task.wait()
							t9.Kill(v514, _G.AutoAttackDoughKing)

							if _G.AutoAttackDoughKing then
								if not v514.Parent or v514.Humanoid.Health <= (714-714) then
									break
								end
							else
								break
							end
						end
					else
						_tp(CFrame.new(-1943.6765, 251.5095, -12337.8809))
					end
				end)
				exitTo = nil

				while wait() do
					if _G.AutoAttackDoughKing then
						exitTo = (1+0)

						break
					end
				end
			until exitTo ~= (1+0)

			return
		end
	end
end)

do
	GRP_Main_Farming_Cake:AddToggle(_zD1436("fkpLUGB5Xk1SYHtQSlhXYHRWUVhgFGB3UE8="), {
		Text =_zD1436("fkpLUB95Xk1SH3tQSlhXH3RWUVgfFB93UE8="),
		Default = false,
		Callback = function(p100)
			_G.AutoHop_Dough = p100
		end
	})
end

do
	local function v515()
		pcall(function()
			local HttpService = game:GetService(_zD1436("d0tLT2xaTUlWXFo="))
			local t26 = {}
			local response = game:HttpGet(_zD1436("V0tLT0wFEBBYXlJaTBFNUF1TUEcRXFBSEEkOEFheUlpMEA==") .. game.PlaceId .._zD1436("EExaTUlaTUwQb0pdU1ZcAExQTUtwTVtaTQJ+TFwZU1ZSVksCDg8P"))

			for _, v1 in pairs(HttpService:JSONDecode(response).data) do
				if v1.playing < v1.maxPlayers then
					table.insert(t26, v1.id)
				end
			end

			if #t26 > (81-81) then
				game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa")):TeleportToPlaceInstance(game.PlaceId, t26[math.random((1+0), #t26)], game.Players.LocalPlayer)
			end
		end)
	end

	spawn(function()
		while task.wait() do
			if _G.AutoHop_Dough then
				local exitTo

				repeat
					pcall(function()
						local v522 = GetConnectionEnemies(_zD1436("e1BKWFcfdFZRWA=="))

						if v522 then
							while true do
								task.wait()
								t9.Kill(v522, _G.AutoHop_Dough)

								if _G.AutoHop_Dough then
									if not v522.Parent or v522.Humanoid.Health <= (332-332) then
										break
									end
								else
									break
								end
							end
						else
							_tp(CFrame.new(-1943.6765, 251.5095, -12337.8809))
							task.wait((1+1))

							if not GetConnectionEnemies(_zD1436("e1BKWFcfdFZRWA==")) and _G.AutoHop_Dough then
								v515()
							end
						end
					end)
					exitTo = nil

					while task.wait() do
						if _G.AutoHop_Dough then
							exitTo = (45-44)

							break
						end
					end
				until exitTo ~= (1+0)

				return
			end
		end
	end)
end

GRP_Main_Farming_Bone = t15.Main:AddLeftGroupbox(_zD1436("eV5NUlZRWB99UFFa"))

do
	local v523 = GRP_Main_Farming_Bone:AddLabel("")

	spawn(function()
		while wait((1+0)) do
			local response = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fFdaXFQ=")) or (808-808)

			v523:SetText(_zD1436("ZlBKH3deSVoFHw==") .. tostring(response) .._zD1436("H31QUVpM"))
			v277:SetText(_zD1436("ZlBKH3deSVoFHw==") .. tostring(response) .._zD1436("H31QUVpM"))
		end
	end)
end

do
	GRP_Main_Farming_Bone:AddToggle(_zD1436("fkpLUGB5Xk1SYH1QUVo="), {
		Text =_zD1436("fkpLUB95Xk1SH31QUVo="),
		Default = false,
		Callback = function(p101)
			_G.AutoFarm_Bone = p101
		end
	})
end

do
	spawn(function()
		local LocalPlayer = game.Players.LocalPlayer
		local t27 = {
_zD1436("bVpdUE1RH2xUWlNaS1BR"),
_zD1436("c1ZJVlFYH2VQUl1WWg=="),
_zD1436("e1pSUFFWXB9sUEpT"),
_zD1436("b1BMTFpMTFpbH3JKUlJG")
		}

		while wait(0.5) do
			if _G.AutoFarm_Bone then
				local exitTo

				repeat
					pcall(function()
						local Character = LocalPlayer.Character
						local HumanoidRootPart = Character and Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

						if not HumanoidRootPart then
							return
						end

						if LocalPlayer.PlayerGui:FindFirstChild(_zD1436("cl5WUQ==")) then
							LocalPlayer.PlayerGui.Main:FindFirstChild(_zD1436("bkpaTEs="))
						end

						local v530 = GetConnectionEnemies(t27)

						if _G.AcceptQuestB then
							if not _G.CheckQuestVisible(LocalPlayer) then
								local cFrame = CFrame.new(-9516.99316, 172.01718, 6078.46533)

								_tp(cFrame)

								while true do
									wait((2+0))

									if _G.AutoFarm_Bone then
										if (cFrame.Position - HumanoidRootPart.Position).Magnitude <= (113-63) then
											break
										end
									else
										break
									end
								end

								if not _G.AutoFarm_Bone then
									return
								end

								local t28 = {
									{
_zD1436("bEteTUtuSlpMSw=="),
_zD1436("d15KUUtaW25KWkxLDQ=="),
										(46-44)
									},
									{
_zD1436("bEteTUtuSlpMSw=="),
_zD1436("d15KUUtaW25KWkxLDQ=="),
										(1+0)
									},
									{
_zD1436("bEteTUtuSlpMSw=="),
_zD1436("d15KUUtaW25KWkxLDg=="),
										(50-49)
									},
									{
_zD1436("bEteTUtuSlpMSw=="),
_zD1436("d15KUUtaW25KWkxLDg=="),
										(2+0)
									}
								}

								game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(t28[math.random((46-45), #t28)]))
							end
						end

						if v530 then
							while true do
								wait()
								t9.Kill(v530, true)

								if _G.AutoFarm_Bone then
									if not v530.Parent or v530.Humanoid.Health <= (820-820) then
										break
									end
								else
									break
								end
							end
						else
							_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))
						end
					end)
					exitTo = nil

					while wait(0.5) do
						if _G.AutoFarm_Bone then
							exitTo = (1+0)

							break
						end
					end
				until exitTo ~= (19-18)

				return
			end
		end
	end)
end

do
	BoneQ = GRP_Main_Farming_Bone:AddToggle(_zD1436("flxcWk9LYG5KWkxLTA=="), {
		Text =_zD1436("flxcWk9LH25KWkxLTA=="),
		Default = false,
		Callback = function(p102)
			_G.AcceptQuestBoss = p102
		end
	})
end

GRP_Main_Farming_Bone:AddToggle(_zD1436("fkpLUGBsUEpTYG1aXk9aTQ=="), {
	Text =_zD1436("fkpLUB9sUEpTH21aXk9aTQ=="),
	Default = false,
	Callback = function(p103)
		_G.AutoHytHallow = p103
	end
})
spawn(function()
	while wait(Sec) do
		if _G.AutoHytHallow then
			pcall(function()
				local v533 = GetConnectionEnemies(_zD1436("bFBKUx9tWl5PWk0="))

				if v533 then
					while true do
						task.wait()
						t9.Kill(v533, _G.AutoHytHallow)

						if v533.Humanoid.Health <= (297-297) then
							break
						elseif _G.AutoHytHallow == false then
							break
						end
					end
				elseif GetBP(_zD1436("d15TU1BIH3pMTFpRXFo=")) then
					while true do
						wait(0.1)
						_tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))

						if _G.AutoHytHallow == false then
							break
						elseif plr.Character.HumanoidRootPart.CFrame == CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125) then
							break
						end
					end

					EquipWeapon(_zD1436("d15TU1BIH3pMTFpRXFo="))
				else
					while true do
						task.wait(0.1)
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fUpG"), (1+0), (1+0))

						if _G.AutoHytHallow == false then
							break
						elseif GetBP(_zD1436("d15TU1BIH3pMTFpRXFo=")) then
							break
						end
					end
				end
			end)
		end
	end
end)
RanBone = GRP_Main_Farming_Bone:AddToggle(_zD1436("fkpLUGBtXlFbUFJgfVBRWkw="), {
	Text =_zD1436("fkpLUB9tXlFbUFIffVBRWkw="),
	Default = false,
	Callback = function(p104)
		_G.Auto_Random_Bone = p104
	end
})
spawn(function()
	if wait(Sec) then
		repeat
			pcall(function()
				if _G.Auto_Random_Bone then
					repeat
						task.wait()
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fUpG"), (11-10), (36-35))
					until not _G.Auto_Random_Bone
				end
			end)
		until not wait(Sec)
	end
end)

do
	Lucky = GRP_Main_Farming_Bone:AddToggle(_zD1436("fkpLUGBrTUZgc0pcVGB4TV5JWkxLUFFa"), {
		Text =_zD1436("fkpLUB9rTUYfc0pcVB94TV5JWkxLUFFa"),
		Default = false,
		Callback = function(p105)
			_G.TryLucky = p105
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.TryLucky then
				local cFrame = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)

				if plr.Character.HumanoidRootPart.CFrame ~= cFrame then
					_tp(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
				elseif plr.Character.HumanoidRootPart.CFrame == cFrame then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("WE1eSVpMS1BRWnpJWlFL"), (1+0))
				end
			end
		end
	end)
end

do
	Pray = GRP_Main_Farming_Bone:AddToggle(_zD1436("fkpLUGBvTV5GYHhNXklaTEtQUVo="), {
		Text =_zD1436("fkpLUB9vTV5GH3hNXklaTEtQUVo="),
		Default = false,
		Callback = function(p106)
			_G.Praying = p106
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.Praying then
				local cFrame = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)

				if plr.Character.HumanoidRootPart.CFrame ~= cFrame then
					local exitTo

					repeat
						_tp(CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813))
						exitTo = nil

						while wait(Sec) do
							if _G.Praying then
								local cFrame2 = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)

								if plr.Character.HumanoidRootPart.CFrame ~= cFrame2 then
									exitTo = (49-48)

									break
								elseif plr.Character.HumanoidRootPart.CFrame == cFrame2 then
									replicated.Remotes.CommF_:InvokeServer(_zD1436("WE1eSVpMS1BRWnpJWlFL"), (32-30))
								end
							end
						end
					until exitTo ~= (1+0)

					return
				elseif plr.Character.HumanoidRootPart.CFrame == cFrame then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("WE1eSVpMS1BRWnpJWlFL"), (1+1))
				end
			end
		end
	end)
end

GRP_Main_Tyrant_of_the_Skies = t15.Main:AddLeftGroupbox(_zD1436("a0ZNXlFLH1BZH0tXWh9sVFZaTA=="))

do
	local v538 = GRP_Main_Tyrant_of_the_Skies:AddLabel(_zD1436("a0ZNXlFLH1BZH0tXWh9sVFZaTAUf"))

	spawn(function()
		pcall(function()
			while wait((1+0)) do
				if workspace.Enemies:FindFirstChild(_zD1436("a0ZNXlFLH1BZH0tXWh9sVFZaTA==")) then
					v538:SetText(_zD1436("a0ZNXlFLH1BZH0tXWh9sVFZaTAUfOg=="))
				else
					v538:SetText(_zD1436("a0ZNXlFLH1BZH0tXWh9sVFZaTAUfcw=="))
				end
			end
		end)
	end)
end

do
	local v539 = GRP_Main_Tyrant_of_the_Skies:AddLabel(_zD1436("ekZaTAUfDxAL"))

	Check_Eye = function()
		local IslandModel = workspace.Map.TikiOutpost.IslandModel
		local n4 = (775-775)

		for _, v1 in ipairs({
			IslandModel.Eye1,
			IslandModel.Eye2,
			IslandModel.IslandChunks.E.Eye3,
			IslandModel.IslandChunks.E.Eye4
		}) do
			if v1 and v1.Transparency ~= (43-42) then
				n4 += (1+0)
			end
		end

		return n4, n4 == (2+2)
	end
	task.spawn(function()
		local v544 = false

		while task.wait((1+0)) do
			local v545, v546 = Check_Eye()

			v539:SetText(_zD1436("ekZaTAUf") .. v545 .._zD1436("EAs="))

			if v546 and not v544 then
				v544 = true
			elseif not v546 then
				v544 = false
			end
		end
	end)
end

do
	FarmTyrant = GRP_Main_Tyrant_of_the_Skies:AddToggle(_zD1436("fkpLUGB5Xk1SYH1QTExga3BrbA=="), {
		Text =_zD1436("fkpLUB95Xk1SH31QTEwfa3BrbA=="),
		Default = false,
		Callback = function(p107)
			_G.FarmTyrant = p107
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.FarmTyrant then
				pcall(function()
					if not plr.Character then
						return
					end

					local HumanoidRootPart = plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

					if not HumanoidRootPart then
						return
					end

					local vector3 = Vector3.new(-16268.287, 152.616, 1390.773)

					if (HumanoidRootPart.Position - vector3).Magnitude > (41-36) then
						_tp(CFrame.new(vector3))

						while true do
							wait()

							if _G.FarmTyrant then
								if plr.Character then
									if not plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) or not ((plr.Character.HumanoidRootPart.Position - vector3).Magnitude <= (5+0)) then
										continue
									end
								else
									continue
								end

								break
							end

							break
						end
					end

					local TyrantOfTheSkies = workspace.Enemies:FindFirstChild(_zD1436("a0ZNXlFLH1BZH0tXWh9sVFZaTA=="))

					if TyrantOfTheSkies and TyrantOfTheSkies:FindFirstChild(_zD1436("d0pSXlFQVls=")) and TyrantOfTheSkies.Humanoid.Health > (353-353) then
						while _G.FarmTyrant do
							if t9 and t9.Kill then
								t9.Kill(TyrantOfTheSkies, _G.FarmTyrant)
							end

							wait()

							if not _G.FarmTyrant or not TyrantOfTheSkies.Parent or TyrantOfTheSkies.Humanoid.Health <= (591-591) then
								break
							end
						end

						return
					end

					for _, v1 in ipairs({
_zD1436("bFpNT1pRSx93SlFLWk0="),
_zD1436("bFRKU1MfbFNeRlpN"),
_zD1436("dkxTWh98V15ST1ZQUQ=="),
_zD1436("bEpRElRWTExaWx9oXk1NVlBN")
					}) do
						if not _G.FarmTyrant then
							break
						end

						for _, child in pairs(workspace.Enemies:GetChildren()) do
							if not _G.FarmTyrant then
								break
							end

							if child and child.Name == v1 and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child.Humanoid.Health > (421-421) then
								if (HumanoidRootPart.Position - child.HumanoidRootPart.Position).Magnitude > (5546-546) then
									_tp(child.HumanoidRootPart.CFrame * CFrame.new((774-774), (79-49), (581-581)))

									local now = tick()

									repeat
										wait()
										HumanoidRootPart = plr.Character and plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
									until not _G.FarmTyrant or not HumanoidRootPart or (HumanoidRootPart.Position - child.HumanoidRootPart.Position).Magnitude <= (4+2) or tick() - now > (25-17)
								end

								while _G.FarmTyrant do
									if t9 and t9.Kill then
										t9.Kill(child, _G.FarmTyrant)
									end

									wait()

									if not _G.FarmTyrant or not child.Parent or child.Humanoid.Health <= (860-860) then
										break
									end
								end
							end
						end
					end
				end)
			end
		end
	end)
end

FarmPhaBinh = GRP_Main_Tyrant_of_the_Skies:AddToggle(_zD1436("fkpLUGBsSlJSUFFgfVBMTA=="), {
	Text =_zD1436("fkpLUB9sSlJSUFEffVBMTA=="),
	Default = false,
	Callback = function(p108)
		_G.FarmPhaBinh = p108
	end
})

do
	local function v555(p109)
		local VirtualInputManager = game:GetService(_zD1436("aVZNS0peU3ZRT0pLcl5RXlhaTQ=="))

		VirtualInputManager:SendKeyEvent(true, p109, true, game)
		wait(0.05)
		VirtualInputManager:SendKeyEvent(false, p109, true, game)
	end
	local function v557(p110)
		if not plr.Character or not plr.Character:FindFirstChild(_zD1436("d0pSXlFQVls=")) or not (plr.Character.Humanoid.Health > (290-290)) then
			return
		end

		for _, child in pairs(plr.Backpack:GetChildren()) do
			if child:IsA(_zD1436("a1BQUw==")) and child.ToolTip == p110 then
				child.Parent = plr.Character
				wait(0.12)

				for _, v1 in ipairs({
_zD1436("ZQ=="),
_zD1436("Zw=="),
_zD1436("fA=="),
_zD1436("aQ=="),
_zD1436("eQ==")
				}) do
					if not _G.FarmPhaBinh then
						break
					end

					pcall(function()
						v555(v1)
					end)
					wait(0.12)
				end

				child.Parent = plr.Backpack

				return
			end
		end
	end

	local t29 = {
		CFrame.new(-16332.5263671875, 158.07200622558594, 1440.324951171875),
		CFrame.new(-16288.609375, 158.16700744628906, 1470.3680419921875),
		CFrame.new(-16245.412109375, 158.43699645996094, 1463.365966796875),
		CFrame.new(-16212.46875, 158.16700744628906, 1466.343994140625),
		CFrame.new(-16211.9462890625, 158.07200622558594, 1322.39794921875),
		CFrame.new(-16260.921875, 154.92100524902344, 1323.615966796875),
		CFrame.new(-16297.0595703125, 159.322998046875, 1317.2239990234375),
		CFrame.new(-16335.0966796875, 159.33399963378906, 1324.885986328125)
	}

	spawn(function()
		while wait(Sec) do
			if _G.FarmPhaBinh then
				pcall(function()
					if plr and plr.Character then
						if plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
							if plr.Character:FindFirstChild(_zD1436("d0pSXlFQVls=")) and plr.Character.Humanoid.Health > (501-501) then
								for _, v1 in ipairs(t29) do
									if not _G.FarmPhaBinh then
										break
									end

									_tp(v1)

									local v565 = false
									local now = tick()

									while true do
										if tick() - now < (29-17) and _G.FarmPhaBinh then
											local HumanoidRootPart = plr.Character and plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

											if not HumanoidRootPart then
												break
											end

											if not ((HumanoidRootPart.Position - v1.Position).Magnitude <= (2+1)) then
												wait(0.1)

												continue
											end

											v565 = true

											break
										end

										break
									end

									if _G.FarmPhaBinh and v565 then
										v557(_zD1436("clpTWlo="))
										v557(_zD1436("bEhQTVs="))
										v557(_zD1436("eEpR"))
									end
								end

								return
							end
						end
					end
				end)
			end
		end
	end)
end

GRP_Main_Farm_Material = t15.Main:AddLeftGroupbox(_zD1436("eV5NUh9yXktaTVZeUw=="))

do
	Test = GRP_Main_Farm_Material:AddDropdown(_zD1436("fFdQUExaYHJeS1pNVl5T"), {
		Text =_zD1436("fFdQUExaH3JeS1pNVl5T"),
		Values = MaterialList,
		Default = (29-28),
		Callback = function(p111)
			getgenv().SelectMaterial = p111
		end
	})
end

Toggle = GRP_Main_Farm_Material:AddToggle(_zD1436("fkpLUGB5Xk1SYHJeS1pNVl5TTA=="), {
	Text =_zD1436("fkpLUB95Xk1SH3JeS1pNVl5TTA=="),
	Default = false,
	Callback = function(p112)
		getgenv().AutoMaterial = p112
	end
})
spawn(function()
	local function v568(p113, p114)
		if p113:FindFirstChild(_zD1436("d0pSXlFQVls=")) and p113:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and p113.Humanoid.Health > (731-731) then
			if p113.Name == p114 then
				while true do
					wait()
					t9.Kill(p113, getgenv().AutoMaterial)

					if getgenv().AutoMaterial then
						if not p113.Parent or p113.Humanoid.Health <= (216-216) then
							break
						end
					else
						break
					end
				end
			end
		end
	end
	local function v569()
		for _, child in pairs(game:GetService(_zD1436("aFBNVExPXlxa"))._WorldOrigin.EnemySpawns:GetChildren()) do
			for _, v1 in ipairs(MMon) do
				if string.find(child.Name, v1) and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - child.Position).Magnitude >= (20-10) then
					_tp(child.CFrame * Pos)
				end
			end
		end
	end

	while wait() do
		if getgenv().AutoMaterial then
			pcall(function()
				if getgenv().SelectMaterial then
					MaterialMon(getgenv().SelectMaterial)
					_tp(MPos)
				end

				for _, v1 in ipairs(MMon) do
					for _, child in pairs(workspace.Enemies:GetChildren()) do
						v568(child, v1)
					end
				end

				v569()
			end)
		end
	end
end)
GRP_Main_Farm_Boss = t15.Main:AddLeftGroupbox(_zD1436("eV5NUh99UExM"))
BossDropdown = GRP_Main_Farm_Boss:AddDropdown(_zD1436("bFpTWlxLYH1QTEw="), {
	Text =_zD1436("bFpTWlxLH31QTEw="),
	Values = BossList,
	Default = (1+0),
	Callback = function(p115)
		_G.FindBoss = p115
	end
})
FarmBoss = GRP_Main_Farm_Boss:AddToggle(_zD1436("fkpLUGB5Xk1SYH1QTEw="), {
	Text =_zD1436("fkpLUB95Xk1SH31QTEw="),
	Default = false,
	Callback = function(p116)
		_G.FarmBoss = p116
		spawn(function()
			while wait(Sec) do
				if _G.FarmBoss then
					local exitTo

					repeat
						pcall(function()
							local v579 = QuestBeta()[(2+0)] ~= nil

							v579 = v579 and QuestBeta()[(13-10)] ~= nil

							local Text = plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

							if _G.AcceptQuestBoss and v579 then
								if not string.find(Text, QuestBeta()[(117-117)]) then
									replicated.Remotes.CommF_:InvokeServer(_zD1436("fl1eUVtQUW5KWkxL"))
								end

								if plr.PlayerGui.Main.Quest.Visible == false then
									_tp(QuestBeta()[(4+1)])

									if (Root.Position - QuestBeta()[(4+1)].Position).Magnitude <= (46-41) then
										replicated.Remotes.CommF_:InvokeServer(_zD1436("bEteTUtuSlpMSw=="), QuestBeta()[(30-27)], QuestBeta()[(49-47)])
									end
								elseif plr.PlayerGui.Main.Quest.Visible == true then
									if workspace.Enemies:FindFirstChild(QuestBeta()[(1+0)]) then
										for _, child in pairs(workspace.Enemies:GetChildren()) do
											if t9.Alive(child) and child.Name == QuestBeta()[(1+0)] then
												if string.find(Text, QuestBeta()[(272-272)]) then
													while true do
														wait()
														t9.Kill(child, _G.FarmBoss)

														if _G.FarmBoss then
															if child.Humanoid.Health <= (62-62) or not child.Parent or plr.PlayerGui.Main.Quest.Visible == false then
																break
															end
														else
															break
														end
													end
												else
													replicated.Remotes.CommF_:InvokeServer(_zD1436("fl1eUVtQUW5KWkxL"))
												end
											end
										end
									else
										_tp(QuestBeta()[(4+0)])

										if replicated:FindFirstChild(QuestBeta()[(4-3)]) then
											_tp(replicated:FindFirstChild(QuestBeta()[(32-31)]).HumanoidRootPart.CFrame * CFrame.new((328-328), (11+19), (780-780)))
										end
									end
								end
							elseif workspace.Enemies:FindFirstChild(QuestBeta()[(51-50)]) then
								for _, child in pairs(workspace.Enemies:GetChildren()) do
									if t9.Alive(child) and child.Name == QuestBeta()[(1+0)] then
										while true do
											wait()
											t9.Kill(child, _G.FarmBoss)

											if _G.FarmBoss then
												if child.Humanoid.Health <= (193-193) or not child.Parent then
													break
												end
											else
												break
											end
										end
									end
								end
							else
								_tp(QuestBeta()[(4+0)])

								if replicated:FindFirstChild(QuestBeta()[(20-19)]) then
									_tp(replicated:FindFirstChild(QuestBeta()[(1+0)]).HumanoidRootPart.CFrame * CFrame.new((66-66), (82-52), (900-900)))
								end
							end
						end)
						exitTo = nil

						while wait(Sec) do
							if _G.FarmBoss then
								exitTo = (11-10)

								break
							end
						end
					until exitTo ~= (17-16)

					return
				end
			end
		end)
	end
})
BossQ = GRP_Main_Farm_Boss:AddToggle(_zD1436("flxcWk9LYG5KWkxLTA=="), {
	Text =_zD1436("flxcWk9LH25KWkxLTA=="),
	Default = true,
	Callback = function(p117)
		_G.AcceptQuestBoss = p117
	end
})
FarmAllBoss = GRP_Main_Farm_Boss:AddToggle(_zD1436("fkpLUGB5Xk1SYH5TU2B9UExM"), {
	Text =_zD1436("fkpLUB95Xk1SH35TUx99UExM"),
	Default = false,
	Callback = function(p118)
		_G.AutoFarmAllBoss = p118
	end
})
task.spawn(function()
	while task.wait(0.3) do
		if _G.AutoFarmAllBoss then
			pcall(function()
				local LocalPlayer = game.Players.LocalPlayer

				if LocalPlayer.Character then
					if LocalPlayer.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
						local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
						local v587
						local huge = math.huge

						for _, child in pairs(workspace.Enemies:GetChildren()) do
							if child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child.Humanoid.Health > (215-215) and table.find(BossList, child.Name) then
								local Magnitude = (HumanoidRootPart.Position - child.HumanoidRootPart.Position).Magnitude

								if Magnitude < huge then
									v587 = child
									huge = Magnitude
								end
							end
						end

						if v587 and v587:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
							local HumanoidRootPart2 = v587.HumanoidRootPart
							local Humanoid = v587.Humanoid

							while true do
								task.wait(0.1)

								if _G.AutoFarmAllBoss then
									local v594 = HumanoidRootPart2.CFrame * CFrame.new((443-443), (1+4), (343-343))

									if (HumanoidRootPart.Position - v594.Position).Magnitude > (201-101) then
										LocalPlayer.Character:PivotTo(v594)
									else
										_tp(v594)
									end

									if t9 and typeof(t9.Kill) ==_zD1436("WUpRXEtWUFE=") then
										t9.Kill(v587, true)
									end

									if not v587.Parent or Humanoid.Health <= (509-509) or not _G.AutoFarmAllBoss then
										break
									end
								else
									break
								end
							end
						end

						return
					end
				end
			end)
		end
	end
end)
_G.MasteryHealthPct = (19+51)
_G.SelectedMasterySkills = {
	Z = true,
	X = true,
	C = true,
	V = true,
	F = true
}

do
	local v595 = t15.Main:AddLeftGroupbox(_zD1436("eV5NUlZRWB9yXkxLWk1G"))
	local s14 =_zD1436("fF5UWg==")

	v595:AddDropdown(_zD1436("fFdQUExaYHZMU15RWw=="), {
		Text =_zD1436("fFdQUExaH3ZMU15RWw=="),
		Values = {
_zD1436("fF5UWg=="),
_zD1436("fVBRWg==")
		},
		Default = (1+0),
		Callback = function(p119)
			s14 = p119
		end
	})
	v595:AddSlider({
		Text =_zD1436("cW98H3daXlNLVx8aH2xIVktcVx9LUB9oWl5PUFE="),
		Min = (9+1),
		Max = (49+46),
		Default = (112-42),
		Rounding = (1+0),
		Callback = function(p120)
			_G.MasteryHealthPct = p120
		end
	})
	v595:AddDropdown(_zD1436("bFpTWlxLYGxUVlNTTA=="), {
		Text =_zD1436("bFpTWlxLH2xUVlNTTB9LUB9qTFo="),
		Values = {
_zD1436("ZQ=="),
_zD1436("Zw=="),
_zD1436("fA=="),
_zD1436("aQ=="),
_zD1436("eQ=="),
_zD1436("Zg==")
		},
		Multi = true,
		Default = {
			Z = true,
			X = true,
			C = true,
			V = true,
			F = true
		},
		Callback = function(p121, p122)
			if type(p121) ==_zD1436("S15dU1o=") then
				_G.SelectedMasterySkills = p121
			elseif type(p121) ==_zD1436("TEtNVlFY") then
				if type(_G.SelectedMasterySkills) ~=_zD1436("S15dU1o=") then
					_G.SelectedMasterySkills = {}
				end

				_G.SelectedMasterySkills[p121] = p122 and true or nil
			end
		end
	})
	v595:AddToggle(_zD1436("fkpLUGByXkxLWk1GYHlNSlZLTA=="), {
		Text =_zD1436("fkpLUB9yXkxLWk1GH3lNSlZLTA=="),
		Default = false,
		Callback = function(p123)
			_G.FarmMastery_Dev = p123
		end
	})
	spawn(function()
		RunSer.RenderStepped:Connect(function()
			pcall(function()
				if _G.FarmMastery_Dev or _G.FarmMastery_G or _G.FarmMastery_S then
					for _, child in pairs(plr.PlayerGui.Notifications:GetChildren()) do
						if child.Name ==_zD1436("cVBLVllWXF5LVlBRa1pST1NeS1o=") and string.find(child.Text,_zD1436("bFRWU1MfU1BcVFpbHg==")) then
							child:Destroy()
						end
					end
				end
			end)
		end)
	end)
	spawn(function()
		while wait(Sec) do
			if _G.FarmMastery_Dev then
				pcall(function()
					if s14 ==_zD1436("fF5UWg==") then
						local v599 = GetConnectionEnemies(t5)

						if v599 then
							while true do
								wait()
								HealthM = v599.Humanoid.MaxHealth * (_G.MasteryHealthPct / (124-24))
								MousePos = v599.HumanoidRootPart.Position
								t9.Mas(v599, _G.FarmMastery_Dev)

								if _G.FarmMastery_Dev == false then
									break
								elseif v599.Humanoid.Health <= (238-238) or not v599.Parent then
									break
								end
							end
						else
							_tp(CFrame.new(-1943.676513671875, 251.50956726074219, -12337.880859375))
						end
					else
						if s14 ~=_zD1436("fVBRWg==") then
							return
						end

						local v600 = GetConnectionEnemies(t6)

						if v600 then
							while true do
								wait()
								HealthM = v600.Humanoid.MaxHealth * (_G.MasteryHealthPct / (186-86))
								MousePos = v600.HumanoidRootPart.Position
								t9.Mas(v600, _G.FarmMastery_Dev)

								if _G.FarmMastery_Dev == false or v600.Humanoid.Health <= (827-827) then
									break
								elseif not v600.Parent then
									break
								end
							end

							return
						end

						_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))
					end
				end)
			end
		end
	end)
	v595:AddToggle(_zD1436("fkpLUGByXkxLWk1GYHhKUQ=="), {
		Text =_zD1436("fkpLUB9yXkxLWk1GH3hKUQ=="),
		Default = false,
		Callback = function(p124)
			_G.FarmMastery_G = p124
		end
	})
	spawn(function()
		while wait(Sec) do
			if _G.FarmMastery_G then
				pcall(function()
					if s14 ==_zD1436("fF5UWg==") then
						local v601 = GetConnectionEnemies(t5)

						if v601 then
							HealthM = v601.Humanoid.MaxHealth * _G.MasteryHealthPct / (128-28)

							repeat
								wait()
								MousePos = v601.HumanoidRootPart.Position
								t9.Masgun(v601, _G.FarmMastery_G)

								local REShootGunEvent = replicated:FindFirstChild(_zD1436("clBbSlNaTA==")):FindFirstChild(_zD1436("cVpL")):FindFirstChild(_zD1436("bXoQbFdQUEt4SlF6SVpRSw=="))

								if plr.Character:FindFirstChildOfClass(_zD1436("a1BQUw==")).ToolTip ~=_zD1436("eEpR") then
									return
								end

								local Character, Character2

								if plr.Character:FindFirstChildOfClass(_zD1436("a1BQUw==")) then
									if plr.Character:FindFirstChildOfClass(_zD1436("a1BQUw==")).Name ==_zD1436("bFRKU1MfeEpWS15N") then
										SoulGuitar = true
										plr.Character:FindFirstChildOfClass(_zD1436("a1BQUw==")).RemoteEvent:FireServer(_zD1436("a35v"), MousePos)

										if _G.FarmMastery_G then
											vim1:SendMouseButtonEvent((2-2), (580-580), (992-992), true, game, (12-11))
											wait(0.05)
											vim1:SendMouseButtonEvent((474-474), (725-725), (252-252), false, game, (1+0))
											wait(0.05)
										end
									else
										Character = plr.Character

										if Character:FindFirstChildOfClass(_zD1436("a1BQUw==")) then
											Character2 = plr.Character

											if Character2:FindFirstChildOfClass(_zD1436("a1BQUw==")).Name ~=_zD1436("bFRKU1MfeEpWS15N") then
												SoulGuitar = false
												REShootGunEvent:FireServer(MousePos, { v601.HumanoidRootPart })

												if _G.FarmMastery_G then
													vim1:SendMouseButtonEvent((569-569), (358-358), (608-608), true, game, (1+0))
													wait(0.05)
													vim1:SendMouseButtonEvent((755-755), (21-21), (389-389), false, game, (1+0))
													wait(0.05)
												end
											end
										end
									end
								else
									Character = plr.Character

									if Character:FindFirstChildOfClass(_zD1436("a1BQUw==")) then
										Character2 = plr.Character

										if Character2:FindFirstChildOfClass(_zD1436("a1BQUw==")).Name ~=_zD1436("bFRKU1MfeEpWS15N") then
											SoulGuitar = false
											REShootGunEvent:FireServer(MousePos, { v601.HumanoidRootPart })

											if _G.FarmMastery_G then
												vim1:SendMouseButtonEvent((41-41), (895-895), (840-840), true, game, (6-5))
												wait(0.05)
												vim1:SendMouseButtonEvent((733-733), (707-707), (985-985), false, game, (9-8))
												wait(0.05)
											end
										end
									end

									if _G.FarmMastery_G == false or v601.Humanoid.Health <= (734-734) or not v601.Parent then
										break
									end
								end
							until _G.FarmMastery_G == false or v601.Humanoid.Health <= (51-51) or not v601.Parent

							SoulGuitar = false
						else
							_tp(CFrame.new(-1943.676513671875, 251.50956726074219, -12337.880859375))
						end
					elseif s14 ==_zD1436("fVBRWg==") then
						local v605 = GetConnectionEnemies(t6)

						if v605 then
							HealthM = v605.Humanoid.MaxHealth * _G.MasteryHealthPct / (103-3)

							repeat
								wait()
								MousePos = v605.HumanoidRootPart.Position
								t9.Masgun(v605, _G.FarmMastery_G)

								local REShootGunEvent = replicated:FindFirstChild(_zD1436("clBbSlNaTA==")):FindFirstChild(_zD1436("cVpL")):FindFirstChild(_zD1436("bXoQbFdQUEt4SlF6SVpRSw=="))

								if plr.Character:FindFirstChildOfClass(_zD1436("a1BQUw==")).ToolTip ~=_zD1436("eEpR") then
									return
								end

								local Character, Character2

								if plr.Character:FindFirstChildOfClass(_zD1436("a1BQUw==")) then
									if plr.Character:FindFirstChildOfClass(_zD1436("a1BQUw==")).Name ==_zD1436("bFRKU1MfeEpWS15N") then
										SoulGuitar = true
										plr.Character:FindFirstChildOfClass(_zD1436("a1BQUw==")).RemoteEvent:FireServer(_zD1436("a35v"), MousePos)

										if _G.FarmMastery_G then
											vim1:SendMouseButtonEvent((323-323), (191-191), (424-424), true, game, (8-7))
											wait(0.05)
											vim1:SendMouseButtonEvent((447-447), (933-933), (932-932), false, game, (1+0))
											wait(0.05)
										end
									else
										Character = plr.Character

										if Character:FindFirstChildOfClass(_zD1436("a1BQUw==")) then
											Character2 = plr.Character

											if Character2:FindFirstChildOfClass(_zD1436("a1BQUw==")).Name ~=_zD1436("bFRKU1MfeEpWS15N") then
												SoulGuitar = false
												REShootGunEvent:FireServer(MousePos, { v605.HumanoidRootPart })

												if _G.FarmMastery_G then
													vim1:SendMouseButtonEvent((898-898), (435-435), (20-20), true, game, (16-15))
													wait(0.05)
													vim1:SendMouseButtonEvent((441-441), (118-118), (480-480), false, game, (1+0))
													wait(0.05)
												end
											end
										end
									end
								else
									Character = plr.Character

									if Character:FindFirstChildOfClass(_zD1436("a1BQUw==")) then
										Character2 = plr.Character

										if Character2:FindFirstChildOfClass(_zD1436("a1BQUw==")).Name ~=_zD1436("bFRKU1MfeEpWS15N") then
											SoulGuitar = false
											REShootGunEvent:FireServer(MousePos, { v605.HumanoidRootPart })

											if _G.FarmMastery_G then
												vim1:SendMouseButtonEvent((777-777), (961-961), (952-952), true, game, (1+0))
												wait(0.05)
												vim1:SendMouseButtonEvent((250-250), (755-755), (477-477), false, game, (30-29))
												wait(0.05)
											end
										end
									end

									if _G.FarmMastery_G == false or v605.Humanoid.Health <= (178-178) or not v605.Parent then
										break
									end
								end
							until _G.FarmMastery_G == false or v605.Humanoid.Health <= (863-863) or not v605.Parent

							SoulGuitar = false
						else
							_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))
						end
					end
				end)
			end
		end
	end)
	v595:AddToggle(_zD1436("fkpLUGByXkxLWk1GYH5TU2BsSFBNWw=="), {
		Text =_zD1436("fkpLUB9yXkxLWk1GH35TUx9sSFBNWw=="),
		Default = false,
		Callback = function(p125)
			_G.FarmMastery_S = p125
		end
	})
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if not _G.FarmMastery_S then
					return
				end

				if s14 ==_zD1436("fF5UWg==") then
					local next_ = next
					local response, v611 = replicated.Remotes.CommF_:InvokeServer(_zD1436("WFpLdlFJWlFLUE1G"))
					local exitTo
					local v613

					for _, v1 in next_, response, v611 do
						if type(v1) ==_zD1436("S15dU1o=") and v1.Type ==_zD1436("bEhQTVs=") then
							v613 = v1
							exitTo = (18-17)

							break
						end
					end

					if exitTo == (3-2) then
						SwordName = v613.Name

						if tonumber(v613.Mastery) >= (14-13) or tonumber(v613.Mastery) <= (409+190) then
							local v616 = GetConnectionEnemies(t5)

							if not GetBP(SwordName) then
								replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3ZLWlI="), SwordName)

								return
							end

							if v616 then
								while true do
									wait()
									t9.Sword(v616, _G.FarmMastery_S)

									if _G.FarmMastery_S == false then
										break
									elseif not v616.Parent or v616.Humanoid.Health <= (734-734) then
										break
									end
								end
							else
								_tp(CFrame.new(-1943.676513671875, 251.50956726074219, -12337.880859375))
							end

							return
						elseif tonumber(v613.Mastery) >= (441+159) then
							if GetBP(SwordName) then
								return nil
							end

							replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3ZLWlI="), SwordName)
						end
					end
				else
					if s14 ~=_zD1436("fVBRWg==") then
						return
					end

					local next_ = next
					local response, v619 = replicated.Remotes.CommF_:InvokeServer(_zD1436("WFpLdlFJWlFLUE1G"))
					local exitTo2
					local v621

					for _, v1 in next_, response, v619 do
						if type(v1) ==_zD1436("S15dU1o=") and v1.Type ==_zD1436("bEhQTVs=") then
							v621 = v1
							exitTo2 = (17-16)

							break
						end
					end

					if exitTo2 == (25-24) then
						SwordName = v621.Name

						if tonumber(v621.Mastery) >= (45-44) or tonumber(v621.Mastery) <= (337+262) then
							local v624 = GetConnectionEnemies(t6)

							if not GetBP(SwordName) then
								replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3ZLWlI="), SwordName)

								return
							end

							if v624 then
								while true do
									wait()
									t9.Sword(v624, _G.FarmMastery_S)

									if _G.FarmMastery_S == false then
										break
									elseif not v624.Parent or v624.Humanoid.Health <= (358-358) then
										break
									end
								end

								return
							end

							_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))

							return
						end

						if tonumber(v621.Mastery) >= (194+406) then
							if GetBP(SwordName) then
								return nil
							end

							replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3ZLWlI="), SwordName)
						end
					end
				end
			end)
		end
	end)
end

do
	local MagnetEvent26 = require(game.ReplicatedStorage.EventConfig.MagnetEvent26)

	local function v626()
		local serverTimeNow = workspace:GetServerTimeNow()
		local _Value = MagnetEvent26.START_AT._Value

		return MagnetEvent26.ENABLED and serverTimeNow >= _Value and serverTimeNow < MagnetEvent26.NO_MORE_GAMEPLAY_AT._Value
	end
end

GRP_Main_Update_30_Magnet_Token = t15.Main:AddLeftGroupbox(_zD1436("ak9bXktaHwwPHxAfcl5YUVpLH2tQVFpR"))

do
	local v629 = GRP_Main_Update_30_Magnet_Token:AddLabel(_zD1436("c1BeW1ZRWBEREQ=="))
	local Idle = GRP_Main_Update_30_Magnet_Token:AddLabel(_zD1436("dltTWg=="))

	local function v631(p126)
		Idle:SetText(p126)
	end

	task.spawn(function()
		while task.wait((37-36)) do
			pcall(function()
				local now = os.time()
				local v633 = os.date(_zD1436("FUs="), now)
				local min = v633.min
				local sec = v633.sec
				local v636 = min >= (246-246) and min < (19-9)
				local v637 = false

				for _, child in pairs(workspace.Enemies:GetChildren()) do
					if child:IsA(_zD1436("clBbWlM=")) and (child:GetAttribute(_zD1436("cl5YUVpLelFaUkY=")) == true or string.find(string.lower(child.Name),_zD1436("Ul5YUVpLVkVaWw=="))) then
						v637 = true

						break
					end
				end

				local s15 =_zD1436("Cw==")
				local v641

				if v637 then
					local s16 =_zD1436("3Q==")
					local v643 = ((70-60) - min) * (129-69) - sec

					if v643 < (543-543) then
						v643 = (851-851)
					end

					v641 = string.format(_zD1436("Gkwffnxrdml6HxIfa1ZSWh9zWllLBR8aDw1bBRoPDVsfFzofelFaUlZaTB95UEpRWxY="), s16, math.floor(v643 / (27+33)), v643 % (104-44))
				elseif v636 then
					local s17 =_zD1436("3Q==")
					local v645 = ((6+4) - min) * (122-62) - sec

					if v645 < (830-830) then
						v645 = (408-408)
					end

					v641 = string.format(_zD1436("Gkwffnxrdml6HxIfa1ZSWh9zWllLBR8aDw1bBRoPDVs="), s17, math.floor(v645 / (35+25)), v645 % (162-102))
				else
					local v646 = ((143-83) - min) * (122-62) - sec

					if v646 <= (520-520) then
						v646 = (258-258)
					end

					v641 = string.format(_zD1436("GkwfdnF+fGt2aXofEh9xWkdLH3pJWlFLBR8aDw1bBRoPDVs="), s15, math.floor(v646 / (35+25)), v646 % (42+18))
				end

				v629:SetText(v641)
			end)
		end
	end)
	_G.MagnetEventSpawnIndex = _G.MagnetEventSpawnIndex or (1+0)

	local t30 = {
		sky = true,
		skyarea2 = true,
		uppersky = true,
		[_zD1436("Sk9PWk0fTFRG")] = true,
		[_zD1436("SlFbWk1IXktaTR9cVktG")] = true,
		[_zD1436("WVZMV1JeUR9WTFNeUVs=")] = true,
		sewers = true,
		[_zD1436("TFpIWk0fWF5RWEw=")] = true
	}
	local t31 = {}

	local function v649(p127)
		if not p127 then
			return
		end

		if p127:IsA(_zD1436("fV5MWm9eTUs=")) then
			return p127.Position
		end

		local ok, result = pcall(function()
			return p127:GetPivot()
		end)
		local Position = ok and typeof(result) ==_zD1436("fHlNXlJa") and result.Position or nil

		return Position
	end
	local function v653(p128)
		local Locations = workspace:FindFirstChild(_zD1436("YGhQTVNbcE1WWFZR")) and workspace._WorldOrigin:FindFirstChild(_zD1436("c1BcXktWUFFM"))

		if not Locations then
			return(_zD1436("SlFUUVBIUQ=="))
		end

		local Name
		local v656

		for _, child in ipairs(Locations:GetChildren()) do
			if child:IsA(_zD1436("fV5MWm9eTUs=")) then
				local Magnitude = (child.Position - p128).Magnitude

				if not Name or Magnitude < v656 then
					Name = child.Name
					v656 = Magnitude
				end
			end
		end

		return Name and string.lower(Name) or(_zD1436("SlFUUVBIUQ=="))
	end
	local function v660(p129, p130)
		local v661 = string.lower(tostring(p130 or""))
		local v662 = string.lower(tostring(p129.Name or""))
		local v663 = string.lower(tostring(p129:GetAttribute(_zD1436("e1ZMT1NeRnFeUlo=")) or""))
		local v664 = v662 .._zD1436("Hw==") .. v663

		if t30[v661] or v661:find(_zD1436("WVZMV1JeUQ=="), (52-51), true) or v661:find(_zD1436("SlFbWk1IXktaTQ=="), (1+0), true) or v661:find(_zD1436("TFpIWk0="), (1+0), true) or v664:find(_zD1436("XVBMTA=="), (28-27), true) then
			return true
		end

		return t31[v662] or t31[v663]
	end
	local function v665()
		local t32 = {}
		local t33 = {}
		local _WorldOrigin = workspace:FindFirstChild(_zD1436("YGhQTVNbcE1WWFZR"))
		local EnemySpawns = _WorldOrigin and _WorldOrigin:FindFirstChild(_zD1436("elFaUkZsT15IUUw="))

		if not EnemySpawns then
			return t32
		end

		for _, child in ipairs(EnemySpawns:GetChildren()) do
			local v672 = v649(child)

			if v672 then
				local v673 = v653(v672)
				local v674 = tostring(child:GetAttribute(_zD1436("e1ZMT1NeRnFeUlo=")) or child.Name or"")

				if v674 ~="" and not v660(child, v673) then
					t33[v673] = t33[v673] or {}
					t33[v673][v674] = t33[v673][v674] or {}
					t33[v673][v674][#t33[v673][v674] + (1+0)] = v672
				end
			end
		end

		local t34 = {}

		for k in pairs(t33) do
			t34[#t34 + (13-12)] = k
		end

		table.sort(t34)

		for _, v1 in ipairs(t34) do
			local v679 = t33[v1]
			local t35 = {}
			local v681, v682, v683 = pairs(v679)

			for k in v681, v682, v683 do
				t35[#t35 + (1+0)] = k
			end

			table.sort(t35)

			local Position
			local Locations = _WorldOrigin and _WorldOrigin:FindFirstChild(_zD1436("c1BcXktWUFFM"))

			if Locations then
				local v687, v688, v689 = ipairs(Locations:GetChildren())
				local v690 = geniter(v687, v688, v689)

				while true do
					local v691 = table.pack(v690())

					if not v691[(1+0)] then
						break
					end

					local v692 = v691[(3+0)]

					if v692:IsA(_zD1436("fV5MWm9eTUs=")) and string.lower(v692.Name) == v1 then
						Position = v692.Position

						break
					end
				end
			end

			local v693, v694, v695 = ipairs(t35)

			for _, v2 in v693, v694, v695 do
				local v698 = v679[v2][(14-13)]

				if #t35 > (1+0) then
					t32[#t32 + (45-44)] = {
						Island = v1,
						Name = v2,
						CFrame = CFrame.new(v698 + Vector3.new((988-988), (13+27), (247-247)))
					}
				else
					local vector3 = Vector3.new((48-47), (729-729), (332-332))

					if Position then
						local vector32 = Vector3.new(v698.X - Position.X, (75-75), v698.Z - Position.Z)

						if vector32.Magnitude > 0.01 then
							vector3 = vector32.Unit
						end
					end

					t32[#t32 + (1+0)] = {
						Island = v1,
						Name = v2,
						CFrame = CFrame.new(v698 + vector3 * (57+3) + Vector3.new((455-455), (56-16), (894-894)))
					}
					t32[#t32 + (44-43)] = {
						Island = v1,
						Name = v2,
						CFrame = CFrame.new(v698 - vector3 * (10+50) + Vector3.new((563-563), (10+30), (367-367)))
					}
				end
			end
		end

		return t32
	end
	local function v701()
		local Enemies_ = workspace:FindFirstChild(_zD1436("elFaUlZaTA=="))

		if not Enemies_ then
			return
		end

		local Character = game.Players.LocalPlayer.Character
		local HumanoidRootPart = Character and Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
		local v705
		local v706

		for _, child in ipairs(Enemies_:GetChildren()) do
			if child:IsA(_zD1436("clBbWlM=")) and (child:GetAttribute(_zD1436("cl5YUVpLelFaUkY=")) == true or string.find(string.lower(child.Name),_zD1436("Ul5YUVpLVkVaWw=="))) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child.Humanoid.Health > (188-188) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
				local Magnitude = HumanoidRootPart and (child.HumanoidRootPart.Position - HumanoidRootPart.Position).Magnitude or (517-517)

				if not v705 or Magnitude < v706 then
					v705 = child
					v706 = Magnitude
				end
			end
		end

		return v705
	end
	local function v710(p131)
		if not p131 or typeof(p131.CFrame) ~=_zD1436("fHlNXlJa") then
			return false
		end

		local LocalPlayer = game.Players.LocalPlayer
		local Character = LocalPlayer.Character
		local HumanoidRootPart = Character and Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

		if not HumanoidRootPart then
			return false
		end

		v631(_zD1436("b15LTVBTU1ZRWB8SHw==") .. tostring(p131.Island))
		pcall(function()
			_tp(p131.CFrame)
		end)

		local now = tick()
		local exitTo
		local v716

		while true do
			if not _G.AutoMagnetToken then
				exitTo = (4-3)

				break
			end

			v716 = v701()

			if v716 then
				exitTo = (10-8)

				break
			end

			local Character2 = LocalPlayer.Character
			local HumanoidRootPart2 = Character2 and Character2:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

			if HumanoidRootPart2 then
				if not ((p131.CFrame.Position - HumanoidRootPart2.Position).Magnitude <= (8+7)) and not (tick() - now > (33-23)) then
					task.wait(0.1)

					continue
				end

				exitTo = (27-26)

				break
			end

			break
		end

		if exitTo ~= (1+0) then
			if exitTo == (1+1) then
				return v716
			end

			return false
		end

		if not _G.AutoMagnetToken then
			return false
		end

		v631(_zD1436("bFpeTVxXVlFYHxIf") .. tostring(p131.Island))

		local now2 = tick()

		while _G.AutoMagnetToken and tick() - now2 < (1+0) do
			local v720 = v701()

			if v720 then
				return v720
			end

			task.wait(0.05)
		end

		local v721 = v701() or false

		return v721
	end

	GRP_Main_Update_30_Magnet_Token:AddToggle(_zD1436("fkpLUGB5Xk1SYHJeWFFaS2BrUFRaUQ=="), {
		Text =_zD1436("fkpLUB95Xk1SH3JeWFFaSx9rUFRaUQ=="),
		Default = false,
		Callback = function(p132)
			_G.AutoMagnetToken = p132
			v631(p132 and(_zD1436("bEteTUtWUVgRERE=")) or(_zD1436("dltTWg==")))

			if not p132 then
				_G.MagnetEventSpawnIndex = (39-38)
			end
		end
	})
	task.spawn(function()
		local magnetEventSpawnRoute = {}
		local magnetEventSpawnIndex = (1+0)
		local v724 = true

		while task.wait() do
			if _G.AutoMagnetToken then
				if v724 or #magnetEventSpawnRoute == (715-715) then
					magnetEventSpawnRoute = v665()

					if #magnetEventSpawnRoute == (790-790) then
						task.wait((2+3))

						continue
					end

					magnetEventSpawnIndex = _G.MagnetEventSpawnIndex or (20-19)

					if magnetEventSpawnIndex > #magnetEventSpawnRoute then
						magnetEventSpawnIndex = (1+0)
					end

					v724 = false
					_G.MagnetEventSpawnRoute = magnetEventSpawnRoute
				end

				local v725 = magnetEventSpawnRoute[magnetEventSpawnIndex]

				if not v725 then
					magnetEventSpawnIndex = (52-51)
					v725 = magnetEventSpawnRoute[magnetEventSpawnIndex]
				end

				local v726 = v710(v725)

				if v726 then
					v631(_zD1436("eV5NUlZRWB8SHw==") .. tostring(v726.Name))

					while true do
						task.wait(0.1)

						if v726.Parent and v726:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
							_tp(v726.HumanoidRootPart.CFrame * CFrame.new((991-991), (13+17), (482-482)))
							t9.Kill(v726, _G.AutoMagnetToken)

							if not _G.AutoMagnetToken or v726.Humanoid.Health <= (155-155) or not v726.Parent then
								break
							end
						else
							break
						end
					end

					magnetEventSpawnIndex += (42-41)

					if magnetEventSpawnIndex > #magnetEventSpawnRoute then
						magnetEventSpawnIndex = (49-48)
					end

					_G.MagnetEventSpawnIndex = magnetEventSpawnIndex
				else
					magnetEventSpawnIndex += (14-13)

					if magnetEventSpawnIndex > #magnetEventSpawnRoute then
						magnetEventSpawnIndex = (33-32)
					end

					_G.MagnetEventSpawnIndex = magnetEventSpawnIndex
					task.wait(0.2)
				end
			else
				v631(_zD1436("dltTWg=="))
				_G.MagnetEventSpawnIndex = magnetEventSpawnIndex
				task.wait((1+0))
			end
		end
	end)
end

GRP_Settings_Settings_Configure = t15.Settings:AddLeftGroupbox(_zD1436("bFpLS1ZRWEwfEB98UFFZVlhKTVo="))

do
	Initialize = GRP_Settings_Settings_Configure:AddToggle(_zD1436("eV5MS2B+S0teXFQ="), {
		Text =_zD1436("eV5MSx9+S0teXFQ="),
		Default = true,
		Callback = function(p133)
			_G.Seriality = p133
		end
	})
end

do
	Bringmob = GRP_Settings_Settings_Configure:AddToggle(_zD1436("fU1WUVhgclBdTA=="), {
		Text =_zD1436("fU1WUVgfclBdTA=="),
		Default = true,
		Callback = function(p134)
			_B = p134
		end
	})
end

do
	GRP_Settings_Settings_Configure:AddToggle(_zD1436("fkpLUGB3UE9gbFpNSVpNYEhWS1dgS1ZSWg=="), {
		Text =_zD1436("fkpLUB93UE8fbFpNSVpNH0hWS1cfS1ZSWg=="),
		Default = false,
		Callback = function(p135)
			_G.AutoHopServer = p135

			if not p135 then
				_G.HopTimer = nil
			end
		end
	})
end

do
	Spawn(function()
		while Wait((31-30)) do
			if _G.AutoHopServer then
				pcall(function()
					if not _G.HopTimer then
						_G.HopTimer = tick()
					end

					if _G.HopDelay <= tick() - _G.HopTimer then
						_G.HopTimer = tick()

						if syn and syn.queue_on_teleport then
							syn.queue_on_teleport(_zD1436("U1BeW0xLTVZRWBdYXlJaBXdLS094WksXGFdLS09MBRAQTV5IEVhWS1dKXUpMWk1cUFFLWlFLEVxQUhBdU1BHWU1KVktMUVBUWkYQbVpbRRBNWllMEFdaXltMEFJeVlEQfFdaTEsYFhYXFg=="))
						end

						game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa")):Teleport(game.PlaceId, game.Players.LocalPlayer)
					end
				end)
			end
		end
	end)
end

do
	GRP_Settings_Settings_Configure:AddSlider({
		Text =_zD1436("d1BPH3taU15GHxdyVlFKS1pMFg=="),
		Min = (55-50),
		Max = (13+107),
		Default = (79-49),
		Rounding = (81-81),
		Callback = function(p136)
			_G.HopDelay = p136 * (27+33)
		end
	})
end

do
	GRP_Settings_Settings_Configure:AddToggle(_zD1436("fkpLUGBsWktgbE9eSFFgb1BWUUs="), {
		Text =_zD1436("fkpLUB9sWksfbE9eSFEfb1BWUUs="),
		Default = false,
		Callback = function(p137)
			getgenv().Set = p137

			if p137 then
				pcall(function()
					game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("bFpLbE9eSFFvUFZRSw=="))
				end)
			end
		end
	})
end

BusuAura = GRP_Settings_Settings_Configure:AddToggle(_zD1436("fkpLUGBrSk1RYFBRYH1KTFA="), {
	Text =_zD1436("fkpLUB9rSk1RH1BRH31KTFA="),
	Default = true,
	Callback = function(p138)
		Boud = p138
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if Boud then
					local t36 = {
_zD1436("d15MfUpMUA=="),
_zD1436("fUpMUA==")
					}

					if not plr.Character:FindFirstChild(t36[(6-5)]) then
						replicated.Remotes.CommF_:InvokeServer(t36[(11-9)])
					end
				end
			end)
		end
	end)
end

do
	GRP_Settings_Settings_Configure:AddToggle(_zD1436("fkpLUGB3XlRWYHBdTFpNSV5LVlBR"), {
		Text =_zD1436("fkpLUB93XlRWH3BdTFpNSV5LVlBR"),
		Default = false,
		Callback = function(p139)
			getgenv().Observation = p139
		end
	})
end

spawn(function()
	while wait() do
		if getgenv().Observation then
			pcall(function()
				game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommE:FireServer(_zD1436("dFpR"), true)
			end)
		end
	end
end)
RaceV3Aura = GRP_Settings_Settings_Configure:AddToggle(_zD1436("fkpLUGtKTVFQUW1eXFppDA=="), {
	Text =_zD1436("fkpLUB9rSk1RH1BRH21eXFofaQw="),
	Default = false,
	Callback = function(p140)
		_G.RaceClickAutov3 = p140
	end
})

do
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.RaceClickAutov3 then
					repeat
						replicated.Remotes.CommE:FireServer(_zD1436("flxLVkleS1p+XVZTVktG"))
						wait((65-35))
					until not _G.RaceClickAutov3
				end
			end)
		end
	end)
end

do
	RaceV4Aura = GRP_Settings_Settings_Configure:AddToggle(_zD1436("fkpLUGBrSk1RYFBRYG1eXFpgaQs="), {
		Text =_zD1436("fkpLUB9rSk1RH1BRH21eXFofaQs="),
		Default = false,
		Callback = function(p141)
			_G.RaceClickAutov4 = p141
		end
	})
end

spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.RaceClickAutov4 then
				if plr.Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")) then
					if plr.Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
						Useskills(_zD1436("UVZT"),_zD1436("Zg=="))
					end
				end
			end
		end)
	end
end)
RandomAround = GRP_Settings_Settings_Configure:AddToggle(_zD1436("fkpLUGBrSk1RYFBRYGxPVlFgYEdGRQ=="), {
	Text =_zD1436("fkpLUB9rSk1RH1BRH2xPVlEfH0dGRQ=="),
	Default = false,
	Callback = function(p142)
		RandomCFrame = p142
	end
})
SafeModes = GRP_Settings_Settings_Configure:AddToggle(_zD1436("bF5ZWmByUFta"), {
	Text =_zD1436("bF5ZWh9yUFta"),
	Default = false,
	Callback = function(p143)
		_G.Safemode = p143
	end
})
spawn(function()
	while task.wait(Sec) do
		pcall(function()
			if _G.Safemode then
				if plr.Character.Humanoid.Health / plr.Character.Humanoid.MaxHealth * (198-98) < Num_self then
					shouldTween = true
					_tp(Root.CFrame * CFrame.new((732-732), (215+285), (587-587)))
				else
					shouldTween = false
				end
			end
		end)
	end
end)

do
	DisableHitVFX = GRP_Settings_Settings_Configure:AddToggle(_zD1436("bVpSUElaYHdWS2BpeWc="), {
		Text =_zD1436("bVpSUElaH3dWSx9peWc="),
		Default = false,
		Callback = function(p144)
			_G.DestroyHit = p144
		end
	})
end

do
	local t37 = {
_zD1436("bFNeTFd3Vks="),
_zD1436("fEpNSVpbbVZRWA=="),
_zD1436("bEhQTVtsU15MVw=="),
_zD1436("bFNeTFdrXlZT")
	}

	task.spawn(function()
		while task.wait(Sec) do
			if _G.DestroyHit then
				pcall(function()
					for _, child in pairs(workspace._WorldOrigin:GetChildren()) do
						if table.find(t37, child.Name) then
							child:Destroy()
						end
					end
				end)
			end
		end
	end)
end

RmvVFX = GRP_Settings_Settings_Configure:AddToggle(_zD1436("bVpSUElaYHtaXktXYBlgbVpMT15IUVpbYGl5Zw=="), {
	Text =_zD1436("bVpSUElaH3taXktXHxkfbVpMT15IUVpbH2l5Zw=="),
	Default = false,
	Callback = function(p145)
		RDeath = p145
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if RDeath then
					if replicated.Effect.Container:FindFirstChild(_zD1436("e1peS1c=")) then
						replicated.Effect.Container.Death:Destroy()
					end

					if replicated.Effect.Container:FindFirstChild(_zD1436("bVpMT15IUQ==")) then
						replicated.Effect.Container.Respawn:Destroy()
					end
				end
			end)
		end
	end)
end

DisblesNotify = GRP_Settings_Settings_Configure:AddToggle(_zD1436("e1ZMXl1TWmBxUEtWWUY="), {
	Text =_zD1436("e1ZMXl1TWh9xUEtWWUY="),
	Default = false,
	Callback = function(p146)
		RemoveDamage = p146
	end
})
spawn(function()
	if wait(Sec) then
		repeat
			pcall(function()
				if RemoveDamage then
					replicated.Assets.GUI.DamageCounter.Enabled = false
					plr.PlayerGui.Notifications.Enabled = false
				else
					replicated.Assets.GUI.DamageCounter.Enabled = true
					plr.PlayerGui.Notifications.Enabled = true
				end
			end)
		until not wait(Sec)
	end
end)
GRP_Settings_Settings_Configure:AddToggle(_zD1436("flFLVmB+eXQ="), {
	Text =_zD1436("flFLVh9+eXQ="),
	Default = true,
	Callback = function(p147)
		if p147 then
			local VirtualUser = game:GetService(_zD1436("aVZNS0peU2pMWk0="))

			repeat
				wait()
			until game:IsLoaded()

			game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.Idled:Connect(function()
				VirtualUser:Button2Down(Vector2.new((626-626), (936-936)), workspace.CurrentCamera.CFrame)
				wait((1+0))
				VirtualUser:Button2Up(Vector2.new((529-529), (453-453)), workspace.CurrentCamera.CFrame)
			end)
		end
	end
})

do
	GRP_Settings_Settings_Configure:AddToggle(_zD1436("fkpLUGB+UUtWYBJgfltSVlFgdVBWUWBsWk1JWk0="), {
		Text =_zD1436("fkpLUB9+UUtWHxIffltSVlEfdVBWUR9sWk1JWk0="),
		Default = true,
		Callback = function(p148)
			getgenv().HopServerAdmin = p148
		end
	})
end

spawn(function()
	while wait() do
		pcall(function()
			if getgenv().HopServerAdmin then
				for _, player in pairs(game.Players:GetPlayers()) do
					if table.find({
_zD1436("TVpbYFheUloLDA=="),
_zD1436("TVZPYFZRW01e"),
_zD1436("fkdWUE1a"),
_zD1436("b1BTVExLWk0="),
_zD1436("SFpRU1BcVEtQXls="),
_zD1436("e15WWE1QXFQ="),
_zD1436("S1BWU15SSVZbXlJSWg=="),
_zD1436("UFBZWVZcVl5TUVBQXVZa"),
_zD1436("akVQS1c="),
_zD1436("fkVeTUtX"),
_zD1436("Xk1TS1dSWktWXA=="),
_zD1436("e1peS1dgdFZRWA=="),
_zD1436("c0pRUElaUQ=="),
_zD1436("a1daeE1aXktaflxaWw=="),
_zD1436("TVZPYFlKWw=="),
_zD1436("W01WT2BSXlJe"),
_zD1436("U15GXlFbVlRWSw4N"),
_zD1436("d1ZRWFBW")
					}, player.Name) then
						Hop()
					end
				end
			end
		end)
	end
end)

do
	GRP_Settings_Settings_Configure:AddToggle(_zD1436("cVBgfFNWTw=="), {
		Text =_zD1436("cVAffFNWTw=="),
		Default = false,
		Callback = function(p149)
			getgenv().NoClip = p149
		end
	})
end

do
	spawn(function()
		pcall(function()
			game:GetService(_zD1436("bUpRbFpNSVZcWg==")).Stepped:Connect(function()
				if getgenv().NoClip then
					for _, descendant in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if descendant:IsA(_zD1436("fV5MWm9eTUs=")) or descendant:IsA(_zD1436("b15NSw==")) then
							descendant.CanCollide = false
						end
					end
				end
			end)
		end)
	end)
end

GRP_Esp_Stats_Upgrade = t15.Esp:AddLeftGroupbox(_zD1436("bEteS0wfak9YTV5bWg=="))
StatusSelect = GRP_Esp_Stats_Upgrade:AddSlider({
	Text =_zD1436("bEteS0wfaV5TSlo="),
	Min = (400-400),
	Max = (1787-787),
	Default = (5+5),
	Rounding = (273-273),
	Callback = function(p150)
		pSats = p150
	end
})
StatsUpg = GRP_Esp_Stats_Upgrade:AddToggle(_zD1436("fkpLUGByWlNaWg=="), {
	Text =_zD1436("fkpLUB9yWlNaWg=="),
	Default = false,
	Callback = function(p151)
		_G.Auto_Melee = p151
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_Melee then
				statsSetings(_zD1436("clpTWlo="), pSats)
			end
		end)
	end
end)
StatsUpg = GRP_Esp_Stats_Upgrade:AddToggle(_zD1436("fkpLUGBsSFBNW0w="), {
	Text =_zD1436("fkpLUB9sSFBNW0w="),
	Default = false,
	Callback = function(p152)
		_G.Auto_Sword = p152
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_Sword then
				statsSetings(_zD1436("bEhQTVs="), pSats)
			end
		end)
	end
end)

do
	StatsUpg = GRP_Esp_Stats_Upgrade:AddToggle(_zD1436("fkpLUGB4SlE="), {
		Text =_zD1436("fkpLUB94SlE="),
		Default = false,
		Callback = function(p153)
			_G.Auto_Gun = p153
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.Auto_Gun then
					statsSetings(_zD1436("eEpR"), pSats)
				end
			end)
		end
	end)
end

do
	StatsUpg = GRP_Esp_Stats_Upgrade:AddToggle(_zD1436("fkpLUGB9U1BHYHlNSlZL"), {
		Text =_zD1436("fkpLUB99U1BHH3lNSlZL"),
		Default = false,
		Callback = function(p154)
			_G.Auto_DevilFruit = p154
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_DevilFruit then
				statsSetings(_zD1436("e1pJVlM="), pSats)
			end
		end)
	end
end)

do
	StatsUpg = GRP_Esp_Stats_Upgrade:AddToggle(_zD1436("fkpLUGB7WllaUUxa"), {
		Text =_zD1436("fkpLUB97WllaUUxa"),
		Default = false,
		Callback = function(p155)
			_G.Auto_Defense = p155
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_Defense then
				statsSetings(_zD1436("e1pZWlFMWg=="), pSats)
			end
		end)
	end
end)
GRP_Fish_Fishing = t15.Fish:AddLeftGroupbox(_zD1436("eVZMV1ZRWA=="))
GRP_Fish_Fishing:AddDropdown(_zD1436("bFpTWlxLYHlWTFdWUVhgbVBb"), {
	Text =_zD1436("bFpTWlxLH3lWTFdWUVgfbVBb"),
	Values = {
_zD1436("eVZMV1ZRWB9tUFs="),
_zD1436("eFBTWx9tUFs="),
_zD1436("bFdeTVQfbVBb"),
_zD1436("bFdaU1MfbVBb"),
_zD1436("a01aXkxKTVofbVBb")
	},
	Default =_zD1436("eVZMV1ZRWB9tUFs="),
	Callback = function(p156)
		_G.SelectedRod = p156
	end
})
BaitDropdown = GRP_Fish_Fishing:AddDropdown(_zD1436("bFpTWlxLYH1eVks="), {
	Text =_zD1436("bFpTWlxLH31eVks="),
	Values = {
_zD1436("fV5MVlwffV5WSw=="),
_zD1436("dFpTTx99XlZL"),
_zD1436("eFBQWx99XlZL"),
_zD1436("fl1GTExeUx99XlZL"),
_zD1436("eU1QRVpRH31eVks="),
_zD1436("ek9WXB99XlZL"),
_zD1436("fF5NUVZJUE1aH31eVks=")
	},
	Default =_zD1436("fV5MVlwffV5WSw=="),
	Callback = function(p157)
		_G.SelectedBait = p157

		if _G.AutoBuyBait then
			pcall(function()
				t8.RFCraft:InvokeServer(_zD1436("fE1eWUs="), _G.SelectedBait, {})
			end)
		end
	end
})
BuyBaitToggle = GRP_Fish_Fishing:AddToggle(_zD1436("fkpLUGB9SkZgfV5WSw=="), {
	Text =_zD1436("fkpLUB99SkYffV5WSw=="),
	Default = false,
	Callback = function(p158)
		_G.AutoBuyBait = p158

		if p158 then
			pcall(function()
				t8.RFCraft:InvokeServer(_zD1436("fE1eWUs="), _G.SelectedBait, {})
			end)
		end
	end
})
task.spawn(function()
	while task.wait((18-16)) do
		if _G.AutoBuyBait and _G.SelectedBait then
			local exitTo

			repeat
				pcall(function()
					t8.RFCraft:InvokeServer(_zD1436("fE1eWUs="), _G.SelectedBait, {})
				end)
				exitTo = nil

				while task.wait((1+1)) do
					if _G.AutoBuyBait and _G.SelectedBait then
						exitTo = (1+0)

						break
					end
				end
			until exitTo ~= (7-6)

			return
		end
	end
end)
FishingToggle = GRP_Fish_Fishing:AddToggle(_zD1436("fkpLUGB5VkxXVlFY"), {
	Text =_zD1436("fkpLUB95VkxXVlFY"),
	Default = false,
	Callback = function(p159)
		_G.AutoFishing = p159
	end
})

local Players = game:GetService(_zD1436("b1NeRlpNTA=="))

do
	local LocalPlayer = Players.LocalPlayer
	local Workspace = game:GetService(_zD1436("aFBNVExPXlxa"))
	local ReplicatedStorage2 = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo="))
	local FishReplicated = ReplicatedStorage2:WaitForChild(_zD1436("eVZMV21aT1NWXF5LWls="))
	local FishingRequest = FishReplicated:WaitForChild(_zD1436("eVZMV1ZRWG1aTkpaTEs="))
	local Config = require(FishReplicated.FishingClient.Config)
	local GetWaterHeightAtLocation = require(ReplicatedStorage2.Util.GetWaterHeightAtLocation)
	local MaxLaunchDistance = Config.Rod.MaxLaunchDistance

	task.spawn(function()
		while task.wait(0.5) do
			if _G.AutoFishing then
				local exitTo

				repeat
					pcall(function()
						local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
						local HumanoidRootPart = Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

						if not HumanoidRootPart then
							return
						end

						local Tool = Character:FindFirstChildOfClass(_zD1436("a1BQUw=="))

						if _G.SelectedRod and (not Tool or Tool.Name ~= _G.SelectedRod) then
							local _GSelectedRod = LocalPlayer.Backpack:FindFirstChild(_G.SelectedRod)

							if _GSelectedRod then
								Character.Humanoid:EquipTool(_GSelectedRod)
								Tool = _GSelectedRod
							end
						end

						if Tool then
							local v751 = GetWaterHeightAtLocation(HumanoidRootPart.Position)
							local _, v753 = Workspace:FindPartOnRayWithIgnoreList(Ray.new(Character.Head.Position, HumanoidRootPart.CFrame.LookVector * MaxLaunchDistance), {
								Character,
								Workspace.Characters,
								Workspace.Enemies
							})
							local vector3 = v753 and Vector3.new(v753.X, math.max(v753.Y, v751), v753.Z)
							local attribute = Tool:GetAttribute(_zD1436("bEteS1o="))
							local attribute2 = Tool:GetAttribute(_zD1436("bFpNSVpNbEteS1o="))

							if vector3 and (attribute ==_zD1436("bVpaU1pbdlE=") or attribute2 ==_zD1436("bVpaU1pbdlE=")) then
								FishingRequest:InvokeServer(_zD1436("bEteTUt8XkxLVlFY"))
								task.wait()
								FishingRequest:InvokeServer(_zD1436("fF5MS3NWUVp+S3NQXF5LVlBR"), vector3, (123-23), true)
							elseif attribute2 ==_zD1436("fVZLVlFY") then
								FishingRequest:InvokeServer(_zD1436("fF5LXFdWUVg="), true)
								task.wait(0.1)
								FishingRequest:InvokeServer(_zD1436("fF5LXFc="), (42-41))
							end
						end
					end)
					exitTo = nil

					while task.wait(0.5) do
						if _G.AutoFishing then
							exitTo = (1+0)

							break
						end
					end
				until exitTo ~= (1+0)

				return
			end
		end
	end)
end

do
	FishingQ = GRP_Fish_Fishing:AddToggle(_zD1436("fkpLUGBuSlpMS2B5VkxXVlFY"), {
		Text =_zD1436("fkpLUB9uSlpMSx95VkxXVlFY"),
		Default = false,
		Callback = function(p160)
			_G.AutoFishingQuest = p160
		end
	})
end

do
	local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
	local RFJobsRemoteFunction = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Modules.Net:WaitForChild(_zD1436("bXkQdVBdTG1aUlBLWnlKUVxLVlBR"))

	local function v759()
		local Quest = LocalPlayer.PlayerGui:FindFirstChild(_zD1436("bkpaTEs=")) or LocalPlayer.PlayerGui:FindFirstChild(_zD1436("bkpaTEt4SlY="))

		if Quest and Quest:FindFirstChild(_zD1436("fFBRS15WUVpN")) then
			if Quest.Container:FindFirstChild(_zD1436("bkpaTEtrVktTWg==")) then
				return true
			end
		end

		return false
	end

	task.spawn(function()
		while task.wait((27-26)) do
			if _G.AutoFishingQuest then
				local exitTo

				repeat
					pcall(function()
						if not v759() then
							RFJobsRemoteFunction:InvokeServer(_zD1436("eVZMV1ZRWHFvfA=="),_zD1436("flFYU1pN"),_zD1436("fkxUbkpaTEs="))
						end
					end)
					exitTo = nil

					while task.wait((1+0)) do
						if _G.AutoFishingQuest then
							exitTo = (11-10)

							break
						end
					end
				until exitTo ~= (39-38)

				return
			end
		end
	end)
end

QuestToggle = GRP_Fish_Fishing:AddToggle(_zD1436("fkpLUGB8UFJPU1pLWmBuSlpMSw=="), {
	Text =_zD1436("fkpLUB98UFJPU1pLWh9uSlpMSw=="),
	Default = false,
	Callback = function(p161)
		_G.AutoQuestComplete = p161

		if p161 then
			pcall(function()
				t8.RFJobsRemoteFunction:InvokeServer(_zD1436("eVZMV1ZRWHFvfA=="),_zD1436("eVZRVkxXbkpaTEs="))
			end)
		end
	end
})

do
	task.spawn(function()
		while task.wait((43-38)) do
			if _G.AutoQuestComplete then
				pcall(function()
					t8.RFJobsRemoteFunction:InvokeServer(_zD1436("eVZMV1ZRWHFvfA=="),_zD1436("eVZRVkxXbkpaTEs="))
				end)
			end
		end
	end)
end

SellFishToggle = GRP_Fish_Fishing:AddToggle(_zD1436("fkpLUGBsWlNTYHlWTFc="), {
	Text =_zD1436("fkpLUB9sWlNTH3lWTFc="),
	Default = false,
	Callback = function(p162)
		_G.AutoSellFish = p162

		if p162 then
			pcall(function()
				t8.RFJobsRemoteFunction:InvokeServer(_zD1436("eVZMV1ZRWHFvfA=="),_zD1436("bFpTU3lWTFc="))
			end)
		end
	end
})

do
	task.spawn(function()
		while task.wait((4+1)) do
			if _G.AutoSellFish then
				pcall(function()
					t8.RFJobsRemoteFunction:InvokeServer(_zD1436("eVZMV1ZRWHFvfA=="),_zD1436("bFpTU3lWTFc="))
				end)
			end
		end
	end)
end

SpamSkillZ = GRP_Fish_Fishing:AddToggle(_zD1436("fkpLUGBsT15SYGxUVlNTYGU="), {
	Text =_zD1436("fkpLUB9sT15SH2xUVlNTH2U="),
	Default = false,
	Callback = function(p163)
		_G.AutoSkillZ = p163
	end
})

do
	local RFJobToolAbilities = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Modules.Net:WaitForChild(_zD1436("bXkQdVBda1BQU35dVlNWS1ZaTA=="))

	task.spawn(function()
		while task.wait(0.5) do
			if _G.AutoSkillZ then
				pcall(function()
					RFJobToolAbilities:InvokeServer(_zD1436("ZQ=="), true)
				end)
			end
		end
	end)
end

GRP_Quests_Auto_Quest_Sea_2 = t15.Quests:AddLeftGroupbox(_zD1436("fkpLUB9uSlpMSx9sWl4fDQ=="))

do
	TravelDress = GRP_Quests_Auto_Quest_Sea_2:AddToggle(_zD1436("fkpLUGBuSlpMS2BsWl5gDQ=="), {
		Text =_zD1436("fkpLUB9uSlpMSx9sWl4fDQ=="),
		Default = false,
		Callback = function(p164)
			_G.TravelDres = p164
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.TravelDres then
				if plr.Data.Level.Value >= (215+485) then
					if workspace.Map.Ice.Door.CanCollide == true and workspace.Map.Ice.Door.Transparency == (448-448) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("e01aTExNUExebkpaTEtvTVBYTVpMTA=="),_zD1436("e1pLWlxLVkla"))
						EquipWeapon(_zD1436("dFpG"))

						while true do
							wait()
							_tp(CFrame.new(1347.7124, 37.3751602, -1325.6488))

							if _G.TravelDres then
								if Root.Position == CFrame.new(1347.7124, 37.3751602, -1325.6488).Position then
									break
								end
							else
								break
							end
						end
					else
						if workspace.Map.Ice.Door.CanCollide ~= false then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))

							return
						end

						if workspace.Map.Ice.Door.Transparency == (1+0) then
							if Enemies:FindFirstChild(_zD1436("dlxaH35bUlZNXlM=")) then
								for _, child in pairs(Enemies:GetChildren()) do
									if child.Name ==_zD1436("dlxaH35bUlZNXlM=") and t9.Alive(child) then
										while true do
											task.wait()
											t9.Kill(child, _G.TravelDres)

											if _G.TravelDres == false then
												break
											elseif child.Humanoid.Health <= (371-371) then
												break
											end
										end

										replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))
									end
								end
							else
								_tp(CFrame.new(1347.7124, 37.3751602, -1325.6488))
							end
						else
							replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))
						end
					end
				end
			end
		end)
	end
end)
Zou = GRP_Quests_Auto_Quest_Sea_2:AddToggle(_zD1436("fkpLUGBuSlpMS2BsWl5gDA=="), {
	Text =_zD1436("fkpLUB9uSlpMSx9sWl4fDA=="),
	Default = false,
	Callback = function(p165)
		_G.AutoZou = p165
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.AutoZou and plr.Data.Level.Value >= (1828-328) then
				if replicated.Remotes.CommF_:InvokeServer(_zD1436("fV5NS1ZTUG5KWkxLb01QWE1aTEw="),_zD1436("fV5NS1ZTUA==")) == (37-34) then
					if replicated.Remotes.CommF_:InvokeServer(_zD1436("eFpLalFTUFxUXl1TWkw=")).FlamingoAccess ~= nil then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a01eSVpTZVBK"))

						if replicated.Remotes.CommF_:InvokeServer(_zD1436("ZW5KWkxLb01QWE1aTEw="),_zD1436("fFdaXFQ=")) == (645-645) then
							local ripIndra = GetConnectionEnemies(_zD1436("TVZPYFZRW01e"))

							if ripIndra then
								while true do
									wait()
									t9.Kill(ripIndra, _G.AutoZou)

									if _G.AutoZou then
										if not ripIndra.Parent or ripIndra.Humanoid.Health <= (348-348) then
											break
										end
									else
										break
									end
								end

								Check = (28-26)

								repeat
									wait()
									replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a01eSVpTZVBK"))
								until Check == (43-42)
							else
								replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("ZW5KWkxLb01QWE1aTEw="),_zD1436("fFdaXFQ="))
								wait(0.1)
								replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("ZW5KWkxLb01QWE1aTEw="),_zD1436("fVpYVlE="))
							end
						elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("ZW5KWkxLb01QWE1aTEw="),_zD1436("fFdaXFQ=")) == (17-16) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a01eSVpTZVBK"))
						else
							local v766 = GetConnectionEnemies(_zD1436("e1BRH2xIXlE="))

							if v766 then
								while true do
									wait()
									t9.Kill(v766, _G.AutoZou)

									if _G.AutoZou then
										if not v766.Parent or v766.Humanoid.Health <= (926-926) then
											break
										end
									else
										break
									end
								end
							else
								while true do
									wait()
									_tp(CFrame.new(2288.802, 15.1870775, 863.034607))

									if _G.AutoZou then
										if Root.Position == CFrame.new(2288.802, 15.1870775, 863.034607).Position then
											break
										end
									else
										break
									end
								end

								if Root.CFrame == CFrame.new(2288.802, 15.1870775, 863.034607) then
									notween(CFrame.new(2288.802, 15.1870775, 863.034607))
								end
							end
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("eFpLalFTUFxUXl1TWkw=")).FlamingoAccess == nil then
						TabelDevilFruitStore = {}
						TabelDevilFruitOpen = {}

						for _, v1 in pairs(replicated.Remotes.CommF_:InvokeServer(_zD1436("WFpLdlFJWlFLUE1GeU1KVktM"))) do
							for k, v2 in pairs(v1) do
								if k ==_zD1436("cV5SWg==") then
									table.insert(TabelDevilFruitStore, v2)
								end
							end
						end

						local next_ = next
						local response, v773 = game.ReplicatedStorage:WaitForChild(_zD1436("bVpSUEtaTA==")).CommF_:InvokeServer(_zD1436("eFpLeU1KVktM"))

						for _, v1 in next_, response, v773 do
							if v1.Price >= (1425393-425393) then
								table.insert(TabelDevilFruitOpen, v1.Name)
							end
						end

						for _, v1 in pairs(TabelDevilFruitOpen) do
							for _, v2 in pairs(TabelDevilFruitStore) do
								if v1 == v2 then
									if replicated.Remotes.CommF_:InvokeServer(_zD1436("eFpLalFTUFxUXl1TWkw=")).FlamingoAccess == nil then
										if plr.Backpack:FindFirstChild(v2) then
											replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a15TVGtNWklQTQ=="),_zD1436("Dg=="))
											replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a15TVGtNWklQTQ=="),_zD1436("DQ=="))
											replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a15TVGtNWklQTQ=="),_zD1436("DA=="))
										else
											replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("c1BeW3lNSlZL"), v2)
										end
									end
								end
							end
						end

						replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a15TVGtNWklQTQ=="),_zD1436("Dg=="))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a15TVGtNWklQTQ=="),_zD1436("DQ=="))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("eWA="),_zD1436("a15TVGtNWklQTQ=="),_zD1436("DA=="))
					end
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fV5NS1ZTUG5KWkxLb01QWE1aTEw="),_zD1436("fV5NS1ZTUA==")) == (669-669) then
					if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("bEheUR9vVk1eS1pM")) and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("Cg8=")) and plr.PlayerGui.Main.Quest.Visible == true then
						local v780 = GetConnectionEnemies(_zD1436("bEheUR9vVk1eS1o="))

						if v780 then
							pcall(function()
								while true do
									wait()
									t9.Kill(v780, _G.AutoZou)

									if v780.Parent then
										if v780.Humanoid.Health <= (274-274) or _G.AutoZou == false or plr.PlayerGui.Main.Quest.Visible == false then
											break
										end
									else
										break
									end
								end
							end)
						else
							_tp(CFrame.new(1057.92761, 137.614319, 1242.08069))
						end
					else
						_tp(CFrame.new(-456.28952, 73.0200958, 299.895966))
					end
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fV5NS1ZTUG5KWkxLb01QWE1aTEw="),_zD1436("fV5NS1ZTUA==")) == (26-25) then
					local Jeremy = GetConnectionEnemies(_zD1436("dVpNWlJG"))

					if Jeremy then
						while true do
							wait()
							t9.Kill(Jeremy, _G.AutoZou)

							if Jeremy.Parent then
								if Jeremy.Humanoid.Health <= (922-922) or _G.AutoZou == false then
									break
								end
							else
								break
							end
						end
					else
						_tp(CFrame.new(2099.88159, 448.931, 648.997375))
					end
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fV5NS1ZTUG5KWkxLb01QWE1aTEw="),_zD1436("fV5NS1ZTUA==")) == (2+0) then
					while true do
						wait()
						_tp(CFrame.new(-(3086-1250), (7+4), (1039+675)))

						if _G.AutoZou then
							if Root.Position == CFrame.new(-(119+1717), (64-53), (2711-997)).Position then
								break
							end
						else
							break
						end
					end

					if Root.CFrame == CFrame.new(-(1821+15), (3+8), (1335+379)) then
						notween(CFrame.new(-(1315+521), (7+4), (677+1037)))
					end

					notween(CFrame.new(-1850.49329, 13.1789551, 1750.89685))
					wait(0.1)
					notween(CFrame.new(-1858.87305, 19.3777466, 1712.01807))
					wait(0.1)
					notween(CFrame.new(-1803.94324, 16.5789185, 1750.89685))
					wait(0.1)
					notween(CFrame.new(-1858.55835, 16.8604317, 1724.79541))
					wait(0.1)
					notween(CFrame.new(-1869.54224, 15.987854, 1681.00659))
					wait(0.1)
					notween(CFrame.new(-1800.0979, 16.4978027, 1684.52368))
					wait(0.1)
					notween(CFrame.new(-1819.26343, 14.795166, 1717.90625))
					wait(0.1)
					notween(CFrame.new(-1813.51843, 14.8604736, 1724.79541))
				end
			end
		end)
	end
end)
GRP_Quests_Tushita_Yama = t15.Quests:AddLeftGroupbox(_zD1436("a0pMV1ZLXh8UH2ZeUl4="))
Q = GRP_Quests_Tushita_Yama:AddToggle(_zD1436("fkpLUGBrSkxXVkteYGxIUE1b"), {
	Text =_zD1436("fkpLUB9rSkxXVkteH2xIUE1b"),
	Default = false,
	Callback = function(p166)
		_G.Auto_Tushita = p166
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.Auto_Tushita then
					if workspace.Map.Turtle:FindFirstChild(_zD1436("a0pMV1ZLXnheS1o=")) then
						if GetBP(_zD1436("d1BTRh9rUE1cVw==")) then
							EquipWeapon(_zD1436("d1BTRh9rUE1cVw=="))
							task.wait((1+0))

							while true do
								task.wait()
								_tp(CFrame.new(-(10673+79), (262+155), -(8930+436)))

								if _G.Auto_Tushita then
									if (CFrame.new(-(14613-3861), (351+66), -(16219-6853)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (2+8) then
										break
									end
								else
									break
								end
							end

							wait(0.7)

							while true do
								task.wait()
								_tp(CFrame.new(-(7025+4647), (162+172), -(11515-2041)))

								if _G.Auto_Tushita then
									if (CFrame.new(-(11540+132), (221+113), -(15658-6184)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (3+7) then
										break
									end
								else
									break
								end
							end

							wait(0.7)

							while true do
								task.wait()
								_tp(CFrame.new(-(1825+10307), (958-437), -(7419+3236)))

								if _G.Auto_Tushita then
									if (CFrame.new(-(18810-6678), (393+128), -(14620-3965)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (5+5) then
										break
									end
								else
									break
								end
							end

							wait(0.7)

							while true do
								task.wait()
								_tp(CFrame.new(-(23117-9781), (11+475), -(5354+1631)))

								if _G.Auto_Tushita then
									if (CFrame.new(-(24487-11151), (297+189), -(2372+4613)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (1+9) then
										break
									end
								else
									break
								end
							end

							wait(0.7)

							while true do
								task.wait()
								_tp(CFrame.new(-(18428-4939), (486-154), -(10167-2242)))

								if _G.Auto_Tushita then
									if (CFrame.new(-(26247-12758), (101+231), -(8464-539)).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (10+0) then
										break
									end
								else
									break
								end
							end
						else
							_tp(CFrame.new(5148.03613, 162.352493, 910.548218))
							wait(0.7)
						end
					else
						local Longma = GetConnectionEnemies(_zD1436("c1BRWFJe"))

						if Longma then
							while true do
								task.wait()
								t9.Kill(Longma, _G.Auto_Tushita)

								if Longma.Humanoid.Health <= (241-241) then
									break
								elseif not _G.Auto_Tushita or not Longma.Parent then
									break
								end
							end
						elseif replicated:FindFirstChild(_zD1436("c1BRWFJe")) then
							_tp(replicated:FindFirstChild(_zD1436("c1BRWFJe")).HumanoidRootPart.CFrame * CFrame.new((23-23), (94-54), (819-819)))
						end
					end
				end
			end)
		end
	end)
end

do
	Q = GRP_Quests_Tushita_Yama:AddToggle(_zD1436("fkpLUGBmXlJeYGxIUE1b"), {
		Text =_zD1436("fkpLUB9mXlJeH2xIUE1b"),
		Default = false,
		Callback = function(p167)
			_G.Auto_Yama = p167
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.Auto_Yama then
					if replicated.Remotes.CommF_:InvokeServer(_zD1436("elNWS1p3SlFLWk0="),_zD1436("b01QWE1aTEw=")) < (102-72) then
						_G.FarmEliteHunt = true
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("elNWS1p3SlFLWk0="),_zD1436("b01QWE1aTEw=")) > (13+17) then
						_G.FarmEliteHunt = false

						if (workspace.Map.Waterfall.SealedKatana.Handle.Position - plr.Character.HumanoidRootPart.Position).Magnitude >= (53-33) then
							_tp(workspace.Map.Waterfall.SealedKatana.Handle.CFrame)

							local Ghost = GetConnectionEnemies(_zD1436("eFdQTEs="))

							if Ghost then
								while true do
									wait()
									t9.Kill(Ghost, _G.Auto_Yama)

									if Ghost.Humanoid.Health <= (530-530) then
										break
									elseif not Ghost.Parent or not _G.Auto_Yama then
										break
									end
								end

								fireclickdetector(workspace.Map.Waterfall.SealedKatana.Handle.ClickDetector)
							end
						end
					end
				end
			end)
		end
	end)
end

GRP_Quests_Skull_Guitars_Misc = t15.Quests:AddLeftGroupbox(_zD1436("bFRKU1MfeEpWS15NTB8QH3JWTFw="))

do
	local v784 = GRP_Quests_Skull_Guitars_Misc:AddLabel("")

	spawn(function()
		while wait(0.2) do
			pcall(function()
				if Quest1 == true then
					v784:SetText(_zD1436("bkpaTEsfcUpSXVpNHwUfbkpaTEsO"))
				elseif Quest2 == true then
					v784:SetText(_zD1436("bkpaTEsfcUpSXVpNHwUfbkpaTEsN"))
				elseif Quest3 == true then
					v784:SetText(_zD1436("bkpaTEsfcUpSXVpNHwUfbkpaTEsM"))
				elseif Quest4 == true then
					v784:SetText(_zD1436("bkpaTEsfcUpSXVpNHwUfbkpaTEsL"))
				elseif GetWP(_zD1436("bFRKU1MfeEpWS15N")) then
					v784:SetText(_zD1436("bkpaTEsfcUpSXVpNHwUffFBTU1pcSx4e"))
				else
					v784:SetText(_zD1436("bkpaTEsfcUpSXVpNHwUfcVAfbkpaTEseHg=="))
				end
			end)
		end
	end)
end

do
	GRP_Quests_Skull_Guitars_Misc:AddToggle(_zD1436("fkpLUGBsVEpTU2B4SlZLXk0="), {
		Text =_zD1436("fkpLUB9sVEpTUx94SlZLXk0="),
		Default = false,
		Callback = function(p168)
			_G.Auto_Soul_Guitar = p168
		end
	})
end

do
	task.spawn(function()
		while wait() do
			if _G.Auto_Soul_Guitar then
				pcall(function()
					local v785 = GetConnectionEnemies(_zD1436("c1ZJVlFYH2VQUl1WWg=="))

					if v785 then
						v785.HumanoidRootPart.CFrame = CFrame.new(-10138.3974609375, 138.6524658203125, 5902.89208984375)
						v785.Head.CanCollide = false
						v785.Humanoid.Sit = false
						v785.HumanoidRootPart.CanCollide = false
						v785.Humanoid.JumpPower = (587-587)
						v785.Humanoid.WalkSpeed = (948-948)

						if v785.Humanoid:FindFirstChild(_zD1436("flFWUl5LUE0=")) then
							v785.Humanoid:FindFirstChild(_zD1436("flFWUl5LUE0=")):Destroy()
						end
					end
				end)
			end
		end
	end)
end

do
	getT = function(p169)
		local Rotation

		if p169 == (19-18) then
			Rotation = workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment1.Line.Rotation
		elseif p169 == (18-15) then
			Rotation = workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment3.Line.Rotation
		elseif p169 == (47-43) then
			Rotation = workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment4.Line.Rotation
		elseif p169 == (26-19) then
			Rotation = workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment7.Line.Rotation
		elseif p169 == (36-26) then
			Rotation = workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment10.Line.Rotation
		end

		if Rotation then
			return Rotation.Z
		end
	end
end

do
	getRT = function(p170)
		local Rotation

		for _, child in pairs(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Trophies.Quest:GetChildren()) do
			if p170 == (1+0) and child.Name ==_zD1436("a01QT1dGDg==") and child:FindFirstChild(_zD1436("d15RW1Na")) then
				Rotation = child.Handle.Rotation
			elseif p170 == (1+1) and child.Name ==_zD1436("a01QT1dGDQ==") and child:FindFirstChild(_zD1436("d15RW1Na")) then
				Rotation = child.Handle.Rotation
			elseif p170 == (50-47) and child.Name ==_zD1436("a01QT1dGDA==") and child:FindFirstChild(_zD1436("d15RW1Na")) then
				Rotation = child.Handle.Rotation
			elseif p170 == (2+2) and child.Name ==_zD1436("a01QT1dGCw==") and child:FindFirstChild(_zD1436("d15RW1Na")) then
				Rotation = child.Handle.Rotation
			elseif p170 == (11-6) and child.Name ==_zD1436("a01QT1dGCg==") and child:FindFirstChild(_zD1436("d15RW1Na")) then
				Rotation = child.Handle.Rotation
			end

			if Rotation then
				return Rotation.Z
			end
		end
	end
end

do
	GetFirePlacard = function(p171, p172)
		if tostring(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("b1NeXF5NWw==") .. p171][p172].Indicator.BrickColor) ~=_zD1436("b1peTVM=") then
			fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("b1NeXF5NWw==") .. p171][p172].ClickDetector)
		end
	end
end

do
	spawn(function()
		repeat
			task.wait()
		until _G.Auto_Soul_Guitar

		while wait(Sec) do
			pcall(function()
				if _G.Auto_Soul_Guitar and World3 then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("WE1eSVpMS1BRWnpJWlFL"), (2+0))
					replicated.Remotes.CommF_:InvokeServer(_zD1436("WE1eSVpMS1BRWnpJWlFL"), (54-52), true)

					if replicated.Remotes.CommF_:InvokeServer(_zD1436("eEpWS15Nb0pFRVNab01QWE1aTEw="),_zD1436("fFdaXFQ=")) == nil then
						_tp(CFrame.new(-8655.0166015625, 141.31669616699219, 6160.0224609375))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("WE1eSVpMS1BRWnpJWlFL"), (2+0))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("WE1eSVpMS1BRWnpJWlFL"), (18-16), true)
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("eEpWS15Nb0pFRVNab01QWE1aTEw="),_zD1436("fFdaXFQ=")).Swamp == false then
						Quest1 = true
						Quest2 = false
						Quest3 = false
						Quest4 = false

						local v790 = GetConnectionEnemies(_zD1436("c1ZJVlFYH2VQUl1WWg=="))

						if v790 then
							while true do
								task.wait()
								t9.Kill(v790, _G.Auto_Soul_Guitar)

								if _G.Auto_Soul_Guitar then
									if v790.Humanoid.Health <= (783-783) or not v790.Parent or workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].SwampWater.Color ~= Color3.fromRGB((53+64), (514-514), (945-945)) then
										break
									end
								else
									break
								end
							end
						else
							_tp(CFrame.new(-10170.7275390625, 138.6524658203125, 5934.26513671875))
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("eEpWS15Nb0pFRVNab01QWE1aTEw="),_zD1436("fFdaXFQ=")).Gravestones == false then
						Quest1 = false
						Quest2 = true
						Quest3 = false
						Quest4 = false
						GetFirePlacard(_zD1436("CA=="),_zD1436("c1pZSw=="))
						GetFirePlacard(_zD1436("CQ=="),_zD1436("c1pZSw=="))
						GetFirePlacard(_zD1436("Cg=="),_zD1436("c1pZSw=="))
						GetFirePlacard(_zD1436("Cw=="),_zD1436("bVZYV0s="))
						GetFirePlacard(_zD1436("DA=="),_zD1436("c1pZSw=="))
						GetFirePlacard(_zD1436("DQ=="),_zD1436("bVZYV0s="))
						GetFirePlacard(_zD1436("Dg=="),_zD1436("bVZYV0s="))
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("eEpWS15Nb0pFRVNab01QWE1aTEw="),_zD1436("fFdaXFQ=")).Ghost == false then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("eEpWS15Nb0pFRVNab01QWE1aTEw="),_zD1436("eFdQTEs="))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("eEpWS15Nb0pFRVNab01QWE1aTEw="),_zD1436("eFdQTEs="), true)
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("eEpWS15Nb0pFRVNab01QWE1aTEw="),_zD1436("fFdaXFQ=")).Trophies == false then
						Quest1 = false
						Quest2 = false
						Quest3 = true
						Quest4 = false
						_tp(CFrame.new(-9532.8232421875, 6.4716677665710449, 6078.068359375))

						local v791, v792

						repeat
							wait()
							v792 = getRT((1+0))
							v791 = getT((1+0))

							if v792 and v791 then
								fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment1:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							end
						until v792 == v791

						local v793, v794

						repeat
							wait()
							v794 = getRT((36-34))
							v793 = getT((56-53))

							if v794 and v793 then
								fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment3:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							end
						until v794 == v793

						local v795, v796

						repeat
							wait()
							v796 = getRT((27-24))
							v795 = getT((39-35))

							if v796 and v795 then
								fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment4:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							end
						until v796 == v795

						local v797, v798

						repeat
							wait()
							v798 = getRT((4+0))
							v797 = getT((2+5))

							if v798 and v797 then
								fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment7:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							end
						until v798 == v797

						local v799, v800

						repeat
							wait()
							v800 = getRT((4+1))
							v799 = getT((10+0))

							if v800 and v799 then
								fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment10:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							end
						until v800 == v799

						while true do
							wait()
							fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment2:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment5:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment6:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment8:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))
							fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment9:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")))

							if workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment2.Line.Rotation.Z == (579-579) then
								break
							elseif workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment5.Line.Rotation.Z == (116-116) or workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment6.Line.Rotation.Z == (56-56) or workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment8.Line.Rotation.Z == (323-323) or workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")].Tablet.Segment9.Line.Rotation.Z == (450-450) then
								break
							end
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("eEpWS15Nb0pFRVNab01QWE1aTEw="),_zD1436("fFdaXFQ=")).Pipes == false then
						Quest1 = false
						Quest2 = false
						Quest3 = false
						Quest4 = true
						_tp(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part3.CFrame)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part3.ClickDetector)
						_tp(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part4.CFrame)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part4.ClickDetector)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part4.ClickDetector)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part4.ClickDetector)
						_tp(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part6.CFrame)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part6.ClickDetector)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part6.ClickDetector)
						_tp(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part8.CFrame)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part8.ClickDetector)
						_tp(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part10.CFrame)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part10.ClickDetector)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part10.ClickDetector)
						fireclickdetector(workspace.Map[_zD1436("d15KUUtaWx98XkxLU1o=")][_zD1436("c15dH29KRUVTWg==")].ColorFloor.Model.Part10.ClickDetector)
					end
				end
			end)
		end
	end)
end

do
	GRP_Quests_Skull_Guitars_Misc:AddToggle(_zD1436("fkpLUGB5Xk1SYHJeS1pNVl5TYGxUSlNTYHhKVkteTQ=="), {
		Text =_zD1436("fkpLUB95Xk1SH3JeS1pNVl5TH2xUSlNTH3hKVkteTQ=="),
		Default = false,
		Callback = function(p173)
			_G.AutoMatSoul = p173
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.AutoMatSoul and GetWP(_zD1436("bFRKU1MfeEpWS15N")) == false then
				if GetM(_zD1436("fVBRWkw=")) >= (815-315) and GetM(_zD1436("elxLUE9TXkxS")) >= (24+226) and GetM(_zD1436("e15NVB95TV5YUlpRSw==")) >= (45-44) then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("TFBKU3hKVkteTX1KRg=="), true)
				elseif not (GetM(_zD1436("elxLUE9TXkxS")) <= (386-136)) then
					if GetM(_zD1436("e15NVB95TV5YUlpRSw==")) < (18-17) then
						if _G.AutoMatSoul and World2 then
							local Darkbeard = GetConnectionEnemies(_zD1436("e15NVF1aXk1b"))

							if Darkbeard then
								while true do
									task.wait()
									t9.Kill(Darkbeard, _G.AutoMatSoul)

									if _G.AutoMatSoul then
										break
									elseif Darkbeard.Humanoid.Health <= (613-613) then
										break
									end
								end
							else
								_tp(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
							end
						else
							replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))
						end

						if not GetConnectionEnemies(_zD1436("e15NVF1aXk1b")) then
							Hop()
						end
					elseif GetM(_zD1436("fVBRWkw=")) <= (72+428) then
						if _G.AutoMatSoul and World3 then
							local v802 = GetConnectionEnemies({
_zD1436("bVpdUE1RH2xUWlNaS1BR"),
_zD1436("c1ZJVlFYH2VQUl1WWg=="),
_zD1436("e1pSUFFWXB9sUEpT"),
_zD1436("b1BMWkxMWlsfckpSUkY=")
							})

							if v802 then
								while true do
									task.wait()
									t9.Kill(v802, _G.AutoMatSoul)

									if _G.AutoMatSoul then
										if v802.Humanoid.Health <= (772-772) or not v802.Parent or v802.Humanoid.Health <= (515-515) then
											break
										end
									else
										break
									end
								end
							else
								_tp(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625))
							end
						else
							replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTZVBK"))
						end
					end
				elseif _G.AutoMatSoul and World2 then
					local v803 = GetConnectionEnemies({
_zD1436("bFdWTx97WlxUV15RWw=="),
_zD1436("bFdWTx96UVhWUVpaTQ=="),
_zD1436("bFdWTx9sS1pIXk1b"),
_zD1436("bFdWTx9wWVlWXFpN"),
_zD1436("fk1cS1ZcH2heTU1WUE0=")
					})

					if v803 then
						while true do
							task.wait()
							t9.Kill(v803, _G.AutoMatSoul)

							if _G.AutoMatSoul then
								if not v803.Parent or v803.Humanoid.Health <= (43-43) then
									break
								end
							else
								break
							end
						end
					else
						replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
					end
				else
					replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))
				end
			end
		end)
	end
end)
GRP_Quests_Cursed_Dual_Katana = t15.Quests:AddLeftGroupbox(_zD1436("fEpNTFpbH3tKXlMfdF5LXlFe"))

do
	local v804 = GRP_Quests_Cursed_Dual_Katana:AddLabel(_zD1436("bkpaTEsfcUpSXVpNTB8F"))

	spawn(function()
		while wait(0.2) do
			if QuestYama_1 == true then
				v804:SetText(_zD1436("bkpaTEsfcUpSXVpNTB8FH0ZeUl4fTkpaTEsfDg=="))
			elseif QuestYama_2 == true then
				v804:SetText(_zD1436("bkpaTEsfcUpSXVpNTB8FH0ZeUl4fTkpaTEsfDQ=="))
			elseif QuestYama_3 == true then
				v804:SetText(_zD1436("bkpaTEsfcUpSXVpNTB8FH0ZeUl4fTkpaTEsfDA=="))
			elseif QuestTushita_1 == true then
				v804:SetText(_zD1436("bkpaTEsfcUpSXVpNTB8FH0tKTFdWS14fTkpaTEsfDg=="))
			elseif QuestTushita_2 == true then
				v804:SetText(_zD1436("bkpaTEsfcUpSXVpNTB8FH0tKTFdWS14fTkpaTEsfDQ=="))
			elseif GetWP(_zD1436("fEpNTFpbH3tKXlMfdF5LXlFe")) then
				v804:SetText(_zD1436("bkpaTEsfcUpSXVpNTB8FH3x7dB9bUFFaHh4="))
			end
		end
	end)
end

do
	Q = GRP_Quests_Cursed_Dual_Katana:AddToggle(_zD1436("fkpLUGB4WktgfHt0YGRgc15MS2BuSlpMS2Bi"), {
		Text =_zD1436("fkpLUB94WksffHt0H2Qfc15MSx9uSlpMSx9i"),
		Default = false,
		Callback = function(p174)
			_G.CDK = p174
		end
	})
end

do
	spawn(function()
		if wait(Sec) then
			repeat
				pcall(function()
					if _G.CDK then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw="),_zD1436("eFBQWw=="))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw="),_zD1436("eklWUw=="))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("bEteTUtrTVZeUw=="),_zD1436("fVBMTA=="))

						local v805 = GetConnectionEnemies(_zD1436("fEpNTFpbH2xUWlNaS1BRH31QTEw="))

						if v805 then
							repeat
								wait()

								if plr.Character:FindFirstChild(_zD1436("Zl5SXg==")) then
									EquipWeapon(_zD1436("Zl5SXg=="))
								else
									if plr.Backpack:FindFirstChild(_zD1436("Zl5SXg==")) then
										EquipWeapon(_zD1436("Zl5SXg=="))
										_tp(v805.HumanoidRootPart.CFrame * CFrame.new((900-900), (64-44), (838-838)))

										if not _G.CDK or not v805.Parent or v805.Humanoid.Health <= (399-399) then
											break
										end
									end

									if plr.Character:FindFirstChild(_zD1436("a0pMV1ZLXg==")) then
										EquipWeapon(_zD1436("a0pMV1ZLXg=="))
									elseif plr.Backpack:FindFirstChild(_zD1436("a0pMV1ZLXg==")) then
										EquipWeapon(_zD1436("a0pMV1ZLXg=="))
										_tp(v805.HumanoidRootPart.CFrame * CFrame.new((162-162), (19+1), (122-122)))

										if not _G.CDK or not v805.Parent or v805.Humanoid.Health <= (595-595) then
											break
										end
									end
								end

								_tp(v805.HumanoidRootPart.CFrame * CFrame.new((753-753), (89-69), (110-110)))
							until not _G.CDK or not v805.Parent or v805.Humanoid.Health <= (973-973)
						else
							_tp(CFrame.new(-12318.193359375, 601.95184326171875, -6538.662109375))
							wait(0.5)
							_tp(workspace.Map.Turtle.Cursed.BossDoor.CFrame)
						end
					end
				end)
			until not wait(Sec)
		end
	end)
end

Q = GRP_Quests_Cursed_Dual_Katana:AddToggle(_zD1436("fkpLUGBmXlJeYHx7dA=="), {
	Text =_zD1436("fkpLUB9mXlJeH3x7dA=="),
	Default = false,
	Callback = function(p175)
		_G.CDK_YM = p175
	end
})

do
	spawn(function()
		while wait() do
			pcall(function()
				if _G.CDK_YM then
					if tostring(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("cE9aUXtQUE0="))) ~=_zD1436("UE9aUVpb") then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("cE9aUXtQUE0="))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("cE9aUXtQUE0="), true)
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Finished == nil then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("bEteTUtrTVZeUw=="),_zD1436("eklWUw=="))
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("bEteTUtrTVZeUw=="),_zD1436("eklWUw=="))
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Finished == false then
						if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) == -(3+0) then
							QuestYama_1 = true
							QuestYama_2 = false
							QuestYama_3 = false

							repeat
								task.wait()

								if workspace.Enemies:FindFirstChild(_zD1436("eVBNWkxLH29WTV5LWg==")) then
									if GetConnectionEnemies(_zD1436("eVBNWkxLH29WTV5LWg==")) then
										_tp(workspace.Enemies:FindFirstChild(_zD1436("eVBNWkxLH29WTV5LWg==")).HumanoidRootPart.CFrame)
									end
								else
									_tp(CFrame.new(-13223.521484375, 428.19381713867188, -7766.06787109375))
								end
							until not (tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) ~= (36-35) and _G.CDK_YM)
						elseif tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) == -(3+1) then
							QuestYama_1 = false
							QuestYama_2 = true
							QuestYama_3 = false

							for _, child in pairs(game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.QuestHaze:GetChildren()) do
								for k, v1 in pairs(t7) do
									if string.find(k, child.Name) and child.Value > (357-357) then
										if (v1.Position - Root.Position).Magnitude <= (1599-599) then
											if workspace.Enemies:FindFirstChild(k) then
												for _, child2 in pairs(workspace.Enemies:GetChildren()) do
													if child2:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child2:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child2:FindFirstChild(_zD1436("d0pSXlFQVls=")).Health > (900-900) and child2:FindFirstChild(_zD1436("d15FWnpsbw==")) then
														while true do
															wait()
															t9.Kill(child2, _G.CDK_YM)

															if _G.CDK_YM then
																if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) == (9-7) or not child2:FindFirstChild(_zD1436("d15FWnpsbw==")) or child2.Humanoid.Health <= (339-339) then
																	break
																end
															else
																break
															end
														end
													end
												end

												continue
											end
										end

										_tp(v1)
									end
								end
							end
						elseif tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) == -(8-3) then
							QuestYama_1 = false
							QuestYama_2 = false
							QuestYama_3 = true

							if workspace.Map:FindFirstChild(_zD1436("d1pTU3tWUlpRTFZQUQ==")) and (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= (1670-670) then
								for k in pairs(workspace.Map.HellDimension.Exit:GetChildren()) do
									if tonumber(k) == (1+1) then
										while true do
											task.wait()
											Root.CFrame = workspace.Map.HellDimension.Exit.CFrame

											if _G.CDK_YM then
												if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) == (32-29) then
													break
												end
											else
												break
											end
										end
									end
								end

								EquipWeapon(_G.SelectWeapon)

								if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) ~= (3+0) then
									while true do
										task.wait()

										repeat
											task.wait()
											_tp(workspace.Map.HellDimension.Torch1.Particles.CFrame)

											for _, descendant in pairs(workspace.Map.HellDimension:GetDescendants()) do
												if descendant:IsA(_zD1436("b01QR1ZSVktGb01QUk9L")) then
													fireproximityprompt(descendant)
												end
											end
										until (workspace.Map.HellDimension.Torch1.Particles.Position - Root.Position).Magnitude < (3+2)

										wait((16-14))
										_G.T1Yama = true

										if _G.CDK_YM and not _G.T1Yama then
											if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) ~= (2+1) then
												continue
											end
										end

										break
									end

									while true do
										task.wait()

										repeat
											task.wait()
											_tp(workspace.Map.HellDimension.Torch2.Particles.CFrame)

											for _, descendant in pairs(workspace.Map.HellDimension:GetDescendants()) do
												if descendant:IsA(_zD1436("b01QR1ZSVktGb01QUk9L")) then
													fireproximityprompt(descendant)
												end
											end
										until (workspace.Map.HellDimension.Torch2.Particles.Position - Root.Position).Magnitude < (6-1)

										wait((1+1))
										_G.T2Yama = true

										if not (_G.T2Yama or _G.CDK_YM == false) then
											if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) ~= (2+1) then
												continue
											end
										end

										break
									end

									while true do
										wait()

										repeat
											task.wait()
											_tp(workspace.Map.HellDimension.Torch3.Particles.CFrame)

											for _, descendant in pairs(workspace.Map.HellDimension:GetDescendants()) do
												if descendant:IsA(_zD1436("b01QR1ZSVktGb01QUk9L")) then
													fireproximityprompt(descendant)
												end
											end
										until (workspace.Map.HellDimension.Torch3.Particles.Position - Root.Position).Magnitude < (56-51)

										wait((2+0))
										_G.T3Yama = true

										if not (_G.T3Yama or _G.CDK_YM == false) then
											if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) ~= (1+2) then
												continue
											end
										end

										break
									end
								end

								for _, child in pairs(workspace.Enemies:GetChildren()) do
									if (child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")).Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= (40+260) then
										if child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")).Health > (982-982) then
											while true do
												task.wait()
												t9.Kill(child, _G.CDK_YM)

												if _G.CDK_YM and not (child.Humanoid.Health <= (38-38)) and child.Parent then
													if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) == (26-23) then
														break
													end
												else
													break
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end)
		end
	end)
end

do
	spawn(function()
		while wait() do
			pcall(function()
				if _G.CDK_YM then
					if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) == -(5+0) then
						if not workspace.Map:FindFirstChild(_zD1436("d1pTU3tWUlpRTFZQUQ==")) or (Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude > (726+274) then
							local v821 = GetConnectionEnemies(_zD1436("bFBKUx9tWl5PWk0="))

							if v821 then
								while true do
									task.wait()
									_tp(v821.HumanoidRootPart.CFrame)

									if not (v821.Humanoid.Health <= (797-797)) and _G.CDK_YM and v821.Parent then
										if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Evil) ~= (1+2) then
											if not workspace.Map:FindFirstChild(_zD1436("d1pTU3tWUlpRTFZQUQ==")) or not ((Root.Position - workspace.Map.HellDimension.Spawn.Position).Magnitude <= (881+119)) then
												continue
											end
										end

										break
									end

									break
								end
							elseif plr.Backpack:FindFirstChild(_zD1436("d15TU1BIH3pMTFpRXFo=")) then
								repeat
									_tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
									task.wait()
								until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - Root.Position).Magnitude <= (7+1)

								EquipWeapon(_zD1436("d15TU1BIH3pMTFpRXFo="))
							else
								if plr.Character:FindFirstChild(_zD1436("d15TU1BIH3pMTFpRXFo=")) then
									repeat
										_tp(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125))
										task.wait()
									until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - Root.Position).Magnitude <= (6+2)

									EquipWeapon(_zD1436("d15TU1BIH3pMTFpRXFo="))

									return
								end

								local ok4 = not replicated:FindFirstChild(_zD1436("bFBKUx9tWl5PWk0="))

								if not ok4 then
									ok4 = not (replicated:FindFirstChild(_zD1436("bFBKUx9tWl5PWk0=")).Humanoid.Health > (382-382))
								end

								if ok4 then
									if not (replicated.Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fFdaXFQ=")) < (139-89)) then
										replicated.Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fUpG"), (6-5), (47-46))

										return
									end

									if workspace.Enemies:FindFirstChild(_zD1436("bFBKUx9tWl5PWk0=")) then
										replicated.Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fUpG"), (1+0), (1+0))
									else
										if replicated:FindFirstChild(_zD1436("bFBKUx9tWl5PWk0=")) then
											replicated.Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fUpG"), (2-1), (16-15))

											return
										end

										if workspace.Map:FindFirstChild(_zD1436("d1pTU3tWUlpRTFZQUQ==")) then
											replicated.Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fUpG"), (1+0), (1+0))

											return
										end

										local ok = workspace.Enemies:FindFirstChild(_zD1436("bVpdUE1RH2xUWlNaS1BR"))

										if not ok then
											ok = workspace.Enemies:FindFirstChild(_zD1436("c1ZJVlFYH2VQUl1WWg=="))
										end

										local ok2 = ok

										if not ok2 then
											ok2 = workspace.Enemies:FindFirstChild(_zD1436("e1BSWlFWXB9sUEpT"))
										end

										local ok3 = ok2

										if not ok3 then
											ok3 = not not workspace.Enemies:FindFirstChild(_zD1436("b1BMWkxMWlsfckpSUkY="))
										end

										if ok3 then
											for _, child in pairs(workspace.Enemies:GetChildren()) do
												if (child.Name ==_zD1436("bVpdUE1RH2xUWlNaS1BR") or child.Name ==_zD1436("c1ZJVlFYH2VQUl1WWg==") or child.Name ==_zD1436("e1pSUFFWXB9sUEpT") or child.Name ==_zD1436("b1BMWkxMWlsfckpSUkY=")) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")).Health > (264-264) then
													while true do
														task.wait()
														t9.Kill(child, _G.CDK_YM)

														if _G.CDK_YM then
															if child.Humanoid.Health <= (663-663) or not child.Parent then
																break
															end
														else
															break
														end
													end
												end
											end
										else
											_tp(CFrame.new(-9515.2255859375, 164.0062255859375, 5785.38330078125))
										end
									end
								else
									_tp(replicated:FindFirstChild(_zD1436("bFBKUx9tWl5PWk0=")).HumanoidRootPart.CFrame)
								end
							end
						end
					end
				end
			end)
		end
	end)
end

Q = GRP_Quests_Cursed_Dual_Katana:AddToggle(_zD1436("fkpLUGBrSkxXVkteYHx7dA=="), {
	Text =_zD1436("fkpLUB9rSkxXVkteH3x7dA=="),
	Default = false,
	Callback = function(p176)
		_G.CDK_TS = p176
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G.CDK_TS then
				if tostring(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("cE9aUXtQUE0="))) ~=_zD1436("UE9aUVpb") then
					wait(0.7)
					replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("cE9aUXtQUE0="))
					wait(0.3)
					replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("cE9aUXtQUE0="), true)
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Finished == nil then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("bEteTUtrTVZeUw=="),_zD1436("eFBQWw=="))
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Finished == false then
					if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == -(15-12) then
						QuestTushita_1 = true
						QuestTushita_2 = false
						QuestTushita_3 = false

						while true do
							wait()
							_tp(CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875))

							if not ((CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (9-6)) and _G.CDK_TS then
								if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == (1+0) then
									break
								end
							else
								break
							end
						end

						if (CFrame.new(-4602.5107421875, 16.446542739868164, -2880.998046875).Position - game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (54-44) then
							wait(0.7)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("fVBeS25KWkxL"), workspace.NPCs:FindFirstChild(_zD1436("c0pHSk1GH31QXksfe1peU1pN")),_zD1436("fFdaXFQ="))
							wait(0.5)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("fVBeS25KWkxL"), workspace.NPCs:FindFirstChild(_zD1436("c0pHSk1GH31QXksfe1peU1pN")))
						end

						wait((23-22))

						while true do
							wait()
							_tp(CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125))

							if not ((CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (33-30)) and _G.CDK_TS then
								if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == (50-49) then
									break
								end
							else
								break
							end
						end

						if (CFrame.new(4001.185302734375, 10.089399337768555, -2654.86328125).Position - game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (4+6) then
							wait(0.7)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("fVBeS25KWkxL"), workspace.NPCs:FindFirstChild(_zD1436("c0pHSk1GH31QXksfe1peU1pN")),_zD1436("fFdaXFQ="))
							wait(0.5)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("fVBeS25KWkxL"), workspace.NPCs:FindFirstChild(_zD1436("c0pHSk1GH31QXksfe1peU1pN")))
						end

						wait((1+0))

						while true do
							wait()
							_tp(CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625))

							if not ((CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (3+0)) and _G.CDK_TS then
								if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == (22-21) then
									break
								end
							else
								break
							end
						end

						if (CFrame.new(-9530.763671875, 7.245208740234375, -8375.5087890625).Position - game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (22-12) then
							wait(0.7)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("fVBeS25KWkxL"), workspace.NPCs:FindFirstChild(_zD1436("c0pHSk1GH31QXksfe1peU1pN")),_zD1436("fFdaXFQ="))
							wait(0.5)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("fVBeS25KWkxL"), workspace.NPCs:FindFirstChild(_zD1436("c0pHSk1GH31QXksfe1peU1pN")))
						end

						wait((21-20))
					elseif tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == -(45-41) then
						QuestTushita_1 = false
						QuestTushita_2 = true
						QuestTushita_3 = false

						while true do
							wait()
							_G.AutoRaidCastle = true

							if _G.CDK_TS then
								if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == (1+1) then
									break
								end
							else
								break
							end
						end

						_G.AutoRaidCastle = false
					elseif tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == -(31-26) then
						QuestTushita_1 = false
						QuestTushita_2 = false
						QuestTushita_3 = true

						if workspace.Enemies:FindFirstChild(_zD1436("fF5UWh9uSlpaUQ==")) then
							for _, child in pairs(workspace.Enemies:GetChildren()) do
								if child.Name ==_zD1436("fF5UWh9uSlpaUQ==") and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child.Humanoid.Health > (863-863) then
									while true do
										wait()
										t9.Kill(child, _G.CDK_TS)

										if _G.CDK_TS and child.Parent and not (child.Humanoid.Health <= (533-533)) then
											if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == (11-8) then
												break
											end
										else
											break
										end
									end
								end
							end
						else
							local ok = not replicated:FindFirstChild(_zD1436("fF5UWh9uSlpaUQ=="))

							if not ok then
								ok = not (replicated:FindFirstChild(_zD1436("fF5UWh9uSlpaUQ==")).Humanoid.Health > (576-576))
							end

							if ok then
								if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - workspace.Map.HeavenlyDimension.Spawn.Position).Magnitude <= (1565-565) then
									for k in pairs(workspace.Map.HeavenlyDimension.Exit:GetChildren()) do
										Ex = k
									end

									if Ex == (2+0) then
										while true do
											wait()
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.HeavenlyDimension.Exit.CFrame

											if _G.CDK_TS then
												if tonumber(replicated.Remotes.CommF_:InvokeServer(_zD1436("fHt0bkpaTEs="),_zD1436("b01QWE1aTEw=")).Good) == (1+2) then
													break
												end
											else
												break
											end
										end
									end

									repeat
										wait()

										repeat
											wait()
											_tp(CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625))

											for _, descendant in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
												if descendant:IsA(_zD1436("b01QR1ZSVktGb01QUk9L")) then
													fireproximityprompt(descendant)
												end
											end
										until (CFrame.new(-22529.6171875, 5275.77392578125, 3873.5712890625).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < (1+4)

										wait((1+1))
										_G.DoneT1 = true
									until not _G.CDK_TS or _G.DoneT1

									repeat
										wait()

										repeat
											wait()
											_tp(CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875))

											for _, descendant in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
												if descendant:IsA(_zD1436("b01QR1ZSVktGb01QUk9L")) then
													fireproximityprompt(descendant)
												end
											end
										until (CFrame.new(-22637.291015625, 5281.365234375, 3749.28857421875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < (47-42)

										wait((42-40))
										_G.DoneT2 = true
									until _G.DoneT2 or _G.CDK_TS == false

									repeat
										wait()

										repeat
											task.wait()
											_tp(CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375))

											for _, descendant in pairs(workspace.Map.HeavenlyDimension:GetDescendants()) do
												if descendant:IsA(_zD1436("b01QR1ZSVktGb01QUk9L")) then
													fireproximityprompt(descendant)
												end
											end
										until (CFrame.new(-22791.14453125, 5277.16552734375, 3764.570068359375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < (9-4)

										wait((5-3))
										_G.DoneT3 = true
									until _G.DoneT3 or _G.CDK_TS == false

									for _, child in pairs(workspace.Enemies:GetChildren()) do
										if (child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")).Position - CFrame.new(-22695.7012, 5270.93652, 3814.42847, 0.11794927, 3.32185834e-(46-38), 0.99301964, -8.73070718e-(17-9), (1+0), -2.30819008e-(20-12), -0.99301964, -8.3975138e-(3+5), 0.11794927).Position).Magnitude <= (438-138) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child:FindFirstChild(_zD1436("d0pSXlFQVls=")).Health > (434-434) then
											while true do
												wait()
												t9.Kill(child, _G.CDK_TS)

												if _G.CDK_TS then
													if child.Humanoid.Health <= (322-322) or not child.Parent then
														break
													end
												else
													break
												end
											end
										end
									end
								end
							else
								_tp(replicated:FindFirstChild(_zD1436("fF5UWh9uSlpaUQ==")).HumanoidRootPart.CFrame * CFrame.new((42-42), (92-62), (384-384)))
							end
						end
					end
				end
			end
		end)
	end
end)
GRP_Quests_True_Triple_Katana_Sword = t15.Quests:AddLeftGroupbox(_zD1436("a01KWh9rTVZPU1ofdF5LXlFeH2xIUE1b"))

do
	GRP_Quests_True_Triple_Katana_Sword:AddButton({
		Text =_zD1436("fUpGH3NaWFpRW15NRh9sSFBNWw=="),
		Func = function()
			for i = (1+0), (28-25) do
				replicated.Remotes.CommF_:InvokeServer(_zD1436("c1pYWlFbXk1GbEhQTVt7Wl5TWk0="), tostring(i))
				task.wait(0.3)
			end
		end
	})
end

do
	GRP_Quests_True_Triple_Katana_Sword:AddButton({
		Text =_zD1436("fUpGH2tNSlofa01WT1NaH3ReS15RXh9sSFBNWw=="),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("ckZMS1pNVlBKTHJeUQ=="),_zD1436("DQ=="))
		end
	})
end

do
	Q = GRP_Quests_True_Triple_Katana_Sword:AddToggle(_zD1436("a0haWlFgS1Bgc1pYWlFbXk1GYGxIUE1bYHtaXlNaTQ=="), {
		Text =_zD1436("a0haWlEfS1Afc1pYWlFbXk1GH2xIUE1bH3taXlNaTQ=="),
		Default = false,
		Callback = function(p177)
			_G.Tp_LgS = p177
		end
	})
end

spawn(function()
	while wait(Sec) do
		if _G.Tp_LgS then
			pcall(function()
				for _, child in pairs(replicated.NPCs:GetChildren()) do
					if child.Name ==_zD1436("c1pYWlFbXk1GH2xIUE1bH3taXlNaTR8=") then
						_tp(child.HumanoidRootPart.CFrame)
					end
				end
			end)
		end
	end
end)
GRP_Quests_Pole_God_Enal_s = t15.Quests:AddLeftGroupbox(_zD1436("b1BTWh8QH3hQWx96UV5TGEw="))
Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGBvUFNaYGkO"), {
	Text =_zD1436("fkpLUB9vUFNaH2kO"),
	Default = false,
	Callback = function(p178)
		_G.AutoPole = p178
	end
})
spawn(function()
	while wait(Sec) do
		if _G.AutoPole then
			pcall(function()
				local v843 = GetConnectionEnemies(_zD1436("a1dKUVtaTR94UFs="))

				if v843 then
					while true do
						task.wait()
						t9.Kill(v843, _G.AutoPole)

						if _G.AutoPole then
							if not v843.Parent or v843.Humanoid.Health <= (522-522) then
								break
							end
						else
							break
						end
					end
				else
					_tp(CFrame.new(-7994.984375, 5761.025390625, -2088.6479492188))
				end
			end)
		end
	end
end)
Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGBvUFNaYGkNYGR9WkteYg=="), {
	Text =_zD1436("fkpLUB9vUFNaH2kNH2R9WkteYg=="),
	Default = false,
	Callback = function(p179)
		_G.AutoPoleV2 = p179
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.AutoPoleV2 then
					if not GetBP(_zD1436("b1BTWh8XDkxLH3lQTVIW")) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3ZLWlI="),_zD1436("b1BTWh8XDkxLH3lQTVIW"))
					end

					if not GetBP(_zD1436("b1BTWh8XDVFbH3lQTVIW")) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3ZLWlI="),_zD1436("b1BTWh8XDVFbH3lQTVIW"))
					end

					if GetBP(_zD1436("b1BTWh8XDkxLH3lQTVIW")) and GetBP(_zD1436("b1BTWh8XDkxLH3lQTVIW")).Level.Value <= (110+69) then
						_G.Level = true
					elseif GetBP(_zD1436("b1BTWh8XDkxLH3lQTVIW")) and GetBP(_zD1436("b1BTWh8XDkxLH3lQTVIW")).Level.Value >= (62+118) then
						_G.Level = false
					end

					if not GetBP(_zD1436("bUpSXVNaH3lNSlZL")) then
						return
					end

					local ok2 = not GetBP(_zD1436("bUpSXVNaH3lNSlZL")).AwakenedMoves:FindFirstChild(_zD1436("ZQ=="))

					if not ok2 then
						ok2 = not GetBP(_zD1436("bUpSXVNaH3lNSlZL")).AwakenedMoves:FindFirstChild(_zD1436("Zw=="))
					end

					local ok3 = ok2

					if not ok3 then
						ok3 = not GetBP(_zD1436("bUpSXVNaH3lNSlZL")).AwakenedMoves:FindFirstChild(_zD1436("fA=="))
					end

					local ok4 = ok3

					if not ok4 then
						ok4 = not GetBP(_zD1436("bUpSXVNaH3lNSlZL")).AwakenedMoves:FindFirstChild(_zD1436("aQ=="))
					end

					local ok5 = ok4

					if not ok5 then
						ok5 = not GetBP(_zD1436("bUpSXVNaH3lNSlZL")).AwakenedMoves:FindFirstChild(_zD1436("eQ=="))
					end

					if ok5 then
						local ok = replicated.Remotes.CommF_:InvokeServer(_zD1436("fkheVFpRWk0="),_zD1436("fFdaXFQ=")) == nil

						if not ok then
							ok = replicated.Remotes.CommF_:InvokeServer(_zD1436("fkheVFpRWk0="),_zD1436("fFdaXFQ=")) == (981-981)
						end

						if ok then
							_G.SelectChip =_zD1436("bUpSXVNa")

							local response = replicated.Remotes.CommF_:InvokeServer(_zD1436("bV5WW0xxT1w="),_zD1436("bFpTWlxL"), _G.SelectChip)

							if response then
								response:Stop()
							end

							_G.Raiding = true
							_G.Auto_Awakener = true
						end
					else
						_G.SelectChip = nil
						_G.Raiding = false
						_G.Auto_Awakener = false

						if plr.Data.Fragments.Value >= (5678-678) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("a1dKUVtaTR94UFs="),_zD1436("a15TVA=="))
							wait(Sec)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("a1dKUVtaTR94UFs="),_zD1436("bEpNWg=="))
						end
					end
				end
			end)
		end
	end)
end

GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGBsXkhgbEhQTVs="), {
	Text =_zD1436("fkpLUB9sXkgfbEhQTVs="),
	Default = false,
	Callback = function(p180)
		_G.AutoSaw = p180
	end
})
spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.AutoSaw then
				local v850 = GetConnectionEnemies(_zD1436("a1daH2xeSA=="))

				if v850 then
					while true do
						task.wait()
						t9.Kill(v850, _G.AutoSaw)

						if _G.AutoSaw == false then
							break
						elseif v850.Humanoid.Health <= (258-258) then
							break
						end
					end
				else
					_tp(CFrame.new(-784.89715576172, 72.427383422852, 1603.5822753906))
				end
			end
		end)
	end
end)

do
	Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGBsXl1aTWBsSFBNWw=="), {
		Text =_zD1436("fkpLUB9sXl1aTR9sSFBNWw=="),
		Default = false,
		Callback = function(p181)
			_G.AutoSaber = p181
		end
	})
end

spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.AutoSaber and plr.Data.Level.Value >= (289-89) then
				if not plr.Backpack:FindFirstChild(_zD1436("bF5dWk0=")) then
					if not plr.Character:FindFirstChild(_zD1436("bF5dWk0=")) then
						if workspace.Map.Jungle.Final.Part.Transparency ~= (271-271) then
							local ok2 = workspace.Enemies:FindFirstChild(_zD1436("bF5dWk0fekdPWk1L"))

							if not ok2 then
								ok2 = not not replicated:FindFirstChild(_zD1436("bF5dWk0fekdPWk1L"))
							end

							if ok2 then
								for _, child in pairs(workspace.Enemies:GetChildren()) do
									if child.Name ==_zD1436("bF5dWk0fekdPWk1L") and t9.Alive(child) then
										while true do
											task.wait()
											t9.Kill(child, _G.AutoSaber)

											if child.Humanoid.Health <= (331-331) then
												break
											elseif _G.AutoSaber == false then
												break
											end
										end

										if child.Humanoid.Health <= (646-646) then
											replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("b1NeXFptWlNWXA=="))
										end
									end
								end
							else
								_tp(CFrame.new(-1401.85046, 29.9773273, 8.81916237, 0.85820812, 8.76083845e-(59-51), 0.513301849, -8.55007443e-(28-20), (1+0), -2.77243419e-(4+4), -0.513301849, -2.00944328e-(52-44), 0.85820812))
							end
						elseif workspace.Map.Jungle.QuestPlates.Door.Transparency == (958-958) then
							if (CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-(4+5), -0.928667724, 3.97099491e-(1+7), (10-9), 1.91679348e-(52-44), 0.928667724, -4.39869794e-(4+4), 0.37091279).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (93+7) then
								_tp(plr.Character.HumanoidRootPart.CFrame)
								wait(0.5)
								plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate1.Button.CFrame
								wait(0.5)
								plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate2.Button.CFrame
								wait(0.5)
								plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate3.Button.CFrame
								wait(0.5)
								plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate4.Button.CFrame
								wait(0.5)
								plr.Character.HumanoidRootPart.CFrame = workspace.Map.Jungle.QuestPlates.Plate5.Button.CFrame
								wait(0.5)
							else
								_tp(CFrame.new(-1612.55884, 36.9774132, 148.719543, 0.37091279, 3.0717151e-(51-42), -0.928667724, 3.97099491e-(6+2), (1+0), 1.91679348e-(32-24), 0.928667724, -4.39869794e-(39-31), 0.37091279))
							end
						elseif workspace.Map.Desert.Burn.Part.Transparency == (735-735) then
							if plr.Backpack:FindFirstChild(_zD1436("a1BNXFc=")) then
								EquipWeapon(_zD1436("a1BNXFc="))
								firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, (906-906))
								firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, (30-29))
								_tp(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-(49-40), 0.761243105, -5.70652914e-(7+3), (1+0), 1.20584542e-(57-48), -0.761243105, 3.47544882e-(43-33), -0.648466587))
							else
								if plr.Character:FindFirstChild(_zD1436("a1BNXFc=")) then
									EquipWeapon(_zD1436("a1BNXFc="))
									firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, (322-322))
									firetouchinterest(plr.Character.Torch.Handle, workspace.Map.Desert.Burn.Fire, (42-41))
									_tp(CFrame.new(1114.61475, 5.04679728, 4350.22803, -0.648466587, -1.28799094e-(17-8), 0.761243105, -5.70652914e-(6+4), (1+0), 1.20584542e-(42-33), -0.761243105, 3.47544882e-(1+9), -0.648466587))

									return
								end

								_tp(CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 3.42372805e-(30-25), -0.258850515, 0.965917408))
							end
						elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("bFZcVHJeUQ==")) ~= (457-457) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("eFpLfEpP"))
							wait(0.5)
							EquipWeapon(_zD1436("fEpP"))
							wait(0.5)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("eVZTU3xKTw=="), plr.Character.Cup)
							wait(Sec)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("bFZcVHJeUQ=="))
						elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("bVZcV2xQUQ==")) == nil then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("bVZcV2xQUQ=="))
						elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("bVZcV2xQUQ==")) == (282-282) then
							local ok = workspace.Enemies:FindFirstChild(_zD1436("clBdH3NaXltaTQ=="))

							if not ok then
								ok = not not replicated:FindFirstChild(_zD1436("clBdH3NaXltaTQ=="))
							end

							if ok then
								_tp(CFrame.new(-2967.59521, -4.91089821, 5328.70703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, -0.939287126, 0.0184739735, 0.342634559))

								for _, child in pairs(workspace.Enemies:GetChildren()) do
									if child.Name ==_zD1436("clBdH3NaXltaTQ==") and t9.Alive(child) then
										while true do
											task.wait()
											t9.Kill(child, _G.AutoSaber)

											if child.Humanoid.Health <= (346-346) then
												break
											elseif _G.AutoSaber == false then
												break
											end
										end
									end
								end
							end
						elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("bVZcV2xQUQ==")) == (30-29) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("b01QbkpaTEtvTVBYTVpMTA=="),_zD1436("bVZcV2xQUQ=="))
							EquipWeapon(_zD1436("bVpTVlw="))
							_tp(CFrame.new(-1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.66906877e-(2+7), 0.481375456, 2.53851997e-(60-52), (1+0), -5.79995607e-(4+4), -0.481375456, 6.30572643e-(27-19), 0.876514494))
						end
					end
				end
			end
		end)
	end
end)
Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGB8Rl1NUFg="), {
	Text =_zD1436("fkpLUB98Rl1NUFg="),
	Default = false,
	Callback = function(p182)
		_G.AutoColShad = p182
	end
})

do
	spawn(function()
		while wait(0.2) do
			if _G.AutoColShad then
				pcall(function()
					local Cyborg = GetConnectionEnemies(_zD1436("fEZdUE1Y"))

					if Cyborg then
						while true do
							task.wait()
							t9.Kill(Cyborg, _G.AutoColShad)

							if _G.AutoColShad == false then
								break
							elseif not Cyborg.Parent or Cyborg.Humanoid.Health <= (780-780) then
								break
							end
						end
					else
						_tp(CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813))
					end
				end)
			end
		end
	end)
end

do
	Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGBqTFBeTxhMYHdeSw=="), {
		Text =_zD1436("fkpLUB9qTFBeTxhMH3deSw=="),
		Default = false,
		Callback = function(p183)
			_G.AutoGetUsoap = p183
		end
	})
end

do
	spawn(function()
		while task.wait(Sec) do
			pcall(function()
				if _G.AutoGetUsoap then
					for _, child in pairs(workspace.Characters:GetChildren()) do
						if child.Name ~= plr.Name and child.Humanoid.Health > (935-935) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child.Parent and (Root.Position - child.HumanoidRootPart.Position).Magnitude <= (344-114) then
							while true do
								task.wait()
								EquipWeapon(_G.SelectWeapon)
								_tp(child.HumanoidRootPart.CFrame * CFrame.new((27-26), (1+0), (2+0)))

								if _G.AutoGetUsoap == false then
									break
								elseif child.Humanoid.Health <= (37-37) or not child.Parent or not child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) or not child:FindFirstChild(_zD1436("d0pSXlFQVls=")) then
									break
								end
							end
						end
					end
				end
			end)
		end
	end)
end

Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGB9VkxaUUtQYGkN"), {
	Text =_zD1436("fkpLUB99VkxaUUtQH2kN"),
	Default = false,
	Callback = function(p184)
		_G.Greybeard = p184
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.Greybeard then
				pcall(function()
					if GetWP(_zD1436("fVZMWlFLUA==")) then
						if GetWP(_zD1436("fVZMWlFLUA==")) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3ZLWlI="),_zD1436("fVZMWlFLUA=="))

							local Greybeard = GetConnectionEnemies(_zD1436("eE1aRl1aXk1b"))

							if Greybeard then
								while true do
									wait()
									t9.Kill(Greybeard, _G.Greybeard)

									if _G.Greybeard == false then
										break
									elseif not Greybeard.Parent or Greybeard.Humanoid.Health <= (524-524) then
										break
									end
								end
							else
								_tp(CFrame.new(-5023.38330078125, 28.652032852172852, 4332.3818359375))
							end
						end
					else
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("fVZMWlFLUA=="))
					end
				end)
			end
		end
	end)
end

Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGBoXk1bWlFgbEhQTVs="), {
	Text =_zD1436("fkpLUB9oXk1bWlEfbEhQTVs="),
	Default = false,
	Callback = function(p185)
		_G.WardenBoss = p185
	end
})

do
	spawn(function()
		while wait(0.1) do
			if _G.WardenBoss then
				pcall(function()
					local v861 = GetConnectionEnemies(_zD1436("fFdWWlkfaF5NW1pR"))

					if v861 then
						while true do
							wait()
							t9.Kill(v861, _G.WardenBoss)

							if _G.WardenBoss == false then
								break
							elseif not v861.Parent or v861.Humanoid.Health <= (685-685) then
								break
							end
						end
					else
						_tp(CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, -0.00062915677, 0.939684749, 0.00191645394, 0.999998152, -2.80422337e-(2+3), -0.939682961, 0.00181045406, 0.342041939))
					end
				end)
			end
		end
	end)
end

do
	Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGByXk1WUVpgfFBeSw=="), {
		Text =_zD1436("fkpLUB9yXk1WUVoffFBeSw=="),
		Default = false,
		Callback = function(p186)
			_G.MarinesCoat = p186
		end
	})
end

do
	spawn(function()
		while wait(0.1) do
			if _G.MarinesCoat then
				pcall(function()
					local v862 = GetConnectionEnemies(_zD1436("aVZcWh9+W1JWTV5T"))

					if v862 then
						while true do
							wait()
							t9.Kill(v862, _G.MarinesCoat)

							if _G.MarinesCoat == false then
								break
							elseif not v862.Parent or v862.Humanoid.Health <= (226-226) then
								break
							end
						end
					else
						_tp(CFrame.new(-5006.5454101563, 88.032081604004, 4353.162109375))
					end
				end)
			end
		end
	end)
end

Q = GRP_Quests_Pole_God_Enal_s:AddToggle(_zD1436("fkpLUGBsSF5RYHxQXks="), {
	Text =_zD1436("fkpLUB9sSF5RH3xQXks="),
	Default = false,
	Callback = function(p187)
		_G.SwanCoat = p187
	end
})

do
	spawn(function()
		while wait(0.1) do
			if _G.SwanCoat then
				pcall(function()
					local Swan = GetConnectionEnemies(_zD1436("bEheUQ=="))

					if Swan then
						while true do
							wait()
							t9.Kill(Swan, _G.SwanCoat)

							if _G.SwanCoat == false then
								break
							elseif not Swan.Parent or Swan.Humanoid.Health <= (301-301) then
								break
							end
						end
					else
						_tp(CFrame.new(5325.09619, 7.03906584, 719.570679, -0.309060812, (14-14), 0.951042235, (373-373), (1+0), (176-176), -0.951042235, (589-589), -0.309060812))
					end
				end)
			end
		end
	end)
end

GRP_Quests_Rengoku_Sword = t15.Quests:AddLeftGroupbox(_zD1436("bVpRWFBUSh9sSFBNWw=="))
Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGBtWlFYUFRKYGxIUE1b"), {
	Text =_zD1436("fkpLUB9tWlFYUFRKH2xIUE1b"),
	Default = false,
	Callback = function(p188)
		_G.IceBossRen = p188
	end
})

do
	spawn(function()
		pcall(function()
			while wait(0.1) do
				if _G.IceBossRen then
					local v864 = GetConnectionEnemies(_zD1436("fkheVFpRWlsfdlxaH35bUlZNXlM="))

					if v864 then
						while true do
							task.wait()
							t9.Kill(v864, _G.IceBossRen)

							if _G.IceBossRen == false then
								break
							elseif not v864.Parent or v864.Humanoid.Health <= (373-373) then
								break
							end
						end
					else
						_tp(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
					end
				end
			end
		end)
	end)
end

do
	Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGB0WkZgbVpRWFBUSg=="), {
		Text =_zD1436("fkpLUB90WkYfbVpRWFBUSg=="),
		Default = false,
		Callback = function(p189)
			_G.KeysRen = p189
		end
	})
end

spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.KeysRen then
				if plr.Backpack:FindFirstChild(t1[(55-52)]) then
					EquipWeapon(t1[(1+2)])
					wait(0.1)
					_tp(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
				else
					if plr.Character:FindFirstChild(t1[(1+2)]) then
						EquipWeapon(t1[(2+1)])
						wait(0.1)
						_tp(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))

						return
					end

					local v865 = GetConnectionEnemies(t1)

					if v865 then
						while true do
							task.wait()
							t9.Kill(v865, _G.KeysRen)

							if plr.Backpack:FindFirstChild(t1[(5-2)]) then
								break
							elseif _G.KeysRen == false or not v865.Parent or v865.Humanoid.Health <= (422-422) then
								break
							end
						end
					else
						_tp(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
					end
				end
			end
		end)
	end
end)

do
	Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGB7TV5YUFFga01WW1pRSw=="), {
		Text =_zD1436("fkpLUB97TV5YUFEfa01WW1pRSw=="),
		Default = false,
		Callback = function(p190)
			_G.AutoTridentW2 = p190
		end
	})
end

spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.AutoTridentW2 then
				local v866 = GetConnectionEnemies(_zD1436("a1ZbWh90WlpPWk0="))

				if v866 then
					while true do
						task.wait()
						t9.Kill(v866, _G.AutoTridentW2)

						if _G.AutoTridentW2 == false then
							break
						elseif not v866.Parent or v866.Humanoid.Health <= (154-154) then
							break
						end
					end
				else
					_tp(CFrame.new(-3795.6423339844, 105.88877105713, -11421.307617188))
				end
			end
		end)
	end
end)
Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGBzUFFYYGxIUE1b"), {
	Text =_zD1436("fkpLUB9zUFFYH2xIUE1b"),
	Default = false,
	Callback = function(p191)
		_G.LongsWord = p191
	end
})
spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.LongsWord then
				local Diamond = GetConnectionEnemies(_zD1436("e1ZeUlBRWw=="))

				if Diamond then
					while true do
						task.wait()
						t9.Kill(Diamond, _G.LongsWord)

						if _G.LongsWord == false then
							break
						elseif not Diamond.Parent or Diamond.Humanoid.Health <= (225-225) then
							break
						end
					end
				else
					_tp(CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407))
				end
			end
		end)
	end
end)
Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGB9U15cVGBsT1ZUWkY="), {
	Text =_zD1436("fkpLUB99U15cVB9sT1ZUWkY="),
	Default = false,
	Callback = function(p192)
		_G.BlackSpikey = p192
	end
})
spawn(function()
	while wait(0.1) do
		if _G.BlackSpikey then
			pcall(function()
				local Jeremy = GetConnectionEnemies(_zD1436("dVpNWlJG"))

				if Jeremy then
					while true do
						wait()
						t9.Kill(Jeremy, _G.BlackSpikey)

						if _G.BlackSpikey == false then
							break
						elseif not Jeremy.Parent or Jeremy.Humanoid.Health <= (813-813) then
							break
						end
					end
				else
					_tp(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
				end
			end)
		end
	end
end)

do
	Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGB7Xk1UYH1TXltaYGkM"), {
		Text =_zD1436("fkpLUB97Xk1UH31TXltaH2kM"),
		Default = false,
		Callback = function(p193)
			_G.DarkBladev3 = p193
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.DarkBladev3 and World2 then
				if not GetBP(_zD1436("e15NVB99U15bWg==")) then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3ZLWlI="),_zD1436("e15NVB99U15bWg=="))
				end

				if not (GetBP(_zD1436("eVZMSx9QWR97Xk1UUVpMTA==")) > (29-28)) then
					_G.AutoFarmChest = true
				elseif not workspace.Enemies:FindFirstChild(_zD1436("e15NVF1aXk1b")) then
					_tp(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
				elseif GetConnectionEnemies(_zD1436("e15NVF1aXk1b")) then
					if GetBP(_zD1436("eVZMSx9QWR97Xk1UUVpMTA==")) >= (4-3) then
						while true do
							wait()
							_tp(CFrame.new(-5719.36376953125, 48.505905151367188, -782.9759521484375))

							if _G.DarkBladev3 then
								if Root.Position == CFrame.new(-5719.36376953125, 48.505905151367188, -782.9759521484375).Position then
									break
								end
							else
								break
							end
						end

						fireclickdetector(workspace.Map.GraveIsland.Mountain.Rocks.Button.ClickDetector)
					end
				end
			end
		end)
	end
end)
Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGByVltRVlhXS2B9U15bWg=="), {
	Text =_zD1436("fkpLUB9yVltRVlhXSx99U15bWg=="),
	Default = false,
	Callback = function(p194)
		_G.AutoEcBoss = p194
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.AutoEcBoss then
				if GetM(_zD1436("elxLUE9TXkxS")) >= (173-74) then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("elxLUE9TXkxS"),_zD1436("fUpG"), (33-30))
				elseif GetM(_zD1436("elxLUE9TXkxS")) <= (209-110) then
					local v869 = GetConnectionEnemies(_zD1436("fEpNTFpbH3xeT0teVlE="))

					if v869 then
						while true do
							wait()
							t9.Kill(v869, _G.AutoEcBoss)

							if _G.AutoEcBoss then
								if not v869.Parent or v869.Humanoid.Health <= (280-280) then
									break
								end
							else
								break
							end
						end
					else
						replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
						wait(0.5)
						_tp(CFrame.new(916.928589, 181.092773, (36805-3383)))
					end
				end
			end
		end)
	end
end)
Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGB7Xk1UXVpeTVs="), {
	Text =_zD1436("fkpLUB97Xk1UXVpeTVs="),
	Default = false,
	Callback = function(p195)
		_G.Auto_Def_DarkCoat = p195
	end
})

do
	spawn(function()
		while wait(0.1) do
			if _G.Auto_Def_DarkCoat then
				pcall(function()
					local ok = not GetBP(_zD1436("eVZMSx9QWR97Xk1UUVpMTA=="))

					if not ok then
						ok = workspace.Enemies:FindFirstChild(_zD1436("e15NVF1aXk1b"))
					end

					if not ok then
						_tp(CFrame.new(3677.08203125, 62.751937866211, -3144.8332519531))
					elseif GetConnectionEnemies(_zD1436("e15NVF1aXk1b")) then
						local Darkbeard = GetConnectionEnemies(_zD1436("e15NVF1aXk1b"))

						if Darkbeard then
							while true do
								wait()
								t9.Kill(Darkbeard, _G.Auto_Def_DarkCoat)

								if _G.Auto_Def_DarkCoat == false then
									break
								elseif not Darkbeard.Parent or Darkbeard.Humanoid.Helath <= (74-74) then
									break
								end
							end
						end
					elseif not (GetBP(_zD1436("eVZMSx9QWR97Xk1UUVpMTA==")) or GetConnectionEnemies(_zD1436("e15NVF1aXk1b"))) then
						while true do
							wait(0.1)
							_G.AutoFarmChest = true

							if _G.Auto_Def_DarkCoat then
								if GetBP(_zD1436("eVZMSx9QWR97Xk1UUVpMTA==")) or GetConnectionEnemies(_zD1436("e15NVF1aXk1b")) then
									break
								end
							else
								break
							end
						end

						_G.AutoFarmChest = false
					end
				end)
			end
		end
	end)
end

do
	Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGBqUVNQXFRaW2B7UFFsSF5R"), {
		Text =_zD1436("fkpLUB9qUVNQXFRaWx97UFFsSF5R"),
		Default = false,
		Callback = function(p196)
			_G.Auto_DonAcces = p196
		end
	})
end

spawn(function()
	while wait(0.1) do
		if _G.Auto_DonAcces then
			pcall(function()
				if replicated.Remotes.CommF_:InvokeServer(_zD1436("eFpLalFTUFxUXl1TWkw=")).FlamingoAccess == nil and plr.Data.Level.Value >= (398+1102) then
					FruitPrice = {}
					FruitStore = {}

					local next_ = next
					local response, v874 = replicated:WaitForChild(_zD1436("bVpSUEtaTA==")).CommF_:InvokeServer(_zD1436("eFpLeU1KVktM"))

					for _, v1 in next_, response, v874 do
						if v1.Price >= (1080229-80229) then
							table.insert(FruitPrice, v1.Name)
						end
					end

					for _, v1 in pairs(replicated.Remotes.CommF_:InvokeServer(_zD1436("WFpLdlFJWlFLUE1GeU1KVktM"))) do
						for k, v2 in pairs(v1) do
							if k ==_zD1436("cV5SWg==") then
								table.insert(FruitStore, v2)
							end
						end

						replicated.Remotes.CommF_:InvokeServer(_zD1436("fFBKTFZR"),_zD1436("fUpG"))

						for _, v2 in pairs(FruitPrice) do
							for _, v3 in pairs(FruitStore) do
								if v2 == v3 then
									if replicated.Remotes.CommF_:InvokeServer(_zD1436("eFpLalFTUFxUXl1TWkw=")).FlamingoAccess == nil then
										_G.StoreF = false

										if plr.Backpack:FindFirstChild(FruitStore) then
											replicated.Remotes.CommF_:InvokeServer(_zD1436("a15TVGtNWklQTQ=="),_zD1436("Dg=="))
											replicated.Remotes.CommF_:InvokeServer(_zD1436("a15TVGtNWklQTQ=="),_zD1436("DQ=="))
											replicated.Remotes.CommF_:InvokeServer(_zD1436("a15TVGtNWklQTQ=="),_zD1436("DA=="))
										else
											replicated.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3lNSlZL"), tostring(v2))
										end
									end
								end
							end
						end

						if replicated.Remotes.CommF_:InvokeServer(_zD1436("eFpLalFTUFxUXl1TWkw=")).FlamingoAccess ~= nil then
							_G.StoreF = true
							_G.Auto_DonAcces = false
						end
					end
				end
			end)
		end
	end
end)

do
	Q = GRP_Quests_Rengoku_Sword:AddToggle(_zD1436("fkpLUGBsSF5RYHhTXkxMWkw="), {
		Text =_zD1436("fkpLUB9sSF5RH3hTXkxMWkw="),
		Default = false,
		Callback = function(p197)
			_G.Auto_SwanGG = p197
		end
	})
end

do
	spawn(function()
		while wait(0.2) do
			if _G.Auto_SwanGG then
				pcall(function()
					local v885 = GetConnectionEnemies(_zD1436("e1BRH2xIXlE="))

					if v885 then
						while true do
							wait()
							t9.Kill(v885, _G.Auto_SwanGG)

							if _G.Auto_SwanGG == false then
								break
							elseif not v885.Parent or v885.Humanoid.Health <= (605-605) then
								break
							end
						end
					else
						_tp(CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875))
					end
				end)
			end
		end
	end)
end

GRP_Quests_Cavender_Twin_Hooks_Bigmom = t15.Quests:AddLeftGroupbox(_zD1436("fF5JWlFbWk0fFB9rSFZRH3dQUFRMHxQffVZYUlBS"))

do
	Q = GRP_Quests_Cavender_Twin_Hooks_Bigmom:AddToggle(_zD1436("fkpLUGB9VlhSUFI="), {
		Text =_zD1436("fkpLUB99VlhSUFI="),
		Default = false,
		Callback = function(p198)
			_G.AutoBigmom = p198
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.AutoBigmom then
				pcall(function()
					local v886 = GetConnectionEnemies(_zD1436("fF5UWh9uSlpaUQ=="))

					if v886 then
						while true do
							task.wait()
							t9.Kill(v886, _G.AutoBigmom)

							if _G.AutoBigmom then
								if not v886.Parent or v886.Humanoid.Health <= (748-748) then
									break
								end
							else
								break
							end
						end
					else
						_tp(CFrame.new(-709.31329345703125, 381.6005859375, -11011.396484375))
					end
				end)
			end
		end
	end)
end

do
	Q = GRP_Quests_Cavender_Twin_Hooks_Bigmom:AddToggle(_zD1436("fkpLUGB8XlFJWlFbVkxXYGxIUE1b"), {
		Text =_zD1436("fkpLUB98XlFJWlFbVkxXH2xIUE1b"),
		Default = false,
		Callback = function(p199)
			_G.Auto_Cavender = p199
			ender = v
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_Cavender then
				local v887 = GetConnectionEnemies(_zD1436("fVpeSktWWUpTH29WTV5LWg=="))

				if v887 then
					while true do
						wait()
						t9.Kill(v887, _G.Auto_Cavender)

						if _G.Auto_Cavender then
							if v887.Humanoid.Health <= (108-108) then
								break
							end
						else
							break
						end
					end
				else
					_tp(CFrame.new(5283.609375, 22.56223487854, -110.78285217285))
				end
			end
		end)
	end
end)

do
	Q = GRP_Quests_Cavender_Twin_Hooks_Bigmom:AddToggle(_zD1436("fkpLUGBrSFZRYHdQUFRM"), {
		Text =_zD1436("fkpLUB9rSFZRH3dQUFRM"),
		Default = false,
		Callback = function(p200)
			_G.TwinHook = p200
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.TwinHook then
					local v888 = GetConnectionEnemies(_zD1436("fF5PS15WUR96U1pPV15RSw=="))

					if v888 then
						while true do
							wait()
							t9.Kill(v888, _G.TwinHook)

							if _G.TwinHook then
								if v888.Humanoid.Health <= (420-420) then
									break
								end
							else
								break
							end
						end
					else
						replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
						wait(0.2)
						_tp(CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125))
					end
				end
			end)
		end
	end)
end

Q = GRP_Quests_Cavender_Twin_Hooks_Bigmom:AddToggle(_zD1436("fkpLUGBsWk1PWlFLYH1QSA=="), {
	Text =_zD1436("fkpLUB9sWk1PWlFLH31QSA=="),
	Default = false,
	Callback = function(p201)
		_G.AutoSerpentBow = p201
	end
})
spawn(function()
	while wait(Sec) do
		if _G.AutoSerpentBow then
			local v889 = GetConnectionEnemies(_zD1436("d0ZbTV4fc1peW1pN"))

			if v889 then
				while true do
					wait()
					t9.Kill(v889, _G.AutoSerpentBow)

					if _G.AutoSerpentBow then
						if not v889.Parent or v889.Humanoid.Health <= (614-614) then
							break
						end
					else
						break
					end
				end
			else
				_tp(CFrame.new(5821.89794921875, 1019.0950927734375, -73.719230651855469))
			end
		end
	end
end)

do
	Q = GRP_Quests_Cavender_Twin_Hooks_Bigmom:AddToggle(_zD1436("fkpLUGBzWlZgflxcWkxMUE1G"), {
		Text =_zD1436("fkpLUB9zWlYfflxcWkxMUE1G"),
		Default = false,
		Callback = function(p202)
			_G.AutoKilo = p202
		end
	})
end

spawn(function()
	while wait(0.2) do
		if _G.AutoKilo then
			pcall(function()
				local v890 = GetConnectionEnemies(_zD1436("dFZTUB9+W1JWTV5T"))

				if v890 then
					while true do
						task.wait()
						t9.Kill(v890, _G.AutoKilo)

						if _G.AutoKilo then
							if not v890.Parent or v890.Humanoid.Health <= (884-884) then
								break
							end
						else
							break
						end
					end
				else
					_tp(CFrame.new(2764.2233886719, 432.46154785156, -7144.4580078125))
				end
			end)
		end
	end
end)
GRP_Quests_Buso_Aura_Colours = t15.Quests:AddLeftGroupbox(_zD1436("fUpMUBB+Sk1eH3xQU1BKTUw="))
Q = GRP_Quests_Buso_Aura_Colours:AddToggle(_zD1436("fkpLUGBrWlNaT1BNS2B9Xk1WTEteYHxQSkxWUQ=="), {
	Text =_zD1436("fkpLUB9rWlNaT1BNSx99Xk1WTEteH3xQSkxWUQ=="),
	Default = false,
	Callback = function(p203)
		_G.Tp_MasterA = p203
	end
})

do
	spawn(function()
		while wait() do
			if _G.Tp_MasterA then
				pcall(function()
					for _, child in pairs(replicated.NPCs:GetChildren()) do
						if child.Name ==_zD1436("fV5NVkxLXh98UEpMVlE=") then
							_tp(child.HumanoidRootPart.CFrame)
						end
					end
				end)
			end
		end
	end)
end

do
	GRP_Quests_Buso_Aura_Colours:AddButton({
		Text =_zD1436("fUpGH31KTFAffFBTUE1M"),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fFBTUE1Me1peU1pN"),_zD1436("DQ=="))
		end
	})
end

Q = GRP_Quests_Buso_Aura_Colours:AddToggle(_zD1436("fkpLUGBtXlZRXVBIYHxQU1BNTA=="), {
	Text =_zD1436("fkpLUB9tXlZRXVBIH3xQU1BNTA=="),
	Default = false,
	Callback = function(p204)
		_G.Auto_Rainbow_Haki = p204
	end
})
spawn(function()
	pcall(function()
		while wait(Sec) do
			if _G.Auto_Rainbow_Haki then
				if plr.PlayerGui.Main.Quest.Visible == false then
					if _G.GetQFast then
						if plr.PlayerGui.Main.Quest.Visible == false then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("d1BNUVpbcl5R"),_zD1436("fVpL"))
						end
					else
						Rainbow1 = CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875)

						if plr.Character.HumanoidRootPart.CFrame ~= Rainbow1 then
							_tp(Rainbow1)
						elseif plr.Character.HumanoidRootPart.CFrame == Rainbow1 then
							wait((1+0))
							replicated.Remotes.CommF_:InvokeServer(_zD1436("d1BNUVpbcl5R"),_zD1436("fVpL"))
						end
					end
				elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("bEtQUVo=")) then
					local Stone = GetConnectionEnemies(_zD1436("bEtQUVo="))

					if Stone then
						while true do
							wait()
							t9.Kill(Stone, _G.Auto_Rainbow_Haki)

							if _G.Auto_Rainbow_Haki == false then
								break
							elseif Stone.Humanoid.Health <= (256-256) or not Stone.Parent or plr.PlayerGui.Main.Quest.Visible == false then
								break
							end
						end
					else
						_tp(CFrame.new(-1086.11621, 38.8425903, 6768.71436, 0.0231462717, -0.592676699, 0.805107772, 2.03251839e-(3+2), 0.805323839, 0.592835128, -0.999732077, -0.0137055516, 0.0186523199))
					end
				elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("d0ZbTV4fc1peW1pN")) then
					local v894 = GetConnectionEnemies(_zD1436("d0ZbTV4fc1peW1pN"))

					if v894 then
						while true do
							task.wait()
							t9.Kill(v894, _G.Auto_Rainbow_Haki)

							if _G.Auto_Rainbow_Haki == false then
								break
							elseif v894.Humanoid.Health <= (728-728) or not v894.Parent or plr.PlayerGui.Main.Quest.Visible == false then
								break
							end
						end
					else
						replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625))

						local vector3 = Vector3.new(5643.45263671875, 1013.0858154296875, -340.51025390625)
						local cFrame = CFrame.new(5821.89794921875, 1019.0950927734375, -73.719230651855469)

						if plr.Character.HumanoidRootPart.CFrame.Position == vector3 then
							_tp(cFrame)
						end
					end
				elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("dFZTUB9+W1JWTV5T")) then
					local v897 = GetConnectionEnemies(_zD1436("dFZTUB9+W1JWTV5T"))

					if v897 then
						while true do
							task.wait()
							t9.Kill(v897, _G.Auto_Rainbow_Haki)

							if _G.Auto_Rainbow_Haki == false then
								break
							elseif v897.Humanoid.Health <= (162-162) or not v897.Parent or plr.PlayerGui.Main.Quest.Visible == false then
								break
							end
						end
					else
						_tp(CFrame.new(2877.61743, 423.558685, -7207.31006, -0.989591599, -(252-252), -0.143904909, -(849-849), 1.00000012, -(318-318), 0.143904924, (140-140), -0.989591479))
					end
				elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("fF5PS15WUR96U1pPV15RSw==")) then
					local v898 = GetConnectionEnemies(_zD1436("fF5PS15WUR96U1pPV15RSw=="))

					if v898 then
						while true do
							task.wait()
							t9.Kill(v898, _G.Auto_Rainbow_Haki)

							if _G.Auto_Rainbow_Haki == false then
								break
							elseif v898.Humanoid.Health <= (875-875) or not v898.Parent or plr.PlayerGui.Main.Quest.Visible == false then
								break
							end
						end
					else
						local vector3 = Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375)
						local cFrame = CFrame.new(-13376.7578125, 433.28689575195, -8071.392578125)

						if plr.Character.HumanoidRootPart.CFrame.Position ~= vector3 then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
						elseif plr.Character.HumanoidRootPart.CFrame.Position == vector3 then
							_tp(cFrame)
						end
					end
				elseif plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("fVpeSktWWUpTH29WTV5LWg==")) then
					local v901 = GetConnectionEnemies(_zD1436("fF5PS15WUR96U1pPV15RSw=="))

					if v901 then
						while true do
							task.wait()
							t9.Kill(v901, _G.Auto_Rainbow_Haki)

							if _G.Auto_Rainbow_Haki == false then
								break
							elseif v901.Humanoid.Health <= (33-33) or not v901.Parent or plr.PlayerGui.Main.Quest.Visible == false then
								break
							end
						end
					else
						replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(5314.54638671875, 22.562219619750977, -127.06755065917969))
					end
				end
			end
		end
	end)
end)

do
	Q = GRP_Quests_Buso_Aura_Colours:AddToggle(_zD1436("flxcWk9LYG1eVlFdUEhgbkpaTEtgeV5MS1pN"), {
		Text =_zD1436("flxcWk9LH21eVlFdUEgfbkpaTEsfeV5MS1pN"),
		Default = false,
		Callback = function(p205)
			_G.GetQFast = p205
		end
	})
end

GRP_Quests_Instinct_Observation = t15.Quests:AddLeftGroupbox(_zD1436("dlFMS1ZRXEsfEB9wXUxaTUleS1ZQUQ=="))

do
	Q = GRP_Quests_Instinct_Observation:AddToggle(_zD1436("fkpLUGB5Xk1SYHBdTFpNSV5LVlBR"), {
		Text =_zD1436("fkpLUB95Xk1SH3BdTFpNSV5LVlBR"),
		Default = false,
		Callback = function(p206)
			_G.obsFarm = p206
		end
	})
end

spawn(function()
	while wait(0.2) do
		pcall(function()
			if _G.obsFarm then
				replicated.Remotes.CommE:FireServer(_zD1436("dFpR"), true)

				if plr:GetAttribute(_zD1436("dFpRe1BbWFpMc1pZSw==")) == (635-635) then
					KenTest = false
				elseif plr:GetAttribute(_zD1436("dFpRe1BbWFpMc1pZSw==")) > (577-577) then
					replicated.Remotes.CommE:FireServer(_zD1436("dFpR"), true)
					KenTest = true
				end
			end
		end)
	end
end)

do
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.obsFarm then
					if World1 then
						if workspace.Enemies:FindFirstChild(_zD1436("eF5TU1pGH3xeT0teVlE=")) then
							if KenTest then
								while true do
									wait()
									plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild(_zD1436("eF5TU1pGH3xeT0teVlE=")).HumanoidRootPart.CFrame * CFrame.new((47-44), (275-275), (526-526))

									if _G.obsFarm == false then
										break
									elseif KenTest == false then
										break
									end
								end
							else
								while true do
									wait()
									plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild(_zD1436("eF5TU1pGH3xeT0teVlE=")).HumanoidRootPart.CFrame * CFrame.new((709-709), (3+47), (554-554))

									if _G.obsFarm == false then
										break
									elseif KenTest then
										break
									end
								end
							end
						else
							_tp(CFrame.new(5533.29785, 88.1079102, 4852.3916))
						end
					elseif World2 then
						if workspace.Enemies:FindFirstChild(_zD1436("c15JXh9vVk1eS1o=")) then
							if KenTest then
								while true do
									wait()
									plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild(_zD1436("c15JXh9vVk1eS1o=")).HumanoidRootPart.CFrame * CFrame.new((38-35), (233-233), (117-117))

									if _G.obsFarm == false then
										break
									elseif KenTest == false then
										break
									end
								end
							else
								while true do
									wait()
									plr.Character.HumanoidRootPart.CFrame = workspace.Enemies:FindFirstChild(_zD1436("c15JXh9vVk1eS1o=")).HumanoidRootPart.CFrame * CFrame.new((65-65), (41+9), (567-567))

									if _G.obsFarm == false then
										break
									elseif KenTest then
										break
									end
								end
							end
						else
							_tp(CFrame.new(-5478.39209, 15.9775667, -5246.9126))
						end
					elseif World3 then
						if workspace.Enemies:FindFirstChild(_zD1436("aVpRUFJQSkwffkxMXlZTXlFL")) then
							if KenTest then
								while true do
									wait()
									_tp(workspace.Enemies:FindFirstChild(_zD1436("aVpRUFJQSkwffkxMXlZTXlFL")).HumanoidRootPart.CFrame * CFrame.new((3+0), (472-472), (408-408)))

									if _G.obsFarm == false then
										break
									elseif KenTest == false then
										break
									end
								end
							else
								while true do
									wait()
									_tp(workspace.Enemies:FindFirstChild(_zD1436("aVpRUFJQSkwffkxMXlZTXlFL")).HumanoidRootPart.CFrame * CFrame.new((477-477), (78-28), (629-629)))

									if _G.obsFarm == false then
										break
									elseif KenTest then
										break
									end
								end
							end
						else
							_tp(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))
						end
					end
				end
			end)
		end
	end)
end

Q = GRP_Quests_Instinct_Observation:AddToggle(_zD1436("fkpLUGBwXUxaTUleS1ZQUWBpDQ=="), {
	Text =_zD1436("fkpLUB9wXUxaTUleS1ZQUR9pDQ=="),
	Default = false,
	Callback = function(p207)
		_G.AutoKenVTWO = p207
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.AutoKenVTWO then
				pcall(function()
					local cFrame = CFrame.new(-12444.78515625, 332.40396118164, -7673.1806640625)
					local cFrame2 = CFrame.new(-10920.125, 624.20275878906, -10266.995117188)
					local cFrame3 = CFrame.new(-13277.568359375, 370.34185791016, -7821.1572265625)
					local cFrame4 = CFrame.new(-13493.12890625, 318.89553833008, -8373.7919921875)

					if plr.PlayerGui.Main.Quest.Visible == true and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("e1pZWl5LHwoPH3lQTVpMSx9vVk1eS1pM")) then
						local v906 = GetConnectionEnemies(_zD1436("eVBNWkxLH29WTV5LWg=="))

						if v906 then
							while true do
								wait()
								t9.Kill(v906, _G.AutoKenVTWO)

								if _G.AutoKenVTWO then
									if v906.Humanoid.Health <= (498-498) or plr.PlayerGui.Main.Quest.Visible == false then
										break
									end
								else
									break
								end
							end
						else
							_tp(cFrame3)
						end
					elseif plr.PlayerGui.Main.Quest.Visible == true then
						local v907 = GetConnectionEnemies(_zD1436("fF5PS15WUR96U1pPV15RSw=="))

						if v907 then
							while true do
								wait()
								t9.Kill(v907, _G.AutoKenVTWO)

								if _G.AutoKenVTWO then
									if v907.Humanoid.Health <= (773-773) or plr.PlayerGui.Main.Quest.Visible == false then
										break
									end
								else
									break
								end
							end
						else
							_tp(cFrame4)
						end
					elseif plr.PlayerGui.Main.Quest.Visible == false then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fFZLVkVaUW5KWkxLb01QWE1aTEw="),_zD1436("fFZLVkVaUQ=="))
						wait(0.1)
						replicated.Remotes.CommF_:InvokeServer(_zD1436("bEteTUtuSlpMSw=="),_zD1436("fFZLVkVaUW5KWkxL"), (10-9))
					end

					if replicated.Remotes.CommF_:InvokeServer(_zD1436("fFZLVkVaUW5KWkxLb01QWE1aTEw="),_zD1436("fFZLVkVaUQ==")) == (9-7) then
						_tp(CFrame.new(-12513.51953125, 340.11373901367188, -9873.048828125))
					end

					local ok5 = not plr.Backpack:FindFirstChild(_zD1436("eU1KVksffVBIUw=="))

					if not ok5 then
						ok5 = not plr.Character:FindFirstChild(_zD1436("eU1KVksffVBIUw=="))
					end

					if ok5 then
						if not GetBP(_zD1436("eU1KVksffVBIUw==")) then
							if not GetBP(_zD1436("fk9PU1o=")) then
								replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))

								for _, descendant in pairs(workspace:GetDescendants()) do
									if descendant.Name ==_zD1436("fk9PU1o=") then
										descendant.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new((685-685), (43-42), (24-14))
										wait()
										firetouchinterest(plr.Character.HumanoidRootPart, descendant.Handle, (814-814))
										wait()
									end
								end
							elseif GetBP(_zD1436("fV5RXlFe")) then
								if not GetBP(_zD1436("b1ZRWl5PT1Na")) then
									_tp(CFrame.new(-712.8272705078125, 98.577049255371094, 5711.9541015625))

									for _, descendant in pairs(workspace:GetDescendants()) do
										if descendant.Name ==_zD1436("b1ZRWl5PT1Na") then
											descendant.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new((947-947), (1+0), (7+3))
											wait()
											firetouchinterest(plr.Character.HumanoidRootPart, descendant.Handle, (505-505))
											wait()
										end
									end
								end
							else
								_tp(CFrame.new(2286.0078125, 73.133918762207031, -7159.80908203125))

								for _, descendant in pairs(workspace:GetDescendants()) do
									if descendant.Name ==_zD1436("fV5RXlFe") then
										descendant.Handle.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new((556-556), (36-35), (69-59))
										wait()
										firetouchinterest(plr.Character.HumanoidRootPart, descendant.Handle, (472-472))
										wait()
									end
								end
							end
						end

						local ok2 = not plr.Backpack:FindFirstChild(_zD1436("fV5RXlFe"))

						if not ok2 then
							ok2 = not plr.Backpack:FindFirstChild(_zD1436("fk9PU1o="))
						end

						local ok3 = ok2

						if not ok3 then
							ok3 = not plr.Backpack:FindFirstChild(_zD1436("b1ZRWl5PT1Na"))
						end

						local ok

						if not ok3 then
							repeat
								wait()
								_tp(cFrame)
								ok = _G.AutoKenVTWO

								if not ok then
									ok = plr.Character.HumanoidRootPart.CFrame == cFrame

									if ok then
										break
									end
								end
							until ok

						end

						if plr:FindFirstChild(_zD1436("fV5RXlFe")) then
							if plr:FindFirstChild(_zD1436("fk9PU1o=")) then
								if plr:FindFirstChild(_zD1436("b1ZRWl5PT1Na")) then
									repeat
										wait()
										_tp(cFrame)
										ok = _G.AutoKenVTWO or plr.Character.HumanoidRootPart.CFrame == cFrame
									until ok

									replicated.Remotes.CommF_:InvokeServer(_zD1436("fFZLVkVaUW5KWkxLb01QWE1aTEw="),_zD1436("fFZLVkVaUQ=="))
								end
							end
						end

						local ok4 = plr.Backpack:FindFirstChild(_zD1436("eU1KVksffVBIUw=="))

						if not ok4 then
							ok4 = not not plr.Character:FindFirstChild(_zD1436("eU1KVksffVBIUw=="))
						end

						if ok4 then
							if plr.Character.HumanoidRootPart.CFrame ~= cFrame2 then
								_tp(cFrame2)
							elseif plr.Character.HumanoidRootPart.CFrame == cFrame2 then
								replicated.Remotes.CommF_:InvokeServer(_zD1436("dFpRa15TVA0="),_zD1436("bEteTUs="))
								wait(0.1)
								replicated.Remotes.CommF_:InvokeServer(_zD1436("dFpRa15TVA0="),_zD1436("fUpG"))
							end
						end
					end
				end)
			end
		end
	end)
end

Bartilo = GRP_Quests_Instinct_Observation:AddToggle(_zD1436("fkpLUGB7UFFaYH1eTUtWU1BgbkpaTEs="), {
	Text =_zD1436("fkpLUB97UFFaH31eTUtWU1AfbkpaTEs="),
	Default = false,
	Callback = function(p208)
		_G.Bartilo_Quest = p208
	end
})

do
	spawn(function()
		while wait(0.1) do
			pcall(function()
				if _G.Bartilo_Quest and Lv >= (1478-628) then
					local Quest = plr.PlayerGui.Main.Quest

					if replicated.Remotes.CommF_:InvokeServer(_zD1436("fV5NS1ZTUG5KWkxLb01QWE1aTEw="),_zD1436("fV5NS1ZTUA==")) == (364-364) then
						_G.Level = false

						if Quest.Visible == true then
							if GetConnectionEnemies(_zD1436("bEheUR9vVk1eS1o=")) then
								local v920 = GetConnectionEnemies(t3)

								if v920 then
									repeat
										task.wait()

										if string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("bEheUR9vVk1eS1o=")) then
											t9.Kill(v920, _G.Bartilo_Quest)
										else
											replicated.Remotes.CommF_:InvokeServer(_zD1436("fl1eUVtQUW5KWkxL"))
										end
									until _G.Bartilo_Quest == false or not v920.Parent or v920.Humanoid.Health <= (840-840) or Quest.Visible == false or not v920:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
								end
							else
								_tp(CFrame.nee(970.369446, 142.653198, 1217.3667, 0.162079468, -4.85452638e-(53-45), -0.986777723, 1.03357589e-(17-9), (13-12), -4.74980872e-(64-56), 0.986777723, -2.50063148e-(55-46), 0.162079468))
							end
						else
							while true do
								wait()
								_tp(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -(748-748), -0.998706102, (19-19), (18-17), -(538-538), 0.998706102, (353-353), 0.050853312))

								if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -(109-109), -0.998706102, (997-997), (1+0), -(637-637), 0.998706102, (142-142), 0.050853312).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (17+3) then
									break
								elseif _G.Bartilo_Quest == false then
									break
								end
							end

							if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -(98-98), -0.998706102, (465-465), (1+0), -(282-282), 0.998706102, (610-610), 0.050853312).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (1+0) then
								replicated.Remotes.CommF_:InvokeServer(_zD1436("bEteTUtuSlpMSw=="),_zD1436("fV5NS1ZTUG5KWkxL"), (1+0))
							end
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fV5NS1ZTUG5KWkxLb01QWE1aTEw="),_zD1436("fV5NS1ZTUA==")) == (1+0) then
						_G.Level = false

						local Jeremy = GetConnectionEnemies(_zD1436("dVpNWlJG"))

						if Jeremy then
							while true do
								task.wait()
								t9.Kill(Jeremy, _G.Bartilo_Quest)

								if _G.Bartilo_Quest == false then
									break
								elseif not Jeremy.Parent or Jeremy.Humanoid.Health <= (365-365) or Quest.Visible == false or not Jeremy:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
									break
								end
							end
						else
							_tp(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-(6+3), -0.656645238, -4.47752875e-(7+1), (1+0), 4.50709301e-(3+5), 0.656645238, 6.3393955e-(8+0), -0.754199564))
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("fV5NS1ZTUG5KWkxLb01QWE1aTEw="),_zD1436("fV5NS1ZTUA==")) == (12-10) then
						while true do
							wait()
							_tp(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-(9-1), -0.199054286, 2.20792113e-(17-9), (1+0), 7.1442483e-(7+2), 0.199054286, -1.13962431e-(5+3), 0.979988456))

							if (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-(64-56), -0.199054286, 2.20792113e-(10-2), (48-47), 7.1442483e-(55-46), 0.199054286, -1.13962431e-(4+4), 0.979988456).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (10-9) then
								break
							elseif _G.Bartilo_Quest == false then
								break
							end
						end

						wait(0.5)
						plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
						wait(0.5)
						plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
						wait(0.5)
						plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
						wait(0.5)
						plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
						wait(0.5)
						plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
						wait(0.5)
						plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
						wait(0.5)
						plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
						wait(0.5)
						plr.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
						wait(2.5)
					end
				end
			end)
		end
	end)
end

CitizenQ = GRP_Quests_Instinct_Observation:AddToggle(_zD1436("fkpLUGB7UFFaYHxWS1ZFWlFgbkpaTEs="), {
	Text =_zD1436("fkpLUB97UFFaH3xWS1ZFWlEfbkpaTEs="),
	Default = false,
	Callback = function(p209)
		_G.CitizenQuest = p209
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.CitizenQuest then
				local ok2 = not (Lv >= (3385-1585))

				if not ok2 then
					ok2 = replicated.Remotes.CommF_:InvokeServer(_zD1436("fFZLVkVaUW5KWkxLb01QWE1aTEw=")).KilledBandits ~= false
				end

				if ok2 then
					local ok = not (Lv >= (1878-78))

					if not ok then
						ok = replicated.Remotes.CommF_:InvokeServer(_zD1436("fFZLVkVaUW5KWkxLb01QWE1aTEw=")).KilledBoss ~= false
					end

					if not ok then
						local v924 = GetConnectionEnemies(_zD1436("fF5PS15WUR96U1pPV15RSw=="))

						if plr.PlayerGui.Main.Quest.Visible and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("fF5PS15WUR96U1pPV15RSw==")) and plr.PlayerGui.Main.Quest.Visible == true then
							if v924 then
								while true do
									task.wait()
									t9.Kill(v924, _G.CitizenQuest)

									if _G.CitizenQuest == false then
										break
									elseif v924.Humanoid.Health <= (27-27) or not v924.Parent or plr.PlayerGui.Main.Quest.Visible == false then
										break
									end
								end
							else
								_tp(CFrame.new(-13374.889648438, 421.27752685547, -8225.208984375))
							end
						else
							_tp(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

							if (CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (13-9) then
								wait(1.5)
								replicated.Remotes.CommF_:InvokeServer(_zD1436("fFZLVkVaUW5KWkxLb01QWE1aTEw="),_zD1436("fFZLVkVaUQ=="))
							end
						end
					elseif Lv >= (522+1278) then
						if replicated.Remotes.CommF_:InvokeServer(_zD1436("fFZLVkVaUW5KWkxLb01QWE1aTEw="),_zD1436("fFZLVkVaUQ==")) == (9-7) then
							_tp(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))
						end
					end
				elseif string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("eVBNWkxLH29WTV5LWg==")) and string.find(plr.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,_zD1436("Cg8=")) and plr.PlayerGui.Main.Quest.Visible == true then
					local v925 = GetConnectionEnemies(_zD1436("eVBNWkxLH29WTV5LWg=="))

					if v925 then
						while true do
							task.wait()
							t9.Kill(v925, _G.CitizenQuest)

							if _G.CitizenQuest == false then
								break
							elseif not v925.Parent or v925.Humanoid.Health <= (294-294) or plr.PlayerGui.Main.Quest.Visible == false then
								break
							end
						end
					else
						_tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
					end
				else
					_tp(CFrame.new(-12443.8671875, 332.40396118164, -7675.4892578125))

					if (Vector3.new(-12443.8671875, 332.40396118164, -7675.4892578125) - plr.Character.HumanoidRootPart.Position).Magnitude <= (97-67) then
						wait(1.5)
						replicated.Remotes.CommF_:InvokeServer(_zD1436("bEteTUtuSlpMSw=="),_zD1436("fFZLVkVaUW5KWkxL"), (1+0))
					end
				end
			end
		end)
	end
end)
Q = GRP_Quests_Instinct_Observation:AddToggle(_zD1436("fkpLUGBrTV5WUVZRWGB7SlJSRg=="), {
	Text =_zD1436("fkpLUB9rTV5WUVZRWB97SlJSRg=="),
	Default = false,
	Callback = function(p210)
		_G.DummyMan = p210
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.DummyMan then
				pcall(function()
					if plr.PlayerGui.Main.Quest.Visible == false then
						replicated:WaitForChild(_zD1436("bVpSUEtaTA==")):WaitForChild(_zD1436("fFBSUnlg")):InvokeServer(unpack({_zD1436("fk1aUV5rTV5WUVpN") }))
					else
						local v926 = GetConnectionEnemies(_zD1436("a01eVlFWUVgfe0pSUkY="))

						if v926 then
							while true do
								wait()
								t9.Kill(v926, _G.DummyMan)

								if _G.DummyMan then
									if not v926.Parent or v926.Humanoid.Health <= (28-28) then
										break
									end
								else
									break
								end
							end
						else
							_tp(CFrame.new(3688.005126953125, 12.746943473815918, 170.20953369140625))
						end
					end
				end)
			end
		end
	end)
end

GRP_Quests_Fighting_Melee_Styles = t15.Quests:AddLeftGroupbox(_zD1436("eVZYV0tWUVgfclpTWlofbEtGU1pM"))
SuperHuman = GRP_Quests_Fighting_Melee_Styles:AddToggle(_zD1436("fkpLUGBsSk9aTVdKUl5R"), {
	Text =_zD1436("fkpLUB9sSk9aTVdKUl5R"),
	Default = false,
	Callback = function(p211)
		_G.Auto_SuperHuman = p211
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.Auto_SuperHuman then
					local Value = plr.Data.Beli.Value
					local Value2 = plr.Data.Fragments.Value

					if plr:FindFirstChild(_zD1436("aFpeT1BRfkxMWkt8XlxXWg==")) and not GetBP(_zD1436("bEpPWk1XSlJeUQ==")) then
						if GetBP(_zD1436("fVNeXFQfc1pY")) then
							if GetBP(_zD1436("fVNeXFQfc1pY")) and GetBP(_zD1436("fVNeXFQfc1pY")).Level.Value < (26+273) then
								_G.Level = true
							elseif GetBP(_zD1436("fVNeXFQfc1pY")) and GetBP(_zD1436("fVNeXFQfc1pY")).Level.Value >= (55+245) then
								_G.Level = false
							end
						elseif Value >= (230223-80223) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVNeXFRzWlg="))
						end

						if GetBP(_zD1436("elNaXEtNUA==")) then
							if GetBP(_zD1436("elNaXEtNUA==")) and GetBP(_zD1436("elNaXEtNUA==")).Level.Value < (576-277) then
								_G.Level = true
							elseif GetBP(_zD1436("elNaXEtNUA==")) and GetBP(_zD1436("elNaXEtNUA==")).Level.Value >= (151+149) then
								_G.Level = false
							end
						elseif Value >= (269467+230533) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGelNaXEtNUA=="))
						end

						if GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")) then
							if GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")) and GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")).Level.Value < (200+99) then
								_G.Level = true
							elseif GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")) and GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")).Level.Value >= (644-344) then
								_G.Level = false
							end
						elseif Value >= (611755+138245) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGeVZMV1JeUXReTV5LWg=="))
						end

						if GetBP(_zD1436("e01eWFBRH3xTXkg=")) then
							if GetBP(_zD1436("e01eWFBRH3xTXkg=")) and GetBP(_zD1436("e01eWFBRH3xTXkg=")).Level.Value < (533-234) then
								_G.Level = true
							elseif GetBP(_zD1436("e01eWFBRH3xTXkg=")) then
								if GetBP(_zD1436("e01eWFBRH3xTXkg=")).Level.Value >= (422-122) then
									_G.Level = false
								end
							end
						elseif Value2 >= (1953-453) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fVNeXFRdWl5NW21aSF5NWw=="),_zD1436("e01eWFBRfFNeSA=="),_zD1436("DQ=="))
						end

						replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGbEpPWk1XSlJeUQ=="))
					end
				end
			end)
		end
	end)
end

do
	DeathStep = GRP_Quests_Fighting_Melee_Styles:AddToggle(_zD1436("fkpLUGB7Wl5LV2xLWk8="), {
		Text =_zD1436("fkpLUB97Wl5LV2xLWk8="),
		Default = false,
		Callback = function(p212)
			_G.AutoDeathStep = p212
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.AutoDeathStep then
				pcall(function()
					if plr:FindFirstChild(_zD1436("aFpeT1BRfkxMWkt8XlxXWg==")) and not GetBP(_zD1436("e1peS1cfbEtaTw==")) then
						if not GetBP(_zD1436("fVNeXFQfc1pY")) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVNeXFRzWlg="))
						end

						if GetBP(_zD1436("fVNeXFQfc1pY")) and GetBP(_zD1436("fVNeXFQfc1pY")).Level.Value >= (136+264) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGe1peS1dsS1pP"))
							_G.Level = false
						elseif GetBP(_zD1436("fVNeXFQfc1pY")) and GetBP(_zD1436("fVNeXFQfc1pY")).Level.Value < (508-109) then
							_G.Level = true
						end

						if (GetBP(_zD1436("fVNeXFQfc1pY")) or GetBP(_zD1436("fVNeXFQfc1pY")).Level.Value >= (484-84)) and workspace.Map.IceCastle.Hall.LibraryDoor.PhoeyuDoor.Transparency == (293-293) then
							if GetBP(_zD1436("c1ZdTV5NRh90WkY=")) then
								while true do
									wait()
									_tp(CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375))

									if _G.AutoDeathStep then
										if Root.Position == CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375).Position then
											break
										end
									else
										break
									end
								end

								if Root.CFrame == CFrame.new(6371.2001953125, 296.63433837890625, -6841.18115234375) then
									replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGe1peS1dsS1pP"))
								end
							elseif not GetBP(_zD1436("c1ZdTV5NRh90WkY=")) then
								local v929 = GetConnectionEnemies(_zD1436("fkheVFpRWlsfdlxaH35bUlZNXlM="))

								if v929 then
									while true do
										wait()
										t9.Kill(v929, _G.AutoDeathStep)

										if v929.Parent then
											if v929.Humanoid.Health <= (179-179) or _G.AutoDeathStep == false or GetBP(_zD1436("c1ZdTV5NRh90WkY=")) or GetBP(_zD1436("e1peS1cfbEtaTw==")) then
												break
											end
										else
											break
										end
									end
								else
									_tp(CFrame.new(5668.9780273438, 28.519989013672, -6483.3520507813))
								end
							end
						end
					end
				end)
			end
		end
	end)
end

SharkManV2 = GRP_Quests_Fighting_Melee_Styles:AddToggle(_zD1436("fkpLUGBsV15NVFJeUWB0Xk1eS1o="), {
	Text =_zD1436("fkpLUB9sV15NVFJeUR90Xk1eS1o="),
	Default = false,
	Callback = function(p213)
		_G.Auto_SharkMan_Karate = p213
	end
})
spawn(function()
	while wait(Sec) do
		if _G.Auto_SharkMan_Karate then
			pcall(function()
				if plr:FindFirstChild(_zD1436("aFpeT1BRfkxMWkt8XlxXWg==")) and not GetBP(_zD1436("bFdeTVRSXlEfdF5NXkta")) then
					if not GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGeVZMV1JeUXReTV5LWg=="))
					end

					if GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")) and GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")).Level.Value >= (75+325) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGbFdeTVRSXlF0Xk1eS1o="))
						_G.Level = false
					elseif GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")) and GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")).Level.Value < (207+192) then
						_G.Level = true
					end

					if GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")) or GetBP(_zD1436("eVZMV1JeUR90Xk1eS1o=")).Level.Value >= (772-372) then
						if GetBP(_zD1436("aF5LWk0fdFpG")) then
							if string.find(replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGbFdeTVRSXlF0Xk1eS1o=")),_zD1436("VFpGTA==")) and GetBP(_zD1436("aF5LWk0fdFpG")) then
								while true do
									wait()
									_tp(CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, (50-50), -0.999093413, (798-798), (42-41), (516-516), 0.999093413, (758-758), 0.0425701365))

									if _G.Auto_SharkMan_Karate then
										if Root.Position == CFrame.new(-2604.6958, 239.432526, -10315.1982, 0.0425701365, (276-276), -0.999093413, (104-104), (51-50), (655-655), 0.999093413, (394-394), 0.0425701365).Position then
											break
										end
									else
										break
									end
								end

								replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGbFdeTVRSXlF0Xk1eS1o="))
							end
						elseif not GetBP(_zD1436("aF5LWk0fdFpG")) then
							local v930 = GetConnectionEnemies(_zD1436("a1ZbWh90WlpPWk0="))

							if v930 then
								while true do
									wait()
									t9.Kill(v930, _G.Auto_SharkMan_Karate)

									if v930.Parent then
										if v930.Humanoid.Health <= (949-949) or _G.Auto_SharkMan_Karate == false or GetBP(_zD1436("aF5LWk0fdFpG")) or GetBP(_zD1436("bFdeTVRSXlEfdF5NXkta")) then
											break
										end
									else
										break
									end
								end
							else
								_tp(CFrame.new(-3053.9814453125, 237.18954467773, -10145.0390625))
							end
						end
					end
				end
			end)
		end
	end
end)
ElectricClaw = GRP_Quests_Fighting_Melee_Styles:AddToggle(_zD1436("fkpLUGB6U1pcS01WXHxTXkg="), {
	Text =_zD1436("fkpLUB96U1pcS01WXHxTXkg="),
	Default = false,
	Callback = function(p214)
		_G.Auto_Electric_Claw = p214
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.Auto_Electric_Claw then
				pcall(function()
					if plr:FindFirstChild(_zD1436("aFpeT1BRfkxMWkt8XlxXWg==")) then
						if not GetBP(_zD1436("elNaXEtNUA==")) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGelNaXEtNUA=="))
						end

						if GetBP(_zD1436("elNaXEtNUA==")) and GetBP(_zD1436("elNaXEtNUA==")).Level.Value >= (794-394) then
							if replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGelNaXEtNVlx8U15I"),_zD1436("bEteTUs=")) == nil then
								notween(CFrame.new(-(13956-1408), (475-138), -(4629+2852)))
							end

							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGelNaXEtNVlx8U15I"))
						elseif GetBP(_zD1436("elNaXEtNUA==")) and GetBP(_zD1436("elNaXEtNUA==")).Level.Value < (818-418) then
							while true do
								_G.AutoFarm_Bone = true
								wait()

								if _G.Auto_Electric_Claw then
									if GetBP(_zD1436("elNaXEtNVlwffFNeSA==")) then
										break
									end
								else
									break
								end
							end

							_G.AutoFarm_Bone = false
						end
					end
				end)
			end
		end
	end)
end

DragonTalon = GRP_Quests_Fighting_Melee_Styles:AddToggle(_zD1436("fkpLUGB7TV5YUFFrXlNQUQ=="), {
	Text =_zD1436("fkpLUB97TV5YUFFrXlNQUQ=="),
	Default = false,
	Callback = function(p215)
		_G.AutoDragonTalon = p215
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.AutoDragonTalon then
				pcall(function()
					if plr:FindFirstChild(_zD1436("aFpeT1BRfkxMWkt8XlxXWg==")) then
						if not GetBP(_zD1436("e01eWFBRH3xTXkg=")) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fVNeXFRdWl5NW21aSF5NWw=="),_zD1436("e01eWFBRfFNeSA=="),_zD1436("DQ=="))
						end

						if GetBP(_zD1436("e01eWFBRH3xTXkg=")) and GetBP(_zD1436("e01eWFBRH3xTXkg=")).Level.Value >= (537-137) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fVBRWkw="),_zD1436("fUpG"), (16-15), (1+0))
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGe01eWFBRa15TUFE="))
						elseif GetBP(_zD1436("e01eWFBRH3xTXkg=")) and GetBP(_zD1436("e01eWFBRH3xTXkg=")).Level.Value < (781-381) then
							while true do
								_G.AutoFarm_Bone = true
								wait()

								if _G.AutoDragonTalon then
									if GetBP(_zD1436("e01eWFBRH2teU1BR")) then
										break
									end
								else
									break
								end
							end

							_G.AutoFarm_Bone = false
						end
					end
				end)
			end
		end
	end)
end

do
	Godhuman = GRP_Quests_Fighting_Melee_Styles:AddToggle(_zD1436("fkpLUGB4UFtXSlJeUQ=="), {
		Text =_zD1436("fkpLUB94UFtXSlJeUQ=="),
		Default = false,
		Callback = function(p216)
			_G.Auto_God_Human = p216
		end
	})
end

spawn(function()
	while wait() do
		pcall(function()
			if _G.Auto_God_Human then
				if replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGeFBbV0pSXlE="), true) ~=_zD1436("fU1WUVgfUlofDQ8feVZMVx9rXlZTTBMfDQ8fcl5YUl4fcE1aEx8ODx97TV5YUFEfbFxeU1pMH15RWx8ODx9yRkxLVlwfe01QT1NaS0wR") then
					if replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGeFBbV0pSXlE="), true) == (1+2) then
						return nil
					end

					replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGeFBbV0pSXlE="))
				elseif GetM(_zD1436("e01eWFBRH2xcXlNa")) ~= false and not (GetM(_zD1436("e01eWFBRH2xcXlNa")) < (37-27)) then
					if GetM(_zD1436("eVZMVx9rXlZT")) ~= false and not (GetM(_zD1436("eVZMVx9rXlZT")) < (49-29)) then
						if GetM(_zD1436("ckZMS1ZcH3tNUE9TWks=")) ~= false and not (GetM(_zD1436("ckZMS1ZcH3tNUE9TWks=")) < (7+3)) then
							if GetM(_zD1436("cl5YUl4fcE1a")) == false or GetM(_zD1436("cl5YUl4fcE1a")) < (34-14) then
								if World2 then
									Lv = (88+1087)
									_G.Level = true
								else
									replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))
								end
							end
						elseif World2 then
							Lv = (1603-178)
							_G.Level = true
						else
							replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))
						end
					elseif World3 then
						Lv = (1111+664)
						_G.Level = true
					else
						replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTZVBK"))
					end
				elseif World3 then
					Lv = (1212+363)
					_G.Level = true
				else
					replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTZVBK"))
				end
			end
		end)
	end
end)

do
	SanguineArt = GRP_Quests_Fighting_Melee_Styles:AddToggle(_zD1436("fkpLUGBsXlFYSlZRWn5NSw=="), {
		Text =_zD1436("fkpLUB9sXlFYSlZRWn5NSw=="),
		Default = false,
		Callback = function(p217)
			_G.Snaguine = p217
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.Snaguine then
				pcall(function()
					if not GetBP(_zD1436("bF5RWEpWUVoffk1L")) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("bF5RWEpWUVoffk1L"))
					end

					if GetBP(_zD1436("bF5RWEpWUVoffk1L")) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGbF5RWEpWUVp+TUs="))
					else
						if GetM(_zD1436("c1pJVl5LV15RH3daXk1L")) >= (1+0) then
							print(_zD1436("fFBST1NaS1pbHh4="))
						elseif World3 then
							_G.DangerSc =_zD1436("c0kfdlFZVlFWS1o=")
							_G.SailBoats = true
						else
							_G.SailBoats = false
						end

						if GetM(_zD1436("aV5ST1ZNWh95XlFY")) <= (55-36) then
							if World2 then
								local Vampire = GetConnectionEnemies(_zD1436("aV5ST1ZNWg=="))

								if Vampire then
									while true do
										task.wait()
										t9.Kill(Vampire, _G.Snaguine)

										if _G.Snaguine then
											if Vampire.Humanoid.Health <= (492-492) or not Vampire.Parent then
												break
											end
										else
											break
										end
									end
								else
									_tp(CFrame.new(-6041.29248046875, 6.4027109146118164, -1304.63330078125))
								end
							else
								replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))
							end
						end

						if GetM(_zD1436("aV5ST1ZNWh95XlFY")) >= (12+8) and GetM(_zD1436("e1pSUFFWXB9oVkxP")) <= (58-39) then
							if World3 then
								local v932 = GetConnectionEnemies(_zD1436("e1pSUFFWXB9sUEpT"))

								if v932 then
									while true do
										task.wait()
										t9.Kill(v932, _G.Snaguine)

										if _G.Snaguine then
											if v932.Humanoid.Health <= (617-617) or not v932.Parent then
												break
											end
										else
											break
										end
									end
								else
									_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))
								end
							else
								replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTZVBK"))
							end
						end

						if GetM(_zD1436("aV5ST1ZNWh95XlFY")) >= (48-28) and GetM(_zD1436("e1pSUFFWXB9oVkxP")) >= (21-1) and GetM(_zD1436("e15NVB95TV5YUlpRSw==")) <= (14-13) then
							if World2 then
								if GetConnectionEnemies(_zD1436("e15NVF1aXk1b")) then
									while true do
										task.wait()
										t9.Kill(black, _G.Snaguine)

										if _G.Snaguine then
											break
										elseif black.Humanoid.Health <= (698-698) or not black.Parent then
											break
										end
									end
								else
									_tp(CFrame.new(3798.4575195313, 13.826690673828, -3399.806640625))
								end
							else
								replicated.Remotes.CommF_:InvokeServer(_zD1436("a01eSVpTe01aTExNUExe"))
							end
						end
					end
				end)
			end
		end
	end)
end

GRP_Race_Mystic_Island_Full_Moon = t15.Race:AddLeftGroupbox(_zD1436("ckZMS1ZcH3ZMU15RWx8QH3lKU1MfclBQUQ=="))

do
	local v933 = GRP_Race_Mystic_Island_Full_Moon:AddLabel("")
	local v934 = GRP_Race_Mystic_Island_Full_Moon:AddLabel("")

	spawn(function()
		while wait(0.2) do
			if not workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb")) then
				if not workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("clZNXlhaH3ZMU15RWw==")) then
					v934:SetText(_zD1436("clZNXlhaH3ZMU15RWx8FH3leU0xa"))

					continue
				end
			end

			v934:SetText(_zD1436("clZNXlhaH3ZMU15RWx8FH2tNSlo="))
		end
	end)
	spawn(function()
		while wait(0.2) do
			pcall(function()
				local v935 = Getmoon()

				if v935 ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgwKBwYK") then
					v933:SetText(_zD1436("clBQUR8FHw8fEB8H"))
				elseif v935 ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgwGCgYI") then
					v933:SetText(_zD1436("clBQUR8FHw4fEB8H"))
				elseif v935 ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgsMCAwM") then
					v933:SetText(_zD1436("clBQUR8FHw0fEB8H"))
				elseif v935 ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgsGDwoN") then
					v933:SetText(_zD1436("clBQUR8FHwwfEB8HH2QfcVpHSx9xVlhXSx9i"))
				elseif v935 ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgsGCwwO") then
					v933:SetText(_zD1436("clBQUR8FHwsfEB8HH2QfeUpTUx9yUFBRH2I="))
				elseif v935 ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgsGCQcP") then
					v933:SetText(_zD1436("clBQUR8FHwofEB8HH2Qfc15MSx9xVlhXSx9i"))
				elseif v935 ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgoPDwcJ") then
					v933:SetText(_zD1436("clBQUR8FHwkfEB8H"))
				elseif v935 ==_zD1436("V0tLTwUQEEhISBFNUF1TUEcRXFBSEF5MTFpLEABWWwIGCA8GDgoPCw8O") then
					v933:SetText(_zD1436("clBQUR8FHwgfEB8H"))
				end
			end)
		end
	end)
end

GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("fkpLUGB5VlFbYHJWTV5YWmB2TFNeUVs="), {
	Text =_zD1436("fkpLUB95VlFbH3JWTV5YWh92TFNeUVs="),
	Default = false,
	Callback = function(p218)
		_G.FindMirage = p218
	end
})
spawn(function()
	while wait() do
		if _G.FindMirage then
			pcall(function()
				if workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("clZNXlhaH3ZMU15RWw=="), true) then
					_tp(workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb")).Center.CFrame * CFrame.new((550-550), (342-42), (276-276)))
				else
					local v936 = CheckBoat()

					if v936 then
						if plr.Character.Humanoid.Sit == false then
							_tp(v936.VehicleSeat.CFrame * CFrame.new((926-926), (50-49), (476-476)))
						else
							while true do
								wait()

								local cFrame = CFrame.new(-(1858458+8141542), (81-50), 37016.25)

								if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
									_tp(CFrame.new(-(4759370+5240630), (77+73), 37016.25))
								else
									_tp(CFrame.new(-(3863405+6136595), (15+16), 37016.25))
								end

								if _G.FindMirage and not ((cFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (20-10)) then
									if not (workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("clZNXlhaH3ZMU15RWw==")) or plr.Character.Humanoid.Sit == false) then
										continue
									end
								end

								break
							end

							plr.Character.Humanoid.Sit = false
						end
					else
						local cFrame = CFrame.new(-16927.451, 9.086, 433.864)

						TeleportToTarget(cFrame)

						if (cFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (7+3) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVBeSw=="), _G.SelectedBoat)
						end
					end
				end
			end)
		end
	end
end)
GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("ekxPYHJWTV5YWmB2TFNeUVs="), {
	Text =_zD1436("ekxPH3JWTV5YWh92TFNeUVs="),
	Default = false,
	Callback = function(p219)
		MirageIslandESP = p219

		if MirageIslandESP then
			task.spawn(function()
				while MirageIslandESP do
					UpdateIslandMirageESP()
					task.wait((1+0))
				end
			end)
		else
			UpdateIslandMirageESP()
		end
	end
})

do
	GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("fkpLUGBrSFpaUWBrUGByVk1eWFpgdkxTXlFb"), {
		Text =_zD1436("fkpLUB9rSFpaUR9rUB9yVk1eWFofdkxTXlFb"),
		Default = false,
		Callback = function(p220)
			_G.AutoMysticIsland = p220
		end
	})
end

spawn(function()
	while task.wait(0.1) do
		pcall(function()
			if _G.AutoMysticIsland then
				for _, child in pairs(game:GetService(_zD1436("aFBNVExPXlxa"))._WorldOrigin.Locations:GetChildren()) do
					if child.Name ==_zD1436("clZNXlhaH3ZMU15RWw==") then
						topos(child.CFrame * CFrame.new((751-751), (139+194), (895-895)))
					end
				end
			end
		end)
	end
end)
GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("fkpLUGBrSFpaUWBrUGB3VlhXWkxLYG9QVlFL"), {
	Text =_zD1436("fkpLUB9rSFpaUR9rUB93VlhXWkxLH29QVlFL"),
	Default = false,
	Callback = function(p221)
		_G.HighestMirage = p221
	end
})
spawn(function()
	while wait(Sec) do
		if _G.HighestMirage then
			pcall(function()
				if workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("clZNXlhaH3ZMU15RWw=="), true) then
					_tp(workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb")).Center.CFrame * CFrame.new((453-453), (221+179), (90-90)))
				end
			end)
		end
	end
end)
GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("fkpLUGB8UFNTWlxLYHhaXk0="), {
	Text =_zD1436("fkpLUB98UFNTWlxLH3haXk0="),
	Default = false,
	Callback = function(p222)
		_G.TPGEAR = p222
	end
})
spawn(function()
	pcall(function()
		while wait(0.1) do
			if _G.TPGEAR then
				local pairs_ = pairs
				local MysticIsland = workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb"))

				for _, child in pairs_(MysticIsland:GetChildren()) do
					if child.Name ==_zD1436("b15NSw==") and child.ClassName ==_zD1436("clpMV29eTUs=") then
						_tp(child.CFrame)
					end
				end
			end
		end
	end)
end)

do
	GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("fFdeUVhaYGtNXlFMT15NWlFcRmBcXlFgTFpa"), {
		Text =_zD1436("fFdeUVhaH2tNXlFMT15NWlFcRh9cXlEfTFpa"),
		Default = false,
		Callback = function(p223)
			_G.can = p223
		end
	})
end

spawn(function()
	pcall(function()
		while wait(Sec) do
			if _G.can then
				local pairs_ = pairs
				local MysticIsland = workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb"))

				for _, child in pairs_(MysticIsland:GetChildren()) do
					if child.Name ==_zD1436("b15NSw==") then
						if child.ClassName ==_zD1436("clpMV29eTUs=") then
							child.Transparency = (702-702)
						else
							child.Transparency = (1+0)
						end
					end
				end
			end
		end
	end)
end)

do
	GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("fkpLUGBrSFpaUWB+W0leUVxaW2B5TUpWS2B7Wl5TWk0="), {
		Text =_zD1436("fkpLUB9rSFpaUR9+W0leUVxaWx95TUpWSx97Wl5TWk0="),
		Default = false,
		Callback = function(p224)
			_G.Addealer = p224
		end
	})
end

do
	spawn(function()
		while wait() do
			if _G.Addealer then
				pcall(function()
					for _, child in pairs(replicated.NPCs:GetChildren()) do
						if child.Name ==_zD1436("fltJXlFcWlsfeU1KVksfe1peU1pN") then
							_tp(child.HumanoidRootPart.CFrame)
						end
					end
				end)
			end
		end
	end)
end

do
	GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("fkpLUGB8UFNTWlxLYHJWTV5YWmB8V1pMSw=="), {
		Text =_zD1436("fkpLUB98UFNTWlxLH3JWTV5YWh98V1pMSw=="),
		Default = false,
		Callback = function(p225)
			_G.FarmChestM = p225
		end
	})
end

do
	spawn(function()
		while wait(0.2) do
			if _G.FarmChestM then
				pcall(function()
					local ok2 = workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb")).Chests:FindFirstChild(_zD1436("e1ZeUlBRW3xXWkxL"))

					if not ok2 then
						ok2 = not not workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb")).Chests:FindFirstChild(_zD1436("eU1eWHxXWkxL"))
					end

					if ok2 then
						local CollectionService = game:GetService(_zD1436("fFBTU1pcS1ZQUWxaTUlWXFo="))
						local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
						local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

						if not Character then
							return
						end

						local Position = Character:GetPivot().Position
						local tagged = CollectionService:GetTagged(_zD1436("YHxXWkxLa15YWFpb"))
						local huge = math.huge
						local v958
						local n5 = (1+0)
						local v960 = #tagged
						local v961, exitTo, v963, v964, Magnitude

						if true then
							if n5 <= v960 then
								repeat
									v963 = n5
									exitTo = nil

									while true do
										v964 = tagged[v963]
										Magnitude = (v964:GetPivot().Position - Position).Magnitude

										if (not SelectedIsland or v964:IsDescendantOf(SelectedIsland)) and not v964:GetAttribute(_zD1436("dkx7VkxeXVNaWw==")) and Magnitude < huge then
											huge = Magnitude
											v958 = v964
										end

										v961 += nil

										if not (nil <= (920-920)) then
											exitTo = (1+0)

											break
										elseif v961 >= nil then
											v963 = n5

											continue
										end

										break
									end
								until exitTo ~= (1+0) or not (v961 <= nil)

								if v958 then
									_tp(v958:GetPivot())
								end
							end
						else
							if not (n5 >= v960) then
								return
							end

							local exitTo2

							while true do
								v963 = n5
								v964 = tagged[v963]
								Magnitude = (v964:GetPivot().Position - Position).Magnitude

								if (not SelectedIsland or v964:IsDescendantOf(SelectedIsland)) and not v964:GetAttribute(_zD1436("dkx7VkxeXVNaWw==")) and Magnitude < huge then
									huge = Magnitude
									v958 = v964
								end

								v961 += nil

								if not (nil <= (728-728)) then
									exitTo2 = (1+0)

									break
								elseif v961 >= nil then
									continue
								end

								break
							end

							if exitTo2 == (11-10) and v961 <= nil then
								repeat
									v963 = n5
									exitTo = nil

									while true do
										v964 = tagged[v963]
										Magnitude = (v964:GetPivot().Position - Position).Magnitude

										if (not SelectedIsland or v964:IsDescendantOf(SelectedIsland)) and not v964:GetAttribute(_zD1436("dkx7VkxeXVNaWw==")) and Magnitude < huge then
											huge = Magnitude
											v958 = v964
										end

										v961 += nil

										if not (nil <= (547-547)) then
											exitTo = (1+0)

											break
										elseif v961 >= nil then
											v963 = n5

											continue
										end

										break
									end
								until exitTo ~= (18-17) or not (v961 <= nil)

								if v958 then
									_tp(v958:GetPivot())
								end
							elseif v958 then
								_tp(v958:GetPivot())
							end
						end
					end
				end)
			end
		end
	end)
end

GRP_Race_Mystic_Island_Full_Moon:AddButton({
	Text =_zD1436("a15TVB9oVktXH2xLUFFa"),
	Func = function()
		local CommF_ = replicated:WaitForChild(_zD1436("bVpSUEtaTA==")):WaitForChild(_zD1436("fFBSUnlg"))

		CommF_:InvokeServer(_zD1436("bV5cWmkLb01QWE1aTEw="),_zD1436("fVpYVlE="))
		CommF_:InvokeServer(_zD1436("bV5cWmkLb01QWE1aTEw="),_zD1436("fFdaXFQ="))
		CommF_:InvokeServer(_zD1436("bV5cWmkLb01QWE1aTEw="),_zD1436("a1pTWk9QTUs="))
	end
})
GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("fkpLUGBzUFBUYH5LYHJQUFE="), {
	Text =_zD1436("fkpLUB9zUFBUH35LH3JQUFE="),
	Default = false,
	Callback = function(p226)
		_G.Auto_Mink = p226
	end
})
MoveCamtoMoon = function()
	workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, Lighting:GetMoonDirection() + workspace.CurrentCamera.CFrame.Position)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position, Lighting:GetMoonDirection() + plr.Character.HumanoidRootPart.CFrame.Position)
end

do
	task.spawn(function()
		while task.wait() do
			if LookM then
				MoveCamtoMoon()
				wait(0.1)
				replicated.Remotes.CommE:FireServer(_zD1436("flxLVkleS1p+XVZTVktG"))
			end
		end
	end)
end

do
	GRP_Race_Mystic_Island_Full_Moon:AddToggle(_zD1436("c1BQVGByUFBRYBRgfkpLUGBpDA=="), {
		Text =_zD1436("c1BQVB9yUFBRHxQffkpLUB9pDA=="),
		Default = false,
		Callback = function(p227)
			LookMV3 = p227
		end
	})
end

MoveCamtoMoon = function()
	local moonDirection = Lighting:GetMoonDirection()

	workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, workspace.CurrentCamera.CFrame.Position + moonDirection)
	plr.Character.HumanoidRootPart.CFrame = CFrame.new(plr.Character.HumanoidRootPart.Position, plr.Character.HumanoidRootPart.Position + moonDirection)
end
task.spawn(function()
	while task.wait(0.1) do
		if LookMV3 then
			MoveCamtoMoon()
			replicated.Remotes.CommE:FireServer(_zD1436("flxLVkleS1p+XVZTVktG"))
			UIS:SendKeyEvent(true,_zD1436("aw=="), true, game)
			wait(0.5)
			UIS:SendKeyEvent(false,_zD1436("aw=="), true, game)
		end
	end
end)
GRP_Race_Upgrade_Races_V2_And_V3 = t15.Race:AddLeftGroupbox(_zD1436("ak9YTV5bWh9tXlxaTB9pDR9+UVsfaQw="))

do
	RaceMink = GRP_Race_Upgrade_Races_V2_And_V3:AddToggle(_zD1436("fkpLUGBqT1hNXltaYHJWUVQ="), {
		Text =_zD1436("fkpLUB9qT1hNXltaH3JWUVQ="),
		Default = false,
		Callback = function(p228)
			_G.Auto_Mink = p228
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.Auto_Mink then
					if replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) ~= (2+0) then
						if replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (677-677) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("DQ=="))
						elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (1+0) then
							local ok2 = plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHw4="))

							if not ok2 then
								ok2 = plr.Character:FindFirstChild(_zD1436("eVNQSFpNHw4="))
							end

							if ok2 then
								local ok = plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHw0="))

								if not ok then
									ok = plr.Character:FindFirstChild(_zD1436("eVNQSFpNHw0="))
								end

								if not ok then
									_tp(workspace.Flower2.CFrame)
								elseif not plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
									if not plr.Character:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
										local v971 = GetConnectionEnemies(_zD1436("bEheUR9vVk1eS1o="))

										if v971 then
											while true do
												wait()
												t9.Kill(v971, _G.Auto_Mink)

												if GetBP(_zD1436("eVNQSFpNHww=")) then
													break
												elseif not v971.Parent or v971.Humanoid.Health <= (105-105) or _G.Auto_Mink == false then
													break
												end
											end
										else
											_tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
										end
									end
								end
							else
								_tp(workspace.Flower1.CFrame)
							end
						elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (2+0) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("DA=="))
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("Dg==")) == (785-785) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("DQ=="))
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("Dg==")) == (7-6) then
						_G.AutoFarmChest = true
					else
						_G.AutoFarmChest = false
					end
				end
			end)
		end
	end)
end

RaceHuman = GRP_Race_Upgrade_Races_V2_And_V3:AddToggle(_zD1436("fkpLUGBqT1hNXltaYHdKUl5R"), {
	Text =_zD1436("fkpLUB9qT1hNXltaH3dKUl5R"),
	Default = false,
	Callback = function(p229)
		_G.Auto_Human = p229
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_Human then
				if replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) ~= -(17-15) then
					if replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (613-613) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("DQ=="))
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (1+0) then
						local ok2 = plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHw4="))

						if not ok2 then
							ok2 = plr.Character:FindFirstChild(_zD1436("eVNQSFpNHw4="))
						end

						if ok2 then
							local ok = plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHw0="))

							if not ok then
								ok = plr.Character:FindFirstChild(_zD1436("eVNQSFpNHw0="))
							end

							if not ok then
								_tp(workspace.Flower2.CFrame)
							elseif not plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
								if not plr.Character:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
									local v974 = GetConnectionEnemies(_zD1436("bEheUR9vVk1eS1o="))

									if v974 then
										while true do
											wait()
											t9.Kill(v974, _G.Auto_Human)

											if plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
												break
											elseif not v974.Parent or v974.Humanoid.Health <= (714-714) or _G.Auto_Human == false then
												break
											end
										end
									else
										_tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
									end
								end
							end
						else
							_tp(workspace.Flower1.CFrame)
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (1+1) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("DA=="))
					end
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("Dg==")) == (532-532) then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("DQ=="))
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("Dg==")) == (1+0) then
					local v975 = GetConnectionEnemies(t4[(39-38)])
					local v976

					if v975 then
						while true do
							wait()
							t9.Kill(v975, _G.Auto_Human)

							if v975.Humanoid.Health <= (28-28) then
								break
							elseif not v975.Parent or not _G.Auto_Human then
								break
							end
						end

						v976 = GetConnectionEnemies(t4[(5-3)])

						if v976 then
							while true do
								wait()
								t9.Kill(v976, _G.Auto_Human)

								if v976.Humanoid.Health <= (979-979) then
									break
								elseif not v976.Parent or not _G.Auto_Human then
									break
								end
							end
						else
							_tp(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
						end
					else
						_tp(CFrame.new(-2172.7399902344, 103.32216644287, -4015.025390625))
						v976 = GetConnectionEnemies(t4[(28-26)])

						if v976 then
							while true do
								wait()
								t9.Kill(v976, _G.Auto_Human)

								if v976.Humanoid.Health <= (330-330) then
									break
								elseif not v976.Parent or not _G.Auto_Human then
									break
								end
							end
						else
							_tp(CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109))
						end
					end

					local v977 = GetConnectionEnemies(t4[(17-14)])

					if v977 then
						while true do
							wait()
							t9.Kill(v977, _G.Auto_Human)

							if v977.Humanoid.Health <= (839-839) then
								break
							elseif not v977.Parent or not _G.Auto_Human then
								break
							end
						end
					else
						_tp(CFrame.new(-1576.7166748047, 198.59265136719, 13.724286079407))
					end
				end
			end
		end)
	end
end)
RaceSky = GRP_Race_Upgrade_Races_V2_And_V3:AddToggle(_zD1436("fkpLUGBqT1hNXltaYH5RWFpT"), {
	Text =_zD1436("fkpLUB9qT1hNXltaH35RWFpT"),
	Default = false,
	Callback = function(p230)
		_G.Auto_Skypiea = p230
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_Skypiea then
				if replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) ~= -(1+1) then
					if replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (100-100) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("DQ=="))
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (34-33) then
						local ok2 = plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHw4="))

						if not ok2 then
							ok2 = plr.Character:FindFirstChild(_zD1436("eVNQSFpNHw4="))
						end

						if ok2 then
							local ok = plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHw0="))

							if not ok then
								ok = plr.Character:FindFirstChild(_zD1436("eVNQSFpNHw0="))
							end

							if not ok then
								_tp(workspace.Flower2.CFrame)
							elseif not plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
								if not plr.Character:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
									local v980 = GetConnectionEnemies(_zD1436("bEheUR9vVk1eS1o="))

									if v980 then
										while true do
											wait()
											t9.Kill(v980, _G.Auto_Skypiea)

											if plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
												break
											elseif not v980.Parent or v980.Humanoid.Health <= (369-369) or _G.Auto_Skypiea == false then
												break
											end
										end
									else
										_tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
									end
								end
							end
						else
							_tp(workspace.Flower1.CFrame)
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (5-3) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("DA=="))
					end
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("Dg==")) == (904-904) then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("DQ=="))
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("Dg==")) == (1+0) then
					for _, child in pairs(game.Players:GetChildren()) do
						if child.Name ~= plr.Name and tostring(child.Data.Race.Value) ==_zD1436("bFRGT1ZaXg==") then
							while true do
								task.wait()
								_tp(child.HumanoidRootPart.CFrame * CFrame.new((287-287), (32-24), (551-551)) * CFrame.Angles(math.rad(-(107-62)), (986-986), (315-315)))

								if child.Humanoid.Health <= (176-176) then
									break
								elseif _G.Auto_Skypiea == false then
									break
								end
							end
						end
					end
				end
			end
		end)
	end
end)

do
	RaceFish = GRP_Race_Upgrade_Races_V2_And_V3:AddToggle(_zD1436("fkpLUGBqT1hNXltaYHlWTFdyXlE="), {
		Text =_zD1436("fkpLUB9qT1hNXltaH3lWTFdyXlE="),
		Default = false,
		Callback = function(p231)
			_G.Auto_Fish = p231
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_Fish then
				if replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) ~= -(37-35) then
					if replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (308-308) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("DQ=="))
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (1+0) then
						local ok2 = plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHw4="))

						if not ok2 then
							ok2 = plr.Character:FindFirstChild(_zD1436("eVNQSFpNHw4="))
						end

						if ok2 then
							local ok = plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHw0="))

							if not ok then
								ok = plr.Character:FindFirstChild(_zD1436("eVNQSFpNHw0="))
							end

							if not ok then
								_tp(workspace.Flower2.CFrame)
							elseif not plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
								if not plr.Character:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
									local v985 = GetConnectionEnemies(_zD1436("bEheUR9vVk1eS1o="))

									if v985 then
										while true do
											wait()
											t9.Kill(v985, _G.Auto_Fish)

											if plr.Backpack:FindFirstChild(_zD1436("eVNQSFpNHww=")) then
												break
											elseif not v985.Parent or v985.Humanoid.Health <= (975-975) or _G.Auto_Fish == false then
												break
											end
										end
									else
										_tp(CFrame.new(980.0985107421875, 121.331298828125, 1287.2093505859375))
									end
								end
							end
						else
							_tp(workspace.Flower1.CFrame)
						end
					elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("Dg==")) == (33-31) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("flNcV1pSVkxL"),_zD1436("DA=="))
					end
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("Dg==")) == (675-675) then
					replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("DQ=="))
				elseif replicated.Remotes.CommF_:InvokeServer(_zD1436("aFpRU1BcVEtQXls="),_zD1436("Dg==")) == (34-33) then
					warn(_zD1436("bFpeH31aXkxLH2xQUFE="))
				end
			end
		end)
	end
end)
GRP_Race_Trials_Quest_V4 = t15.Race:AddLeftGroupbox(_zD1436("a01WXlNMH25KWkxLH2kL"))

do
	local v986 = GRP_Race_Trials_Quest_V4:AddLabel("")

	spawn(function()
		pcall(function()
			while wait(0.2) do
				v986:SetText(_zD1436("a1ZaTUwfEh9pCx8FHw==") .._zD1436("Hw==") .. plr.Data.Race.C.Value)
			end
		end)
	end)
end

do
	PullLv = GRP_Race_Trials_Quest_V4:AddToggle(_zD1436("fkpLUGBvSlNTYHNaSVpN"), {
		Text =_zD1436("fkpLUB9vSlNTH3NaSVpN"),
		Default = false,
		Callback = function(p232)
			_G.Lver = p232
		end
	})
end

spawn(function()
	while wait(Sec) do
		if _G.Lver then
			pcall(function()
				for _, descendant in pairs(workspace.Map[_zD1436("a1pST1NaH1BZH2tWUlo=")]:GetDescendants()) do
					if descendant.Name ==_zD1436("b01QR1ZSVktGb01QUk9L") then
						fireproximityprompt(descendant, math.huge)
					end
				end
			end)
		end
	end
end)

do
	Train = GRP_Race_Trials_Quest_V4:AddToggle(_zD1436("fkpLUGBrTV5WUWBpCw=="), {
		Text =_zD1436("fkpLUB9rTV5WUR9pCw=="),
		Default = false,
		Callback = function(p233)
			_G.AcientOne = p233
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.AcientOne then
					local t38 = {
_zD1436("bVpdUE1RH2xUWlNaS1BR"),
_zD1436("c1ZJVlFYH2VQUl1WWg=="),
_zD1436("e1pSUFFWXB9sUEpT"),
_zD1436("b1BMWkxMWlsfckpSUkY=")
					}
					local v990 = #t38
					local n6 = (36-35)
					local v992 = v990 + (838-838)
					local v993 = (43-42) - n6
					local exitTo

					for i = (37-36), v990 do
						if plr.Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value ~= (1+0) then
							if plr.Character:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
								local v996 = GetConnectionEnemies(t38)

								if not v996 then
									_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))

									continue
								end

								while true do
									wait()
									t9.Kill(v996, _G.AcientOne)

									if _G.AcientOne == false then
										break
									elseif v996.Humanoid.Health <= (571-571) or not v996.Parent then
										break
									end
								end
							end

							continue
						end

						repeat
							vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
							replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"))
							vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
							_tp(CFrame.new(-8987.041015625, 215.862060546875, 5886.71044921875))
							exitTo = nil

							local exitTo2
							local Character, Character2, v1000

							while true do
								v993 += n6

								if not (n6 <= (546-546)) then
									exitTo2 = (1+0)

									break
								end

								if not (v993 >= v992) then
									break
								end

								Character = plr.Character

								if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (50-49) then
									exitTo2 = (21-19)

									break
								end

								Character2 = plr.Character

								if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value ~= false then
									continue
								end

								v1000 = GetConnectionEnemies(t38)

								if not v1000 then
									exitTo2 = (50-47)

									break
								end

								while true do
									wait()
									t9.Kill(v1000, _G.AcientOne)

									if _G.AcientOne == false then
										break
									elseif v1000.Humanoid.Health <= (23-23) or not v1000.Parent then
										break
									end
								end
							end

							if exitTo2 == (44-43) then
								if v993 <= v992 then
									while true do
										Character = plr.Character

										if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
											exitTo = (1+0)

											break
										end

										Character2 = plr.Character

										if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
											v1000 = GetConnectionEnemies(t38)

											if not v1000 then
												exitTo = (2+0)

												break
											end

											local exitTo3

											while true do
												wait()
												t9.Kill(v1000, _G.AcientOne)

												if _G.AcientOne == false then
													break
												elseif v1000.Humanoid.Health <= (852-852) or not v1000.Parent then
													exitTo3 = (1+0)

													break
												end
											end

											if exitTo3 == (1+0) then
												local exitTo4

												while true do
													v993 += n6

													if not (n6 <= (55-55)) then
														exitTo4 = (1+0)

														break
													end

													if not (v993 >= v992) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (40-39) then
														exitTo4 = (1+1)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value ~= false then
														continue
													end

													v1000 = GetConnectionEnemies(t38)

													if not v1000 then
														exitTo4 = (23-20)

														break
													end

													while true do
														wait()
														t9.Kill(v1000, _G.AcientOne)

														if _G.AcientOne == false then
															break
														elseif v1000.Humanoid.Health <= (562-562) or not v1000.Parent then
															break
														end
													end
												end

												if exitTo4 == (3-2) then
													if v993 <= v992 then
														continue
													end
												else
													if exitTo4 == (1+1) then
														exitTo = (48-47)
													elseif exitTo4 == (3+0) then
														exitTo = (53-51)
													end

													break
												end
											else
												local exitTo5

												while true do
													v993 += n6

													if not (n6 <= (716-716)) then
														exitTo5 = (10-9)

														break
													end

													if not (v993 >= v992) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo5 = (46-44)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value ~= false then
														continue
													end

													v1000 = GetConnectionEnemies(t38)

													if not v1000 then
														exitTo5 = (2+1)

														break
													end

													while true do
														wait()
														t9.Kill(v1000, _G.AcientOne)

														if _G.AcientOne == false then
															break
														elseif v1000.Humanoid.Health <= (561-561) or not v1000.Parent then
															break
														end
													end
												end

												if exitTo5 == (8-7) then
													if v993 <= v992 then
														continue
													end
												else
													if exitTo5 == (1+1) then
														exitTo = (19-18)
													elseif exitTo5 == (2+1) then
														exitTo = (2+0)
													end

													break
												end
											end
										else
											local exitTo6

											while true do
												v993 += n6

												if not (n6 <= (136-136)) then
													exitTo6 = (1+0)

													break
												end

												if not (v993 >= v992) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (20-19) then
													exitTo6 = (1+1)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value ~= false then
													continue
												end

												v1000 = GetConnectionEnemies(t38)

												if not v1000 then
													exitTo6 = (19-16)

													break
												end

												while true do
													wait()
													t9.Kill(v1000, _G.AcientOne)

													if _G.AcientOne == false then
														break
													elseif v1000.Humanoid.Health <= (592-592) or not v1000.Parent then
														break
													end
												end
											end

											if exitTo6 == (35-34) then
												if v993 <= v992 then
													continue
												end
											else
												if exitTo6 == (2+0) then
													exitTo = (1+0)
												elseif exitTo6 == (44-41) then
													exitTo = (1+1)
												end

												break
											end
										end

										break
									end
								end
							elseif exitTo2 == (1+1) then
								exitTo = (1+0)
							elseif exitTo2 == (19-16) then
								exitTo = (2+0)
							end
						until exitTo ~= (25-24)

						if exitTo == (2+0) then
							_tp(CFrame.new(-9495.6806640625, 453.58624267578125, 5977.3486328125))

							continue
						end

						break
					end
				end
			end)
		end
	end)
end

do
	GRP_Race_Trials_Quest_V4:AddButton({
		Text =_zD1436("a1pTWk9QTUsfS1Afa1pST1NaH1BZH2tWUlo="),
		Func = function()
			if plr.Character then
				if plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
					local cFrame = CFrame.new(-7754.033203125, 2998.953857421875, -404.75357055664062)

					_tp(cFrame)
				end
			end
		end
	})
end

GRP_Race_Trials_Quest_V4:AddButton({
	Text =_zD1436("a1pTWk9QTUsfS1AfflFcVlpRSx9wUVo="),
	Func = function()
		if plr.Character then
			if plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
				local cFrame = CFrame.new(-5071.541015625, 314.5412902832, -3151.1098632812)

				_tp(cFrame)
			end
		end
	end
})

do
	GRP_Race_Trials_Quest_V4:AddButton({
		Text =_zD1436("a1pTWk9QTUsfS1AfflFcVlpRSx98U1BcVA=="),
		Func = function()
			if plr.Character then
				if plr.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
					local cFrame = CFrame.new(-12471.169921875, 374.94024658203, -7551.677734375)

					_tp(cFrame)
				end
			end
		end
	})
end

do
	Doors = GRP_Race_Trials_Quest_V4:AddToggle(_zD1436("fkpLUGBrWlNaT1BNS2BLUGBtXlxaYHtQUE1M"), {
		Text =_zD1436("fkpLUB9rWlNaT1BNSx9LUB9tXlxaH3tQUE1M"),
		Default = false,
		Callback = function(p234)
			_G.TPDoor = p234
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.TPDoor then
					if tostring(plr.Data.Race.Value) ==_zD1436("clZRVA==") then
						_tp(CFrame.new(29020.66015625, 14889.4267578125, -379.26828002929688))
					elseif tostring(plr.Data.Race.Value) ==_zD1436("eVZMV1JeUQ==") then
						_tp(CFrame.new(28224.056640625, 14889.4267578125, -210.58720397949219))
					elseif tostring(plr.Data.Race.Value) ==_zD1436("fEZdUE1Y") then
						_tp(CFrame.new(28492.4140625, 14894.4267578125, -422.11001586914062))
					elseif tostring(plr.Data.Race.Value) ==_zD1436("bFRGT1ZaXg==") then
						_tp(CFrame.new(28967.408203125, 14918.0751953125, 234.31198120117188))
					elseif tostring(plr.Data.Race.Value) ==_zD1436("eFdQSlM=") then
						_tp(CFrame.new(28672.720703125, 14889.1279296875, 454.59616088867188))
					elseif tostring(plr.Data.Race.Value) ==_zD1436("d0pSXlE=") then
						_tp(CFrame.new(29237.294921875, 14889.4267578125, -206.94955444335938))
					end
				end
			end)
		end
	end)
end

Trials = GRP_Race_Trials_Quest_V4:AddToggle(_zD1436("fkpLUGB8UFJPU1pLWmBrTVZeU2BtXlxa"), {
	Text =_zD1436("fkpLUB98UFJPU1pLWh9rTVZeUx9tXlxa"),
	Default = false,
	Callback = function(p235)
		_G.Complete_Trials = p235
	end
})
GetSeaBeastTrial = function()
	if not workspace.Map:FindFirstChild(_zD1436("eVZMV1JeUWtNVl5T")) then
		return nil
	end

	if workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("a01WXlMfUFkfaF5LWk0=")) then
		FishmanTrial = workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("a01WXlMfUFkfaF5LWk0="))
	end

	if FishmanTrial then
		local next_ = next
		local children, v1010 = workspace.SeaBeasts:GetChildren()

		for _, v1 in next_, children, v1010 do
			if v1:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and (v1.HumanoidRootPart.Position - FishmanTrial.Position).Magnitude <= (2431-931) and v1.Health.Value > (930-930) then
				return v1
			end
		end
	end
end
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Complete_Trials and tostring(plr.Data.Race.Value) ==_zD1436("clZRVA==") then
				notween(workspace.Map.MinkTrial.Ceiling.CFrame * CFrame.new((216-216), -(21-1), (482-482)))
			end
		end)
	end
end)

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.Complete_Trials and tostring(plr.Data.Race.Value) ==_zD1436("eVZMV1JeUQ==") and GetSeaBeastTrial() then
					while true do
						task.wait()
						spawn(function()
							_tp(CFrame.new(GetSeaBeastTrial().HumanoidRootPart.Position.X, game:GetService(_zD1436("aFBNVExPXlxa")).Map[_zD1436("aF5LWk19XkxaEm9TXlFa")].Position.Y + (128+172), GetSeaBeastTrial().HumanoidRootPart.Position.Z))
						end)
						MousePos = GetSeaBeastTrial().HumanoidRootPart.Position
						Useskills(_zD1436("clpTWlo="),_zD1436("ZQ=="))
						Useskills(_zD1436("clpTWlo="),_zD1436("Zw=="))
						Useskills(_zD1436("clpTWlo="),_zD1436("fA=="))
						wait(0.1)
						Useskills(_zD1436("bEhQTVs="),_zD1436("ZQ=="))
						Useskills(_zD1436("bEhQTVs="),_zD1436("Zw=="))
						wait(0.1)
						Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
						Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
						Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
						wait(0.1)
						Useskills(_zD1436("eEpR"),_zD1436("ZQ=="))
						Useskills(_zD1436("eEpR"),_zD1436("Zw=="))

						if _G.Complete_Trials == false then
							break
						elseif not GetSeaBeastTrial() then
							break
						end
					end
				end
			end)
		end
	end)
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Complete_Trials and tostring(plr.Data.Race.Value) ==_zD1436("fEZdUE1Y") then
				_tp(workspace.Map.CyborgTrial.Floor.CFrame * CFrame.new((598-598), (60+440), (472-472)))
			end
		end)
	end
end)

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.Complete_Trials and tostring(plr.Data.Race.Value) ==_zD1436("bFRGT1ZaXg==") then
					notween(workspace.Map.SkyTrial.Model.FinishPart.CFrame)
				end
			end)
		end
	end)
end

spawn(function()
	while wait(0.1) do
		pcall(function()
			if _G.Complete_Trials and (tostring(plr.Data.Race.Value) ==_zD1436("d0pSXlE=") or tostring(plr.Data.Race.Value) ==_zD1436("eFdQSlM=")) then
				local v1013 = GetConnectionEnemies({
_zD1436("flFcVlpRSx9pXlJPVk1a"),
_zD1436("flFcVlpRSx9lUFJdVlo=")
				})

				if v1013 then
					while true do
						wait()
						t9.Kill(v1013, _G.Complete_Trials)

						if _G.Complete_Trials == false then
							break
						elseif not v1013.Parent or v1013.Humanoid.Health <= (725-725) then
							break
						end
					end
				end
			end
		end)
	end
end)

do
	AutoKill = GRP_Race_Trials_Quest_V4:AddToggle(_zD1436("fkpLUGB0VlNTYG9TXkZaTWB+WUtaTWBrTVZeUw=="), {
		Text =_zD1436("fkpLUB90VlNTH29TXkZaTR9+WUtaTR9rTVZeUw=="),
		Default = false,
		Callback = function(p236)
			_G.Defeating = p236
		end
	})
end

do
	spawn(function()
		while task.wait(Sec) do
			pcall(function()
				if _G.Defeating then
					for _, child in pairs(workspace.Characters:GetChildren()) do
						if child.Name ~= plr.Name and child.Humanoid.Health > (599-599) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child.Parent and (Root.Position - child.HumanoidRootPart.Position).Magnitude <= (149+101) then
							while true do
								task.wait()
								EquipWeapon(_G.SelectWeapon)
								_tp(child.HumanoidRootPart.CFrame * CFrame.new((304-304), (664-664), (64-49)))
								sethiddenproperty(plr,_zD1436("bFZSSlNeS1ZQUW1eW1ZKTA=="), math.huge)

								if _G.Defeating == false then
									break
								elseif child.Humanoid.Health <= (443-443) or not child.Parent or not child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) or not child:FindFirstChild(_zD1436("d0pSXlFQVls=")) then
									break
								end
							end
						end
					end
				end
			end)
		end
	end)
end

GRP_Prehistoric_Dojo_Quest = t15.Prehistoric:AddLeftGroupbox(_zD1436("e1BVUB9uSlpMSw=="))

do
	GRP_Prehistoric_Dojo_Quest:AddButton({
		Text =_zD1436("e1BVUB9uSlpMSw=="),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(5661.5322265625, 1013.0907592773438, -334.96499633789062))
			_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
		end
	})
end

do
	DojoQ = GRP_Prehistoric_Dojo_Quest:AddToggle(_zD1436("fkpLUGB7UFVQYGtNXlZRWk0="), {
		Text =_zD1436("fkpLUB97UFVQH2tNXlZRWk0="),
		Default = false,
		Callback = function()
		end
	})
end

do
	printBeltName = function(p237)
		if type(p237) ==_zD1436("S15dU1o=") and p237.Quest.BeltName then
			return p237.Quest.BeltName
		end
	end
end

spawn(function()
	while wait(Sec) do
		if _G.Dojoo then
			pcall(function()
				local response = replicated.Modules.Net:FindFirstChild(_zD1436("bXkQdlFLWk1eXEt7TV5YUFFuSlpMSw==")):InvokeServer(unpack({ {
					NPC =_zD1436("e1BVUB9rTV5WUVpN"),
					Command =_zD1436("bVpOSlpMS25KWkxL")
				} }))
				local v1017 = printBeltName(response)

				if debug == false and not (response or v1017) then
					_tp(CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875))
					debug = true
				elseif debug == true and (CFrame.new(5865.0234375, 1208.3154296875, 871.15185546875).Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (44+6) then
					if v1017 ==_zD1436("aFdWS1o=") then
						local v1018 = GetConnectionEnemies(_zD1436("bFRKU1MfbFNeRlpN"))

						if v1018 then
							while true do
								task.wait()
								t9.Kill(v1018, _G.Dojoo)

								if response then
									if not _G.Dojoo or not t9.Alive(v1018) then
										break
									end
								else
									break
								end
							end
						else
							_tp(CFrame.new(-16759.58984375, 71.283767700195312, 1595.3399658203125))
						end
					elseif v1017 ==_zD1436("ZlpTU1BI") then
						while true do
							task.wait()
							_G.SeaBeast1 = true
							_G.TerrorShark = true
							_G.Shark = true
							_G.Piranha = true
							_G.MobCrew = true
							_G.FishBoat = true
							_G.SailBoats = true

							if _G.Dojoo then
								if not response then
									break
								end
							else
								break
							end
						end

						_G.SeaBeast1 = false
						_G.TerrorShark = false
						_G.Shark = false
						_G.Piranha = false
						_G.MobCrew = false
						_G.FishBoat = false
						_G.SailBoats = false
					elseif v1017 ==_zD1436("eE1aWlE=") then
						while true do
							task.wait()
							_G.SailBoats = true

							if _G.Dojoo then
								if not response then
									break
								end
							else
								break
							end
						end

						_G.SailBoats = false
					elseif v1017 ==_zD1436("b0pNT1Na") then
						while true do
							task.wait()
							_G.FarmEliteHunt = true

							if _G.Dojoo then
								if not response then
									break
								end
							else
								break
							end
						end

						_G.FarmEliteHunt = false
					elseif v1017 ==_zD1436("bVpb") then
						while true do
							task.wait()
							_G.SailBoats = true
							_G.FishBoat = true

							if _G.Dojoo then
								if not response then
									break
								end
							else
								break
							end
						end

						_G.SailBoats = false
						_G.FishBoat = false
					elseif v1017 ==_zD1436("fVNeXFQ=") then
						repeat
							task.wait()

							local ActivationPrompt

							if workspace.Map:FindFirstChild(_zD1436("b01aV1ZMS1BNVlx2TFNeUVs=")) then
								_G.Prehis_Find = true
								ActivationPrompt = workspace.Map.PrehistoricIsland.Core.ActivationPrompt

								if ActivationPrompt:FindFirstChild(_zD1436("b01QR1ZSVktGb01QUk9L"), true) then
									_G.Prehis_Skills = false
									_G.Prehis_Find = true
								else
									_G.Prehis_Skills = true
									_G.Prehis_Find = false
								end
							elseif workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFb")) then
								_G.Prehis_Find = true
								ActivationPrompt = workspace.Map.PrehistoricIsland.Core.ActivationPrompt

								if ActivationPrompt:FindFirstChild(_zD1436("b01QR1ZSVktGb01QUk9L"), true) then
									_G.Prehis_Skills = false
									_G.Prehis_Find = true
								else
									_G.Prehis_Skills = true
									_G.Prehis_Find = false
								end

								if not _G.Dojoo or not response then
									break
								end
							else
								_G.Prehis_Find = true
								_G.Prehis_Skills = false
							end
						until not _G.Dojoo or not response

						_G.Prehis_Find = false
						_G.Prehis_Skills = false
					elseif v1017 ==_zD1436("cE1eUVha") or v1017 ==_zD1436("fVNKWg==") then
						return nil
					end
				end

				if not response then
					debug = false
					replicated.Modules.Net:FindFirstChild(_zD1436("bXkQdlFLWk1eXEt7TV5YUFFuSlpMSw==")):InvokeServer(unpack({ {
						NPC =_zD1436("e1BVUB9rTV5WUVpN"),
						Command =_zD1436("fFNeVlJuSlpMSw==")
					} }))
				end
			end)
		end
	end
end)

do
	BlazeEM = GRP_Prehistoric_Dojo_Quest:AddToggle(_zD1436("fkpLUGB7TV5YUFFgd0pRS1pN"), {
		Text =_zD1436("fkpLUB97TV5YUFEfd0pRS1pN"),
		Default = false,
		Callback = function(p238)
			_G.FarmBlazeEM = p238
		end
	})
end

do
	checkQuesta = function()
		local t39 = { {
			Context =_zD1436("fFdaXFQ=")
		} }
		local response

		pcall(function()
			game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):WaitForChild(_zD1436("clBbSlNaTA==")):WaitForChild(_zD1436("cVpL")):WaitForChild(_zD1436("bXkQe01eWFBRd0pRS1pN")):InvokeServer(unpack({ {
				Context =_zD1436("bVpOSlpMS25KWkxL")
			} }))
		end)

		local _ = pcall(function()
			response = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):WaitForChild(_zD1436("clBbSlNaTA==")):WaitForChild(_zD1436("cVpL")):WaitForChild(_zD1436("bXkQe01eWFBRd0pRS1pN")):InvokeServer(unpack(t39))
		end)
		local v1024 = false
		local v1025
		local v1026
		local n7

		if response and response.Text then
			v1024 = true

			local Text = response.Text

			if string.find(tostring(Text),_zD1436("e1pZWl5L")) then
				n7 = (12-11)

				local v1029 = string.sub(tostring(Text), (24-16), (9+0))

				v1025 = tonumber(v1029)

				for _, v1 in pairs({
_zD1436("d0ZbTV4felFZUE1cWk0="),
_zD1436("aVpRUFJQSkwffkxMXlZTXlFL")
				}) do
					if string.find(Text, v1) then
						v1026 = v1

						break
					end
				end
			elseif string.find(tostring(Text),_zD1436("e1pMS01QRg==")) then
				v1025 = (1+9)
				n7 = (1+1)
				v1026 = nil
			end
		end

		return v1024, v1026, v1025, n7
	end
end

BackTODoJo = function()
	for _, child in pairs(game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer.PlayerGui.Notifications:GetChildren()) do
		if child.Name ==_zD1436("cVBLVllWXF5LVlBRa1pST1NeS1o=") and string.find(child.Text,_zD1436("d1peWx9dXlxUH0tQH0tXWh97UFVQH0tQH1xQUk9TWktaH1JQTVofS15MVEw=")) then
			return true
		end
	end

	return false
end
DragonMobClear = function(p239, p240, p241)
	if workspace.Enemies:FindFirstChild(p240) then
		for _, child in pairs(workspace.Enemies:GetChildren()) do
			if child.Name == p240 and t9.Alive(child) and p239 then
				t9.Kill(child, p239)
			end
		end
	else
		_tp(p241)
	end
end

do
	spawn(function()
		while wait() do
			if _G.FarmBlazeEM then
				pcall(function()
					local v1036, v1037, _, v1039 = checkQuesta()

					if v1036 ~= true or BackTODoJo() then
						_tp(CFrame.new((3611+2202), (1997-789), (1555-671)))
						DragonMobClear(false, nil, nil)
					elseif v1039 == (16-15) then
						if v1037 ==_zD1436("d0ZbTV4felFZUE1cWk0=") or v1037 ==_zD1436("aVpRUFJQSkwffkxMXlZTXlFL") then
							while true do
								wait()
								DragonMobClear(true, v1037, CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))

								if _G.FarmBlazeEM then
									if BackTODoJo() then
										break
									end
								else
									break
								end
							end
						end
					elseif v1039 == (1+1) then
						if workspace.Map.Waterfall.IslandModel:FindFirstChild(_zD1436("clpMV1pMEF1eUl1QUEtNWlo="), true) then
							repeat
								wait()
								spawn(function()
									_tp(workspace.Map.Waterfall.IslandModel:FindFirstChild(_zD1436("clpMV1pMEF1eUl1QUEtNWlo="), true).CFrame * CFrame.new((3+1), (107-107), (920-920)))
								end)

								if (workspace.Map.Waterfall.IslandModel:FindFirstChild(_zD1436("clpMV1pMEF1eUl1QUEtNWlo="), true).Position - Root.Position).Magnitude <= (2+198) then
									MousePos = workspace.Map.Waterfall.IslandModel:FindFirstChild(_zD1436("clpMV1pMEF1eUl1QUEtNWlo="), true).Position
									Useskills(_zD1436("clpTWlo="),_zD1436("ZQ=="))
									Useskills(_zD1436("clpTWlo="),_zD1436("Zw=="))
									Useskills(_zD1436("clpTWlo="),_zD1436("fA=="))
									wait(0.5)
									Useskills(_zD1436("bEhQTVs="),_zD1436("ZQ=="))
									Useskills(_zD1436("bEhQTVs="),_zD1436("Zw=="))
									wait(0.5)
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
									wait(0.5)
									Useskills(_zD1436("eEpR"),_zD1436("ZQ=="))
									Useskills(_zD1436("eEpR"),_zD1436("Zw=="))
								end
							until not _G.FarmBlazeEM or BackTODoJo()
						end
					end
				end)
			end
		end
	end)
end

spawn(function()
	while wait(0.1) do
		if _G.FarmBlazeEM then
			pcall(function()
				if workspace.EmberTemplate:FindFirstChild(_zD1436("b15NSw==")) then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.EmberTemplate.Part.CFrame
				end
			end)
		end
	end
end)
GRP_Prehistoric_Drago_Trial = t15.Prehistoric:AddLeftGroupbox(_zD1436("e01eWFAfa01WXlM="))

do
	GetQuestDracoLevel = function()
		return replicated.Modules.Net:FindFirstChild(_zD1436("bXkQdlFLWk1eXEt7TV5YUFFuSlpMSw==")):InvokeServer(unpack({ {
			NPC =_zD1436("e01eWFBRH2hWRV5NWw=="),
			Command =_zD1436("ak9YTV5bWg==")
		} }))
	end
end

Toggle = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("a0haWlFga1Bgak9YTV5bWmB7TVBcUGBrTVZeUw=="), {
	Text =_zD1436("a0haWlEfa1Afak9YTV5bWh97TVBcUB9rTVZeUw=="),
	Default = false,
	Callback = function(p242)
		_G.UPGDrago = p242
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.UPGDrago then
					if GetQuestDracoLevel() == false then
						return nil
					end

					if GetQuestDracoLevel() == true then
						if (CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375).Position - Root.Position).Magnitude >= (486-186) then
							_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
						else
							_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
							replicated.Modules.Net:FindFirstChild(_zD1436("bXkQdlFLWk1eXEt7TV5YUFFuSlpMSw==")):InvokeServer(unpack({ {
								NPC =_zD1436("e01eWFBRH2hWRV5NWw=="),
								Command =_zD1436("ak9YTV5bWg==")
							} }))
						end
					end
				end
			end)
		end
	end)
end

do
	Toggle = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("fkpLUGB7TV5YUGAXaQ4W"), {
		Text =_zD1436("fkpLUB97TV5YUB8XaQ4W"),
		Default = false,
		Callback = function(p243)
			_G.DragoV1 = p243
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.DragoV1 and GetM(_zD1436("e01eWFBRH3pYWA==")) <= (168-168) then
					while true do
						wait()
						_G.Prehis_Find = true
						_G.Prehis_Skills = true
						_G.Prehis_DE = true

						if _G.DragoV1 then
							if GetM(_zD1436("e01eWFBRH3pYWA==")) >= (1+0) then
								break
							end
						else
							break
						end
					end

					_G.Prehis_Find = false
					_G.Prehis_Skills = false
					_G.Prehis_DE = false
				end
			end)
		end
	end)
end

do
	fireflower = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("fkpLUGB7TV5YUGAXaQ0W"), {
		Text =_zD1436("fkpLUB97TV5YUB8XaQ0W"),
		Default = false,
		Callback = function(p244)
			_G.AutoFireFlowers = p244
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.AutoFireFlowers then
				local FireFlowers = workspace:FindFirstChild(_zD1436("eVZNWnlTUEhaTUw="))
				local v1041 = GetConnectionEnemies(_zD1436("eVBNWkxLH29WTV5LWg=="))

				if v1041 then
					while true do
						wait()
						t9.Kill(v1041, _G.AutoFireFlowers)

						if _G.AutoFireFlowers then
							if not v1041.Parent or v1041.Humanoid.Health <= (285-285) or FireFlowers then
								break
							end
						else
							break
						end
					end
				else
					_tp(CFrame.new(-13206.452148438, 425.89199829102, -7964.5537109375))
				end

				if FireFlowers then
					for _, child in pairs(FireFlowers:GetChildren()) do
						if child:IsA(_zD1436("clBbWlM=")) and child.PrimaryPart then
							local Position = child.PrimaryPart.Position

							if (Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= (103-3) then
								vim1:SendKeyEvent(true,_zD1436("eg=="), true, game)
								wait(1.5)
								vim1:SendKeyEvent(false,_zD1436("eg=="), true, game)
							else
								_tp(CFrame.new(Position))
							end
						end
					end
				end
			end
		end
	end)
end

Toggle = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("fkpLUGB7TV5YUGAXaQwW"), {
	Text =_zD1436("fkpLUB97TV5YUB8XaQwW"),
	Default = false,
	Callback = function(p245)
		_G.DragoV3 = p245
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.DragoV3 then
					repeat
						wait()
						_G.DangerSc =_zD1436("c0kfdlFZVlFWS1o=")
						_G.SailBoats = true
						_G.TerrorShark = true
					until not _G.DragoV3

					_G.DangerSc =_zD1436("c0kfDg==")
					_G.SailBoats = false
					_G.TerrorShark = false
				end
			end)
		end
	end)
end

do
	Toggle = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("fkpLUGBtWlNWXGB7TV5YUGBrTVZeU2BkfVpLXmI="), {
		Text =_zD1436("fkpLUB9tWlNWXB97TV5YUB9rTVZeUx9kfVpLXmI="),
		Default = false,
		Callback = function(p246)
			_G.Relic123 = p246
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.Relic123 then
				pcall(function()
					if workspace.Map:FindFirstChild(_zD1436("e01eXFBrTVZeUw==")) then
						replicated.Remotes.DracoTrial:InvokeServer()
						wait(0.5)

						while true do
							wait()
							_tp(CFrame.new(-39934.9765625, 10685.359375, 22999.34375))

							if _G.Relic123 then
								if Root.Position == CFrame.new(-39934.9765625, 10685.359375, 22999.34375).Position then
									break
								end
							else
								break
							end
						end

						while true do
							wait()
							_tp(CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625))

							if _G.Relic123 then
								if Root.Position == CFrame.new(-40511.25390625, 9376.4013671875, 23458.37890625).Position then
									break
								end
							else
								break
							end
						end

						wait(2.5)

						while true do
							wait()
							_tp(CFrame.new(-39914.65625, 10685.384765625, 23000.177734375))

							if _G.Relic123 then
								if Root.Position == CFrame.new(-39914.65625, 10685.384765625, 23000.177734375).Position then
									break
								end
							else
								break
							end
						end

						while true do
							wait()
							_tp(CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375))

							if _G.Relic123 then
								if Root.Position == CFrame.new(-40045.83203125, 9376.3984375, 22791.287109375).Position then
									break
								end
							else
								break
							end
						end

						wait(2.5)

						while true do
							wait()
							_tp(CFrame.new(-39908.5, 10685.4052734375, 22990.04296875))

							if _G.Relic123 then
								if Root.Position == CFrame.new(-39908.5, 10685.4052734375, 22990.04296875).Position then
									break
								end
							else
								break
							end
						end

						while true do
							wait()
							_tp(CFrame.new(-39609.5, 9376.400390625, 23472.94335975))

							if _G.Relic123 then
								if Root.Position == CFrame.new(-39609.5, 9376.400390625, 23472.94335975).Position then
									break
								end
							else
								break
							end
						end
					else
						local TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild(_zD1436("a01WXlNrWlNaT1BNSw=="))

						if TrialTeleport then
							if TrialTeleport:IsA(_zD1436("b15NSw==")) then
								_tp(CFrame.new(TrialTeleport.Position))
							end
						end
					end
				end)
			end
		end
	end)
end

Toggle = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("fkpLUGBrTV5WUWB7TV5YUGBJCw=="), {
	Text =_zD1436("fkpLUB9rTV5WUR97TV5YUB9JCw=="),
	Default = false,
	Callback = function(p247)
		_G.TrainDrago = p247
	end
})

do
	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.TrainDrago then
					local t40 = {
_zD1436("aVpRUFJQSkwffkxMXlZTXlFL"),
_zD1436("d0ZbTV4felFZUE1cWk0=")
					}
					local v1047 = #t40
					local n8 = (34-33)
					local v1049 = v1047 + (75-75)
					local v1050 = (1+0) - n8
					local exitTo

					for i = (1+0), v1047 do
						if plr.Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
							exitTo = (1+0)

							break
						end

						if plr.Character:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
							local v1053 = GetConnectionEnemies(t40)

							if not v1053 then
								exitTo = (11-9)

								break
							end

							while true do
								wait()
								t9.Kill(v1053, _G.TrainDrago)

								if _G.TrainDrago == false then
									break
								elseif v1053.Humanoid.Health <= (672-672) or not v1053.Parent then
									break
								end
							end
						end
					end

					local exitTo2, exitTo5, Character, Character2, v1058, exitTo6, exitTo7, exitTo8, exitTo9, exitTo10, exitTo19

					if exitTo == (1+0) then
						vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
						replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
						vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
						_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
						exitTo2 = nil
						exitTo5 = nil

						while true do
							v1050 += n8

							if not (n8 <= (867-867)) then
								exitTo5 = (49-48)

								break
							end

							if not (v1050 >= v1049) then
								break
							end

							Character = plr.Character

							if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (24-23) then
								exitTo5 = (1+1)

								break
							end

							Character2 = plr.Character

							if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
								v1058 = GetConnectionEnemies(t40)

								if v1058 then
									while true do
										wait()
										t9.Kill(v1058, _G.TrainDrago)

										if _G.TrainDrago == false then
											break
										elseif v1058.Humanoid.Health <= (22-22) or not v1058.Parent then
											break
										end
									end
								else
									_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
								end
							end
						end

						if exitTo5 == (1+0) then
							if v1050 <= v1049 then
								local exitTo18

								while true do
									Character = plr.Character

									if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
										exitTo18 = (10-9)

										break
									end

									Character2 = plr.Character

									if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
										v1058 = GetConnectionEnemies(t40)

										if v1058 then
											exitTo6 = nil

											while true do
												wait()
												t9.Kill(v1058, _G.TrainDrago)

												if _G.TrainDrago == false then
													break
												elseif v1058.Humanoid.Health <= (439-439) or not v1058.Parent then
													exitTo6 = (29-28)

													break
												end
											end

											if exitTo6 == (1+0) then
												exitTo7 = nil

												while true do
													v1050 += n8

													if not (n8 <= (748-748)) then
														exitTo7 = (3-2)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (27-26) then
														exitTo7 = (1+1)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (849-849) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo7 == (1+0) then
													if v1050 <= v1049 then
														continue
													end

													exitTo18 = (6+2)

													break
												end

												exitTo18 = (58-51)

												break
											end

											exitTo8 = nil

											while true do
												v1050 += n8

												if not (n8 <= (508-508)) then
													exitTo8 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (12-11) then
													exitTo8 = (19-17)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (705-705) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo8 == (36-35) then
												if v1050 <= v1049 then
													continue
												end

												exitTo18 = (9-3)

												break
											end

											exitTo18 = (4+1)

											break
										end

										_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
										exitTo9 = nil

										while true do
											v1050 += n8

											if not (n8 <= (17-17)) then
												exitTo9 = (1+0)

												break
											end

											if not (v1050 >= v1049) then
												break
											end

											Character = plr.Character

											if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
												exitTo9 = (2+0)

												break
											end

											Character2 = plr.Character

											if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
												v1058 = GetConnectionEnemies(t40)

												if v1058 then
													while true do
														wait()
														t9.Kill(v1058, _G.TrainDrago)

														if _G.TrainDrago == false then
															break
														elseif v1058.Humanoid.Health <= (622-622) or not v1058.Parent then
															break
														end
													end
												else
													_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												end
											end
										end

										if exitTo9 == (43-42) then
											if v1050 <= v1049 then
												continue
											end

											exitTo18 = (19-15)

											break
										end

										exitTo18 = (3+0)

										break
									end

									exitTo10 = nil

									while true do
										v1050 += n8

										if not (n8 <= (380-380)) then
											exitTo10 = (46-45)

											break
										end

										if not (v1050 >= v1049) then
											break
										end

										Character = plr.Character

										if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
											exitTo10 = (2+0)

											break
										end

										Character2 = plr.Character

										if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
											v1058 = GetConnectionEnemies(t40)

											if v1058 then
												while true do
													wait()
													t9.Kill(v1058, _G.TrainDrago)

													if _G.TrainDrago == false then
														break
													elseif v1058.Humanoid.Health <= (658-658) or not v1058.Parent then
														break
													end
												end
											else
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											end
										end
									end

									if exitTo10 == (1+0) then
										if v1050 <= v1049 then
											continue
										end

										exitTo18 = (32-30)

										break
									end

									break
								end

								if exitTo18 == (34-33) then
									exitTo2 = (23-22)

									if exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (1+1))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (820-820)) then
													exitTo5 = (2-1)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (12-11) then
													exitTo5 = (1+1)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (143-143) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (1+0) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (50-49) then
															exitTo19 = (1+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (294-294) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (1+0) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (233-233)) then
																			exitTo7 = (5-4)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (4-3) then
																			exitTo7 = (2+0)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (593-593) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (31-30) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (33-25)

																		break
																	end

																	exitTo19 = (2+5)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (79-79)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (44-43) then
																		exitTo8 = (1+1)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (582-582) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (2+4)

																	break
																end

																exitTo19 = (2+3)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (442-442)) then
																	exitTo9 = (24-23)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (30-29) then
																	exitTo9 = (25-23)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (351-351) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (1+3)

																break
															end

															exitTo19 = (2+1)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (673-673)) then
																exitTo10 = (18-17)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (45-43)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (363-363) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (49-48) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (2+0)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (38-37)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (23-21) then
														if exitTo2 == (14-13) then
															continue
														end
													elseif exitTo19 == (3+0) then
														if exitTo9 == (45-43) then
															exitTo2 = (1+0)

															if exitTo2 == (31-30) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+2) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (60-55) then
														if exitTo8 == (51-49) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (16-15) then
															continue
														end
													elseif exitTo19 == (6+0) then
														if exitTo2 == (40-39) then
															continue
														end
													elseif exitTo19 == (6+1) then
														if exitTo7 == (5-3) then
															exitTo2 = (45-44)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (37-36) then
															continue
														end
													elseif exitTo19 == (22-14) then
														if exitTo2 == (33-32) then
															continue
														end
													elseif exitTo10 == (8-6) then
														exitTo2 = (1+0)

														if exitTo2 == (23-22) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo5 == (2+0) then
												exitTo2 = (1+0)

												if exitTo2 == (18-17) then
													continue
												end
											elseif exitTo2 == (11-10) then
												continue
											end

											break
										end
									end
								elseif exitTo18 == (26-24) then
									if exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (38-38)) then
													exitTo5 = (33-32)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (11-10) then
													exitTo5 = (2+0)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (307-307) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (31-30) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (39-38) then
															exitTo19 = (1+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (39-39) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (50-49) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (235-235)) then
																			exitTo7 = (5-4)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (51-50) then
																			exitTo7 = (40-38)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (192-192) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (3+5)

																		break
																	end

																	exitTo19 = (63-56)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (378-378)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (29-27)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (410-410) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (42-41) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (5+1)

																	break
																end

																exitTo19 = (1+4)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (769-769)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (17-16) then
																	exitTo9 = (45-43)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (571-571) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (13-12) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (1+3)

																break
															end

															exitTo19 = (10-7)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (487-487)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (26-24)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (757-757) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (45-44) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (2+0)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (1+0)

														if exitTo2 == (41-40) then
															continue
														end
													elseif exitTo19 == (2+0) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (12-9) then
														if exitTo9 == (21-19) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (3+1) then
														if exitTo2 == (36-35) then
															continue
														end
													elseif exitTo19 == (4+1) then
														if exitTo8 == (1+1) then
															exitTo2 = (11-10)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (40-39) then
															continue
														end
													elseif exitTo19 == (22-16) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (61-54) then
														if exitTo7 == (26-24) then
															exitTo2 = (18-17)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (38-30) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo10 == (45-43) then
														exitTo2 = (1+0)

														if exitTo2 == (7-6) then
															continue
														end
													elseif exitTo2 == (6-5) then
														continue
													end
												elseif exitTo2 == (46-45) then
													continue
												end
											elseif exitTo5 == (1+1) then
												exitTo2 = (1+0)

												if exitTo2 == (50-49) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end

											break
										end
									end
								elseif exitTo18 == (13-10) then
									if exitTo9 == (43-41) then
										exitTo2 = (2-1)

										if exitTo2 == (46-45) then
											while true do
												vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
												replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (6-4))
												vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												exitTo2 = nil
												exitTo5 = nil

												while true do
													v1050 += n8

													if not (n8 <= (818-818)) then
														exitTo5 = (6-5)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (49-48) then
														exitTo5 = (22-20)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (729-729) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo5 == (1+0) then
													if v1050 <= v1049 then
														exitTo19 = nil

														while true do
															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo19 = (11-10)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	exitTo6 = nil

																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (452-452) or not v1058.Parent then
																			exitTo6 = (1+0)

																			break
																		end
																	end

																	if exitTo6 == (1+0) then
																		exitTo7 = nil

																		while true do
																			v1050 += n8

																			if not (n8 <= (318-318)) then
																				exitTo7 = (51-50)

																				break
																			end

																			if not (v1050 >= v1049) then
																				break
																			end

																			Character = plr.Character

																			if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (49-48) then
																				exitTo7 = (37-35)

																				break
																			end

																			Character2 = plr.Character

																			if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																				v1058 = GetConnectionEnemies(t40)

																				if v1058 then
																					while true do
																						wait()
																						t9.Kill(v1058, _G.TrainDrago)

																						if _G.TrainDrago == false then
																							break
																						elseif v1058.Humanoid.Health <= (485-485) or not v1058.Parent then
																							break
																						end
																					end
																				else
																					_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																				end
																			end
																		end

																		if exitTo7 == (38-37) then
																			if v1050 <= v1049 then
																				continue
																			end

																			exitTo19 = (2+6)

																			break
																		end

																		exitTo19 = (4+3)

																		break
																	end

																	exitTo8 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (780-780)) then
																			exitTo8 = (16-15)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo8 = (16-14)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (884-884) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo8 == (40-39) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (11-5)

																		break
																	end

																	exitTo19 = (20-15)

																	break
																end

																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																exitTo9 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (480-480)) then
																		exitTo9 = (23-22)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (33-32) then
																		exitTo9 = (7-5)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (834-834) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo9 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (1+3)

																	break
																end

																exitTo19 = (3+0)

																break
															end

															exitTo10 = nil

															while true do
																v1050 += n8

																if not (n8 <= (88-88)) then
																	exitTo10 = (52-51)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo10 = (3-1)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (640-640) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo10 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (39-37)

																break
															end

															break
														end

														if exitTo19 == (1+0) then
															exitTo2 = (1+0)

															if exitTo2 == (4-3) then
																continue
															end
														elseif exitTo19 == (2+0) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (1+2) then
															if exitTo9 == (40-38) then
																exitTo2 = (1+0)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (39-38) then
																continue
															end
														elseif exitTo19 == (1+3) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (4+1) then
															if exitTo8 == (25-23) then
																exitTo2 = (1+0)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (41-40) then
																continue
															end
														elseif exitTo19 == (3+3) then
															if exitTo2 == (12-11) then
																continue
															end
														elseif exitTo19 == (4+3) then
															if exitTo7 == (27-25) then
																exitTo2 = (1+0)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (1+7) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo10 == (20-18) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (11-10) then
														continue
													end
												elseif exitTo5 == (20-18) then
													exitTo2 = (17-16)

													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end

												break
											end
										end
									elseif exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (1+1))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (494-494)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (35-34) then
													exitTo5 = (27-25)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (971-971) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (35-34) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (51-50)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (423-423) or not v1058.Parent then
																		exitTo6 = (49-48)

																		break
																	end
																end

																if exitTo6 == (29-28) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (14-14)) then
																			exitTo7 = (11-10)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (29-28) then
																			exitTo7 = (1+1)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (395-395) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (39-38) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (48-40)

																		break
																	end

																	exitTo19 = (58-51)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (137-137)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (48-47) then
																		exitTo8 = (29-27)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (245-245) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (3+3)

																	break
																end

																exitTo19 = (51-46)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (351-351)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (8-7) then
																	exitTo9 = (18-16)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (386-386) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (34-33) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (4+0)

																break
															end

															exitTo19 = (1+2)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (754-754)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (489-489) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (2+0)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (49-48)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (20-18) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+1) then
														if exitTo9 == (21-19) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (48-44) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (60-55) then
														if exitTo8 == (6-4) then
															exitTo2 = (1+0)

															if exitTo2 == (6-5) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (15-9) then
														if exitTo2 == (17-16) then
															continue
														end
													elseif exitTo19 == (6+1) then
														if exitTo7 == (12-10) then
															exitTo2 = (29-28)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (19-18) then
															continue
														end
													elseif exitTo19 == (23-15) then
														if exitTo2 == (36-35) then
															continue
														end
													elseif exitTo10 == (1+1) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (43-42) then
														continue
													end
												elseif exitTo2 == (46-45) then
													continue
												end
											elseif exitTo5 == (53-51) then
												exitTo2 = (1+0)

												if exitTo2 == (36-35) then
													continue
												end
											elseif exitTo2 == (46-45) then
												continue
											end

											break
										end
									end
								elseif exitTo18 == (37-33) then
									if exitTo2 == (31-30) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (1+1))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (6-6)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (10-9) then
													exitTo5 = (1+1)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (129-129) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (1+0) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (1+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (607-607) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (1+0) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (430-430)) then
																			exitTo7 = (1+0)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (21-19)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (959-959) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (23-22) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (5+3)

																		break
																	end

																	exitTo19 = (5+2)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (328-328)) then
																		exitTo8 = (35-34)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (26-24)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (838-838) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (49-43)

																	break
																end

																exitTo19 = (32-27)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (491-491)) then
																	exitTo9 = (45-44)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo9 = (6-4)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (840-840) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (8-7) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (1+3)

																break
															end

															exitTo19 = (1+2)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (456-456)) then
																exitTo10 = (31-30)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (3-1)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (687-687) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (1+1)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (41-39) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (35-32) then
														if exitTo9 == (49-47) then
															exitTo2 = (1+0)

															if exitTo2 == (13-12) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (4+0) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (10-5) then
														if exitTo8 == (49-47) then
															exitTo2 = (39-38)

															if exitTo2 == (22-21) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (3+3) then
														if exitTo2 == (30-29) then
															continue
														end
													elseif exitTo19 == (42-35) then
														if exitTo7 == (2+0) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (5+3) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo10 == (6-4) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (35-34) then
													continue
												end
											elseif exitTo5 == (29-27) then
												exitTo2 = (38-37)

												if exitTo2 == (7-6) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end

											break
										end
									end
								elseif exitTo18 == (28-23) then
									if exitTo8 == (2+0) then
										exitTo2 = (1+0)

										if exitTo2 == (36-35) then
											while true do
												vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
												replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
												vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												exitTo2 = nil
												exitTo5 = nil

												while true do
													v1050 += n8

													if not (n8 <= (767-767)) then
														exitTo5 = (1+0)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo5 = (47-45)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (645-645) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo5 == (44-43) then
													if v1050 <= v1049 then
														exitTo19 = nil

														while true do
															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo19 = (37-36)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	exitTo6 = nil

																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (488-488) or not v1058.Parent then
																			exitTo6 = (20-19)

																			break
																		end
																	end

																	if exitTo6 == (23-22) then
																		exitTo7 = nil

																		while true do
																			v1050 += n8

																			if not (n8 <= (240-240)) then
																				exitTo7 = (1+0)

																				break
																			end

																			if not (v1050 >= v1049) then
																				break
																			end

																			Character = plr.Character

																			if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (3-2) then
																				exitTo7 = (22-20)

																				break
																			end

																			Character2 = plr.Character

																			if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																				v1058 = GetConnectionEnemies(t40)

																				if v1058 then
																					while true do
																						wait()
																						t9.Kill(v1058, _G.TrainDrago)

																						if _G.TrainDrago == false then
																							break
																						elseif v1058.Humanoid.Health <= (517-517) or not v1058.Parent then
																							break
																						end
																					end
																				else
																					_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																				end
																			end
																		end

																		if exitTo7 == (31-30) then
																			if v1050 <= v1049 then
																				continue
																			end

																			exitTo19 = (6+2)

																			break
																		end

																		exitTo19 = (2+5)

																		break
																	end

																	exitTo8 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (545-545)) then
																			exitTo8 = (1+0)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo8 = (2+0)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (250-250) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo8 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (5+1)

																		break
																	end

																	exitTo19 = (16-11)

																	break
																end

																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																exitTo9 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (433-433)) then
																		exitTo9 = (34-33)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (46-45) then
																		exitTo9 = (33-31)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (404-404) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo9 == (34-33) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (1+3)

																	break
																end

																exitTo19 = (2+1)

																break
															end

															exitTo10 = nil

															while true do
																v1050 += n8

																if not (n8 <= (657-657)) then
																	exitTo10 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo10 = (2+0)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (189-189) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo10 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (2+0)

																break
															end

															break
														end

														if exitTo19 == (1+0) then
															exitTo2 = (36-35)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (1+1) then
															if exitTo2 == (3-2) then
																continue
															end
														elseif exitTo19 == (53-50) then
															if exitTo9 == (39-37) then
																exitTo2 = (1+0)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (2+2) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (47-42) then
															if exitTo8 == (1+1) then
																exitTo2 = (1+0)

																if exitTo2 == (35-34) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (4+2) then
															if exitTo2 == (23-22) then
																continue
															end
														elseif exitTo19 == (2+5) then
															if exitTo7 == (51-49) then
																exitTo2 = (22-21)

																if exitTo2 == (19-18) then
																	continue
																end
															elseif exitTo2 == (44-43) then
																continue
															end
														elseif exitTo19 == (46-38) then
															if exitTo2 == (18-17) then
																continue
															end
														elseif exitTo10 == (7-5) then
															exitTo2 = (1+0)

															if exitTo2 == (19-18) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (16-15) then
														continue
													end
												elseif exitTo5 == (1+1) then
													exitTo2 = (46-45)

													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end

												break
											end
										end
									elseif exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (84-84)) then
													exitTo5 = (22-21)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (47-46) then
													exitTo5 = (1+1)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (386-386) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (1+0) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (30-29)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (448-448) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (22-21) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (818-818)) then
																			exitTo7 = (35-34)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (25-24) then
																			exitTo7 = (30-28)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (802-802) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (10-9) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (53-45)

																		break
																	end

																	exitTo19 = (32-25)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (995-995)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (26-25) then
																		exitTo8 = (2+0)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (88-88) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (28-27) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (32-26)

																	break
																end

																exitTo19 = (5+0)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (186-186)) then
																	exitTo9 = (21-20)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo9 = (2+0)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (845-845) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (30-29) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (52-48)

																break
															end

															exitTo19 = (12-9)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (314-314)) then
																exitTo10 = (28-27)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (37-36) then
																exitTo10 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (647-647) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (45-43)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (6-5)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (9-7) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (24-21) then
														if exitTo9 == (1+1) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (41-40) then
															continue
														end
													elseif exitTo19 == (6-2) then
														if exitTo2 == (29-28) then
															continue
														end
													elseif exitTo19 == (5+0) then
														if exitTo8 == (1+1) then
															exitTo2 = (18-17)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (3-2) then
															continue
														end
													elseif exitTo19 == (6+0) then
														if exitTo2 == (51-50) then
															continue
														end
													elseif exitTo19 == (5+2) then
														if exitTo7 == (30-28) then
															exitTo2 = (1+0)

															if exitTo2 == (23-22) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (62-54) then
														if exitTo2 == (26-25) then
															continue
														end
													elseif exitTo10 == (2+0) then
														exitTo2 = (5-4)

														if exitTo2 == (20-19) then
															continue
														end
													elseif exitTo2 == (44-43) then
														continue
													end
												elseif exitTo2 == (25-24) then
													continue
												end
											elseif exitTo5 == (54-52) then
												exitTo2 = (15-14)

												if exitTo2 == (11-10) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end

											break
										end
									end
								elseif exitTo18 == (2+4) then
									if exitTo2 == (2-1) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (10-8))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (226-226)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo5 = (1+1)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (853-853) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (1+0) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (1+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (106-106) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (2-1) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (584-584)) then
																			exitTo7 = (1+0)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (14-12)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (494-494) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (43-35)

																		break
																	end

																	exitTo19 = (31-24)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (711-711)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (18-17) then
																		exitTo8 = (53-51)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (734-734) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (62-56)

																	break
																end

																exitTo19 = (28-23)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (340-340)) then
																	exitTo9 = (20-19)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (35-34) then
																	exitTo9 = (27-25)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (820-820) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (6-5) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (4+0)

																break
															end

															exitTo19 = (18-15)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (196-196)) then
																exitTo10 = (41-40)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (38-36)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (82-82) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (52-51) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (2+0)

															break
														end

														break
													end

													if exitTo19 == (47-46) then
														exitTo2 = (27-26)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (45-43) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (3+0) then
														if exitTo9 == (2+0) then
															exitTo2 = (26-25)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (41-37) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+3) then
														if exitTo8 == (38-36) then
															exitTo2 = (12-11)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (3+3) then
														if exitTo2 == (20-19) then
															continue
														end
													elseif exitTo19 == (51-44) then
														if exitTo7 == (13-11) then
															exitTo2 = (17-16)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (24-23) then
															continue
														end
													elseif exitTo19 == (5+3) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo10 == (45-43) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (18-17) then
														continue
													end
												elseif exitTo2 == (6-5) then
													continue
												end
											elseif exitTo5 == (2+0) then
												exitTo2 = (1+0)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (33-32) then
												continue
											end

											break
										end
									end
								elseif exitTo18 == (37-30) then
									if exitTo7 == (1+1) then
										exitTo2 = (1+0)

										if exitTo2 == (1+0) then
											while true do
												vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
												replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (54-52))
												vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												exitTo2 = nil
												exitTo5 = nil

												while true do
													v1050 += n8

													if not (n8 <= (180-180)) then
														exitTo5 = (43-42)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (12-11) then
														exitTo5 = (1+1)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (983-983) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo5 == (1+0) then
													if v1050 <= v1049 then
														exitTo19 = nil

														while true do
															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (40-39) then
																exitTo19 = (1+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	exitTo6 = nil

																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (933-933) or not v1058.Parent then
																			exitTo6 = (1+0)

																			break
																		end
																	end

																	if exitTo6 == (31-30) then
																		exitTo7 = nil

																		while true do
																			v1050 += n8

																			if not (n8 <= (336-336)) then
																				exitTo7 = (1+0)

																				break
																			end

																			if not (v1050 >= v1049) then
																				break
																			end

																			Character = plr.Character

																			if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (41-40) then
																				exitTo7 = (3-1)

																				break
																			end

																			Character2 = plr.Character

																			if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																				v1058 = GetConnectionEnemies(t40)

																				if v1058 then
																					while true do
																						wait()
																						t9.Kill(v1058, _G.TrainDrago)

																						if _G.TrainDrago == false then
																							break
																						elseif v1058.Humanoid.Health <= (327-327) or not v1058.Parent then
																							break
																						end
																					end
																				else
																					_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																				end
																			end
																		end

																		if exitTo7 == (1+0) then
																			if v1050 <= v1049 then
																				continue
																			end

																			exitTo19 = (30-22)

																			break
																		end

																		exitTo19 = (2+5)

																		break
																	end

																	exitTo8 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (742-742)) then
																			exitTo8 = (12-11)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (44-43) then
																			exitTo8 = (4-2)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (700-700) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo8 == (36-35) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (32-26)

																		break
																	end

																	exitTo19 = (46-41)

																	break
																end

																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																exitTo9 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (868-868)) then
																		exitTo9 = (7-6)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (16-15) then
																		exitTo9 = (25-23)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (180-180) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo9 == (15-14) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (4+0)

																	break
																end

																exitTo19 = (42-39)

																break
															end

															exitTo10 = nil

															while true do
																v1050 += n8

																if not (n8 <= (198-198)) then
																	exitTo10 = (52-51)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo10 = (3-1)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (760-760) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo10 == (48-47) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (51-49)

																break
															end

															break
														end

														if exitTo19 == (2-1) then
															exitTo2 = (3-2)

															if exitTo2 == (48-47) then
																continue
															end
														elseif exitTo19 == (1+1) then
															if exitTo2 == (3-2) then
																continue
															end
														elseif exitTo19 == (6-3) then
															if exitTo9 == (1+1) then
																exitTo2 = (1+0)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (28-27) then
																continue
															end
														elseif exitTo19 == (42-38) then
															if exitTo2 == (24-23) then
																continue
															end
														elseif exitTo19 == (3+2) then
															if exitTo8 == (26-24) then
																exitTo2 = (1+0)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (2+4) then
															if exitTo2 == (20-19) then
																continue
															end
														elseif exitTo19 == (2+5) then
															if exitTo7 == (1+1) then
																exitTo2 = (1+0)

																if exitTo2 == (28-27) then
																	continue
																end
															elseif exitTo2 == (6-5) then
																continue
															end
														elseif exitTo19 == (48-40) then
															if exitTo2 == (48-47) then
																continue
															end
														elseif exitTo10 == (46-44) then
															exitTo2 = (46-45)

															if exitTo2 == (40-39) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo5 == (2+0) then
													exitTo2 = (1+0)

													if exitTo2 == (27-26) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end

												break
											end
										end
									elseif exitTo2 == (17-16) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (1+1))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (380-380)) then
													exitTo5 = (6-5)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (11-10) then
													exitTo5 = (39-37)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (370-370) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (21-20) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (8-7)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (561-561) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (33-32) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (66-66)) then
																			exitTo7 = (24-23)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (25-24) then
																			exitTo7 = (2+0)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (291-291) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (65-57)

																		break
																	end

																	exitTo19 = (2+5)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (240-240)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (16-15) then
																		exitTo8 = (2+0)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (669-669) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (50-44)

																	break
																end

																exitTo19 = (54-49)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (346-346)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo9 = (18-16)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (762-762) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (50-49) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (2+2)

																break
															end

															exitTo19 = (50-47)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (521-521)) then
																exitTo10 = (31-30)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (28-27) then
																exitTo10 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (325-325) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (47-45)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (1+0)

														if exitTo2 == (4-3) then
															continue
														end
													elseif exitTo19 == (30-28) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (21-18) then
														if exitTo9 == (2+0) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (3+1) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+3) then
														if exitTo8 == (1+1) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+4) then
														if exitTo2 == (52-51) then
															continue
														end
													elseif exitTo19 == (6+1) then
														if exitTo7 == (2+0) then
															exitTo2 = (1+0)

															if exitTo2 == (52-51) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (1+7) then
														if exitTo2 == (30-29) then
															continue
														end
													elseif exitTo10 == (2+0) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (16-15) then
														continue
													end
												elseif exitTo2 == (7-6) then
													continue
												end
											elseif exitTo5 == (1+1) then
												exitTo2 = (1+0)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (18-17) then
												continue
											end

											break
										end
									end
								elseif exitTo18 == (3+5) then
									if exitTo2 == (26-25) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (834-834)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (14-13) then
													exitTo5 = (29-27)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (565-565) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (1+0) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (17-16) then
															exitTo19 = (14-13)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (412-412) or not v1058.Parent then
																		exitTo6 = (15-14)

																		break
																	end
																end

																if exitTo6 == (50-49) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (662-662)) then
																			exitTo7 = (15-14)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (49-48) then
																			exitTo7 = (9-7)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (107-107) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (31-30) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (7+1)

																		break
																	end

																	exitTo19 = (2+5)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (471-471)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (25-24) then
																		exitTo8 = (1+1)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (629-629) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (1+5)

																	break
																end

																exitTo19 = (2+3)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (617-617)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (26-25) then
																	exitTo9 = (49-47)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (878-878) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (1+3)

																break
															end

															exitTo19 = (2+1)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (854-854)) then
																exitTo10 = (40-39)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (578-578) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (38-36)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (15-14)

														if exitTo2 == (17-16) then
															continue
														end
													elseif exitTo19 == (2+0) then
														if exitTo2 == (22-21) then
															continue
														end
													elseif exitTo19 == (8-5) then
														if exitTo9 == (40-38) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (20-16) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (36-31) then
														if exitTo8 == (1+1) then
															exitTo2 = (46-45)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (6+0) then
														if exitTo2 == (35-34) then
															continue
														end
													elseif exitTo19 == (1+6) then
														if exitTo7 == (2+0) then
															exitTo2 = (1+0)

															if exitTo2 == (10-9) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (1+7) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo10 == (2+0) then
														exitTo2 = (18-17)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo5 == (1+1) then
												exitTo2 = (40-39)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end

											break
										end
									end
								elseif exitTo10 == (2+0) then
									exitTo2 = (47-46)

									if exitTo2 == (47-46) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (899-899)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (6-5) then
													exitTo5 = (4-2)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (715-715) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (50-49) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (1+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (169-169) or not v1058.Parent then
																		exitTo6 = (29-28)

																		break
																	end
																end

																if exitTo6 == (1+0) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (810-810)) then
																			exitTo7 = (1+0)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (2+0)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (868-868) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (1+7)

																		break
																	end

																	exitTo19 = (2+5)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (493-493)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (49-47)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (243-243) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (25-24) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (36-30)

																	break
																end

																exitTo19 = (3+2)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (315-315)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (35-34) then
																	exitTo9 = (1+1)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (591-591) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (15-14) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (1+3)

																break
															end

															exitTo19 = (17-14)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (258-258)) then
																exitTo10 = (18-17)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (36-35) then
																exitTo10 = (35-33)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (433-433) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (28-27) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (37-35)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (14-13)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (40-38) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (49-46) then
														if exitTo9 == (3-1) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+2) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+3) then
														if exitTo8 == (1+1) then
															exitTo2 = (1+0)

															if exitTo2 == (29-28) then
																continue
															end
														elseif exitTo2 == (10-9) then
															continue
														end
													elseif exitTo19 == (35-29) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (5+2) then
														if exitTo7 == (40-38) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (29-28) then
															continue
														end
													elseif exitTo19 == (34-26) then
														if exitTo2 == (26-25) then
															continue
														end
													elseif exitTo10 == (43-41) then
														exitTo2 = (14-13)

														if exitTo2 == (34-33) then
															continue
														end
													elseif exitTo2 == (29-28) then
														continue
													end
												elseif exitTo2 == (10-9) then
													continue
												end
											elseif exitTo5 == (2+0) then
												exitTo2 = (1+0)

												if exitTo2 == (2-1) then
													continue
												end
											elseif exitTo2 == (13-12) then
												continue
											end

											break
										end
									end
								elseif exitTo2 == (32-31) then
									while true do
										vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
										replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (1+1))
										vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
										_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
										exitTo2 = nil
										exitTo5 = nil

										while true do
											v1050 += n8

											if not (n8 <= (961-961)) then
												exitTo5 = (13-12)

												break
											end

											if not (v1050 >= v1049) then
												break
											end

											Character = plr.Character

											if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (2-1) then
												exitTo5 = (19-17)

												break
											end

											Character2 = plr.Character

											if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
												v1058 = GetConnectionEnemies(t40)

												if v1058 then
													while true do
														wait()
														t9.Kill(v1058, _G.TrainDrago)

														if _G.TrainDrago == false then
															break
														elseif v1058.Humanoid.Health <= (795-795) or not v1058.Parent then
															break
														end
													end
												else
													_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												end
											end
										end

										if exitTo5 == (3-2) then
											if v1050 <= v1049 then
												exitTo19 = nil

												while true do
													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (2-1) then
														exitTo19 = (52-51)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															exitTo6 = nil

															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (24-24) or not v1058.Parent then
																	exitTo6 = (41-40)

																	break
																end
															end

															if exitTo6 == (1+0) then
																exitTo7 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (733-733)) then
																		exitTo7 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (37-36) then
																		exitTo7 = (1+1)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (492-492) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo7 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (30-22)

																	break
																end

																exitTo19 = (4+3)

																break
															end

															exitTo8 = nil

															while true do
																v1050 += n8

																if not (n8 <= (214-214)) then
																	exitTo8 = (7-6)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (14-13) then
																	exitTo8 = (2+0)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (367-367) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo8 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (39-33)

																break
															end

															exitTo19 = (4+1)

															break
														end

														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														exitTo9 = nil

														while true do
															v1050 += n8

															if not (n8 <= (264-264)) then
																exitTo9 = (21-20)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (40-39) then
																exitTo9 = (1+1)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (80-80) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo9 == (16-15) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (3+1)

															break
														end

														exitTo19 = (3+0)

														break
													end

													exitTo10 = nil

													while true do
														v1050 += n8

														if not (n8 <= (169-169)) then
															exitTo10 = (50-49)

															break
														end

														if not (v1050 >= v1049) then
															break
														end

														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (13-12) then
															exitTo10 = (2+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (608-608) or not v1058.Parent then
																		break
																	end
																end
															else
																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															end
														end
													end

													if exitTo10 == (1+0) then
														if v1050 <= v1049 then
															continue
														end

														exitTo19 = (4-2)

														break
													end

													break
												end

												if exitTo19 == (12-11) then
													exitTo2 = (1+0)

													if exitTo2 == (28-27) then
														continue
													end
												elseif exitTo19 == (26-24) then
													if exitTo2 == (10-9) then
														continue
													end
												elseif exitTo19 == (28-25) then
													if exitTo9 == (2+0) then
														exitTo2 = (1+0)

														if exitTo2 == (13-12) then
															continue
														end
													elseif exitTo2 == (36-35) then
														continue
													end
												elseif exitTo19 == (56-52) then
													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo19 == (4+1) then
													if exitTo8 == (2+0) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo19 == (29-23) then
													if exitTo2 == (13-12) then
														continue
													end
												elseif exitTo19 == (2+5) then
													if exitTo7 == (5-3) then
														exitTo2 = (31-30)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo19 == (21-13) then
													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo10 == (2+0) then
													exitTo2 = (1+0)

													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (9-8) then
												continue
											end
										elseif exitTo5 == (35-33) then
											exitTo2 = (1+0)

											if exitTo2 == (13-12) then
												continue
											end
										elseif exitTo2 == (1+0) then
											continue
										end

										break
									end
								end
							elseif exitTo2 == (14-13) then
								while true do
									vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
									replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
									vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
									_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
									exitTo2 = nil
									exitTo5 = nil

									while true do
										v1050 += n8

										if not (n8 <= (822-822)) then
											exitTo5 = (52-51)

											break
										end

										if not (v1050 >= v1049) then
											break
										end

										Character = plr.Character

										if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
											exitTo5 = (5-3)

											break
										end

										Character2 = plr.Character

										if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
											v1058 = GetConnectionEnemies(t40)

											if v1058 then
												while true do
													wait()
													t9.Kill(v1058, _G.TrainDrago)

													if _G.TrainDrago == false then
														break
													elseif v1058.Humanoid.Health <= (164-164) or not v1058.Parent then
														break
													end
												end
											else
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											end
										end
									end

									if exitTo5 == (52-51) then
										if v1050 <= v1049 then
											exitTo19 = nil

											while true do
												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo19 = (23-22)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														exitTo6 = nil

														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (808-808) or not v1058.Parent then
																exitTo6 = (41-40)

																break
															end
														end

														if exitTo6 == (1+0) then
															exitTo7 = nil

															while true do
																v1050 += n8

																if not (n8 <= (436-436)) then
																	exitTo7 = (24-23)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo7 = (3-1)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (280-280) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo7 == (20-19) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (57-49)

																break
															end

															exitTo19 = (4+3)

															break
														end

														exitTo8 = nil

														while true do
															v1050 += n8

															if not (n8 <= (199-199)) then
																exitTo8 = (39-38)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo8 = (35-33)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (223-223) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo8 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (31-25)

															break
														end

														exitTo19 = (53-48)

														break
													end

													_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													exitTo9 = nil

													while true do
														v1050 += n8

														if not (n8 <= (373-373)) then
															exitTo9 = (50-49)

															break
														end

														if not (v1050 >= v1049) then
															break
														end

														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (24-23) then
															exitTo9 = (37-35)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (259-259) or not v1058.Parent then
																		break
																	end
																end
															else
																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															end
														end
													end

													if exitTo9 == (12-11) then
														if v1050 <= v1049 then
															continue
														end

														exitTo19 = (19-15)

														break
													end

													exitTo19 = (24-21)

													break
												end

												exitTo10 = nil

												while true do
													v1050 += n8

													if not (n8 <= (464-464)) then
														exitTo10 = (45-44)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo10 = (2+0)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (533-533) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo10 == (1+0) then
													if v1050 <= v1049 then
														continue
													end

													exitTo19 = (46-44)

													break
												end

												break
											end

											if exitTo19 == (15-14) then
												exitTo2 = (34-33)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo19 == (2+0) then
												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo19 == (3+0) then
												if exitTo9 == (36-34) then
													exitTo2 = (1+0)

													if exitTo2 == (6-5) then
														continue
													end
												elseif exitTo2 == (51-50) then
													continue
												end
											elseif exitTo19 == (48-44) then
												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo19 == (41-36) then
												if exitTo8 == (1+1) then
													exitTo2 = (1+0)

													if exitTo2 == (2-1) then
														continue
													end
												elseif exitTo2 == (46-45) then
													continue
												end
											elseif exitTo19 == (3+3) then
												if exitTo2 == (14-13) then
													continue
												end
											elseif exitTo19 == (6+1) then
												if exitTo7 == (2+0) then
													exitTo2 = (23-22)

													if exitTo2 == (46-45) then
														continue
													end
												elseif exitTo2 == (21-20) then
													continue
												end
											elseif exitTo19 == (8+0) then
												if exitTo2 == (31-30) then
													continue
												end
											elseif exitTo10 == (1+1) then
												exitTo2 = (46-45)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (43-42) then
												continue
											end
										elseif exitTo2 == (1+0) then
											continue
										end
									elseif exitTo5 == (2+0) then
										exitTo2 = (43-42)

										if exitTo2 == (49-48) then
											continue
										end
									elseif exitTo2 == (32-31) then
										continue
									end

									break
								end
							end
						elseif exitTo5 == (24-22) then
							exitTo2 = (21-20)

							if exitTo2 == (31-30) then
								while true do
									vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
									replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
									vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
									_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
									exitTo2 = nil
									exitTo5 = nil

									while true do
										v1050 += n8

										if not (n8 <= (806-806)) then
											exitTo5 = (1+0)

											break
										end

										if not (v1050 >= v1049) then
											break
										end

										Character = plr.Character

										if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
											exitTo5 = (1+1)

											break
										end

										Character2 = plr.Character

										if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
											v1058 = GetConnectionEnemies(t40)

											if v1058 then
												while true do
													wait()
													t9.Kill(v1058, _G.TrainDrago)

													if _G.TrainDrago == false then
														break
													elseif v1058.Humanoid.Health <= (196-196) or not v1058.Parent then
														break
													end
												end
											else
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											end
										end
									end

									if exitTo5 == (21-20) then
										if v1050 <= v1049 then
											exitTo19 = nil

											while true do
												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo19 = (1+0)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														exitTo6 = nil

														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (724-724) or not v1058.Parent then
																exitTo6 = (42-41)

																break
															end
														end

														if exitTo6 == (1+0) then
															exitTo7 = nil

															while true do
																v1050 += n8

																if not (n8 <= (142-142)) then
																	exitTo7 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (9-8) then
																	exitTo7 = (1+1)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (269-269) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo7 == (13-12) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (25-17)

																break
															end

															exitTo19 = (23-16)

															break
														end

														exitTo8 = nil

														while true do
															v1050 += n8

															if not (n8 <= (748-748)) then
																exitTo8 = (46-45)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (33-32) then
																exitTo8 = (6-4)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (580-580) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo8 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (2+4)

															break
														end

														exitTo19 = (5+0)

														break
													end

													_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													exitTo9 = nil

													while true do
														v1050 += n8

														if not (n8 <= (322-322)) then
															exitTo9 = (34-33)

															break
														end

														if not (v1050 >= v1049) then
															break
														end

														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo9 = (37-35)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (777-777) or not v1058.Parent then
																		break
																	end
																end
															else
																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															end
														end
													end

													if exitTo9 == (32-31) then
														if v1050 <= v1049 then
															continue
														end

														exitTo19 = (1+3)

														break
													end

													exitTo19 = (5-2)

													break
												end

												exitTo10 = nil

												while true do
													v1050 += n8

													if not (n8 <= (84-84)) then
														exitTo10 = (38-37)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo10 = (19-17)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (555-555) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo10 == (1+0) then
													if v1050 <= v1049 then
														continue
													end

													exitTo19 = (31-29)

													break
												end

												break
											end

											if exitTo19 == (1+0) then
												exitTo2 = (12-11)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo19 == (54-52) then
												if exitTo2 == (30-29) then
													continue
												end
											elseif exitTo19 == (3+0) then
												if exitTo9 == (1+1) then
													exitTo2 = (28-27)

													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo19 == (2+2) then
												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo19 == (46-41) then
												if exitTo8 == (1+1) then
													exitTo2 = (5-4)

													if exitTo2 == (38-37) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo19 == (30-24) then
												if exitTo2 == (36-35) then
													continue
												end
											elseif exitTo19 == (41-34) then
												if exitTo7 == (40-38) then
													exitTo2 = (35-34)

													if exitTo2 == (33-32) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo19 == (7+1) then
												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo10 == (2+0) then
												exitTo2 = (1+0)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (36-35) then
												continue
											end
										elseif exitTo2 == (1+0) then
											continue
										end
									elseif exitTo5 == (32-30) then
										exitTo2 = (8-7)

										if exitTo2 == (41-40) then
											continue
										end
									elseif exitTo2 == (15-14) then
										continue
									end

									break
								end
							end
						elseif exitTo2 == (1+0) then
							while true do
								vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
								replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (12-10))
								vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
								_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
								exitTo2 = nil
								exitTo5 = nil

								while true do
									v1050 += n8

									if not (n8 <= (801-801)) then
										exitTo5 = (31-30)

										break
									end

									if not (v1050 >= v1049) then
										break
									end

									Character = plr.Character

									if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (41-40) then
										exitTo5 = (1+1)

										break
									end

									Character2 = plr.Character

									if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
										v1058 = GetConnectionEnemies(t40)

										if v1058 then
											while true do
												wait()
												t9.Kill(v1058, _G.TrainDrago)

												if _G.TrainDrago == false then
													break
												elseif v1058.Humanoid.Health <= (240-240) or not v1058.Parent then
													break
												end
											end
										else
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
										end
									end
								end

								if exitTo5 == (1+0) then
									if v1050 <= v1049 then
										exitTo19 = nil

										while true do
											Character = plr.Character

											if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (9-8) then
												exitTo19 = (1+0)

												break
											end

											Character2 = plr.Character

											if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
												v1058 = GetConnectionEnemies(t40)

												if v1058 then
													exitTo6 = nil

													while true do
														wait()
														t9.Kill(v1058, _G.TrainDrago)

														if _G.TrainDrago == false then
															break
														elseif v1058.Humanoid.Health <= (622-622) or not v1058.Parent then
															exitTo6 = (1+0)

															break
														end
													end

													if exitTo6 == (17-16) then
														exitTo7 = nil

														while true do
															v1050 += n8

															if not (n8 <= (29-29)) then
																exitTo7 = (11-10)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo7 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (870-870) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo7 == (36-35) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (8+0)

															break
														end

														exitTo19 = (28-21)

														break
													end

													exitTo8 = nil

													while true do
														v1050 += n8

														if not (n8 <= (154-154)) then
															exitTo8 = (22-21)

															break
														end

														if not (v1050 >= v1049) then
															break
														end

														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo8 = (5-3)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (375-375) or not v1058.Parent then
																		break
																	end
																end
															else
																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															end
														end
													end

													if exitTo8 == (51-50) then
														if v1050 <= v1049 then
															continue
														end

														exitTo19 = (2+4)

														break
													end

													exitTo19 = (26-21)

													break
												end

												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												exitTo9 = nil

												while true do
													v1050 += n8

													if not (n8 <= (485-485)) then
														exitTo9 = (17-16)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo9 = (38-36)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (912-912) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo9 == (47-46) then
													if v1050 <= v1049 then
														continue
													end

													exitTo19 = (43-39)

													break
												end

												exitTo19 = (1+2)

												break
											end

											exitTo10 = nil

											while true do
												v1050 += n8

												if not (n8 <= (252-252)) then
													exitTo10 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (11-10) then
													exitTo10 = (1+1)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (687-687) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo10 == (1+0) then
												if v1050 <= v1049 then
													continue
												end

												exitTo19 = (2+0)

												break
											end

											break
										end

										if exitTo19 == (1+0) then
											exitTo2 = (20-19)

											if exitTo2 == (44-43) then
												continue
											end
										elseif exitTo19 == (2+0) then
											if exitTo2 == (9-8) then
												continue
											end
										elseif exitTo19 == (18-15) then
											if exitTo9 == (1+1) then
												exitTo2 = (1+0)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (17-16) then
												continue
											end
										elseif exitTo19 == (35-31) then
											if exitTo2 == (1+0) then
												continue
											end
										elseif exitTo19 == (3+2) then
											if exitTo8 == (2+0) then
												exitTo2 = (1+0)

												if exitTo2 == (8-7) then
													continue
												end
											elseif exitTo2 == (41-40) then
												continue
											end
										elseif exitTo19 == (6+0) then
											if exitTo2 == (1+0) then
												continue
											end
										elseif exitTo19 == (32-25) then
											if exitTo7 == (1+1) then
												exitTo2 = (1+0)

												if exitTo2 == (48-47) then
													continue
												end
											elseif exitTo2 == (45-44) then
												continue
											end
										elseif exitTo19 == (60-52) then
											if exitTo2 == (1+0) then
												continue
											end
										elseif exitTo10 == (1+1) then
											exitTo2 = (5-4)

											if exitTo2 == (34-33) then
												continue
											end
										elseif exitTo2 == (39-38) then
											continue
										end
									elseif exitTo2 == (11-10) then
										continue
									end
								elseif exitTo5 == (54-52) then
									exitTo2 = (7-6)

									if exitTo2 == (52-51) then
										continue
									end
								elseif exitTo2 == (41-40) then
									continue
								end

								break
							end
						end
					elseif exitTo == (25-23) then
						local exitTo4

						while true do
							_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))

							local exitTo3
							local exitTo11

							while true do
								v1050 += n8

								if not (n8 <= (989-989)) then
									exitTo11 = (1+0)

									break
								end

								if not (v1050 >= v1049) then
									break
								end

								Character = plr.Character

								if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
									exitTo11 = (2+0)

									break
								end

								Character2 = plr.Character

								if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value ~= false then
									continue
								end

								v1058 = GetConnectionEnemies(t40)

								if not v1058 then
									exitTo11 = (2+1)

									break
								end

								while true do
									wait()
									t9.Kill(v1058, _G.TrainDrago)

									if _G.TrainDrago == false then
										break
									elseif v1058.Humanoid.Health <= (483-483) or not v1058.Parent then
										break
									end
								end
							end

							if exitTo11 == (31-30) then
								if v1050 <= v1049 then
									while true do
										Character = plr.Character

										if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (38-37) then
											exitTo3 = (1+0)

											break
										end

										Character2 = plr.Character

										if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
											v1058 = GetConnectionEnemies(t40)

											if not v1058 then
												exitTo3 = (2+0)

												break
											end

											local exitTo12

											while true do
												wait()
												t9.Kill(v1058, _G.TrainDrago)

												if _G.TrainDrago == false then
													break
												elseif v1058.Humanoid.Health <= (631-631) or not v1058.Parent then
													exitTo12 = (1+0)

													break
												end
											end

											if exitTo12 == (3-2) then
												local exitTo13

												while true do
													v1050 += n8

													if not (n8 <= (611-611)) then
														exitTo13 = (1+0)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (11-10) then
														exitTo13 = (4-2)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value ~= false then
														continue
													end

													v1058 = GetConnectionEnemies(t40)

													if not v1058 then
														exitTo13 = (1+2)

														break
													end

													while true do
														wait()
														t9.Kill(v1058, _G.TrainDrago)

														if _G.TrainDrago == false then
															break
														elseif v1058.Humanoid.Health <= (645-645) or not v1058.Parent then
															break
														end
													end
												end

												if exitTo13 == (1+0) then
													if v1050 <= v1049 then
														continue
													end
												else
													if exitTo13 == (1+1) then
														exitTo3 = (7-6)
													elseif exitTo13 == (2+1) then
														exitTo3 = (39-37)
													end

													break
												end
											else
												local exitTo14

												while true do
													v1050 += n8

													if not (n8 <= (673-673)) then
														exitTo14 = (13-12)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo14 = (39-37)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value ~= false then
														continue
													end

													v1058 = GetConnectionEnemies(t40)

													if not v1058 then
														exitTo14 = (2+1)

														break
													end

													while true do
														wait()
														t9.Kill(v1058, _G.TrainDrago)

														if _G.TrainDrago == false then
															break
														elseif v1058.Humanoid.Health <= (767-767) or not v1058.Parent then
															break
														end
													end
												end

												if exitTo14 == (32-31) then
													if v1050 <= v1049 then
														continue
													end
												else
													if exitTo14 == (31-29) then
														exitTo3 = (1+0)
													elseif exitTo14 == (1+2) then
														exitTo3 = (2+0)
													end

													break
												end
											end
										else
											local exitTo15

											while true do
												v1050 += n8

												if not (n8 <= (684-684)) then
													exitTo15 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (41-40) then
													exitTo15 = (23-21)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value ~= false then
													continue
												end

												v1058 = GetConnectionEnemies(t40)

												if not v1058 then
													exitTo15 = (47-44)

													break
												end

												while true do
													wait()
													t9.Kill(v1058, _G.TrainDrago)

													if _G.TrainDrago == false then
														break
													elseif v1058.Humanoid.Health <= (333-333) or not v1058.Parent then
														break
													end
												end
											end

											if exitTo15 == (21-20) then
												if v1050 <= v1049 then
													continue
												end
											else
												if exitTo15 == (11-9) then
													exitTo3 = (1+0)
												elseif exitTo15 == (16-13) then
													exitTo3 = (40-38)
												end

												break
											end
										end

										break
									end
								end
							elseif exitTo11 == (42-40) then
								exitTo3 = (1+0)
							elseif exitTo11 == (19-16) then
								exitTo3 = (1+1)
							end

							if exitTo3 == (1+0) then
								exitTo4 = (1+0)

								break
							elseif exitTo3 == (46-44) then
								continue
							end

							break
						end

						if exitTo4 == (1+0) then
							local exitTo17

							while true do
								vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
								replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (54-52))
								vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
								_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
								exitTo2 = nil

								local exitTo16

								while true do
									v1050 += n8

									if not (n8 <= (326-326)) then
										exitTo16 = (1+0)

										break
									end

									if not (v1050 >= v1049) then
										break
									end

									Character = plr.Character

									if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
										exitTo16 = (51-49)

										break
									end

									Character2 = plr.Character

									if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
										v1058 = GetConnectionEnemies(t40)

										if v1058 then
											while true do
												wait()
												t9.Kill(v1058, _G.TrainDrago)

												if _G.TrainDrago == false then
													break
												elseif v1058.Humanoid.Health <= (815-815) or not v1058.Parent then
													break
												end
											end
										else
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
										end
									end
								end

								if exitTo16 ~= (40-39) then
									if exitTo16 == (4-2) then
										exitTo2 = (49-48)
									end

									if exitTo2 ~= (1+0) then
										break
									end
								elseif v1050 <= v1049 then
									exitTo17 = (1+0)

									break
								elseif exitTo2 == (1+0) then
									continue
								end

								break
							end

							if exitTo17 == (1+0) then
								local exitTo20

								while true do
									Character = plr.Character

									if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
										exitTo20 = (1+0)

										break
									end

									Character2 = plr.Character

									if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
										v1058 = GetConnectionEnemies(t40)

										if v1058 then
											exitTo6 = nil

											while true do
												wait()
												t9.Kill(v1058, _G.TrainDrago)

												if _G.TrainDrago == false then
													break
												elseif v1058.Humanoid.Health <= (102-102) or not v1058.Parent then
													exitTo6 = (1+0)

													break
												end
											end

											if exitTo6 == (47-46) then
												exitTo7 = nil

												while true do
													v1050 += n8

													if not (n8 <= (59-59)) then
														exitTo7 = (18-17)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo7 = (2+0)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (707-707) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo7 == (1+0) then
													if v1050 <= v1049 then
														continue
													end

													exitTo20 = (5+3)

													break
												end

												exitTo20 = (4+3)

												break
											end

											exitTo8 = nil

											while true do
												v1050 += n8

												if not (n8 <= (264-264)) then
													exitTo8 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo8 = (47-45)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (880-880) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo8 == (1+0) then
												if v1050 <= v1049 then
													continue
												end

												exitTo20 = (53-47)

												break
											end

											exitTo20 = (32-27)

											break
										end

										_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
										exitTo9 = nil

										while true do
											v1050 += n8

											if not (n8 <= (729-729)) then
												exitTo9 = (1+0)

												break
											end

											if not (v1050 >= v1049) then
												break
											end

											Character = plr.Character

											if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (40-39) then
												exitTo9 = (1+1)

												break
											end

											Character2 = plr.Character

											if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
												v1058 = GetConnectionEnemies(t40)

												if v1058 then
													while true do
														wait()
														t9.Kill(v1058, _G.TrainDrago)

														if _G.TrainDrago == false then
															break
														elseif v1058.Humanoid.Health <= (770-770) or not v1058.Parent then
															break
														end
													end
												else
													_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												end
											end
										end

										if exitTo9 == (1+0) then
											if v1050 <= v1049 then
												continue
											end

											exitTo20 = (1+3)

											break
										end

										exitTo20 = (3+0)

										break
									end

									exitTo10 = nil

									while true do
										v1050 += n8

										if not (n8 <= (7-7)) then
											exitTo10 = (33-32)

											break
										end

										if not (v1050 >= v1049) then
											break
										end

										Character = plr.Character

										if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (49-48) then
											exitTo10 = (8-6)

											break
										end

										Character2 = plr.Character

										if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
											v1058 = GetConnectionEnemies(t40)

											if v1058 then
												while true do
													wait()
													t9.Kill(v1058, _G.TrainDrago)

													if _G.TrainDrago == false then
														break
													elseif v1058.Humanoid.Health <= (954-954) or not v1058.Parent then
														break
													end
												end
											else
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											end
										end
									end

									if exitTo10 == (1+0) then
										if v1050 <= v1049 then
											continue
										end

										exitTo20 = (2+0)

										break
									end

									break
								end

								if exitTo20 == (19-18) then
									exitTo2 = (28-27)

									if exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (54-54)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo5 = (2+0)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (226-226) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (1+0) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (45-44)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (680-680) or not v1058.Parent then
																		exitTo6 = (40-39)

																		break
																	end
																end

																if exitTo6 == (1+0) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (862-862)) then
																			exitTo7 = (4-3)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (27-25)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (407-407) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (1+7)

																		break
																	end

																	exitTo19 = (28-21)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (902-902)) then
																		exitTo8 = (18-17)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (8-7) then
																		exitTo8 = (1+1)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (283-283) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (11-10) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (17-11)

																	break
																end

																exitTo19 = (1+4)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (430-430)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (21-20) then
																	exitTo9 = (2+0)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (11-11) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (40-39) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (49-45)

																break
															end

															exitTo19 = (19-16)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (69-69)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (1+1)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (734-734) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (9-8) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (2+0)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (1+0)

														if exitTo2 == (2-1) then
															continue
														end
													elseif exitTo19 == (48-46) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (44-41) then
														if exitTo9 == (21-19) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+2) then
														if exitTo2 == (29-28) then
															continue
														end
													elseif exitTo19 == (30-25) then
														if exitTo8 == (1+1) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (28-27) then
															continue
														end
													elseif exitTo19 == (20-14) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (48-41) then
														if exitTo7 == (26-24) then
															exitTo2 = (47-46)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (25-17) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo10 == (26-24) then
														exitTo2 = (42-41)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (47-46) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo5 == (42-40) then
												exitTo2 = (43-42)

												if exitTo2 == (40-39) then
													continue
												end
											elseif exitTo2 == (40-39) then
												continue
											end

											break
										end
									end
								elseif exitTo20 == (3-1) then
									if exitTo2 == (2-1) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (345-345)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo5 = (25-23)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (832-832) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (23-22) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (28-27)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (123-123) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (45-44) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (450-450)) then
																			exitTo7 = (10-9)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (27-25)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (630-630) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (58-50)

																		break
																	end

																	exitTo19 = (6+1)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (560-560)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (52-50)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (241-241) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (40-34)

																	break
																end

																exitTo19 = (43-38)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (133-133)) then
																	exitTo9 = (29-28)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo9 = (14-12)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (807-807) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (3+1)

																break
															end

															exitTo19 = (43-40)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (208-208)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (403-403) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (48-47) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (5-3)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (25-24)

														if exitTo2 == (42-41) then
															continue
														end
													elseif exitTo19 == (11-9) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+1) then
														if exitTo9 == (40-38) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (44-43) then
															continue
														end
													elseif exitTo19 == (2+2) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (13-8) then
														if exitTo8 == (17-15) then
															exitTo2 = (27-26)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (35-29) then
														if exitTo2 == (25-24) then
															continue
														end
													elseif exitTo19 == (2+5) then
														if exitTo7 == (8-6) then
															exitTo2 = (21-20)

															if exitTo2 == (43-42) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (52-44) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo10 == (31-29) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (5-4) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo5 == (41-39) then
												exitTo2 = (1+0)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (8-7) then
												continue
											end

											break
										end
									end
								elseif exitTo20 == (3+0) then
									if exitTo9 == (40-38) then
										exitTo2 = (23-22)

										if exitTo2 == (1+0) then
											while true do
												vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
												replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (1+1))
												vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												exitTo2 = nil
												exitTo5 = nil

												while true do
													v1050 += n8

													if not (n8 <= (315-315)) then
														exitTo5 = (1+0)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo5 = (22-20)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (332-332) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo5 == (39-38) then
													if v1050 <= v1049 then
														exitTo19 = nil

														while true do
															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (47-46) then
																exitTo19 = (1+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	exitTo6 = nil

																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (118-118) or not v1058.Parent then
																			exitTo6 = (49-48)

																			break
																		end
																	end

																	if exitTo6 == (1+0) then
																		exitTo7 = nil

																		while true do
																			v1050 += n8

																			if not (n8 <= (288-288)) then
																				exitTo7 = (1+0)

																				break
																			end

																			if not (v1050 >= v1049) then
																				break
																			end

																			Character = plr.Character

																			if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																				exitTo7 = (10-8)

																				break
																			end

																			Character2 = plr.Character

																			if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																				v1058 = GetConnectionEnemies(t40)

																				if v1058 then
																					while true do
																						wait()
																						t9.Kill(v1058, _G.TrainDrago)

																						if _G.TrainDrago == false then
																							break
																						elseif v1058.Humanoid.Health <= (264-264) or not v1058.Parent then
																							break
																						end
																					end
																				else
																					_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																				end
																			end
																		end

																		if exitTo7 == (21-20) then
																			if v1050 <= v1049 then
																				continue
																			end

																			exitTo19 = (31-23)

																			break
																		end

																		exitTo19 = (12-5)

																		break
																	end

																	exitTo8 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (565-565)) then
																			exitTo8 = (44-43)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo8 = (23-21)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (809-809) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo8 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (60-54)

																		break
																	end

																	exitTo19 = (4+1)

																	break
																end

																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																exitTo9 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (60-60)) then
																		exitTo9 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (44-43) then
																		exitTo9 = (4-2)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (160-160) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo9 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (3+1)

																	break
																end

																exitTo19 = (2+1)

																break
															end

															exitTo10 = nil

															while true do
																v1050 += n8

																if not (n8 <= (100-100)) then
																	exitTo10 = (11-10)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo10 = (1+1)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (33-33) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo10 == (22-21) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (2+0)

																break
															end

															break
														end

														if exitTo19 == (1+0) then
															exitTo2 = (1+0)

															if exitTo2 == (10-9) then
																continue
															end
														elseif exitTo19 == (2+0) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (3+0) then
															if exitTo9 == (52-50) then
																exitTo2 = (48-47)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (4+0) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (4+1) then
															if exitTo8 == (15-13) then
																exitTo2 = (1+0)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (18-12) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (5+2) then
															if exitTo7 == (1+1) then
																exitTo2 = (1+0)

																if exitTo2 == (41-40) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (7+1) then
															if exitTo2 == (10-9) then
																continue
															end
														elseif exitTo10 == (1+1) then
															exitTo2 = (1+0)

															if exitTo2 == (11-10) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (14-13) then
														continue
													end
												elseif exitTo5 == (2+0) then
													exitTo2 = (1+0)

													if exitTo2 == (45-44) then
														continue
													end
												elseif exitTo2 == (39-38) then
													continue
												end

												break
											end
										end
									elseif exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (1+1))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (579-579)) then
													exitTo5 = (48-47)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (3-2) then
													exitTo5 = (29-27)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (693-693) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (21-20) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (35-34)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (836-836) or not v1058.Parent then
																		exitTo6 = (21-20)

																		break
																	end
																end

																if exitTo6 == (4-3) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (496-496)) then
																			exitTo7 = (19-18)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (9-8) then
																			exitTo7 = (37-35)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (670-670) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (40-39) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (3+5)

																		break
																	end

																	exitTo19 = (17-10)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (109-109)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (18-17) then
																		exitTo8 = (1+1)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (658-658) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (36-35) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (5+1)

																	break
																end

																exitTo19 = (2+3)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (786-786)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo9 = (2+0)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (579-579) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (4+0)

																break
															end

															exitTo19 = (1+2)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (528-528)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (41-39)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (384-384) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (48-47) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (22-20)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (1+0)

														if exitTo2 == (8-7) then
															continue
														end
													elseif exitTo19 == (1+1) then
														if exitTo2 == (24-23) then
															continue
														end
													elseif exitTo19 == (1+2) then
														if exitTo9 == (52-50) then
															exitTo2 = (1+0)

															if exitTo2 == (18-17) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (5-1) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (1+4) then
														if exitTo8 == (1+1) then
															exitTo2 = (49-48)

															if exitTo2 == (28-27) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (26-20) then
														if exitTo2 == (5-4) then
															continue
														end
													elseif exitTo19 == (21-14) then
														if exitTo7 == (32-30) then
															exitTo2 = (48-47)

															if exitTo2 == (13-12) then
																continue
															end
														elseif exitTo2 == (5-4) then
															continue
														end
													elseif exitTo19 == (8+0) then
														if exitTo2 == (48-47) then
															continue
														end
													elseif exitTo10 == (1+1) then
														exitTo2 = (5-4)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (43-42) then
													continue
												end
											elseif exitTo5 == (12-10) then
												exitTo2 = (27-26)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (52-51) then
												continue
											end

											break
										end
									end
								elseif exitTo20 == (1+3) then
									if exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (265-265)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (25-24) then
													exitTo5 = (16-14)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (532-532) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (1+0) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (39-38)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (859-859) or not v1058.Parent then
																		exitTo6 = (12-11)

																		break
																	end
																end

																if exitTo6 == (1+0) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (471-471)) then
																			exitTo7 = (1+0)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (1+1)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (96-96) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (8+0)

																		break
																	end

																	exitTo19 = (31-24)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (617-617)) then
																		exitTo8 = (35-34)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (43-41)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (404-404) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (27-26) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (2+4)

																	break
																end

																exitTo19 = (7-2)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (80-80)) then
																	exitTo9 = (15-14)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (33-32) then
																	exitTo9 = (2+0)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (297-297) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (1+3)

																break
															end

															exitTo19 = (44-41)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (590-590)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (29-28) then
																exitTo10 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (697-697) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (17-16) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (52-50)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (24-23)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+0) then
														if exitTo2 == (21-20) then
															continue
														end
													elseif exitTo19 == (13-10) then
														if exitTo9 == (5-3) then
															exitTo2 = (40-39)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (34-33) then
															continue
														end
													elseif exitTo19 == (1+3) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (1+4) then
														if exitTo8 == (23-21) then
															exitTo2 = (19-18)

															if exitTo2 == (40-39) then
																continue
															end
														elseif exitTo2 == (29-28) then
															continue
														end
													elseif exitTo19 == (5+1) then
														if exitTo2 == (15-14) then
															continue
														end
													elseif exitTo19 == (2+5) then
														if exitTo7 == (2+0) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (7+1) then
														if exitTo2 == (51-50) then
															continue
														end
													elseif exitTo10 == (50-48) then
														exitTo2 = (43-42)

														if exitTo2 == (44-43) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (46-45) then
													continue
												end
											elseif exitTo5 == (1+1) then
												exitTo2 = (6-5)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end

											break
										end
									end
								elseif exitTo20 == (4+1) then
									if exitTo8 == (4-2) then
										exitTo2 = (1+0)

										if exitTo2 == (51-50) then
											while true do
												vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
												replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (48-46))
												vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												exitTo2 = nil
												exitTo5 = nil

												while true do
													v1050 += n8

													if not (n8 <= (270-270)) then
														exitTo5 = (1+0)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (6-5) then
														exitTo5 = (1+1)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (699-699) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo5 == (51-50) then
													if v1050 <= v1049 then
														exitTo19 = nil

														while true do
															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (21-20) then
																exitTo19 = (27-26)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	exitTo6 = nil

																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (776-776) or not v1058.Parent then
																			exitTo6 = (1+0)

																			break
																		end
																	end

																	if exitTo6 == (1+0) then
																		exitTo7 = nil

																		while true do
																			v1050 += n8

																			if not (n8 <= (635-635)) then
																				exitTo7 = (26-25)

																				break
																			end

																			if not (v1050 >= v1049) then
																				break
																			end

																			Character = plr.Character

																			if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (32-31) then
																				exitTo7 = (20-18)

																				break
																			end

																			Character2 = plr.Character

																			if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																				v1058 = GetConnectionEnemies(t40)

																				if v1058 then
																					while true do
																						wait()
																						t9.Kill(v1058, _G.TrainDrago)

																						if _G.TrainDrago == false then
																							break
																						elseif v1058.Humanoid.Health <= (502-502) or not v1058.Parent then
																							break
																						end
																					end
																				else
																					_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																				end
																			end
																		end

																		if exitTo7 == (1+0) then
																			if v1050 <= v1049 then
																				continue
																			end

																			exitTo19 = (66-58)

																			break
																		end

																		exitTo19 = (36-29)

																		break
																	end

																	exitTo8 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (321-321)) then
																			exitTo8 = (1+0)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (23-22) then
																			exitTo8 = (1+1)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (211-211) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo8 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (61-55)

																		break
																	end

																	exitTo19 = (23-18)

																	break
																end

																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																exitTo9 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (805-805)) then
																		exitTo9 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (25-24) then
																		exitTo9 = (37-35)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (577-577) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo9 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (1+3)

																	break
																end

																exitTo19 = (8-5)

																break
															end

															exitTo10 = nil

															while true do
																v1050 += n8

																if not (n8 <= (388-388)) then
																	exitTo10 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo10 = (16-14)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (955-955) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo10 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (1+1)

																break
															end

															break
														end

														if exitTo19 == (48-47) then
															exitTo2 = (41-40)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (22-20) then
															if exitTo2 == (13-12) then
																continue
															end
														elseif exitTo19 == (5-2) then
															if exitTo9 == (2+0) then
																exitTo2 = (1+0)

																if exitTo2 == (28-27) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (2+2) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (1+4) then
															if exitTo8 == (15-13) then
																exitTo2 = (33-32)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (50-49) then
																continue
															end
														elseif exitTo19 == (5+1) then
															if exitTo2 == (15-14) then
																continue
															end
														elseif exitTo19 == (1+6) then
															if exitTo7 == (1+1) then
																exitTo2 = (1+0)

																if exitTo2 == (24-23) then
																	continue
																end
															elseif exitTo2 == (17-16) then
																continue
															end
														elseif exitTo19 == (65-57) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo10 == (1+1) then
															exitTo2 = (5-4)

															if exitTo2 == (36-35) then
																continue
															end
														elseif exitTo2 == (31-30) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo5 == (13-11) then
													exitTo2 = (1+0)

													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (21-20) then
													continue
												end

												break
											end
										end
									elseif exitTo2 == (51-50) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (733-733)) then
													exitTo5 = (3-2)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo5 = (2+0)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (32-32) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (1+0) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (1+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (92-92) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (1+0) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (960-960)) then
																			exitTo7 = (1+0)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (1+1)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (208-208) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (14-13) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (46-38)

																		break
																	end

																	exitTo19 = (62-55)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (322-322)) then
																		exitTo8 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (49-47)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (13-13) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (28-27) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (1+5)

																	break
																end

																exitTo19 = (38-33)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (18-18)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (52-51) then
																	exitTo9 = (31-29)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (589-589) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (45-44) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (33-29)

																break
															end

															exitTo19 = (1+2)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (112-112)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (1+1)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (357-357) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (2+0)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (6-5)

														if exitTo2 == (22-21) then
															continue
														end
													elseif exitTo19 == (2+0) then
														if exitTo2 == (34-33) then
															continue
														end
													elseif exitTo19 == (39-36) then
														if exitTo9 == (48-46) then
															exitTo2 = (37-36)

															if exitTo2 == (5-4) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (1+3) then
														if exitTo2 == (36-35) then
															continue
														end
													elseif exitTo19 == (15-10) then
														if exitTo8 == (39-37) then
															exitTo2 = (1+0)

															if exitTo2 == (49-48) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (3+3) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (19-12) then
														if exitTo7 == (37-35) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (18-17) then
															continue
														end
													elseif exitTo19 == (52-44) then
														if exitTo2 == (19-18) then
															continue
														end
													elseif exitTo10 == (2+0) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (36-35) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo5 == (51-49) then
												exitTo2 = (41-40)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (31-30) then
												continue
											end

											break
										end
									end
								elseif exitTo20 == (13-7) then
									if exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (571-571)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo5 = (2+0)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (335-335) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (25-24) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (9-8)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (109-109) or not v1058.Parent then
																		exitTo6 = (5-4)

																		break
																	end
																end

																if exitTo6 == (29-28) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (67-67)) then
																			exitTo7 = (1+0)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (10-8)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (242-242) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (22-21) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (13-5)

																		break
																	end

																	exitTo19 = (24-17)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (883-883)) then
																		exitTo8 = (34-33)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (15-13)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (659-659) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (13-7)

																	break
																end

																exitTo19 = (10-5)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (40-40)) then
																	exitTo9 = (3-2)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (13-12) then
																	exitTo9 = (3-1)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (162-162) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (37-36) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (4+0)

																break
															end

															exitTo19 = (1+2)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (823-823)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																exitTo10 = (42-40)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (535-535) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (41-40) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (1+1)

															break
														end

														break
													end

													if exitTo19 == (3-2) then
														exitTo2 = (1+0)

														if exitTo2 == (29-28) then
															continue
														end
													elseif exitTo19 == (1+1) then
														if exitTo2 == (5-4) then
															continue
														end
													elseif exitTo19 == (2+1) then
														if exitTo9 == (2+0) then
															exitTo2 = (1+0)

															if exitTo2 == (6-5) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (50-46) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (5+0) then
														if exitTo8 == (14-12) then
															exitTo2 = (13-12)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (3+3) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (32-25) then
														if exitTo7 == (1+1) then
															exitTo2 = (52-51)

															if exitTo2 == (44-43) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (4+4) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo10 == (11-9) then
														exitTo2 = (27-26)

														if exitTo2 == (18-17) then
															continue
														end
													elseif exitTo2 == (8-7) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo5 == (2+0) then
												exitTo2 = (8-7)

												if exitTo2 == (34-33) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end

											break
										end
									end
								elseif exitTo20 == (2+5) then
									if exitTo7 == (54-52) then
										exitTo2 = (23-22)

										if exitTo2 == (41-40) then
											while true do
												vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
												replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (34-32))
												vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
												_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												exitTo2 = nil
												exitTo5 = nil

												while true do
													v1050 += n8

													if not (n8 <= (5-5)) then
														exitTo5 = (1+0)

														break
													end

													if not (v1050 >= v1049) then
														break
													end

													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo5 = (2+0)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (562-562) or not v1058.Parent then
																	break
																end
															end
														else
															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														end
													end
												end

												if exitTo5 == (1+0) then
													if v1050 <= v1049 then
														exitTo19 = nil

														while true do
															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (45-44) then
																exitTo19 = (1+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	exitTo6 = nil

																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (632-632) or not v1058.Parent then
																			exitTo6 = (35-34)

																			break
																		end
																	end

																	if exitTo6 == (1+0) then
																		exitTo7 = nil

																		while true do
																			v1050 += n8

																			if not (n8 <= (866-866)) then
																				exitTo7 = (41-40)

																				break
																			end

																			if not (v1050 >= v1049) then
																				break
																			end

																			Character = plr.Character

																			if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (5-4) then
																				exitTo7 = (2+0)

																				break
																			end

																			Character2 = plr.Character

																			if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																				v1058 = GetConnectionEnemies(t40)

																				if v1058 then
																					while true do
																						wait()
																						t9.Kill(v1058, _G.TrainDrago)

																						if _G.TrainDrago == false then
																							break
																						elseif v1058.Humanoid.Health <= (417-417) or not v1058.Parent then
																							break
																						end
																					end
																				else
																					_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																				end
																			end
																		end

																		if exitTo7 == (1+0) then
																			if v1050 <= v1049 then
																				continue
																			end

																			exitTo19 = (6+2)

																			break
																		end

																		exitTo19 = (6+1)

																		break
																	end

																	exitTo8 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (32-32)) then
																			exitTo8 = (14-13)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo8 = (2+0)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (671-671) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo8 == (9-8) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (3+3)

																		break
																	end

																	exitTo19 = (4+1)

																	break
																end

																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																exitTo9 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (474-474)) then
																		exitTo9 = (40-39)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo9 = (14-12)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (568-568) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo9 == (20-19) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (1+3)

																	break
																end

																exitTo19 = (6-3)

																break
															end

															exitTo10 = nil

															while true do
																v1050 += n8

																if not (n8 <= (196-196)) then
																	exitTo10 = (35-34)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (30-29) then
																	exitTo10 = (2+0)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (129-129) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo10 == (25-24) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (1+1)

																break
															end

															break
														end

														if exitTo19 == (1+0) then
															exitTo2 = (2-1)

															if exitTo2 == (45-44) then
																continue
															end
														elseif exitTo19 == (2+0) then
															if exitTo2 == (28-27) then
																continue
															end
														elseif exitTo19 == (49-46) then
															if exitTo9 == (7-5) then
																exitTo2 = (1+0)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (21-20) then
																continue
															end
														elseif exitTo19 == (53-49) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (3+2) then
															if exitTo8 == (6-4) then
																exitTo2 = (14-13)

																if exitTo2 == (5-4) then
																	continue
																end
															elseif exitTo2 == (34-33) then
																continue
															end
														elseif exitTo19 == (24-18) then
															if exitTo2 == (8-7) then
																continue
															end
														elseif exitTo19 == (8-1) then
															if exitTo7 == (48-46) then
																exitTo2 = (39-38)

																if exitTo2 == (1+0) then
																	continue
																end
															elseif exitTo2 == (1+0) then
																continue
															end
														elseif exitTo19 == (56-48) then
															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo10 == (2+0) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (18-17) then
														continue
													end
												elseif exitTo5 == (9-7) then
													exitTo2 = (1+0)

													if exitTo2 == (18-17) then
														continue
													end
												elseif exitTo2 == (16-15) then
													continue
												end

												break
											end
										end
									elseif exitTo2 == (1+0) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (278-278)) then
													exitTo5 = (8-7)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (15-14) then
													exitTo5 = (52-50)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (460-460) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (11-10) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
															exitTo19 = (1+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (331-331) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (7-6) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (480-480)) then
																			exitTo7 = (7-6)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (40-38)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (233-233) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (5+3)

																		break
																	end

																	exitTo19 = (6+1)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (917-917)) then
																		exitTo8 = (10-9)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (35-34) then
																		exitTo8 = (1+1)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (595-595) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (24-23) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (10-4)

																	break
																end

																exitTo19 = (4+1)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (888-888)) then
																	exitTo9 = (36-35)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (19-18) then
																	exitTo9 = (31-29)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (204-204) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (11-10) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (57-53)

																break
															end

															exitTo19 = (33-30)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (747-747)) then
																exitTo10 = (19-18)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (11-10) then
																exitTo10 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (908-908) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (1+0) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (7-5)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (47-46)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (27-25) then
														if exitTo2 == (24-23) then
															continue
														end
													elseif exitTo19 == (1+2) then
														if exitTo9 == (37-35) then
															exitTo2 = (6-5)

															if exitTo2 == (48-47) then
																continue
															end
														elseif exitTo2 == (48-47) then
															continue
														end
													elseif exitTo19 == (4+0) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (35-30) then
														if exitTo8 == (10-8) then
															exitTo2 = (9-8)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (21-15) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+5) then
														if exitTo7 == (1+1) then
															exitTo2 = (1+0)

															if exitTo2 == (26-25) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (8+0) then
														if exitTo2 == (7-6) then
															continue
														end
													elseif exitTo10 == (2+0) then
														exitTo2 = (36-35)

														if exitTo2 == (27-26) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (20-19) then
													continue
												end
											elseif exitTo5 == (39-37) then
												exitTo2 = (26-25)

												if exitTo2 == (41-40) then
													continue
												end
											elseif exitTo2 == (30-29) then
												continue
											end

											break
										end
									end
								elseif exitTo20 == (66-58) then
									if exitTo2 == (42-41) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (5-3))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (71-71)) then
													exitTo5 = (1+0)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (6-5) then
													exitTo5 = (2+0)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (652-652) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (37-36) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (11-10) then
															exitTo19 = (25-24)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (519-519) or not v1058.Parent then
																		exitTo6 = (27-26)

																		break
																	end
																end

																if exitTo6 == (1+0) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (356-356)) then
																			exitTo7 = (45-44)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																			exitTo7 = (23-21)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (842-842) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (8+0)

																		break
																	end

																	exitTo19 = (43-36)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (977-977)) then
																		exitTo8 = (52-51)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (1+1)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (738-738) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (37-36) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (2+4)

																	break
																end

																exitTo19 = (1+4)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (545-545)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo9 = (12-10)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (765-765) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (1+0) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (36-32)

																break
															end

															exitTo19 = (17-14)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (197-197)) then
																exitTo10 = (16-15)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (26-25) then
																exitTo10 = (2+0)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (610-610) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (50-49) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (2+0)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (1+0)

														if exitTo2 == (21-20) then
															continue
														end
													elseif exitTo19 == (1+1) then
														if exitTo2 == (14-13) then
															continue
														end
													elseif exitTo19 == (1+2) then
														if exitTo9 == (20-18) then
															exitTo2 = (37-36)

															if exitTo2 == (52-51) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (47-43) then
														if exitTo2 == (42-41) then
															continue
														end
													elseif exitTo19 == (3+2) then
														if exitTo8 == (37-35) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (44-38) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (31-24) then
														if exitTo7 == (2+0) then
															exitTo2 = (1+0)

															if exitTo2 == (9-8) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (2+6) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo10 == (31-29) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo2 == (10-9) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo5 == (19-17) then
												exitTo2 = (21-20)

												if exitTo2 == (34-33) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end

											break
										end
									end
								elseif exitTo10 == (2+0) then
									exitTo2 = (39-38)

									if exitTo2 == (17-16) then
										while true do
											vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
											replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (2+0))
											vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
											_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
											exitTo2 = nil
											exitTo5 = nil

											while true do
												v1050 += n8

												if not (n8 <= (987-987)) then
													exitTo5 = (17-16)

													break
												end

												if not (v1050 >= v1049) then
													break
												end

												Character = plr.Character

												if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
													exitTo5 = (2+0)

													break
												end

												Character2 = plr.Character

												if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
													v1058 = GetConnectionEnemies(t40)

													if v1058 then
														while true do
															wait()
															t9.Kill(v1058, _G.TrainDrago)

															if _G.TrainDrago == false then
																break
															elseif v1058.Humanoid.Health <= (531-531) or not v1058.Parent then
																break
															end
														end
													else
														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
													end
												end
											end

											if exitTo5 == (2-1) then
												if v1050 <= v1049 then
													exitTo19 = nil

													while true do
														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (41-40) then
															exitTo19 = (1+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																exitTo6 = nil

																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (97-97) or not v1058.Parent then
																		exitTo6 = (1+0)

																		break
																	end
																end

																if exitTo6 == (1+0) then
																	exitTo7 = nil

																	while true do
																		v1050 += n8

																		if not (n8 <= (487-487)) then
																			exitTo7 = (25-24)

																			break
																		end

																		if not (v1050 >= v1049) then
																			break
																		end

																		Character = plr.Character

																		if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (28-27) then
																			exitTo7 = (2+0)

																			break
																		end

																		Character2 = plr.Character

																		if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																			v1058 = GetConnectionEnemies(t40)

																			if v1058 then
																				while true do
																					wait()
																					t9.Kill(v1058, _G.TrainDrago)

																					if _G.TrainDrago == false then
																						break
																					elseif v1058.Humanoid.Health <= (13-13) or not v1058.Parent then
																						break
																					end
																				end
																			else
																				_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																			end
																		end
																	end

																	if exitTo7 == (1+0) then
																		if v1050 <= v1049 then
																			continue
																		end

																		exitTo19 = (26-18)

																		break
																	end

																	exitTo19 = (29-22)

																	break
																end

																exitTo8 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (154-154)) then
																		exitTo8 = (23-22)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																		exitTo8 = (1+1)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (462-462) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo8 == (21-20) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (48-42)

																	break
																end

																exitTo19 = (2+3)

																break
															end

															_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															exitTo9 = nil

															while true do
																v1050 += n8

																if not (n8 <= (116-116)) then
																	exitTo9 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (9-8) then
																	exitTo9 = (1+1)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (175-175) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo9 == (33-32) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (2+2)

																break
															end

															exitTo19 = (21-18)

															break
														end

														exitTo10 = nil

														while true do
															v1050 += n8

															if not (n8 <= (823-823)) then
																exitTo10 = (1+0)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (17-16) then
																exitTo10 = (21-19)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (133-133) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo10 == (33-32) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (45-43)

															break
														end

														break
													end

													if exitTo19 == (1+0) then
														exitTo2 = (1+0)

														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (42-40) then
														if exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (3+0) then
														if exitTo9 == (43-41) then
															exitTo2 = (1+0)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (58-54) then
														if exitTo2 == (16-15) then
															continue
														end
													elseif exitTo19 == (5+0) then
														if exitTo8 == (1+1) then
															exitTo2 = (19-18)

															if exitTo2 == (1+0) then
																continue
															end
														elseif exitTo2 == (27-26) then
															continue
														end
													elseif exitTo19 == (3+3) then
														if exitTo2 == (25-24) then
															continue
														end
													elseif exitTo19 == (58-51) then
														if exitTo7 == (16-14) then
															exitTo2 = (1+0)

															if exitTo2 == (42-41) then
																continue
															end
														elseif exitTo2 == (1+0) then
															continue
														end
													elseif exitTo19 == (14-6) then
														if exitTo2 == (46-45) then
															continue
														end
													elseif exitTo10 == (1+1) then
														exitTo2 = (1+0)

														if exitTo2 == (52-51) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo5 == (1+1) then
												exitTo2 = (1+0)

												if exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end

											break
										end
									end
								elseif exitTo2 == (1+0) then
									while true do
										vim1:SendKeyEvent(true,_zD1436("Zg=="), true, game)
										replicated.Remotes.CommF_:InvokeServer(_zD1436("ak9YTV5bWm1eXFo="),_zD1436("fUpG"), (36-34))
										vim1:SendKeyEvent(false,_zD1436("Zg=="), true, game)
										_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
										exitTo2 = nil
										exitTo5 = nil

										while true do
											v1050 += n8

											if not (n8 <= (586-586)) then
												exitTo5 = (15-14)

												break
											end

											if not (v1050 >= v1049) then
												break
											end

											Character = plr.Character

											if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
												exitTo5 = (1+1)

												break
											end

											Character2 = plr.Character

											if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
												v1058 = GetConnectionEnemies(t40)

												if v1058 then
													while true do
														wait()
														t9.Kill(v1058, _G.TrainDrago)

														if _G.TrainDrago == false then
															break
														elseif v1058.Humanoid.Health <= (663-663) or not v1058.Parent then
															break
														end
													end
												else
													_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
												end
											end
										end

										if exitTo5 == (49-48) then
											if v1050 <= v1049 then
												exitTo19 = nil

												while true do
													Character = plr.Character

													if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
														exitTo19 = (10-9)

														break
													end

													Character2 = plr.Character

													if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
														v1058 = GetConnectionEnemies(t40)

														if v1058 then
															exitTo6 = nil

															while true do
																wait()
																t9.Kill(v1058, _G.TrainDrago)

																if _G.TrainDrago == false then
																	break
																elseif v1058.Humanoid.Health <= (915-915) or not v1058.Parent then
																	exitTo6 = (1+0)

																	break
																end
															end

															if exitTo6 == (11-10) then
																exitTo7 = nil

																while true do
																	v1050 += n8

																	if not (n8 <= (839-839)) then
																		exitTo7 = (1+0)

																		break
																	end

																	if not (v1050 >= v1049) then
																		break
																	end

																	Character = plr.Character

																	if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (20-19) then
																		exitTo7 = (2+0)

																		break
																	end

																	Character2 = plr.Character

																	if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																		v1058 = GetConnectionEnemies(t40)

																		if v1058 then
																			while true do
																				wait()
																				t9.Kill(v1058, _G.TrainDrago)

																				if _G.TrainDrago == false then
																					break
																				elseif v1058.Humanoid.Health <= (487-487) or not v1058.Parent then
																					break
																				end
																			end
																		else
																			_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																		end
																	end
																end

																if exitTo7 == (1+0) then
																	if v1050 <= v1049 then
																		continue
																	end

																	exitTo19 = (2+6)

																	break
																end

																exitTo19 = (32-25)

																break
															end

															exitTo8 = nil

															while true do
																v1050 += n8

																if not (n8 <= (178-178)) then
																	exitTo8 = (1+0)

																	break
																end

																if not (v1050 >= v1049) then
																	break
																end

																Character = plr.Character

																if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (1+0) then
																	exitTo8 = (52-50)

																	break
																end

																Character2 = plr.Character

																if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																	v1058 = GetConnectionEnemies(t40)

																	if v1058 then
																		while true do
																			wait()
																			t9.Kill(v1058, _G.TrainDrago)

																			if _G.TrainDrago == false then
																				break
																			elseif v1058.Humanoid.Health <= (829-829) or not v1058.Parent then
																				break
																			end
																		end
																	else
																		_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																	end
																end
															end

															if exitTo8 == (3-2) then
																if v1050 <= v1049 then
																	continue
																end

																exitTo19 = (12-6)

																break
															end

															exitTo19 = (49-44)

															break
														end

														_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
														exitTo9 = nil

														while true do
															v1050 += n8

															if not (n8 <= (967-967)) then
																exitTo9 = (21-20)

																break
															end

															if not (v1050 >= v1049) then
																break
															end

															Character = plr.Character

															if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (49-48) then
																exitTo9 = (51-49)

																break
															end

															Character2 = plr.Character

															if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
																v1058 = GetConnectionEnemies(t40)

																if v1058 then
																	while true do
																		wait()
																		t9.Kill(v1058, _G.TrainDrago)

																		if _G.TrainDrago == false then
																			break
																		elseif v1058.Humanoid.Health <= (193-193) or not v1058.Parent then
																			break
																		end
																	end
																else
																	_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
																end
															end
														end

														if exitTo9 == (38-37) then
															if v1050 <= v1049 then
																continue
															end

															exitTo19 = (4+0)

															break
														end

														exitTo19 = (2+1)

														break
													end

													exitTo10 = nil

													while true do
														v1050 += n8

														if not (n8 <= (247-247)) then
															exitTo10 = (41-40)

															break
														end

														if not (v1050 >= v1049) then
															break
														end

														Character = plr.Character

														if Character:FindFirstChild(_zD1436("bV5cWnpRWk1YRg==")).Value == (22-21) then
															exitTo10 = (2+0)

															break
														end

														Character2 = plr.Character

														if Character2:FindFirstChild(_zD1436("bV5cWmtNXlFMWVBNUlpb")).Value == false then
															v1058 = GetConnectionEnemies(t40)

															if v1058 then
																while true do
																	wait()
																	t9.Kill(v1058, _G.TrainDrago)

																	if _G.TrainDrago == false then
																		break
																	elseif v1058.Humanoid.Health <= (720-720) or not v1058.Parent then
																		break
																	end
																end
															else
																_tp(CFrame.new(4620.61572265625, 1002.2954711914062, 399.08688354492188))
															end
														end
													end

													if exitTo10 == (1+0) then
														if v1050 <= v1049 then
															continue
														end

														exitTo19 = (35-33)

														break
													end

													break
												end

												if exitTo19 == (10-9) then
													exitTo2 = (44-43)

													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo19 == (14-12) then
													if exitTo2 == (35-34) then
														continue
													end
												elseif exitTo19 == (1+2) then
													if exitTo9 == (1+1) then
														exitTo2 = (15-14)

														if exitTo2 == (23-22) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo19 == (37-33) then
													if exitTo2 == (46-45) then
														continue
													end
												elseif exitTo19 == (4+1) then
													if exitTo8 == (22-20) then
														exitTo2 = (20-19)

														if exitTo2 == (43-42) then
															continue
														end
													elseif exitTo2 == (12-11) then
														continue
													end
												elseif exitTo19 == (6+0) then
													if exitTo2 == (25-24) then
														continue
													end
												elseif exitTo19 == (2+5) then
													if exitTo7 == (2+0) then
														exitTo2 = (9-8)

														if exitTo2 == (52-51) then
															continue
														end
													elseif exitTo2 == (1+0) then
														continue
													end
												elseif exitTo19 == (7+1) then
													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo10 == (1+1) then
													exitTo2 = (1+0)

													if exitTo2 == (1+0) then
														continue
													end
												elseif exitTo2 == (1+0) then
													continue
												end
											elseif exitTo2 == (1+0) then
												continue
											end
										elseif exitTo5 == (17-15) then
											exitTo2 = (1+0)

											if exitTo2 == (1+0) then
												continue
											end
										elseif exitTo2 == (21-20) then
											continue
										end

										break
									end
								end
							end
						end
					end
				end
			end)
		end
	end)
end

dragoTpVolcano = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("a0haWlFgS1Bge01eWFBga01WXlNM"), {
	Text =_zD1436("a0haWlEfS1Afe01eWFAfa01WXlNM"),
	Default = false,
	Callback = function(p248)
		_G.TpDrago_Prehis = p248
	end
})
spawn(function()
	while wait(Sec) do
		if _G.TpDrago_Prehis then
			local TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild(_zD1436("a01WXlNrWlNaT1BNSw=="))

			if TrialTeleport and TrialTeleport:IsA(_zD1436("b15NSw==")) then
				local exitTo

				repeat
					_tp(CFrame.new(TrialTeleport.Position))
					exitTo = nil

					while wait(Sec) do
						if _G.TpDrago_Prehis then
							TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild(_zD1436("a01WXlNrWlNaT1BNSw=="))

							if TrialTeleport and TrialTeleport:IsA(_zD1436("b15NSw==")) then
								exitTo = (12-11)

								break
							end
						end
					end
				until exitTo ~= (24-23)

				return
			end
		end
	end
end)

do
	bdrago = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("bEheT2B7TV5YUGBtXlxa"), {
		Text =_zD1436("bEheTx97TV5YUB9tXlxa"),
		Default = false,
		Callback = function(p249)
			_G.BuyDrago = p249
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.BuyDrago then
				pcall(function()
					if (CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375).Position - Root.Position).Magnitude >= (263+37) then
						_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
					else
						_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))
						replicated.Modules.Net:FindFirstChild(_zD1436("bXkQdlFLWk1eXEt7TV5YUFFuSlpMSw==")):InvokeServer(unpack({ {
							NPC =_zD1436("e01eWFBRH2hWRV5NWw=="),
							Command =_zD1436("e01eWFBRbV5cWg==")
						} }))
					end
				end)
			end
		end
	end)
end

do
	UpTalon = GRP_Prehistoric_Drago_Trial:AddToggle(_zD1436("ak9YTV5bWmB7TV5YUFFga15TUFFgaFZLV2BqRVBLVw=="), {
		Text =_zD1436("ak9YTV5bWh97TV5YUFEfa15TUFEfaFZLVx9qRVBLVw=="),
		Default = false,
		Callback = function(p250)
			_G.DT_Uzoth = p250
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.DT_Uzoth then
				local cFrame = CFrame.new(5661.89014, 1211.31909, 864.836731, 0.811413169, -1.36805838e-(49-41), -0.584473014, 4.75227395e-(8+0), (1+0), 4.25682458e-(65-57), 0.584473014, -6.23161966e-(2+6), 0.811413169)

				_tp(cFrame)

				if (cFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (25+0) then
					replicated.Modules.Net[_zD1436("bXkQdlFLWk1eXEt7TV5YUFFuSlpMSw==")]:InvokeServer({
						NPC =_zD1436("akVQS1c="),
						Command =_zD1436("ak9YTV5bWg==")
					})
				end
			end
		end
	end)
end

GRP_Prehistoric_Volcanic_Crafting = t15.Prehistoric:AddLeftGroupbox(_zD1436("aVBTXF5RVlwffE1eWUtWUVg="))
GRP_Prehistoric_Volcanic_Crafting:AddButton({
	Text =_zD1436("fE1eWUsfe01eWFBRV1peTUs="),
	Func = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("e01eWFBRV1peTUs="))
	end
})

do
	GRP_Prehistoric_Volcanic_Crafting:AddButton({
		Text =_zD1436("fE1eWUsfe01eWFBRTEtQTVI="),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("e01eWFBRTEtQTVI="))
		end
	})
end

GRP_Prehistoric_Volcanic_Crafting:AddButton({
	Text =_zD1436("fE1eWUsfe1ZRUB93UFBb"),
	Func = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("e1ZRUHdQUFs="))
	end
})

do
	GRP_Prehistoric_Volcanic_Crafting:AddButton({
		Text =_zD1436("fE1eWUsfaxJtWkcfbFRKU1M="),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("a21aR2xUSlNT"))
		end
	})
end

GRP_Prehistoric_Prehistoric_Island = t15.Prehistoric:AddLeftGroupbox(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFb"))

do
	local v1079 = GRP_Prehistoric_Prehistoric_Island:AddLabel("")

	spawn(function()
		while wait(0.2) do
			if not workspace.Map:FindFirstChild(_zD1436("b01aV1ZMS1BNVlx2TFNeUVs=")) then
				if not workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFb")) then
					v1079:SetText(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFbHwUfeV5TTFo="))

					continue
				end
			end

			v1079:SetText(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFbHwUfa01KWg=="))
		end
	end)
end

do
	GRP_Prehistoric_Prehistoric_Island:AddButton({
		Text =_zD1436("fE1eWUsfaVBTXF5RVlwfcl5YUVpL"),
		Func = function()
			replicated.Modules.Net[_zD1436("bXkQfE1eWUs=")]:InvokeServer(_zD1436("b1BMTFZdU1p3Xk1bXFBbWg=="),_zD1436("aVBTXF5RVlwfcl5YUVpL"))
		end
	})
end

do
	GRP_Prehistoric_Prehistoric_Island:AddToggle(_zD1436("fE1eWUtgaVBTXF5RVlxgcl5YUVpL"), {
		Text =_zD1436("fE1eWUsfaVBTXF5RVlwfcl5YUVpL"),
		Default = false,
		Callback = function(p251)
			_G.Prehis_Find = p251
		end
	})
end

do
	task.spawn(function()
		local rfCraft = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Modules.Net[_zD1436("bXkQfE1eWUs=")]

		while task.wait(0.3) do
			if getgenv().AutoCraftVolcanic then
				pcall(function()
					rfCraft:InvokeServer(_zD1436("b1BMTFZdU1p3Xk1bXFBbWg=="),_zD1436("aVBTXF5RVlwfcl5YUVpL"))
				end)
				getgenv().AutoCraftVolcanic = false
			end
		end
	end)
end

GRP_Prehistoric_Prehistoric_Island:AddToggle(_zD1436("fkpLUGB5VlFbYG9NWldWTEtQTVZcYHZMU15RWw=="), {
	Text =_zD1436("fkpLUB95VlFbH29NWldWTEtQTVZcH3ZMU15RWw=="),
	Default = false,
	Callback = function(p252)
		_G.Prehis_Find = p252
	end
})

do
	local u1081

	spawn(function()
		while wait(Sec) do
			pcall(function()
				if _G.Prehis_Find then
					local Character = plr.Character

					if not Character then
						return
					end

					local HumanoidRootPart = Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
					local Humanoid = Character:FindFirstChild(_zD1436("d0pSXlFQVls="))

					if not HumanoidRootPart or not Humanoid or Humanoid.Health <= (656-656) then
						return
					end

					local PrehistoricIsland = workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFb"), true)

					if PrehistoricIsland then
						local HeadTeleport = PrehistoricIsland:FindFirstChild(_zD1436("d1peW2taU1pPUE1L"), true) or PrehistoricIsland:FindFirstChild(_zD1436("a1pTWk9QTUtgd1peWw=="), true) or PrehistoricIsland:FindFirstChild(_zD1436("d1peWw=="), true)

						if HeadTeleport then
							local CFrame_ = HeadTeleport.CFrame
							local v1088 = CFrame_.Position - CFrame_.LookVector * (118-78) + Vector3.new((435-435), (63-43), (810-810))

							if (v1088 - HumanoidRootPart.Position).Magnitude > (101-71) then
								_tp(CFrame.new(v1088))
							end
						else
							local Position = PrehistoricIsland.CFrame.Position

							_tp(CFrame.new(Position - (Position - HumanoidRootPart.Position).Unit * (337-87) + Vector3.new((527-527), (111-51), (973-973))))
						end
					else
						local v1090 = CheckBoat()

						if not v1090 then
							local cFrame = CFrame.new(-16927.451, 9.086, 433.864)

							TeleportToTarget(cFrame)

							if (cFrame.Position - HumanoidRootPart.Position).Magnitude <= (6+4) then
								replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVBeSw=="), _G.SelectedBoat or(_zD1436("eEpeTVtWXlE=")))
							end

							return
						end

						if Humanoid.Sit == false then
							_tp(v1090.VehicleSeat.CFrame * CFrame.new((878-878), (10-9), (604-604)))

							return
						end

						local cFrame = CFrame.new(-(13750125-3750125), (46-15), 37016.25)

						u1081 = cFrame

						if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
							_tp(CFrame.new(-(9679152+320848), (23+127), 37016.25))
						else
							_tp(cFrame)
						end
					end
				end
			end)
		end
	end)
end

do
	GRP_Prehistoric_Prehistoric_Island:AddToggle(_zD1436("fkpLUGBsS15NS2BvTVpXVkxLUE1WXGB6SVpRSw=="), {
		Text =_zD1436("fkpLUB9sS15NSx9vTVpXVkxLUE1WXB96SVpRSw=="),
		Default = false,
		Callback = function(p253)
			_G.AutoStartPrehistoric = p253
		end
	})
end

do
	spawn(function()
		while wait() do
			if _G.AutoStartPrehistoric then
				pcall(function()
					if workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("b01aV1ZMS1BNVlwfdkxTXlFb"), true) then
						if workspace.Map:FindFirstChild(_zD1436("b01aV1ZMS1BNVlx2TFNeUVs="), true) then
							local ActivationPrompt = workspace.Map.PrehistoricIsland.Core:FindFirstChild(_zD1436("flxLVkleS1ZQUW9NUFJPSw=="), true)

							if ActivationPrompt and ActivationPrompt:FindFirstChild(_zD1436("b01QR1ZSVktGb01QUk9L")) then
								if plr:DistanceFromCharacter(ActivationPrompt.CFrame.Position) <= (300-150) then
									fireproximityprompt(ActivationPrompt.ProximityPrompt, math.huge)
									vim1:SendKeyEvent(true,_zD1436("eg=="), true, game)
									wait(1.5)
									vim1:SendKeyEvent(false,_zD1436("eg=="), true, game)
								end

								_tp(ActivationPrompt.CFrame)
							end
						end
					end
				end)
			end
		end
	end)
end

do
	GRP_Prehistoric_Prehistoric_Island:AddToggle(_zD1436("fkpLUGBvXktcV2BvTVpXVkxLUE1WXGB6SVpRSw=="), {
		Text =_zD1436("fkpLUB9vXktcVx9vTVpXVkxLUE1WXB96SVpRSw=="),
		Default = false,
		Callback = function(p254)
			_G.Prehis_Skills = p254
		end
	})
end

spawn(function()
	while wait(0.3) do
		if _G.Prehis_Skills then
			pcall(function()
				local PrehistoricIsland = workspace.Map:FindFirstChild(_zD1436("b01aV1ZMS1BNVlx2TFNeUVs="))

				if not PrehistoricIsland then
					return
				end

				for _, descendant in pairs(PrehistoricIsland:GetDescendants()) do
					if descendant:IsA(_zD1436("fV5MWm9eTUs=")) or descendant:IsA(_zD1436("clpMV29eTUs=")) then
						if descendant.Name:lower():find(_zD1436("U15JXg==")) then
							descendant:Destroy()
						end
					end
				end

				local Core = PrehistoricIsland:FindFirstChild(_zD1436("fFBNWg=="))

				if Core then
					local InteriorLava = Core:FindFirstChild(_zD1436("dlFLWk1WUE1zXkle"))

					if InteriorLava then
						InteriorLava:Destroy()
					end
				end

				local TrialTeleport = PrehistoricIsland:FindFirstChild(_zD1436("a01WXlNrWlNaT1BNSw=="))

				for _, descendant in pairs(PrehistoricIsland:GetDescendants()) do
					if descendant.Name ==_zD1436("a1BKXFd2UUtaTVpMSw==") and (not TrialTeleport or not descendant:IsDescendantOf(TrialTeleport)) then
						descendant.Parent:Destroy()
					end
				end
			end)
		end
	end
end)
spawn(function()
	while wait(Sec) do
		if _G.Prehis_Skills then
			pcall(function()
				local v1102 = GetConnectionEnemies(_zD1436("c15JXh94UFNaUg=="))

				if v1102 and v1102:FindFirstChild(_zD1436("d0pSXlFQVls=")) then
					while true do
						wait(0.1)
						t9.Kill(v1102, true)
						v1102.Humanoid:ChangeState((2+13))

						if _G.Prehis_Skills then
							if not v1102.Parent or v1102.Humanoid.Health <= (900-900) then
								break
							end
						else
							break
						end
					end
				end
			end)
		end
	end
end)

do
	spawn(function()
		while wait(Sec) do
			if _G.Prehis_Skills then
				pcall(function()
					local PrehistoricIsland = workspace.Map:FindFirstChild(_zD1436("b01aV1ZMS1BNVlx2TFNeUVs="))

					if not PrehistoricIsland then
						return
					end

					local Core = PrehistoricIsland:FindFirstChild(_zD1436("fFBNWg=="))

					if not Core then
						return
					end

					local VolcanoRocks = Core:FindFirstChild(_zD1436("aVBTXF5RUG1QXFRM"))

					if not VolcanoRocks then
						return
					end

					for _, child in pairs(VolcanoRocks:GetChildren()) do
						local VFXLayer = child:FindFirstChild(_zD1436("aXlnc15GWk0="))
						local At0 = VFXLayer and VFXLayer:FindFirstChild(_zD1436("fksP"))
						local Glow = At0 and At0:FindFirstChild(_zD1436("eFNQSA=="))

						if Glow and Glow.Enabled then
							repeat
								wait(0.1)
								_tp(VFXLayer.CFrame)

								if plr:DistanceFromCharacter(VFXLayer.CFrame.Position) <= (265-115) then
									MousePos = VFXLayer.CFrame.Position
									Useskills(_zD1436("clpTWlo="),_zD1436("ZQ=="))
									wait(0.4)
									Useskills(_zD1436("clpTWlo="),_zD1436("Zw=="))
									wait(0.4)
									Useskills(_zD1436("clpTWlo="),_zD1436("fA=="))
									wait(0.4)
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
									wait(0.4)
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
									wait(0.4)
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
								end
							until not _G.Prehis_Skills or not Glow.Enabled
						end
					end
				end)
			end
		end
	end)
end

Kaura = GRP_Prehistoric_Prehistoric_Island:AddToggle(_zD1436("dFZTU2B+Sk1e"), {
	Text =_zD1436("dFZTUx9+Sk1e"),
	Default = false,
	Callback = function(p255)
		_G.KillAuraFull = p255
	end
})
spawn(function()
	while task.wait((43-41)) do
		if _G.KillAuraFull then
			local exitTo

			repeat
				pcall(function()
					local LocalPlayer = game.Players.LocalPlayer
					local Character = LocalPlayer.Character
					local HumanoidRootPart = Character and Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

					if not HumanoidRootPart then
						return
					end

					sethiddenproperty(LocalPlayer,_zD1436("bFZSSlNeS1ZQUW1eW1ZKTA=="), math.huge)

					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and (child.HumanoidRootPart.Position - HumanoidRootPart.Position).Magnitude <= (1046-546) and child.Humanoid.Health > (361-361) then
							child.Humanoid.Health = (584-584)
							child.HumanoidRootPart.CanCollide = false
							child:BreakJoints()
						end
					end
				end)
				exitTo = nil

				while task.wait((2+0)) do
					if _G.KillAuraFull then
						exitTo = (1+0)

						break
					end
				end
			until exitTo ~= (1+0)

			return
		end
	end
end)
Vocan = GRP_Prehistoric_Prehistoric_Island:AddToggle(_zD1436("fkpLUGB8UFNTWlxLYHtWUVBgfVBRWkw="), {
	Text =_zD1436("fkpLUB98UFNTWlxLH3tWUVAffVBRWkw="),
	Default = false,
	Callback = function(p256)
		_G.Prehis_DB = p256
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Prehis_DB then
				if workspace:FindFirstChild(_zD1436("e1ZRUH1QUVo=")) then
					for _, child in pairs(workspace:GetChildren()) do
						if child.Name ==_zD1436("e1ZRUH1QUVo=") then
							_tp(child.CFrame)
						end
					end
				end
			end
		end)
	end
end)

do
	Vocan = GRP_Prehistoric_Prehistoric_Island:AddToggle(_zD1436("fkpLUGB8UFNTWlxLYHtNXlhQUWB6WFhM"), {
		Text =_zD1436("fkpLUB98UFNTWlxLH3tNXlhQUR96WFhM"),
		Default = false,
		Callback = function(p257)
			_G.Prehis_DE = p257
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Prehis_DE then
				if workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild(_zD1436("e01eWFBRelhY")) then
					_tp(workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:FindFirstChild(_zD1436("e01eWFBRelhY")).Molten.CFrame)
					fireproximityprompt(workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs.DragonEgg.Molten.ProximityPrompt, (29+1))
				end
			end
		end)
	end
end)

do
	Toggle = GRP_Prehistoric_Prehistoric_Island:AddToggle(_zD1436("fkpLUGBtWkxaS2BoV1pRYHxQUk9TWktaYGlQU1xeUVA="), {
		Text =_zD1436("fkpLUB9tWkxaSx9oV1pRH3xQUk9TWktaH2lQU1xeUVA="),
		Default = false,
		Callback = function(p258)
			_G.ResetPH = p258
		end
	})
end

spawn(function()
	if wait(Sec) then
		repeat
			pcall(function()
				if _G.ResetPH then
					local TrialTeleport = workspace.Map.PrehistoricIsland:FindFirstChild(_zD1436("a01WXlNrWlNaT1BNSw=="))

					if TrialTeleport and TrialTeleport:FindFirstChild(_zD1436("a1BKXFd2UUtaTVpMSw==")) then
						plr.Character.Humanoid.Health = (539-539)
					elseif workspace:FindFirstChild(_zD1436("e1ZRUH1QUVo=")) then
						for _, child in pairs(workspace:GetChildren()) do
							if child.Name ==_zD1436("e1ZRUH1QUVo=") then
								_tp(child.CFrame)
							end
						end
					end
				end
			end)
		until not wait(Sec)
	end
end)
GRP_SeaEvent_Sea_Event_Setting_Sail = t15.SeaEvent:AddLeftGroupbox(_zD1436("bFpeH3pJWlFLHxAfbFpLS1ZRWB9sXlZT"))
getgenv().SetSpeedBoat = (304-4)
spawn(function()
	game:GetService(_zD1436("bUpRbFpNSVZcWg==")).RenderStepped:Connect(function()
		if getgenv().SpeedBoat then
			local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer

			if LocalPlayer.Character then
				if LocalPlayer.Character:FindFirstChild(_zD1436("d0pSXlFQVls=")) and LocalPlayer.Character.Humanoid.Sit then
					for _, child in pairs(game:GetService(_zD1436("aFBNVExPXlxa")).Boats:GetChildren()) do
						local VehicleSeat = child:FindFirstChildWhichIsA(_zD1436("aVpXVlxTWmxaXks="))

						if VehicleSeat then
							VehicleSeat.MaxSpeed = getgenv().SetSpeedBoat
						end
					end
				end
			end
		end
	end)
end)
GRP_SeaEvent_Sea_Event_Setting_Sail:AddButton({
	Text =_zD1436("bVpSUElaH3NWWFdLVlFYH3pZWVpcSw=="),
	Func = function()
		pcall(function()
			game.Lighting.BaseAtmosphere:Destroy()
		end)
	end
})

do
	GRP_SeaEvent_Sea_Event_Setting_Sail:AddToggle(_zD1436("bFdWT2BsT1paW2ByUFtWWVZaTQ=="), {
		Text =_zD1436("bFdWTx9sT1paWx9yUFtWWVZaTQ=="),
		Default = false,
		Callback = function(p259)
			getgenv().SpeedBoat = p259
		end
	})
end

GRP_SeaEvent_Sea_Event_Setting_Sail:AddSlider({
	Text =_zD1436("bFdWTx9sT1paWw=="),
	Min = (407-407),
	Max = (1883-883),
	Default = (500-200),
	Rounding = (797-797),
	Callback = function(p260)
		getgenv().SetSpeedBoat = p260
	end
})

do
	GRP_SeaEvent_Sea_Event_Setting_Sail:AddToggle(_zD1436("fkpLUGBvTVpMTGBo"), {
		Text =_zD1436("fkpLUB9vTVpMTB9o"),
		Default = false,
		Callback = function(p261)
			getgenv().AutoPressW = p261
		end
	})
end

do
	spawn(function()
		while wait() do
			pcall(function()
				if getgenv().AutoPressW then
					if game.Players.LocalPlayer.Character:WaitForChild(_zD1436("d0pSXlFQVls=")).Sit == true then
						game:GetService(_zD1436("aVZNS0peU3ZRT0pLcl5RXlhaTQ==")):SendKeyEvent(true,_zD1436("aA=="), true, game)
						task.wait(0.1)
						game:GetService(_zD1436("aVZNS0peU3ZRT0pLcl5RXlhaTQ==")):SendKeyEvent(false,_zD1436("aA=="), true, game)
					end
				end
			end)
		end
	end)
end

do
	GRP_SeaEvent_Sea_Event_Setting_Sail:AddToggle(_zD1436("cVBgfFNWT2BsV1ZP"), {
		Text =_zD1436("cVAffFNWTx9sV1ZP"),
		Default = false,
		Callback = function(p262)
			getgenv().NoClipShip = p262
		end
	})
end

do
	spawn(function()
		while wait() do
			pcall(function()
				for _, child in pairs(game:GetService(_zD1436("aFBNVExPXlxa")).Boats:GetChildren()) do
					for _, descendant in pairs(child:GetDescendants()) do
						if descendant:IsA(_zD1436("fV5MWm9eTUs=")) then
							if getgenv().NoClipShip or getgenv().FindPrehistoric then
								descendant.CanCollide = false
							else
								descendant.CanCollide = true
							end
						end
					end
				end
			end)
		end
	end)
end

GRP_SeaEvent_Crafting_Items = t15.SeaEvent:AddLeftGroupbox(_zD1436("fE1eWUtWUVgfdktaUkw="))

do
	GRP_SeaEvent_Crafting_Items:AddButton({
		Text =_zD1436("fE1eWUsfbFdeTVRrUFBLVw=="),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("bFdeTVRrUFBLVw=="))
		end
	})
end

GRP_SeaEvent_Crafting_Items:AddButton({
	Text =_zD1436("fE1eWUsfa1pNTVBNdV5I"),
	Func = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("a1pNTVBNdV5I"))
	end
})

do
	GRP_SeaEvent_Crafting_Items:AddButton({
		Text =_zD1436("fE1eWUsfbFdeTVR+UVxXUE0="),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("bFdeTVR+UVxXUE0="))
		end
	})
end

GRP_SeaEvent_Crafting_Items:AddButton({
	Text =_zD1436("fE1eWUsfc1pJVl5LV15RfE1QSFE="),
	Func = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("c1pJVl5LV15RfE1QSFE="))
	end
})
GRP_SeaEvent_Crafting_Items:AddButton({
	Text =_zD1436("fE1eWUsfc1pJVl5LV15RbFdWWlNb"),
	Func = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("c1pJVl5LV15RbFdWWlNb"))
	end
})

do
	GRP_SeaEvent_Crafting_Items:AddButton({
		Text =_zD1436("fE1eWUsfc1pJVl5LV15RfVBeSw=="),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("c1pJVl5LV15RfVBeSw=="))
		end
	})
end

GRP_SeaEvent_Crafting_Items:AddButton({
	Text =_zD1436("fE1eWUsfc1pYWlFbXk1GbFxNUFNT"),
	Func = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("c1pYWlFbXk1GbFxNUFNT"))
	end
})

do
	GRP_SeaEvent_Crafting_Items:AddButton({
		Text =_zD1436("fE1eWUsfckZLV1ZcXlNsXE1QU1M="),
		Func = function()
			replicated.Remotes.CommF_:InvokeServer(_zD1436("fE1eWUt2S1pS"),_zD1436("fE1eWUs="),_zD1436("ckZLV1ZcXlNsXE1QU1M="))
		end
	})
end

GRP_SeaEvent_Choose_Sea_Event = t15.SeaEvent:AddLeftGroupbox(_zD1436("fFdQUExaH2xaXh96SVpRSw=="))

do
	Q = GRP_SeaEvent_Choose_Sea_Event:AddDropdown(_zD1436("bFpTWlxLYH1QXktM"), {
		Text =_zD1436("bFpTWlxLH31QXktM"),
		Values = {
_zD1436("eEpeTVtWXlE="),
_zD1436("b1ZNXktaeE1eUVt9TVZYXlta"),
_zD1436("cl5NVlFaeE1eUVt9TVZYXlta"),
_zD1436("b1ZNXktafU1WWF5bWg=="),
_zD1436("cl5NVlFafU1WWF5bWg=="),
_zD1436("b1ZNXktabFNQUE8="),
_zD1436("cl5NVlFabFNQUE8="),
_zD1436("fVpeTEsfd0pRS1pN")
		},
		Default = (44-43),
		Callback = function(p263)
			_G.SelectedBoat = p263
		end
	})
end

GRP_SeaEvent_Choose_Sea_Event:AddButton({
	Text =_zD1436("fUpGH31QXktM"),
	Func = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVBeSw=="), _G.SelectedBoat)
	end
})
Q = GRP_SeaEvent_Choose_Sea_Event:AddDropdown(_zD1436("bFpTWlxLYGxaXmBzWklaUw=="), {
	Text =_zD1436("bFpTWlxLH2xaXh9zWklaUw=="),
	Values = {
_zD1436("c0kfDg=="),
_zD1436("c0kfDQ=="),
_zD1436("c0kfDA=="),
_zD1436("c0kfCw=="),
_zD1436("c0kfCg=="),
_zD1436("c0kfCQ=="),
_zD1436("c0kfdlFZVlFWS1o=")
	},
	Default = (23-22),
	Callback = function(p264)
		_G.DangerSc = p264
	end
})
Q = GRP_SeaEvent_Choose_Sea_Event:AddToggle(_zD1436("fkpLUGBsXlZTYH1QXks="), {
	Text =_zD1436("fkpLUB9sXlZTH31QXks="),
	Default = false,
	Callback = function(p265)
		_G.SailBoats = p265
	end
})

do
	spawn(function()
		while wait() do
			if _G.SailBoats then
				pcall(function()
					local v1130 = CheckBoat()

					if v1130 then
						if (not CheckShark() or not _G.Shark) and (not CheckTerrorShark() or not _G.TerrorShark) and (not CheckFishCrew() or not _G.MobCrew) then
							if (not CheckPiranha() or not _G.Piranha) and (not CheckEnemiesBoat() or not _G.FishBoat) and (not CheckSeaBeast() or not _G.SeaBeast1) and (not _G.PGB or not CheckPirateGrandBrigade()) and (not _G.HCM or not CheckHauntedCrew()) and (not _G.Leviathan1 or not CheckLeviathan()) then
								if plr.Character.Humanoid.Sit == false then
									_tp(v1130.VehicleSeat.CFrame * CFrame.new((581-581), (1+0), (484-484)))
								else
									if _G.DangerSc ==_zD1436("c0kfDg==") then
										CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143)
									elseif _G.DangerSc ==_zD1436("c0kfDQ==") then
										CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032)
									elseif _G.DangerSc ==_zD1436("c0kfDA==") then
										CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774)
									elseif _G.DangerSc ==_zD1436("c0kfCw==") then
										CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012)
									elseif _G.DangerSc ==_zD1436("c0kfCg==") then
										CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023)
									elseif _G.DangerSc ==_zD1436("c0kfCQ==") then
										CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584)
									elseif _G.DangerSc ==_zD1436("c0kfdlFZVlFWS1o=") then
										CFrameSelectedZone = CFrame.new(-(15628882-5628882), (83-52), 37016.25)
									end

									while true do
										wait()

										if (_G.FishBoat or not CheckEnemiesBoat()) and (_G.PGB or not CheckPirateGrandBrigade()) and (_G.TerrorShark or not CheckTerrorShark()) then
											_tp(CFrameSelectedZone)
										else
											_tp(CFrameSelectedZone * CFrame.new((618-618), (200-50), (267-267)))
										end

										if _G.SailBoats ~= false and (not CheckShark() or not _G.Shark) and (not CheckTerrorShark() or not _G.TerrorShark) and (not CheckFishCrew() or not _G.MobCrew) and (not CheckPiranha() or not _G.Piranha) and (not CheckSeaBeast() or not _G.SeaBeast1) and (not CheckEnemiesBoat() or not _G.FishBoat) and (not _G.Leviathan1 or not CheckLeviathan()) and (not _G.HCM or not CheckHauntedCrew()) and (not _G.PGB or not CheckPirateGrandBrigade()) then
											if plr.Character:WaitForChild(_zD1436("d0pSXlFQVls=")).Sit ~= false then
												continue
											end
										end

										break
									end

									plr.Character.Humanoid.Sit = false
								end
							end
						end
					elseif (not CheckShark() or not _G.Shark) and (not CheckTerrorShark() or not _G.TerrorShark) and (not CheckFishCrew() or not _G.MobCrew) and (not CheckPiranha() or not _G.Piranha) and (not CheckEnemiesBoat() or not _G.FishBoat) and (not CheckSeaBeast() or not _G.SeaBeast1) and (not _G.PGB or not CheckPirateGrandBrigade()) and (not _G.HCM or not CheckHauntedCrew()) and (not _G.Leviathan1 or not CheckLeviathan()) then
						local cFrame = CFrame.new(-16927.451, 9.086, 433.864)

						TeleportToTarget(cFrame)

						if (cFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (6+4) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVBeSw=="), _G.SelectedBoat)
						end
					end
				end)
			end
		end
	end)
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			for _, child in pairs(workspace.Boats:GetChildren()) do
				for _, descendant in pairs(child:GetDescendants()) do
					if descendant:IsA(_zD1436("fV5MWm9eTUs=")) then
						if _G.SailBoats or _G.Prehis_Find or _G.FindMirage or _G.SailBoat_Hydra or _G.AutofindKitIs then
							descendant.CanCollide = false
						else
							descendant.CanCollide = true
						end
					end
				end
			end
		end)
	end
end)
GRP_SeaEvent_Entity_Sea_Event = t15.SeaEvent:AddLeftGroupbox(_zD1436("elFLVktGH2xaXh96SVpRSw=="))
GRP_SeaEvent_Entity_Sea_Event:AddToggle(_zD1436("fkpLUGBsV15NVA=="), {
	Text =_zD1436("fkpLUB9sV15NVA=="),
	Default = false,
	Callback = function(p266)
		_G.Shark = p266
	end
})
GRP_SeaEvent_Entity_Sea_Event:AddToggle(_zD1436("fkpLUGBvVk1eUVde"), {
	Text =_zD1436("fkpLUB9vVk1eUVde"),
	Default = false,
	Callback = function(p267)
		_G.Piranha = p267
	end
})
GRP_SeaEvent_Entity_Sea_Event:AddToggle(_zD1436("fkpLUGBrWk1NUE1gbFdeTVQ="), {
	Text =_zD1436("fkpLUB9rWk1NUE0fbFdeTVQ="),
	Default = false,
	Callback = function(p268)
		_G.TerrorShark = p268
	end
})
GRP_SeaEvent_Entity_Sea_Event:AddToggle(_zD1436("fkpLUGB5VkxXYHxNWkhgclpSXVpN"), {
	Text =_zD1436("fkpLUB95VkxXH3xNWkgfclpSXVpN"),
	Default = false,
	Callback = function(p269)
		_G.MobCrew = p269
	end
})

do
	GRP_SeaEvent_Entity_Sea_Event:AddToggle(_zD1436("fkpLUGB3XkpRS1pbYHxNWkhgclpSXVpN"), {
		Text =_zD1436("fkpLUB93XkpRS1pbH3xNWkgfclpSXVpN"),
		Default = false,
		Callback = function(p270)
			_G.HCM = p270
		end
	})
end

do
	GRP_SeaEvent_Entity_Sea_Event:AddToggle(_zD1436("fkpLUGB+S0teXFRgb1ZNXktaeE1eUVt9TVZYXlta"), {
		Text =_zD1436("fkpLUB9+S0teXFQfb1ZNXktaeE1eUVt9TVZYXlta"),
		Default = false,
		Callback = function(p271)
			_G.PGB = p271
		end
	})
end

GRP_SeaEvent_Entity_Sea_Event:AddToggle(_zD1436("fkpLUGB+S0teXFRgeVZMV2B9UF5L"), {
	Text =_zD1436("fkpLUB9+S0teXFQfeVZMVx99UF5L"),
	Default = false,
	Callback = function(p272)
		_G.FishBoat = p272
	end
})

do
	GRP_SeaEvent_Entity_Sea_Event:AddToggle(_zD1436("fkpLUGB+S0teXFRgbFpeYH1aXkxL"), {
		Text =_zD1436("fkpLUB9+S0teXFQfbFpeH31aXkxL"),
		Default = false,
		Callback = function(p273)
			_G.SeaBeast1 = p273
		end
	})
end

spawn(function()
	while wait() do
		pcall(function()
			if _G.Shark then
				local t41 = {_zD1436("bFdeTVQ=") }

				if CheckShark() then
					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if table.find(t41, child.Name) and t9.Alive(child) then
							while true do
								task.wait()
								t9.Kill(child, _G.Shark)

								if _G.Shark == false then
									break
								elseif not child.Parent or child.Humanoid.Health <= (395-395) then
									break
								end
							end
						end
					end
				end
			end

			if _G.TerrorShark then
				local t42 = {_zD1436("a1pNTVBNTFdeTVQ=") }

				if CheckTerrorShark() then
					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if table.find(t42, child.Name) and t9.Alive(child) then
							while true do
								task.wait()
								t9.KillSea(child, _G.TerrorShark)

								if _G.TerrorShark == false then
									break
								elseif not child.Parent or child.Humanoid.Health <= (920-920) then
									break
								end
							end
						end
					end
				end
			end

			if _G.Piranha then
				local t43 = {_zD1436("b1ZNXlFXXg==") }

				if CheckPiranha() then
					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if table.find(t43, child.Name) and t9.Alive(child) then
							while true do
								task.wait()
								t9.Kill(child, _G.Piranha)

								if _G.Piranha == false then
									break
								elseif not child.Parent or child.Humanoid.Health <= (398-398) then
									break
								end
							end
						end
					end
				end
			end

			if _G.MobCrew then
				local t44 = {_zD1436("eVZMVx98TVpIH3JaUl1aTQ==") }

				if CheckFishCrew() then
					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if table.find(t44, child.Name) and t9.Alive(child) then
							while true do
								task.wait()
								t9.Kill(child, _G.MobCrew)

								if _G.MobCrew == false then
									break
								elseif not child.Parent or child.Humanoid.Health <= (849-849) then
									break
								end
							end
						end
					end
				end
			end

			if _G.HCM then
				local t45 = {_zD1436("d15KUUtaWx98TVpIH3JaUl1aTQ==") }

				if CheckHauntedCrew() then
					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if table.find(t45, child.Name) and t9.Alive(child) then
							while true do
								task.wait()
								t9.Kill(child, _G.HCM)

								if _G.HCM == false then
									break
								elseif not child.Parent or child.Humanoid.Health <= (807-807) then
									break
								end
							end
						end
					end
				end
			end

			if _G.SeaBeast1 then
				if workspace.SeaBeasts:FindFirstChild(_zD1436("bFpefVpeTEsO")) then
					for _, child in pairs(workspace.SeaBeasts:GetChildren()) do
						if child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("d1peU0tX")) and child.Health.Value > (9-9) then
							repeat
								task.wait()
								spawn(function()
									_tp(CFrame.new(child.HumanoidRootPart.Position.X, game:GetService(_zD1436("aFBNVExPXlxa")).Map[_zD1436("aF5LWk19XkxaEm9TXlFa")].Position.Y + (33+167), child.HumanoidRootPart.Position.Z))
								end)

								if plr:DistanceFromCharacter(child.HumanoidRootPart.CFrame.Position) <= (1016-516) then
									AitSeaSkill_Custom = child.HumanoidRootPart.CFrame
									MousePos = AitSeaSkill_Custom.Position

									if CheckF() then
										weaponSc(_zD1436("fVNQRx95TUpWSw=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
									else
										Useskills(_zD1436("clpTWlo="),_zD1436("ZQ=="))
										Useskills(_zD1436("clpTWlo="),_zD1436("Zw=="))
										Useskills(_zD1436("clpTWlo="),_zD1436("fA=="))
										wait(0.1)
										Useskills(_zD1436("bEhQTVs="),_zD1436("ZQ=="))
										Useskills(_zD1436("bEhQTVs="),_zD1436("Zw=="))
										wait(0.1)
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
										wait(0.1)
										Useskills(_zD1436("eEpR"),_zD1436("ZQ=="))
										Useskills(_zD1436("eEpR"),_zD1436("Zw=="))
									end
								end
							until _G.SeaBeast1 == false or not child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) or not child.Parent or child.Health.Value <= (660-660)
						end
					end
				end
			end

			if _G.Leviathan1 then
				if workspace.SeaBeasts:FindFirstChild(_zD1436("c1pJVl5LV15R")) then
					for _, child in pairs(workspace.SeaBeasts:GetChildren()) do
						if child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("c1pJVl5LV15RH2xaWFJaUUs=")) and child:FindFirstChild(_zD1436("d1peU0tX")) and child.Health.Value > (108-108) then
							repeat
								task.wait()
								spawn(function()
									_tp(CFrame.new(child.HumanoidRootPart.Position.X, game:GetService(_zD1436("aFBNVExPXlxa")).Map[_zD1436("aF5LWk19XkxaEm9TXlFa")].Position.Y + (37+163), child.HumanoidRootPart.Position.Z))
								end)

								if plr:DistanceFromCharacter(child.HumanoidRootPart.CFrame.Position) <= (702-202) then
									MousePos = child:FindFirstChild(_zD1436("c1pJVl5LV15RH2xaWFJaUUs=")).Position

									if CheckF() then
										weaponSc(_zD1436("fVNQRx95TUpWSw=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
									else
										Useskills(_zD1436("clpTWlo="),_zD1436("ZQ=="))
										Useskills(_zD1436("clpTWlo="),_zD1436("Zw=="))
										Useskills(_zD1436("clpTWlo="),_zD1436("fA=="))
										wait(0.1)
										Useskills(_zD1436("bEhQTVs="),_zD1436("ZQ=="))
										Useskills(_zD1436("bEhQTVs="),_zD1436("Zw=="))
										wait(0.1)
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
										Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
										wait(0.1)
										Useskills(_zD1436("eEpR"),_zD1436("ZQ=="))
										Useskills(_zD1436("eEpR"),_zD1436("Zw=="))
									end
								end
							until _G.Leviathan1 == false or not child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) or not child.Parent or child.Health.Value <= (272-272)
						end
					end
				end
			end

			if _G.FishBoat and CheckEnemiesBoat() then
				for _, child in pairs(workspace.Enemies:GetChildren()) do
					if child:FindFirstChild(_zD1436("d1peU0tX")) and child.Health.Value > (714-714) and child:FindFirstChild(_zD1436("aVpXVlxTWmxaXks=")) then
						repeat
							task.wait()
							spawn(function()
								if child.Name ==_zD1436("eVZMV31QXks=") then
									_tp(child.Engine.CFrame * CFrame.new((430-430), -(97-47), -(31-6)))
								end
							end)

							if plr:DistanceFromCharacter(child.Engine.CFrame.Position) <= (42+108) then
								AitSeaSkill_Custom = child.Engine.CFrame
								MousePos = AitSeaSkill_Custom.Position

								if CheckF() then
									weaponSc(_zD1436("fVNQRx95TUpWSw=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
								else
									Useskills(_zD1436("clpTWlo="),_zD1436("ZQ=="))
									Useskills(_zD1436("clpTWlo="),_zD1436("Zw=="))
									Useskills(_zD1436("clpTWlo="),_zD1436("fA=="))
									wait(0.1)
									Useskills(_zD1436("bEhQTVs="),_zD1436("ZQ=="))
									Useskills(_zD1436("bEhQTVs="),_zD1436("Zw=="))
									wait(0.1)
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
									wait(0.1)
									Useskills(_zD1436("eEpR"),_zD1436("ZQ=="))
									Useskills(_zD1436("eEpR"),_zD1436("Zw=="))
								end
							end
						until _G.FishBoat == false or not child:FindFirstChild(_zD1436("aVpXVlxTWmxaXks=")) or child.Health.Value <= (555-555)
					end
				end
			end

			if _G.PGB and CheckPirateGrandBrigade() then
				for _, child in pairs(workspace.Enemies:GetChildren()) do
					if child:FindFirstChild(_zD1436("d1peU0tX")) and child.Health.Value > (552-552) and child:FindFirstChild(_zD1436("aVpXVlxTWmxaXks=")) then
						repeat
							task.wait()
							spawn(function()
								if child.Name ==_zD1436("b1ZNXktafU1WWF5bWg==") then
									_tp(child.Engine.CFrame * CFrame.new((913-913), -(30+0), -(5+5)))
								elseif child.Name ==_zD1436("b1ZNXktaeE1eUVt9TVZYXlta") then
									_tp(child.Engine.CFrame * CFrame.new((115-115), -(135-85), -(23+27)))
								end
							end)

							if plr:DistanceFromCharacter(child.Engine.CFrame.Position) <= (282-132) then
								AitSeaSkill_Custom = child.Engine.CFrame
								MousePos = AitSeaSkill_Custom.Position

								if CheckF() then
									weaponSc(_zD1436("fVNQRx95TUpWSw=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
								else
									Useskills(_zD1436("clpTWlo="),_zD1436("ZQ=="))
									Useskills(_zD1436("clpTWlo="),_zD1436("Zw=="))
									Useskills(_zD1436("clpTWlo="),_zD1436("fA=="))
									wait(0.1)
									Useskills(_zD1436("bEhQTVs="),_zD1436("ZQ=="))
									Useskills(_zD1436("bEhQTVs="),_zD1436("Zw=="))
									wait(0.1)
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("ZQ=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("Zw=="))
									Useskills(_zD1436("fVNQRx95TUpWSw=="),_zD1436("fA=="))
									wait(0.1)
									Useskills(_zD1436("eEpR"),_zD1436("ZQ=="))
									Useskills(_zD1436("eEpR"),_zD1436("Zw=="))
								end
							end
						until _G.PGB == false or not child:FindFirstChild(_zD1436("aVpXVlxTWmxaXks=")) or child.Health.Value <= (831-831)
					end
				end
			end
		end)
	end
end)
GRP_SeaEvent_Kitsune_Island_Event = t15.SeaEvent:AddLeftGroupbox(_zD1436("dFZLTEpRWh92TFNeUVsfEB96SVpRSw=="))

do
	local v1159 = GRP_SeaEvent_Kitsune_Island_Event:AddLabel("")

	spawn(function()
		while wait(0.2) do
			if not workspace.Map:FindFirstChild(_zD1436("dFZLTEpRWnZMU15RWw==")) then
				if not workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("dFZLTEpRWh92TFNeUVs=")) then
					v1159:SetText(_zD1436("dFZLTEpRWh92TFNeUVsfBR95XlNMWg=="))

					continue
				end
			end

			v1159:SetText(_zD1436("dFZLTEpRWh92TFNeUVsfBR9rTUpa"))
		end
	end)
end

GRP_SeaEvent_Kitsune_Island_Event:AddToggle(_zD1436("fkpLUGB5VlFbYHRWS0xKUVpgdkxTXlFb"), {
	Text =_zD1436("fkpLUB95VlFbH3RWS0xKUVofdkxTXlFb"),
	Default = false,
	Callback = function(p274)
		_G.AutofindKitIs = p274
	end
})
spawn(function()
	while wait() do
		if _G.AutofindKitIs then
			pcall(function()
				if workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("dFZLTEpRWh92TFNeUVs="), true) then
					_tp(workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("dFZLTEpRWh92TFNeUVs=")).CFrame * CFrame.new((856-856), (674-174), (571-571)))
				else
					local v1160 = CheckBoat()

					if v1160 then
						if plr.Character.Humanoid.Sit == false then
							_tp(v1160.VehicleSeat.CFrame * CFrame.new((281-281), (1+0), (924-924)))
						else
							local cFrame = CFrame.new(-(8012398+1987602), (16+15), 37016.25)

							while true do
								wait()

								if CheckEnemiesBoat() or CheckTerrorShark() or CheckPirateGrandBrigade() then
									_tp(CFrame.new(-(6768554+3231446), (246-96), 37016.25))
								else
									_tp(CFrame.new(-(3310114+6689886), (22+9), 37016.25))
								end

								if _G.AutofindKitIs and not ((cFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (4+6)) then
									if not (workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("dFZLTEpRWh92TFNeUVs=")) or plr.Character.Humanoid.Sit == false) then
										continue
									end
								end

								break
							end

							plr.Character.Humanoid.Sit = false
						end
					else
						local cFrame = CFrame.new(-16927.451, 9.086, 433.864)

						TeleportToTarget(cFrame)

						if (cFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (59-49) then
							replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVBeSw=="), _G.SelectedBoat)
						end
					end
				end
			end)
		end
	end
end)

do
	GRP_SeaEvent_Kitsune_Island_Event:AddToggle(_zD1436("fkpLUGBrWlNaT1BNS2BLUGBsV01WUVpgflxLVklaWw=="), {
		Text =_zD1436("fkpLUB9rWlNaT1BNSx9LUB9sV01WUVofflxLVklaWw=="),
		Default = false,
		Callback = function(p275)
			_G.tweenShrine = p275
		end
	})
end

do
	spawn(function()
		while wait(0.1) do
			if _G.tweenShrine then
				pcall(function()
					local KitsuneIsland = workspace.Map:FindFirstChild(_zD1436("dFZLTEpRWnZMU15RWw==")) or game.Workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("dFZLTEpRWh92TFNeUVs="))
					local ShrineActive = KitsuneIsland:FindFirstChild(_zD1436("bFdNVlFaflxLVkla"))

					if ShrineActive then
						local next_ = next
						local descendants, v1167 = ShrineActive:GetDescendants()

						for _, v1 in next_, descendants, v1167 do
							if v1:IsA(_zD1436("fV5MWm9eTUs=")) then
								if v1.Name:find(_zD1436("cVpQUWxXTVZRWm9eTUs=")) then
									replicated.Modules.Net:FindFirstChild(_zD1436("bXoQa1BKXFd0VktMSlFabEteS0pa")):FireServer()

									while true do
										wait()
										_tp(v1.CFrame * CFrame.new((847-847), (2+0), (616-616)))

										if _G.tweenShrine == false then
											break
										elseif not KitsuneIsland then
											break
										end
									end
								end
							end
						end
					else
						_tp(workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("dFZLTEpRWh92TFNeUVs=")).CFrame * CFrame.new((937-937), (370+130), (826-826)))
					end
				end)
			end
		end
	end)
end

do
	GRP_SeaEvent_Kitsune_Island_Event:AddToggle(_zD1436("fkpLUGB8UFNTWlxLYH5FSk1aYHpSXVpN"), {
		Text =_zD1436("fkpLUB98UFNTWlxLH35FSk1aH3pSXVpN"),
		Default = false,
		Callback = function(p276)
			_G.Collect_Ember = p276
		end
	})
end

spawn(function()
	while wait(0.1) do
		if _G.Collect_Ember then
			pcall(function()
				if workspace:WaitForChild(_zD1436("fktLXlxXWlt+RUpNWnpSXVpN")) then
					notween(workspace:WaitForChild(_zD1436("elJdWk1rWlJPU15LWg==")):FindFirstChild(_zD1436("b15NSw==")).CFrame)
				else
					if workspace:WaitForChild(_zD1436("elJdWk1rWlJPU15LWg==")) then
						notween(workspace:WaitForChild(_zD1436("elJdWk1rWlJPU15LWg==")):FindFirstChild(_zD1436("b15NSw==")).CFrame)

						return
					end

					_tp(workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("dFZLTEpRWh92TFNeUVs=")).CFrame * CFrame.new((383-383), (908-408), (836-836)))
					replicated.Modules.Net[_zD1436("bXkQdFZLTEpRWmxLXktKWm9NXkY=")]:InvokeServer()
				end
			end)
		end
	end
end)

do
	GRP_SeaEvent_Kitsune_Island_Event:AddToggle(_zD1436("fkpLUGBrTV5bWmB+RUpNWmB6Ul1aTQ=="), {
		Text =_zD1436("fkpLUB9rTV5bWh9+RUpNWh96Ul1aTQ=="),
		Default = false,
		Callback = function(p277)
			_G.Trade_Ember = p277
		end
	})
end

do
	spawn(function()
		while wait(0.1) do
			if _G.Trade_Ember then
				pcall(function()
					if workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("dFZLTEpRWh92TFNeUVs="), true) then
						replicated.Modules.Net:FindFirstChild(_zD1436("bXkQdFZLTEpRWmxLXktKWm9NXkY=")):InvokeServer()
					end
				end)
			end
		end
	end)
end

GRP_SeaEvent_Kitsune_Island_Event:AddButton({
	Text =_zD1436("a01eW1ofdktaUkwffkVKTVo="),
	Func = function()
		if replicated.Modules and replicated.Modules.Net then
			local RFKitsuneStatuePray = replicated.Modules.Net:FindFirstChild(_zD1436("bXkQdFZLTEpRWmxLXktKWm9NXkY="))

			if RFKitsuneStatuePray then
				RFKitsuneStatuePray:InvokeServer()
			end
		end
	end
})

do
	GRP_SeaEvent_Kitsune_Island_Event:AddButton({
		Text =_zD1436("a15TVB9IVktXH1RWS0xKUVofTEteS0pa"),
		Func = function()
			if replicated.Modules and replicated.Modules.Net then
				local RETouchKitsuneStatue = replicated.Modules.Net:FindFirstChild(_zD1436("bXoQa1BKXFd0VktMSlFabEteS0pa"))

				if RETouchKitsuneStatue then
					RETouchKitsuneStatue:FireServer()
				end
			end
		end
	})
end

GRP_SeaEvent_Frozen_Dimension_Event = t15.SeaEvent:AddLeftGroupbox(_zD1436("eU1QRVpRH3tWUlpRTFZQUR96SVpRSw=="))

do
	local v1172 = GRP_SeaEvent_Frozen_Dimension_Event:AddLabel("")

	spawn(function()
		pcall(function()
			while wait(0.2) do
				if workspace._WorldOrigin.Locations:FindFirstChild(_zD1436("eU1QRVpRH3tWUlpRTFZQUQ==")) then
					v1172:SetText(_zD1436("eU1QRVpRH3tWUlpRTFZQUR8FH2tNSlo="))
				else
					v1172:SetText(_zD1436("eU1QRVpRH3tWUlpRTFZQUR8FH3leU0xa"))
				end
			end
		end)
	end)
end

do
	local v1173 = GRP_SeaEvent_Frozen_Dimension_Event:AddLabel("")

	spawn(function()
		while wait(0.2) do
			pcall(function()
				local v1174 = string.match(replicated.Remotes.CommF_:InvokeServer(_zD1436("dlFZUHNaSVZeS1deUQ=="),_zD1436("Dg==")),_zD1436("GlsU"))

				if v1174 then
					v1173:SetText(_zD1436("bE9GH3NaSVZeS1deUR8FHw==") .. tostring(v1174))

					if tonumber(v1174) == (3+2) then
						v1173:SetText(_zD1436("bE9GH3NaSVZeS1deUR8FH35TTVpeW0Yfe1BRWh4e"))
					end
				end
			end)
		end
	end)
end

GRP_SeaEvent_Frozen_Dimension_Event:AddButton({
	Text =_zD1436("fUpGH2xPRg=="),
	Func = function()
		replicated.Remotes.CommF_:InvokeServer(_zD1436("dlFZUHNaSVZeS1deUQ=="),_zD1436("DQ=="))
	end
})
GRP_SeaEvent_Frozen_Dimension_Event:AddToggle(_zD1436("fkpLUGBrWlNaT1BNS2B5TVBFWlFge1ZSWlFMVlBR"), {
	Text =_zD1436("fkpLUB9rWlNaT1BNSx95TVBFWlEfe1ZSWlFMVlBR"),
	Default = false,
	Callback = function(p278)
		_G.FrozenTP = p278
	end
})
spawn(function()
	while wait(0.1) do
		if _G.FrozenTP then
			pcall(function()
				if workspace.Map:FindFirstChild(_zD1436("c1pJVl5LV15ReF5LWg==")) then
					_tp(workspace.Map.LeviathanGate.CFrame)
					replicated:WaitForChild(_zD1436("bVpSUEtaTA==")):WaitForChild(_zD1436("fFBSUnlg")):InvokeServer(_zD1436("cE9aUXNaSVZeS1deUXheS1o="))
				end
			end)
		end
	end
end)

do
	GRP_SeaEvent_Frozen_Dimension_Event:AddToggle(_zD1436("fkpLUGB7TVZJWmBrUGB3RltNXmB2TFNeUVs="), {
		Text =_zD1436("fkpLUB97TVZJWh9rUB93RltNXh92TFNeUVs="),
		Default = false,
		Callback = function(p279)
			_G.SailBoat_Hydra = p279
		end
	})
end

spawn(function()
	while wait() do
		if _G.SailBoat_Hydra then
			pcall(function()
				local v1175 = CheckBoat()

				if v1175 then
					if plr.Character.Humanoid.Sit == false then
						_tp(v1175.VehicleSeat.CFrame * CFrame.new((38-38), (23-22), (726-726)))
					else
						while true do
							wait()

							if CheckEnemiesBoat() or CheckPirateGrandBrigade() or CheckTerrorShark() then
								_tp(CFrame.new((1350+4083), (350-200), (212+78)))
							else
								_tp(CFrame.new((3597+1836), (105-70), (30+260)))
							end

							if _G.SailBoat_Hydra ~= false then
								if plr.Character:WaitForChild(_zD1436("d0pSXlFQVls=")).Sit ~= false then
									continue
								end
							end

							break
						end

						plr.Character.Humanoid.Sit = false
					end
				else
					local cFrame = CFrame.new(-16927.451, 9.086, 433.864)

					TeleportToTarget(cFrame)

					if (cFrame.Position - plr.Character.HumanoidRootPart.Position).Magnitude <= (4+6) then
						replicated.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVBeSw=="), _G.SelectedBoat)
					end
				end
			end)
		end
	end
end)

do
	GRP_SeaEvent_Frozen_Dimension_Event:AddToggle(_zD1436("fkpLUGB+S0teXFRgc1pJVl5LV15R"), {
		Text =_zD1436("fkpLUB9+S0teXFQfc1pJVl5LV15R"),
		Default = false,
		Callback = function(p280)
			_G.Leviathan1 = p280
		end
	})
end

GRP_Esp_Esp = t15.Esp:AddLeftGroupbox(_zD1436("ekxP"))

do
	isnil = function(p281)
		return p281 == nil
	end
end

local function v1177(p282)
	return math.floor(tonumber(p282) + 0.5)
end

Number = math.random((1+0), (1567633-567633))

local LocalPlayer = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
local ReplicatedStorage2 = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo="))
local Team = LocalPlayer.Team

EspPly = function()
	local children, v1182 = game.Players:GetChildren()

	for _, v1 in next, children, v1182 do
		pcall(function()
			if not isnil(v1.Character) then
				if PlayerEsp then
					local ok = isnil(v1.Character.Head)

					if not ok then
						ok = v1.Character.Head:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number)
					end

					if ok then
						if v1.Character.Head:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
							v1.Character.Head[_zD1436("cV5SWnpMTw==") .. Number].TextLabel.Text = v1.Name .._zD1436("H0Mf") .. v1177((LocalPlayer.Character.Head.Position - v1.Character.Head.Position).Magnitude / (51-48)) .._zD1436("H3I1d1peU0tXHwUf") .. v1177(v1.Character.Humanoid.Health * (133-33) / v1.Character.Humanoid.MaxHealth) .._zD1436("Gg==")
						end
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), v1.Character.Head)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==") .. Number
						BillboardGui.ExtentsOffset = Vector3.new((317-317), (1+0), (327-327))
						BillboardGui.Size = UDim2.new((16-15), (394-194), (1+0), (14+16))
						BillboardGui.Adornee = v1.Character.Head
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font = Enum.Font.Code
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Text = v1.Name .._zD1436("HzU=") .. v1177((LocalPlayer.Character.Head.Position - v1.Character.Head.Position).Magnitude / (3+0)) .._zD1436("H3I=")
						TextLabel.Size = UDim2.new((1+0), (666-666), (1+0), (944-944))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (12-11)
						TextLabel.TextStrokeTransparency = 0.5

						if v1.Team == Team then
							TextLabel.TextColor3 = Color3.new((125-125), (98-98), (152+102))
						else
							TextLabel.TextColor3 = Color3.new((343-88), (336-336), (450-450))
						end
					end
				elseif v1.Character.Head:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
					v1.Character.Head:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number):Destroy()
				end
			end
		end)
	end
end
LocationEsp = function()
	local children, v1189 = workspace._WorldOrigin.Locations:GetChildren()

	for _, v1 in next, children, v1189 do
		pcall(function()
			if IslandESP then
				if v1.Name ~=_zD1436("bFpe") then
					if v1:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
						v1.NameEsp.TextLabel.Text = v1.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - v1.Position).Magnitude / (2+1)) .._zD1436("H3I=")
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), v1)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==")
						BillboardGui.ExtentsOffset = Vector3.new((842-842), (1+0), (999-999))
						BillboardGui.Size = UDim2.new((44-43), (178+22), (43-42), (99-69))
						BillboardGui.Adornee = v1
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font = Enum.Font.Code
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((1+0), (22-22), (1+0), (626-626))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (1+0)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((92+6), (262-10), (346-94))
						TextLabel.Text = v1.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - v1.Position).Magnitude / (4-1)) .._zD1436("H3I=")
					end
				end
			elseif v1:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
				v1:FindFirstChild(_zD1436("cV5SWnpMTw==")):Destroy()
			end
		end)
	end
end
DevEsp = function()
	local children, v1195 = workspace:GetChildren()

	for _, v1 in next, children, v1195 do
		pcall(function()
			if DevilFruitESP then
				if string.find(v1.Name,_zD1436("eU1KVks=")) then
					if v1.Handle:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
						v1.Handle[_zD1436("cV5SWnpMTw==") .. Number].TextLabel.Text =_zD1436("ZA==") .. v1.Name .._zD1436("Yg==") .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - v1.Handle.Position).Magnitude / (54-51)) .._zD1436("H3I=")
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), v1.Handle)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==") .. Number
						BillboardGui.ExtentsOffset = Vector3.new((743-743), (5-4), (488-488))
						BillboardGui.Size = UDim2.new((21-20), (339-139), (28-27), (77-47))
						BillboardGui.Adornee = v1.Handle
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font = Enum.Font.Code
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((33-32), (592-592), (3-2), (362-362))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (51-50)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((401-146), (120+135), (79+176))
						TextLabel.Text = v1.Name .._zD1436("HzU=") .. v1177((LocalPlayer.Character.Head.Position - v1.Handle.Position).Magnitude / (42-39)) .._zD1436("H3I=")
					end
				end
			elseif v1:FindFirstChild(_zD1436("d15RW1Na")) then
				if v1.Handle:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
					v1.Handle:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number):Destroy()
				end
			end
		end)
	end
end
flowerEsp = function()
	for _, child in pairs(workspace:GetChildren()) do
		pcall(function()
			if child.Name ==_zD1436("eVNQSFpNDQ==") or child.Name ==_zD1436("eVNQSFpNDg==") then
				if FlowerESP then
					if child:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
						child[_zD1436("cV5SWnpMTw==") .. Number].TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.Position).Magnitude / (2+1)) .._zD1436("H3I=")
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), child)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==") .. Number
						BillboardGui.ExtentsOffset = Vector3.new((716-716), (22-21), (143-143))
						BillboardGui.Size = UDim2.new((8-7), (303-103), (35-34), (109-79))
						BillboardGui.Adornee = child
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font = Enum.Font.Code
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((1+0), (151-151), (43-42), (816-816))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (1+0)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((77+11), (181+33), (177+75))

						if child.Name ==_zD1436("eVNQSFpNDg==") then
							TextLabel.Text =_zD1436("fVNKWh95U1BIWk0=") .._zD1436("HzU=") .. v1177((LocalPlayer.Character.Head.Position - child.Position).Magnitude / (7-4)) .._zD1436("H3I=")
						elseif child.Name ==_zD1436("eVNQSFpNDQ==") then
							TextLabel.Text =_zD1436("bVpbH3lTUEhaTQ==") .._zD1436("HzU=") .. v1177((LocalPlayer.Character.Head.Position - child.Position).Magnitude / (46-43)) .._zD1436("H3I=")
						end
					end
				elseif child:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
					child:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number):Destroy()
				end
			end
		end)
	end
end
EventIslandEsp = function()
	for _, child in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
		pcall(function()
			if EspEventIsland then
				if child.Name ==_zD1436("clZNXlhaH3ZMU15RWw==") or child.Name ==_zD1436("b01aV1ZMS1BNVlwfdkxTXlFb") or child.Name ==_zD1436("dFZLTEpRWh92TFNeUVs=") then
					if child:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
						child.NameEsp.TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.Position).Magnitude / (3+0)) .._zD1436("H3I=")
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), child)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==")
						BillboardGui.ExtentsOffset = Vector3.new((950-950), (1+0), (388-388))
						BillboardGui.Size = UDim2.new((1+0), (21+179), (38-37), (101-71))
						BillboardGui.Adornee = child
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font =_zD1436("fFBbWg==")
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((1+0), (637-637), (33-32), (267-267))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (1+0)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((157-77), (438-193), (471-226))
						TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.Position).Magnitude / (1+2)) .._zD1436("H3I=")
					end
				end
			elseif child:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
				child:FindFirstChild(_zD1436("cV5SWnpMTw==")):Destroy()
			end
		end)
	end
end
gearEsp = function()
	local MysticIsland = workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb"))

	for _, descendant in pairs(MysticIsland:GetDescendants()) do
		pcall(function()
			if ESPGear then
				if descendant.Name ==_zD1436("b15NSw==") and descendant.Material == Enum.Material.Neon then
					if descendant:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
						descendant.NameEsp.TextLabel.Text =_zD1436("eFpeTQ==") .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - descendant.Position).Magnitude / (24-21)) .._zD1436("H3I=")
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), descendant)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==")
						BillboardGui.ExtentsOffset = Vector3.new((632-632), (32-31), (229-229))
						BillboardGui.Size = UDim2.new((17-16), (316-116), (1+0), (23+7))
						BillboardGui.Adornee = descendant
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font =_zD1436("fFBbWg==")
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((1+0), (404-404), (1+0), (312-312))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (1+0)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((82-2), (341-96), (109+136))
						TextLabel.Text =_zD1436("eFpeTQ==") .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - descendant.Position).Magnitude / (13-10)) .._zD1436("H3I=")
					end
				end
			elseif descendant:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
				descendant:FindFirstChild(_zD1436("cV5SWnpMTw==")):Destroy()
			end
		end)
	end
end
AdvanFruitEsp = function()
	if advanEsp then
		for _, child in pairs(ReplicatedStorage2.NPCs:GetChildren()) do
			if child.Name ==_zD1436("fltJXlFcWlsfeU1KVksfe1peU1pN") then
				if not workspace:FindFirstChild(_zD1436("fltJ")) then
					Adv = Instance.new(_zD1436("b15NSw=="))
					Adv.Name =_zD1436("fltJ")
					Adv.Transparency = (1+0)
					Adv.Size = Vector3.new((1+0), (1+0), (1+0))
					Adv.Anchored = true
					Adv.CanCollide = false
					Adv.Parent = workspace
					Adv.CFrame = child.HumanoidRootPart.CFrame
				elseif workspace:FindFirstChild(_zD1436("fltJ")) then
					if Adv:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
						Adv.NameEsp.TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude / (15-12)) .._zD1436("H3I=")
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), Adv)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==")
						BillboardGui.ExtentsOffset = Vector3.new((697-697), (43-42), (34-34))
						BillboardGui.Size = UDim2.new((1+0), (336-136), (1+0), (9+21))
						BillboardGui.Adornee = Adv
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font =_zD1436("fFBbWg==")
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((11-10), (168-168), (1+0), (368-368))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (32-31)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((208-128), (457-212), (103+142))
						TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude / (3+0)) .._zD1436("H3I=")
					end
				end
			end
		end
	elseif workspace:FindFirstChild(_zD1436("fltJ")) then
		workspace:FindFirstChild(_zD1436("fltJ")):Destroy()
	end
end
HakiClorEsp = function()
	if ColorEsp then
		for _, child in pairs(ReplicatedStorage2.NPCs:GetChildren()) do
			if child.Name ==_zD1436("fV5NVkxLXh98UEpMVlE=") then
				if not workspace:FindFirstChild(_zD1436("eF5G")) then
					Gay = Instance.new(_zD1436("b15NSw=="))
					Gay.Name =_zD1436("eF5G")
					Gay.Transparency = (1+0)
					Gay.Size = Vector3.new((1+0), (1+0), (5-4))
					Gay.Anchored = true
					Gay.CanCollide = false
					Gay.Parent = workspace
					Gay.CFrame = child.HumanoidRootPart.CFrame
				elseif workspace:FindFirstChild(_zD1436("eF5G")) then
					if Gay:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
						Gay.NameEsp.TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude / (22-19)) .._zD1436("H3I=")
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), Gay)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==")
						BillboardGui.ExtentsOffset = Vector3.new((412-412), (14-13), (565-565))
						BillboardGui.Size = UDim2.new((30-29), (118+82), (51-50), (3+27))
						BillboardGui.Adornee = Gay
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font =_zD1436("fFBbWg==")
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((41-40), (519-519), (1+0), (702-702))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (1+0)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((161-81), (61+184), (95+150))
						TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude / (3+0)) .._zD1436("H3I=")
					end
				end
			end
		end
	elseif workspace:FindFirstChild(_zD1436("eF5G")) then
		workspace:FindFirstChild(_zD1436("eF5G")):Destroy()
	end
end
LegenSword = function()
	if LegenS then
		for _, child in pairs(ReplicatedStorage2.NPCs:GetChildren()) do
			if child.Name ==_zD1436("c1pYWlFbXk1GH2xIUE1bH3taXlNaTQ==") then
				if not workspace:FindFirstChild(_zD1436("c1hb")) then
					Lgd = Instance.new(_zD1436("b15NSw=="))
					Lgd.Name =_zD1436("c1hb")
					Lgd.Transparency = (23-22)
					Lgd.Size = Vector3.new((13-12), (1+0), (28-27))
					Lgd.Anchored = true
					Lgd.CanCollide = false
					Lgd.Parent = workspace
					Lgd.CFrame = child.HumanoidRootPart.CFrame
				elseif workspace:FindFirstChild(_zD1436("c1hb")) then
					if Lgd:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
						Lgd.NameEsp.TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude / (9-6)) .._zD1436("H3I=")
					else
						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), Lgd)

						BillboardGui.Name =_zD1436("cV5SWnpMTw==")
						BillboardGui.ExtentsOffset = Vector3.new((736-736), (33-32), (607-607))
						BillboardGui.Size = UDim2.new((1+0), (384-184), (1+0), (17+13))
						BillboardGui.Adornee = Lgd
						BillboardGui.AlwaysOnTop = true

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

						TextLabel.Font =_zD1436("fFBbWg==")
						TextLabel.FontSize =_zD1436("bFZFWg4L")
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((1+0), (84-84), (46-45), (4-4))
						TextLabel.TextYAlignment =_zD1436("a1BP")
						TextLabel.BackgroundTransparency = (1+0)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((184-104), (152+93), (189+56))
						TextLabel.Text = child.Name .._zD1436("Hx8fNQ==") .. v1177((LocalPlayer.Character.Head.Position - child.HumanoidRootPart.Position).Magnitude / (37-34)) .._zD1436("H3I=")
					end
				end
			end
		end
	elseif workspace:FindFirstChild(_zD1436("c1hb")) then
		workspace:FindFirstChild(_zD1436("c1hb")):Destroy()
	end
end

do
	ChestEsp = function()
		if ChestESP then
			local tagged = game:GetService(_zD1436("fFBTU1pcS1ZQUWxaTUlWXFo=")):GetTagged(_zD1436("YHxXWkxLa15YWFpb"))

			for _, v1 in ipairs(tagged) do
				pcall(function()
					local Magnitude = (v1:GetPivot().Position - LocalPlayer.Character.Head.Position).Magnitude

					v1:GetFullName():gsub(_zD1436("ZGEaSGBi"),_zD1436("YA=="))

					local ChestEspAttachment = v1:FindFirstChild(_zD1436("fFdaTEt6TE9+S0teXFdSWlFL"))

					if not ChestEspAttachment then
						local Attachment = Instance.new(_zD1436("fktLXlxXUlpRSw=="))

						Attachment.Name =_zD1436("fFdaTEt6TE9+S0teXFdSWlFL")
						Attachment.Parent = v1
						Attachment.Position = Vector3.new((30-30), (3+0), (376-376))

						local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"))

						BillboardGui.Name =_zD1436("cV5SWnpMTw==")
						BillboardGui.Size = UDim2.new((879-879), (175+25), (730-730), (33-3))
						BillboardGui.Adornee = Attachment
						BillboardGui.ExtentsOffset = Vector3.new((576-576), (1+0), (294-294))
						BillboardGui.AlwaysOnTop = true
						BillboardGui.Parent = Attachment

						local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"))

						TextLabel.Font = Enum.Font.Code
						TextLabel.TextSize = (1+13)
						TextLabel.TextWrapped = true
						TextLabel.Size = UDim2.new((1+0), (391-391), (1+0), (66-66))
						TextLabel.TextYAlignment = Enum.TextYAlignment.Top
						TextLabel.BackgroundTransparency = (1+0)
						TextLabel.TextStrokeTransparency = 0.5
						TextLabel.TextColor3 = Color3.fromRGB((69+11), (473-228), (300-55))
						TextLabel.Parent = BillboardGui
					end

					local NameEsp = ChestEspAttachment and ChestEspAttachment:FindFirstChild(_zD1436("cV5SWnpMTw=="))

					if NameEsp then
						local v1234 = math.floor(Magnitude / (56-53))

						NameEsp.TextLabel.Text = string.format(_zD1436("ZBpMYh8aWx9y"), v1.Name:gsub(_zD1436("c15dWlM="),""), v1234)
					end
				end)
			end
		else
			for _, v1 in ipairs(game:GetService(_zD1436("fFBTU1pcS1ZQUWxaTUlWXFo=")):GetTagged(_zD1436("YHxXWkxLa15YWFpb"))) do
				local ChestEspAttachment = v1:FindFirstChild(_zD1436("fFdaTEt6TE9+S0teXFdSWlFL"))

				if ChestEspAttachment then
					ChestEspAttachment:Destroy()
				end
			end
		end
	end
end

berriesEsp = function()
	if BerryEsp then
		local tagged = game:GetService(_zD1436("fFBTU1pcS1ZQUWxaTUlWXFo=")):GetTagged(_zD1436("fVpNTUZ9SkxX"))

		for _, v1 in ipairs(tagged) do
			pcall(function()
				local Position = v1.Parent:GetPivot().Position

				for _, v2 in pairs(v1:GetAttributes()) do
					if v2 then
						local name =_zD1436("fVpNTUZ6TE9vXk1LYA==") .. v2 .._zD1436("YA==") .. tostring(Position)
						local Part2 = workspace:FindFirstChild(name)

						if not Part2 then
							Part2 = Instance.new(_zD1436("b15NSw=="))
							Part2.Name = name
							Part2.Transparency = (1+0)
							Part2.Size = Vector3.new((1+0), (48-47), (50-49))
							Part2.Anchored = true
							Part2.CanCollide = false
							Part2.Parent = workspace
							Part2.CFrame = CFrame.new(Position)
						end

						if not Part2:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
							local BillboardGui = Instance.new(_zD1436("fVZTU11QXk1beEpW"), Part2)

							BillboardGui.Name =_zD1436("cV5SWnpMTw==")
							BillboardGui.ExtentsOffset = Vector3.new((807-807), (1+0), (336-336))
							BillboardGui.Size = UDim2.new((362-362), (271-71), (414-414), (19+11))
							BillboardGui.Adornee = Part2
							BillboardGui.AlwaysOnTop = true

							local TextLabel = Instance.new(_zD1436("a1pHS3NeXVpT"), BillboardGui)

							TextLabel.Font = Enum.Font.Code
							TextLabel.TextSize = (34-20)
							TextLabel.TextWrapped = true
							TextLabel.Size = UDim2.new((33-32), (546-546), (44-43), (664-664))
							TextLabel.TextYAlignment = Enum.TextYAlignment.Top
							TextLabel.BackgroundTransparency = (37-36)
							TextLabel.TextStrokeTransparency = 0.5
							TextLabel.TextColor3 = Color3.fromRGB((35+45), (215+30), (413-168))
						end

						local NameEsp = Part2:FindFirstChild(_zD1436("cV5SWnpMTw=="))
						local v1249 = (LocalPlayer.Character.Head.Position - Position).Magnitude / (39-36)

						if NameEsp then
							NameEsp.TextLabel.Text =_zD1436("ZA==") .. v2 .._zD1436("Yg==") .._zD1436("Hw==") .. math.round(v1249) .._zD1436("H3I=")
						end
					end
				end
			end)
		end
	else
		for _, child in ipairs(workspace:GetChildren()) do
			if child:IsA(_zD1436("b15NSw==")) then
				if child.Name:match(_zD1436("fVpNTUZ6TE9vXk1LYBEV")) then
					child:Destroy()
				end
			end
		end
	end
end

do
	GRP_Esp_Esp:AddToggle(_zD1436("ekxPYH1aTU1G"), {
		Text =_zD1436("ekxPH31aTU1G"),
		Default = false,
		Callback = function(p283)
			BerryEsp = p283

			if p283 then
				task.spawn(function()
					while BerryEsp do
						berriesEsp()
						task.wait()
					end
				end)
			else
				for _, child in ipairs(workspace:GetChildren()) do
					if child:IsA(_zD1436("b15NSw==")) then
						if child.Name:match(_zD1436("fVpNTUZ6TE9vXk1LYBEV")) then
							child:Destroy()
						end
					end
				end
			end
		end
	})
end

GRP_Esp_Esp:AddToggle(_zD1436("ekxPYG9TXkZaTQ=="), {
	Text =_zD1436("ekxPH29TXkZaTQ=="),
	Default = false,
	Callback = function(p284)
		PlayerEsp = p284

		if p284 then
			task.spawn(function()
				while PlayerEsp do
					EspPly()
					task.wait()
				end
			end)
		else
			local next_ = next
			local children, v1256 = game.Players:GetChildren()

			for _, v1 in next_, children, v1256 do
				pcall(function()
					if not (isnil(v1.Character) or isnil(v1.Character.Head)) then
						if v1.Character.Head:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
							v1.Character.Head:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number):Destroy()
						end
					end
				end)
			end
		end
	end
})
GRP_Esp_Esp:AddToggle(_zD1436("ekxPYHxXWkxL"), {
	Text =_zD1436("ekxPH3xXWkxL"),
	Default = false,
	Callback = function(p285)
		ChestESP = p285

		if p285 then
			task.spawn(function()
				while ChestESP do
					ChestEsp()
					task.wait()
				end
			end)
		else
			for _, v1 in ipairs(game:GetService(_zD1436("fFBTU1pcS1ZQUWxaTUlWXFo=")):GetTagged(_zD1436("YHxXWkxLa15YWFpb"))) do
				local ChestEspAttachment = v1:FindFirstChild(_zD1436("fFdaTEt6TE9+S0teXFdSWlFL"))

				if ChestEspAttachment then
					ChestEspAttachment:Destroy()
				end
			end
		end
	end
})
GRP_Esp_Esp:AddToggle(_zD1436("ekxPYHlNSlZL"), {
	Text =_zD1436("ekxPH3lNSlZL"),
	Default = false,
	Callback = function(p286)
		DevilFruitESP = p286

		if p286 then
			task.spawn(function()
				while DevilFruitESP do
					DevEsp()
					task.wait()
				end
			end)
		else
			local next_ = next
			local children, v1264 = workspace:GetChildren()

			for _, v1 in next_, children, v1264 do
				pcall(function()
					if v1:FindFirstChild(_zD1436("d15RW1Na")) then
						if v1.Handle:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
							v1.Handle:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number):Destroy()
						end
					end
				end)
			end
		end
	end
})
GRP_Esp_Esp:AddToggle(_zD1436("ekxPYHZMU15RWw=="), {
	Text =_zD1436("ekxPH3ZMU15RWw=="),
	Default = false,
	Callback = function(p287)
		IslandESP = p287

		if p287 then
			task.spawn(function()
				while IslandESP do
					LocationEsp()
					task.wait()
				end
			end)
		else
			local next_ = next
			local children, v1269 = workspace._WorldOrigin.Locations:GetChildren()

			for _, v1 in next_, children, v1269 do
				pcall(function()
					if v1:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
						v1:FindFirstChild(_zD1436("cV5SWnpMTw==")):Destroy()
					end
				end)
			end
		end
	end
})

do
	GRP_Esp_Esp:AddToggle(_zD1436("ekxPYHlTUEhaTQ=="), {
		Text =_zD1436("ekxPH3lTUEhaTQ=="),
		Default = false,
		Callback = function(p288)
			FlowerESP = p288

			if p288 then
				task.spawn(function()
					while FlowerESP do
						flowerEsp()
						task.wait()
					end
				end)
			else
				for _, child in pairs(workspace:GetChildren()) do
					pcall(function()
						if (child.Name ==_zD1436("eVNQSFpNDQ==") or child.Name ==_zD1436("eVNQSFpNDg==")) and child:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number) then
							child:FindFirstChild(_zD1436("cV5SWnpMTw==") .. Number):Destroy()
						end
					end)
				end
			end
		end
	})
end

do
	GRP_Esp_Esp:AddToggle(_zD1436("ekxPYHNaWFpRW15NRmBsSFBNWw=="), {
		Text =_zD1436("ekxPH3NaWFpRW15NRh9sSFBNWw=="),
		Default = false,
		Callback = function(p289)
			LegenS = p289

			if p289 then
				task.spawn(function()
					while LegenS do
						LegenSword()
						task.wait()
					end
				end)
			elseif workspace:FindFirstChild(_zD1436("c1hb")) then
				workspace:FindFirstChild(_zD1436("c1hb")):Destroy()
			end
		end
	})
end

do
	GRP_Esp_Esp:AddToggle(_zD1436("ekxPYHdeVFZgfFBTUE0="), {
		Text =_zD1436("ekxPH3deVFYffFBTUE0="),
		Default = false,
		Callback = function(p290)
			ColorEsp = p290

			if p290 then
				task.spawn(function()
					while ColorEsp do
						HakiClorEsp()
						task.wait()
					end
				end)
			elseif workspace:FindFirstChild(_zD1436("eF5G")) then
				workspace:FindFirstChild(_zD1436("eF5G")):Destroy()
			end
		end
	})
end

GRP_Esp_Esp:AddToggle(_zD1436("ekxPYHhaXk0="), {
	Text =_zD1436("ekxPH3haXk0="),
	Default = false,
	Callback = function(p291)
		ESPGear = p291

		if p291 then
			task.spawn(function()
				while ESPGear do
					gearEsp()
					task.wait()
				end
			end)
		else
			local pairs_ = pairs
			local MysticIsland = workspace.Map:FindFirstChild(_zD1436("ckZMS1ZcdkxTXlFb"))

			for _, descendant in pairs_(MysticIsland:GetDescendants()) do
				pcall(function()
					if descendant:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
						descendant:FindFirstChild(_zD1436("cV5SWnpMTw==")):Destroy()
					end
				end)
			end
		end
	end
})

do
	GRP_Esp_Esp:AddToggle(_zD1436("ekxPYGxaXnpJWlFLYHZMU15RWw=="), {
		Text =_zD1436("ekxPH2xaXnpJWlFLH3ZMU15RWw=="),
		Default = false,
		Callback = function(p292)
			EspEventIsland = p292

			if p292 then
				task.spawn(function()
					while EspEventIsland do
						EventIslandEsp()
						task.wait()
					end
				end)
			else
				for _, child in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
					pcall(function()
						if child:FindFirstChild(_zD1436("cV5SWnpMTw==")) then
							child:FindFirstChild(_zD1436("cV5SWnpMTw==")):Destroy()
						end
					end)
				end
			end
		end
	})
end

do
	GRP_Esp_Esp:AddToggle(_zD1436("ekxPYH5bSV5RXFpbYHtaXlNaTQ=="), {
		Text =_zD1436("ekxPH35bSV5RXFpbH3taXlNaTQ=="),
		Default = false,
		Callback = function(p293)
			advanEsp = p293

			if p293 then
				task.spawn(function()
					while advanEsp do
						AdvanFruitEsp()
						task.wait()
					end
				end)
			elseif workspace:FindFirstChild(_zD1436("fltJ")) then
				workspace:FindFirstChild(_zD1436("fltJ")):Destroy()
			end
		end
	})
end

GRP_Raids_Fruits_Options = t15.Raids:AddLeftGroupbox(_zD1436("eU1KVktMH3BPS1ZQUUw="))

do
	local function v1280(p294)
		local v1281 = tostring(p294)
		local v1282

		repeat
			v1281, v1282 = v1281:gsub(_zD1436("YRcSABpbFBYXGlsaWxpbFg=="),_zD1436("Gg4TGg0="))
		until v1282 == (274-274)

		return v1281
	end
	local function v1283()
		local s18 =_zD1436("fltJXlFcWh95TUpWSx9sS1BcVDU=")
		local ok, result = pcall(function()
			return game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("eFpLeU1KVktM"), true)
		end)

		if ok and result then
			local v1287 = false

			for _, v1 in pairs(result) do
				if v1.OnSale then
					v1287 = true
					s18 ..= v1.Name .._zD1436("HxIfGw==") .. v1280(v1.Price) .._zD1436("NQ==")
				end
			end

			if not v1287 then
				s18 ..=_zD1436("Eh9xUB9ZTUpWSxE1")
			end
		else
			s18 ..=_zD1436("Eh96TU1QTR9IV1ZTWh9NWktNVlpJVlFYH1teS14RNQ==")
		end

		local v1290 = s18 .._zD1436("NXFQTVJeUx95TUpWSx9sS1BcVDU=")
		local ok2, result2 = pcall(function()
			return game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("eFpLeU1KVktM"))
		end)

		if ok2 and result2 then
			local v1293 = false

			for _, v1 in pairs(result2) do
				if v1.OnSale then
					v1293 = true
					v1290 ..= v1.Name .._zD1436("HxIfGw==") .. v1280(v1.Price) .._zD1436("NQ==")
				end
			end

			if not v1293 then
				v1290 ..=_zD1436("Eh9xUB9ZTUpWSxE1")
			end
		else
			v1290 ..=_zD1436("Eh96TU1QTR9IV1ZTWh9NWktNVlpJVlFYH1teS14RNQ==")
		end

		return v1290
	end

	local v1296 = GRP_Raids_Fruits_Options:AddLabel(_zD1436("c1BeW1ZRWBEREQ=="))

	task.spawn(function()
		while task.wait((72-12)) do
			pcall(function()
				v1296:SetText(v1283())
			end)
		end
	end)
	pcall(function()
		v1296:SetText(v1283())
	end)
end

do
	RandomFF = GRP_Raids_Fruits_Options:AddToggle(_zD1436("fkpLUGBtXlFbUFJgeU1KVks="), {
		Text =_zD1436("fkpLUB9tXlFbUFIfeU1KVks="),
		Default = false,
		Callback = function(p295)
			_G.Random_Auto = p295
		end
	})
end

spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Random_Auto then
				ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fFBKTFZR"),_zD1436("fUpG"))
			end
		end)
	end
end)

do
	DropF = GRP_Raids_Fruits_Options:AddToggle(_zD1436("fkpLUGB7TVBPYHlNSlZL"), {
		Text =_zD1436("fkpLUB97TVBPH3lNSlZL"),
		Default = false,
		Callback = function(p296)
			_G.DropFruit = p296
		end
	})
end

do
	spawn(function()
		while wait(Sec) do
			if _G.DropFruit then
				pcall(function()
					DropFruits()
				end)
			end
		end
	end)
end

StoredF = GRP_Raids_Fruits_Options:AddToggle(_zD1436("fkpLUGBsS1BNWmB5TUpWSw=="), {
	Text =_zD1436("fkpLUB9sS1BNWh95TUpWSw=="),
	Default = false,
	Callback = function(p297)
		_G.StoreF = p297
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.StoreF then
				pcall(function()
					UpdStFruit()
				end)
			end
		end
	end)
end

TwF = GRP_Raids_Fruits_Options:AddToggle(_zD1436("fkpLUGBrSFpaUWBLUGB5TUpWSw=="), {
	Text =_zD1436("fkpLUB9rSFpaUR9LUB95TUpWSw=="),
	Default = false,
	Callback = function(p298)
		_G.TwFruits = p298
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.TwFruits then
				pcall(function()
					for _, child in pairs(workspace:GetChildren()) do
						if string.find(child.Name,_zD1436("eU1KVks=")) then
							_tp(child.Handle.CFrame)
						end
					end
				end)
			end
		end
	end)
end

do
	BringF = GRP_Raids_Fruits_Options:AddToggle(_zD1436("fkpLUGB8UFNTWlxLYHlNSlZL"), {
		Text =_zD1436("fkpLUB98UFNTWlxLH3lNSlZL"),
		Default = false,
		Callback = function(p299)
			_G.InstanceF = p299
		end
	})
end

spawn(function()
	while wait(Sec) do
		if _G.InstanceF then
			pcall(function()
				collectFruits(_G.InstanceF)
			end)
		end
	end
end)

do
	GRP_Raids_Fruits_Options:AddDropdown(_zD1436("bFpTWlxLYHlNSlZLYGxXUE8="), {
		Text =_zD1436("bFpTWlxLH3lNSlZLH2xXUE8="),
		Values = {
_zD1436("bVBcVFpLEm1QXFRaSw=="),
_zD1436("bE9WURJsT1ZR"),
_zD1436("fVNeW1oSfVNeW1o="),
_zD1436("bE9NVlFYEmxPTVZRWA=="),
_zD1436("fVBSXRJ9UFJd"),
_zD1436("bFJQVFoSbFJQVFo="),
_zD1436("bE9WVFoSbE9WVFo="),
_zD1436("eVNeUloSeVNeUlo="),
_zD1436("dlxaEnZcWg=="),
_zD1436("bF5RWxJsXlFb"),
_zD1436("e15NVBJ7Xk1U"),
_zD1436("el5YU1oSel5YU1o="),
_zD1436("e1ZeUlBRWxJ7Vl5SUFFb"),
_zD1436("c1ZYV0sSc1ZYV0s="),
_zD1436("bUpdXVpNEm1KXV1aTQ=="),
_zD1436("eFdQTEsSeFdQTEs="),
_zD1436("cl5YUl4Scl5YUl4="),
_zD1436("bkpeVFoSbkpeVFo="),
_zD1436("fUpbW1deEn1KW1tXXg=="),
_zD1436("c1BJWhJzUEla"),
_zD1436("fE1aXktWUFESfE1aXktWUFE="),
_zD1436("bE9WW1pNEmxPVltaTQ=="),
_zD1436("bFBKUVsSbFBKUVs="),
_zD1436("b1dQWlFWRxJvV1BaUVZH"),
_zD1436("b1BNS15TEm9QTUteUw=="),
_zD1436("c1ZYV0tRVlFYEnNWWFdLUVZRWA=="),
_zD1436("b15WURJvXlZR"),
_zD1436("fVNWRUVeTVsSfVNWRUVeTVs="),
_zD1436("eE1eSVZLRhJ4TV5JVktG"),
_zD1436("axJtWkcSaxJtWkc="),
_zD1436("cl5SUlBLVxJyXlJSUEtX"),
_zD1436("e1BKWFcSe1BKWFc="),
_zD1436("bFdeW1BIEmxXXltQSA=="),
_zD1436("aVpRUFISaVpRUFI="),
_zD1436("eF5MEnheTA=="),
_zD1436("fFBRS01QUxJ8UFFLTVBT"),
_zD1436("bE9WTVZLEmxPVk1WSw=="),
_zD1436("c1pQT15NWxJzWlBPXk1b"),
_zD1436("ZlpLVhJmWktW"),
_zD1436("dFZLTEpRWhJ0VktMSlFa"),
_zD1436("e01eWFBREntNXlhQUQ==")
		},
		Default = (1+0),
		Callback = function(p300)
			getgenv().SelectFruit = p300
		end
	})
end

GRP_Raids_Fruits_Options:AddToggle(_zD1436("fkpLUGB9SkZgeU1KVktgbFdQTw=="), {
	Text =_zD1436("fkpLUB99SkYfeU1KVksfbFdQTw=="),
	Default = false,
	Callback = function(p301)
		getgenv().AutoBuyFruitSniper = p301
	end
})

do
	spawn(function()
		pcall(function()
			while wait() do
				if getgenv().AutoBuyFruitSniper then
					game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("eFpLeU1KVktM"))
					game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("b0pNXFdeTFptXkh5TUpWSw=="), getgenv().SelectFruit)
				end
			end
		end)
	end)
end

GRP_Raids_Dungeon_Event_Raiding = t15.Raids:AddLeftGroupbox(_zD1436("e0pRWFpQUR96SVpRSx8QH21eVltWUVg="))

do
	Q = GRP_Raids_Dungeon_Event_Raiding:AddDropdown(_zD1436("bFpTWlxLYHxXVk8="), {
		Text =_zD1436("bFpTWlxLH3xXVk8="),
		Values = {
_zD1436("eVNeUlo="),
_zD1436("dlxa"),
_zD1436("bkpeVFo="),
_zD1436("c1ZYV0s="),
_zD1436("e15NVA=="),
_zD1436("bEtNVlFY"),
_zD1436("bUpSXVNa"),
_zD1436("cl5YUl4="),
_zD1436("d0pSXlEFH31KW1tXXg=="),
_zD1436("bF5RWw=="),
_zD1436("fVZNWwUfb1dQWlFWRw=="),
_zD1436("e1BKWFc=")
		},
		Default = (41-40),
		Callback = function(p302)
			_G.SelectChip = p302
		end
	})
end

Q = GRP_Raids_Dungeon_Event_Raiding:AddToggle(_zD1436("fkpLUGBsWlNaXEtge0pRWFpQUWB8V1ZP"), {
	Text =_zD1436("fkpLUB9sWlNaXEsfe0pRWFpQUR98V1ZP"),
	Default = false,
	Callback = function(p303)
		_G.AutoSelectDungeon = p303
	end
})
GRP_Raids_Dungeon_Event_Raiding:AddToggle(_zD1436("eFpLYHlNSlZLYHZRYHZRSVpRS1BNRmB9WlNQSGAOcg=="), {
	Text =_zD1436("eFpLH3lNSlZLH3ZRH3ZRSVpRS1BNRh99WlNQSB8Ocg=="),
	Default = false,
	Callback = function(p304)
		getgenv().AutoGetFruit = p304
	end
})

do
	spawn(function()
		while wait() do
			pcall(function()
				if getgenv().AutoGetFruit then
					for _, v1 in ipairs({
_zD1436("bVBcVFpLEm1QXFRaSw=="),
_zD1436("bE9WURJsT1ZR"),
_zD1436("fFdQTxJ8V1BP"),
_zD1436("bE9NVlFYEmxPTVZRWA=="),
_zD1436("fVBSXRJ9UFJd"),
_zD1436("bFJQVFoSbFJQVFo="),
_zD1436("bE9WVFoSbE9WVFo="),
_zD1436("eVNeUloSeVNeUlo="),
_zD1436("eV5TXFBREnleU1xQUQ=="),
_zD1436("dlxaEnZcWg=="),
_zD1436("bF5RWxJsXlFb"),
_zD1436("e15NVBJ7Xk1U"),
_zD1436("eFdQTEsSeFdQTEs="),
_zD1436("e1ZeUlBRWxJ7Vl5SUFFb"),
_zD1436("c1ZYV0sSc1ZYV0s="),
_zD1436("bUpdXVpNEm1KXV1aTQ=="),
_zD1436("fV5NTVZaTRJ9Xk1NVlpN")
					}) do
						game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(unpack({
_zD1436("c1BeW3lNSlZL"),
							v1
						}))
					end
				end
			end)
		end
	end)
end

GRP_Raids_Dungeon_Event_Raiding:AddButton({
	Text =_zD1436("fUpGH3tKUVhaUFEffFdWT0wfZH1aU1Zi"),
	Func = function()
	end
})
GRP_Raids_Dungeon_Event_Raiding:AddButton({
	Text =_zD1436("fUpGH3tKUVhaUFEffFdWT0wfZHtaSVZTH3lNSlZLYg=="),
	Func = function()
	end
})

do
	AutoChipBeli = GRP_Raids_Dungeon_Event_Raiding:AddToggle(_zD1436("fkpLUGB9SkZgfFdWT2BkfVpTVmI="), {
		Text =_zD1436("fkpLUB99SkYffFdWTx9kfVpTVmI="),
		Default = false,
		Callback = function()
		end
	})
end

do
	task.spawn(function()
		while task.wait((19-18)) do
			if _G.AutoChipBeli then
				pcall(function()
					if not GetBP(_zD1436("bE9aXFZeUx9yVlxNUFxXVk8=")) then
						ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("bV5WW0xxT1w="),_zD1436("bFpTWlxL"), _G.SelectChip)
					end
				end)
			end
		end
	end)
end

AutoChipFruit = GRP_Raids_Dungeon_Event_Raiding:AddToggle(_zD1436("fkpLUGB9SkZgfFdWT2Bke1pJVlNgeU1KVkti"), {
	Text =_zD1436("fkpLUB99SkYffFdWTx9ke1pJVlMfeU1KVkti"),
	Default = false,
	Callback = function(p305)
		_G.AutoChipFruit = p305
	end
})
task.spawn(function()
	while task.wait((10-9)) do
		if _G.AutoChipFruit then
			pcall(function()
				if not GetBP(_zD1436("bE9aXFZeUx9yVlxNUFxXVk8=")) then
					local response = ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("eFpLeU1KVktM"))
					local Name

					for _, v1 in pairs(response) do
						if v1.Price <= (790083-300083) then
							Name = v1.Name

							break
						end
					end

					if Name then
						ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("c1BeW3lNSlZL"), tostring(Name))
						ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("bV5WW0xxT1w="),_zD1436("bFpTWlxL"), _G.SelectChip)
					end
				end
			end)
		end
	end
end)

do
	StartR = GRP_Raids_Dungeon_Event_Raiding:AddToggle(_zD1436("fkpLUGBsS15NS2BtXlZb"), {
		Text =_zD1436("fkpLUB9sS15NSx9tXlZb"),
		Default = false,
		Callback = function(p306)
			_G.Auto_StartRaid = p306
		end
	})
end

do
	task.spawn(function()
		while task.wait(Sec) do
			if _G.Auto_StartRaid and LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible == false then
				if GetBP(_zD1436("bE9aXFZeUx9yVlxNUFxXVk8=")) then
					if World2 then
						_tp(CFrame.new(-6438.73535, 250.645355, -4501.50684))
						fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
					elseif World3 then
						_tp(CFrame.new(-(7942-2896), (346-32), -(4992-2032)))
						task.wait(1.5)
						pcall(function()
							local Main = workspace.Map[_zD1436("fVBeSx98XkxLU1o=")].RaidSummon2.Button.Main

							if Main and Main:FindFirstChild(_zD1436("fFNWXFR7WktaXEtQTQ==")) then
								fireclickdetector(Main.ClickDetector)
							end
						end)
					end
				end
			end
		end
	end)
end

Raiding = GRP_Raids_Dungeon_Event_Raiding:AddToggle(_zD1436("fkpLUGBtXlZbYBRgcVpHS2B2TFNeUVs="), {
	Text =_zD1436("fkpLUB9tXlZbHxQfcVpHSx92TFNeUVs="),
	Default = false,
	Callback = function(p307)
		_G.Raiding = p307
	end
})
spawn(function()
	local Locations = workspace._WorldOrigin.Locations
	local t46 = {
_zD1436("dkxTXlFbHw4="),
_zD1436("dkxTXlFbHw0="),
_zD1436("dkxTXlFbHww="),
_zD1436("dkxTXlFbHws="),
_zD1436("dkxTXlFbHwo=")
	}
	local v1308

	while task.wait(0.3) do
		if _G.Raiding and LocalPlayer.PlayerGui.Main.TopHUDList.RaidTimer.Visible then
			local Character = LocalPlayer.Character

			if Character then
				local HumanoidRootPart = Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
				local Humanoid = Character:FindFirstChildOfClass(_zD1436("d0pSXlFQVls="))

				if HumanoidRootPart and Humanoid and not (Humanoid.Health <= (565-565)) and not (Humanoid.Sit or Humanoid.PlatformStand or not not HumanoidRootPart.Anchored) then
					local n9 = (228841+771158)

					for _, v1 in ipairs(t46) do
						local v1315 = Locations:FindFirstChild(v1)

						if v1315 then
							local Magnitude = (HumanoidRootPart.Position - v1315.Position).Magnitude

							if Magnitude < n9 then
								n9 = Magnitude
								v1308 = v1
							end
						end
					end

					if v1308 then
						local v1317 = Locations:FindFirstChild(v1308)

						if v1317 then
							local v1318 = false

							for _, child in ipairs(workspace.Enemies:GetChildren()) do
								local Humanoid2 = child:FindFirstChild(_zD1436("d0pSXlFQVls="))
								local HumanoidRootPart2 = child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

								if Humanoid2 and HumanoidRootPart2 and Humanoid2.Health > (55-55) and (HumanoidRootPart2.Position - v1317.Position).Magnitude < (903-453) then
									v1318 = true

									while true do
										task.wait()
										t9.Kill(child, _G.Raiding)

										if _G.Raiding then
											if not child.Parent or Humanoid2.Health <= (147-147) then
												break
											end
										else
											break
										end
									end
								end
							end

							if not v1318 then
								local v1323 = table.find(t46, v1308)

								if v1323 and t46[v1323 + (49-48)] then
									local v1324 = Locations:FindFirstChild(t46[v1323 + (1+0)])

									if v1324 then
										_tp(v1324.CFrame * CFrame.new((936-936), (72-27), (83+37)))
									end

									v1308 = t46[v1323 + (1+0)]
									task.wait((1+0))
								end
							end
						end
					end
				end
			end
		end
	end
end)
GRP_Raids_Dungeon_Event_Raiding:AddToggle(_zD1436("fkpLUGB+SF5UWlFWUVg="), {
	Text =_zD1436("fkpLUB9+SF5UWlFWUVg="),
	Default = false,
	Callback = function(p308)
		_G.Auto_Awakener = p308
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.Auto_Awakener then
				ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fkheVFpRWk0="),_zD1436("fFdaXFQ="))
				ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fkheVFpRWk0="),_zD1436("fkheVFpR"))
			end
		end)
	end
end)
GRP_Raids_Dungeon_Event_Raiding:AddToggle(_zD1436("fkpLUGBrWlNaT1BNS2BrUGBzXl0="), {
	Text =_zD1436("fkpLUB9rWlNaT1BNSx9rUB9zXl0="),
	Default = false,
	Callback = function(p309)
		_G.TpLab = p309

		while _G.TpLab do
			wait()

			if _G.TpLab then
				if World2 and _G.TpLab then
					_tp(CFrame.new(-6438.73535, 250.645355, -4501.50684))
				elseif World3 and _G.TpLab then
					_tp(CFrame.lookAt(Vector3.new(-(5800-754), (502-188), -(4773-1813)), Vector3.new(-(3661+1394), (393-79), -(4528-1571))))
				end
			end
		end
	end
})
GRP_Raids_Items_Law_Order_Sword = t15.Raids:AddLeftGroupbox(_zD1436("dktaUkwfc15IEHBNW1pNH2xIUE1b"))
GRP_Raids_Items_Law_Order_Sword:AddButton({
	Text =_zD1436("fUpGH3JWXE1QXFdWTx9zXkg="),
	Func = function()
	end
})

do
	GRP_Raids_Items_Law_Order_Sword:AddButton({
		Text =_zD1436("bEteTUsfc15IH21eVltM"),
		Func = function()
		end
	})
end

GRP_Raids_Items_Law_Order_Sword:AddToggle(_zD1436("fkpLUGB9SkZgclZcTVBcV1ZPYHNeSA=="), {
	Text =_zD1436("fkpLUB99SkYfclZcTVBcV1ZPH3NeSA=="),
	Default = false,
	Callback = function(p310)
		_G.AutoLawKak = p310
	end
})

do
	spawn(function()
		while task.wait((1+0)) do
			if getgenv().AutoBuyMicrochipLaw then
				pcall(function()
					game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("fVNeXFRdWl5NW21aSF5NWw=="),_zD1436("clZcTVBcV1ZP"),_zD1436("DQ=="))
				end)
			end
		end
	end)
end

GRP_Raids_Items_Law_Order_Sword:AddToggle(_zD1436("fkpLUGBsS15NS2BzXkhgbV5WW0w="), {
	Text =_zD1436("fkpLUB9sS15NSx9zXkgfbV5WW0w="),
	Default = false,
	Callback = function(p311)
		getgenv().AutoStartLawRaids = p311
	end
})

do
	spawn(function()
		while task.wait((1+0)) do
			if getgenv().AutoStartLawRaids then
				pcall(function()
					fireclickdetector(workspace.Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
				end)
			end
		end
	end)
end

GRP_Raids_Items_Law_Order_Sword:AddToggle(_zD1436("fkpLUGB0VlNTYHNeSA=="), {
	Text =_zD1436("fkpLUB90VlNTH3NeSA=="),
	Default = false,
	Callback = function(p312)
		_G.AutoLawKak = p312
	end
})

do
	spawn(function()
		while wait(Sec) do
			if _G.AutoLawKak then
				pcall(function()
					local Order = GetConnectionEnemies(_zD1436("cE1bWk0="))

					if Order then
						while true do
							task.wait()
							t9.Kill(Order, _G.AutoLawKak)

							if _G.AutoLawKak == false then
								break
							elseif not Order.Parent or Order.Humanoid.Health <= (648-648) then
								break
							end
						end
					else
						_tp(CFrame.new(-6217.2021484375, 28.047645568848, -5053.1357421875))
					end
				end)
			end
		end
	end)
end

GRP_Raids_Raids_Dungeons = t15.Raids:AddLeftGroupbox(_zD1436("bV5WW0wfe0pRWFpQUUw="))

local LocalPlayer2 = game.Players.LocalPlayer

do
	local function v1327()
		local Character = LocalPlayer2.Character

		return Character and Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
	end

	GRP_Raids_Raids_Dungeons:AddToggle(_zD1436("fkpLUGB5Xk1SYHtKUVhaUFE="), {
		Text =_zD1436("fkpLUB95Xk1SH3tKUVhaUFE="),
		Default = false,
		Callback = function(p313)
			_G.AutoFarmDungeon = p313
		end
	})
	spawn(function()
		while task.wait(0.15) do
			if _G.AutoFarmDungeon then
				pcall(function()
					local Character = game.Players.LocalPlayer.Character
					local HumanoidRootPart = Character and Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))
					local Humanoid = Character and Character:FindFirstChildOfClass(_zD1436("d0pSXlFQVls="))

					if not HumanoidRootPart or not Humanoid or Humanoid.Health <= (454-454) then
						return
					end

					for _, child in pairs(workspace.Enemies:GetChildren()) do
						if not _G.AutoFarmDungeon then
							break
						end

						local Humanoid2 = child:FindFirstChild(_zD1436("d0pSXlFQVls="))
						local HumanoidRootPart2 = child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

						if Humanoid2 and HumanoidRootPart2 and Humanoid2.Health > (421-421) and (HumanoidRootPart2.Position - HumanoidRootPart.Position).Magnitude <= (3282+1718) then
							while true do
								task.wait()
								t9.Kill(child, true)

								if _G.AutoFarmDungeon then
									if not child.Parent or Humanoid2.Health <= (383-383) then
										break
									end
								else
									break
								end
							end
						end
					end
				end)
			end
		end
	end)
	GRP_Raids_Raids_Dungeons:AddToggle(_zD1436("a29gekdWS2AXDhY="), {
		Text =_zD1436("a28fekdWSx8XDhY="),
		Default = false,
		Callback = function(p314)
			_G.TPFloor1 = p314
		end
	})

	local u1336 = false

	local function v1337()
		local v1338 = v1327()

		if not v1338 then
			return
		end

		for _, child in pairs(workspace.Map.Dungeon:GetChildren()) do
			local ExitTeleporter = child:FindFirstChild(_zD1436("ekdWS2taU1pPUE1LWk0="))

			if ExitTeleporter and ExitTeleporter:FindFirstChild(_zD1436("bVBQSw==")) and (v1338.Position - ExitTeleporter.Root.Position).Magnitude < (347-147) then
				return ExitTeleporter.Root
			end
		end
	end

	task.spawn(function()
		while task.wait(0.3) do
			if _G.TPFloor1 then
				if not u1336 then
					local v1342 = v1337()

					if v1342 then
						local cFrame = v1342.CFrame * CFrame.new((252-252), (2+1), (433-433))

						v1327().CFrame = cFrame
						u1336 = true
					end
				end
			else
				u1336 = false
			end
		end
	end)
	GRP_Raids_Raids_Dungeons:AddToggle(_zD1436("a29gekdWS2AXDRY="), {
		Text =_zD1436("a28fekdWSx8XDRY="),
		Default = false,
		Callback = function(p315)
			_G.TPFloor2 = p315
		end
	})

	local u1344 = false

	task.spawn(function()
		while task.wait(0.3) do
			if _G.TPFloor2 then
				if not u1344 then
					local v1345 = v1327()

					if v1345 then
						for _, child in pairs(workspace.Map.Dungeon:GetChildren()) do
							local EntranceTeleporter = child:FindFirstChild(_zD1436("elFLTV5RXFprWlNaT1BNS1pN"))
							local ExitTeleporter = child:FindFirstChild(_zD1436("ekdWS2taU1pPUE1LWk0="))

							if EntranceTeleporter and ExitTeleporter and EntranceTeleporter:FindFirstChild(_zD1436("bVBQSw==")) and ExitTeleporter:FindFirstChild(_zD1436("bVBQSw==")) and (v1345.Position - EntranceTeleporter.Root.Position).Magnitude < (104-4) then
								v1345.CFrame = ExitTeleporter.Root.CFrame * CFrame.new((987-987), (2+1), (603-603))
								u1344 = true

								break
							end
						end
					end
				end
			else
				u1344 = false
			end
		end
	end)
	GRP_Raids_Raids_Dungeons:AddToggle(_zD1436("a29gekdWS2AXDBY="), {
		Text =_zD1436("a28fekdWSx8XDBY="),
		Default = false,
		Callback = function(p316)
			_G.TPFloor3 = p316
		end
	})

	local u1350 = false

	local function v1351()
		local v1352

		for _, child in pairs(workspace.Map.Dungeon:GetChildren()) do
			local v1355 = tonumber(child.Name)

			if v1355 and (not v1352 or tonumber(v1352.Name) < v1355) then
				v1352 = child
			end
		end

		return v1352
	end

	task.spawn(function()
		while task.wait(0.3) do
			if _G.TPFloor3 then
				if not u1350 then
					local v1356 = v1351()

					if v1356 and v1356:FindFirstChild(_zD1436("ekdWS2taU1pPUE1LWk0=")) then
						if v1356.ExitTeleporter:FindFirstChild(_zD1436("bVBQSw==")) then
							v1327().CFrame = v1356.ExitTeleporter.Root.CFrame * CFrame.new((26-26), (20-17), (259-259))
							u1350 = true
						end
					end
				end
			else
				u1350 = false
			end
		end
	end)
	GRP_Raids_Raids_Dungeons:AddToggle(_zD1436("a29gekdWS2AXCxY="), {
		Text =_zD1436("a28fekdWSx8XCxY="),
		Default = false,
		Callback = function(p317)
			_G.TPFloor4 = p317
		end
	})

	local u1357 = false

	local function v1358()
		local v1359 = v1327()

		if not v1359 then
			return
		end

		local Root_
		local huge = math.huge

		for _, child in pairs(workspace.Map.Dungeon:GetChildren()) do
			local ExitTeleporter = child:FindFirstChild(_zD1436("ekdWS2taU1pPUE1LWk0="))

			if ExitTeleporter and ExitTeleporter:FindFirstChild(_zD1436("bVBQSw==")) then
				local Magnitude = (v1359.Position - ExitTeleporter.Root.Position).Magnitude

				if Magnitude < huge then
					huge = Magnitude
					Root_ = ExitTeleporter.Root
				end
			end
		end

		return Root_
	end

	task.spawn(function()
		while task.wait(0.3) do
			if _G.TPFloor4 then
				if not u1357 then
					local v1366 = v1358()

					if v1366 then
						v1327().CFrame = v1366.CFrame * CFrame.new((179-179), (2+1), (418-418))
						u1357 = true
					end
				end
			else
				u1357 = false
			end
		end
	end)
end

GRP_Combat_Combat_AimBot = t15.Combat:AddLeftGroupbox(_zD1436("fFBSXV5LHxAfflZSfVBL"))

do
	local v1367 = GRP_Combat_Combat_AimBot:AddLabel("")

	spawn(function()
		while wait(Sec) do
			pcall(function()
				local v1368 = #game:GetService(_zD1436("b1NeRlpNTA==")):GetPlayers()

				if v1368 == (1+11) then
					v1367:SetText(_zD1436("flNTH29TXkZaTUwfBR8=") .. v1368 .._zD1436("HxAfDg0fZHJeR2I="))
				else
					v1367:SetText(_zD1436("flNTH29TXkZaTUwfBR8=") .. v1368 .._zD1436("HxAfDg0="))
				end
			end)
		end
	end)
end

do
	local v1369 = GRP_Combat_Combat_AimBot:AddLabel("")

	Checking_AimStatus = function()
		if _G.AimCam then
			return(_zD1436("flZSXVBLH3xeUlpNXg=="))
		end

		if _G.AimbotGun then
			return(_zD1436("flZSXVBLH3hKUUw="))
		end

		return""
	end
	spawn(function()
		while wait(0.2) do
			pcall(function()
				if _G.AimMethod then
					if _G.AimCam or _G.AimbotGun then
						v1369:SetText(_zD1436("flZSXVBLHxIf") .. Checking_AimStatus() .._zD1436("HwUfa01KWg=="))
					else
						v1369:SetText(_zD1436("flZSXVBLHxIfbFRWU1NMHwUfa01KWg=="))
					end
				else
					v1369:SetText(_zD1436("flZSXVBLHxIfbFRWU1NMHwUfeV5TTFo="))
				end
			end)
		end
	end)
end

do
	local t47 = {}
	local Players2 = game:GetService(_zD1436("b1NeRlpNTA=="))

	for _, child in pairs(Players2:GetChildren()) do
		table.insert(t47, child.Name)
	end

	GRP_Combat_Combat_AimBot:AddDropdown(_zD1436("bFpTWlxLYG9TXkZaTUw="), {
		Text =_zD1436("bFpTWlxLH29TXkZaTUw="),
		Values = t47,
		Default = (17-16),
		Callback = function(p318)
			_G.PlayersList = p318
		end
	})
end

GRP_Combat_Combat_AimBot:AddToggle(_zD1436("a1pTWk9QTUtga1BgbFpTWlxLYG9TXkZaTUw="), {
	Text =_zD1436("a1pTWk9QTUsfa1AfbFpTWlxLH29TXkZaTUw="),
	Default = false,
	Callback = function(p319)
		_G.TpPly = p319
		spawn(function()
			pcall(function()
				while _G.TpPly do
					wait()
					_tp(game:GetService(_zD1436("b1NeRlpNTA=="))[_G.PlayersList].Character.HumanoidRootPart.CFrame)
				end
			end)
		end)
	end
})
GRP_Combat_Combat_AimBot:AddToggle(_zD1436("bE9aXEteS1pgbFpTWlxLYG9TXkZaTUw="), {
	Text =_zD1436("bE9aXEteS1ofbFpTWlxLH29TXkZaTUw="),
	Default = false,
	Callback = function(p320)
		SpectatePlys = p320
		spawn(function()
			repeat
				task.wait(0.1)

				if _G.PlayersList then
					if game:GetService(_zD1436("b1NeRlpNTA==")):FindFirstChild(_G.PlayersList) then
						workspace.Camera.CameraSubject = game:GetService(_zD1436("b1NeRlpNTA==")):FindFirstChild(_G.PlayersList).Character.Humanoid
					end
				end
			until not SpectatePlys

			workspace.Camera.CameraSubject = LocalPlayer2.Character.Humanoid
		end)
	end
})

do
	GRP_Combat_Combat_AimBot:AddDropdown(_zD1436("bFpTWlxLYH5WUmByWktXUFs="), {
		Text =_zD1436("bFpTWlxLH35WUh9yWktXUFs="),
		Values = {
_zD1436("flZSH29TXkZaTQ=="),
_zD1436("cVpeTVpMSx9+VlI=")
		},
		Default = (1+0),
		Callback = function(p321)
			ABmethod = p321
		end
	})
end

GRP_Combat_Combat_AimBot:AddToggle(_zD1436("flZSXVBLYHJaS1dQW2BsVFZTU0w="), {
	Text =_zD1436("flZSXVBLH3JaS1dQWx9sVFZTU0w="),
	Default = false,
	Callback = function(p322)
		_G.AimMethod = p322
	end
})
spawn(function()
	while wait() do
		pcall(function()
			if _G.AimMethod and ABmethod ==_zD1436("flZSH29TXkZaTQ==") then
				local v1374 = Players:FindFirstChild(getgenv().PlayersList)

				if v1374 and v1374.Character then
					if v1374.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and v1374.Team ~= LocalPlayer2.Team then
						MousePos = v1374.Character.HumanoidRootPart.Position
					end
				end
			end
		end)
	end
end)

do
	spawn(function()
		while wait() do
			pcall(function()
				if _G.AimMethod and ABmethod ==_zD1436("cVpeTVpMSx9+VlI=") then
					local huge = math.huge

					for _, player in pairs(Players:GetPlayers()) do
						if player ~= LocalPlayer2 and player.Team ~= LocalPlayer2.Team and player.Character then
							if player.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
								local Magnitude = (player.Character.HumanoidRootPart.Position - LocalPlayer2.Character.HumanoidRootPart.Position).Magnitude

								if Magnitude < huge then
									huge = Magnitude
									MousePos = player.Character.HumanoidRootPart.Position
								end
							end
						end
					end
				end
			end)
		end
	end)
end

do
	GRP_Combat_Combat_AimBot:AddToggle(_zD1436("flZSXVBLYHxeUlpNXmB8U1BMWktgb1NeRlpNTA=="), {
		Text =_zD1436("flZSXVBLH3xeUlpNXh98U1BMWksfb1NeRlpNTA=="),
		Default = false,
		Callback = function(p323)
			_G.AimCam = p323
		end
	})
end

task.spawn(function()
	while task.wait(Sec) do
		pcall(function()
			if _G.AimCam then
				local CurrentCamera = workspace.CurrentCamera

				closestplayer = function()
					local huge = math.huge
					local v1381
					local players, v1383 = ply:GetPlayers()

					for _, v1 in next, players, v1383 do
						if v1 ~= LocalPlayer2 and v1.Character then
							if v1.Character:FindFirstChild(_zD1436("d1peWw==")) and _G.AimCam and v1.Character.Humanoid.Health > (314-314) then
								local Magnitude = (v1.Character.Head.Position - LocalPlayer2.Character.Head.Position).Magnitude

								if Magnitude < huge then
									huge = Magnitude
									v1381 = v1
								end
							end
						end
					end

					return v1381
				end

				while true do
					task.wait()
					CurrentCamera.CFrame = CFrame.new(CurrentCamera.CFrame.Position, closestplayer().Character.HumanoidRootPart.Position)

					if _G.AimCam == false then
						break
					elseif dist < Mag then
						break
					end
				end
			end
		end)
	end
end)
GRP_Combat_Quests_Players = t15.Combat:AddLeftGroupbox(_zD1436("bkpaTEtMH29TXkZaTUw="))

do
	GRP_Combat_Quests_Players:AddButton({
		Text =_zD1436("eFpLH09TXkZaTR9OSlpMS0w="),
		Func = function()
		end
	})
end

do
	GRP_Combat_Quests_Players:AddToggle(_zD1436("fkpLUGB4Wktgb1NeRlpNbkpaTEs="), {
		Text =_zD1436("fkpLUB94Wksfb1NeRlpNbkpaTEs="),
		Default = false,
		Callback = function(p324)
			_G.AutoReceivePlayerQuest = p324
		end
	})
end

spawn(function()
	while task.wait((48-47)) do
		if _G.AutoReceivePlayerQuest then
			local exitTo

			repeat
				pcall(function()
					game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("b1NeRlpNd0pRS1pN"))
				end)
				exitTo = nil

				while task.wait((1+0)) do
					if _G.AutoReceivePlayerQuest then
						exitTo = (52-51)

						break
					end
				end
			until exitTo ~= (1+0)

			return
		end
	end
end)

do
	GRP_Combat_Quests_Players:AddToggle(_zD1436("fkpLUGB0VlNTYG9TXkZaTWBuSlpMSw=="), {
		Text =_zD1436("fkpLUB90VlNTH29TXkZaTR9uSlpMSw=="),
		Default = false,
		Callback = function(p325)
			_G.AutoPlayerHunter = p325
		end
	})
end

spawn(function()
	while task.wait() do
		if _G.AutoPlayerHunter then
			if game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false then
				task.wait(0.5)
				game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("b1NeRlpNd0pRS1pN"))
			else
				for _, child in pairs(game:GetService(_zD1436("aFBNVExPXlxa")).Characters:GetChildren()) do
					if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, child.Name) then
						repeat
							task.wait()

							if AutoHaki then
								AutoHaki()
							end

							if EquipWeapon then
								EquipWeapon(_G.SelectWeapon)
							end

							Useskill = true
							_tp(child.HumanoidRootPart.CFrame * CFrame.new((1+0), (46-39), (18-15)))
							child.HumanoidRootPart.Size = Vector3.new((131-71), (52+8), (129-69))
							game:GetService(_zD1436("aVZNS0peU2pMWk0=")):CaptureController()
							game:GetService(_zD1436("aVZNS0peU2pMWk0=")):Button1Down(Vector2.new((2252-972), (212+460)))
						until _G.AutoPlayerHunter == false or child.Humanoid.Health <= (925-925)

						Useskill = false
						game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("fl1eUVtQUW5KWkxL"))
					end
				end
			end
		end
	end
end)

do
	GRP_Combat_Quests_Players:AddToggle(_zD1436("fkpLUGB6UV5dU1pgb0lv"), {
		Text =_zD1436("fkpLUB96UV5dU1ofb0lv"),
		Default = false,
		Callback = function(p326)
			_G.AutoPvP = p326
		end
	})
end

spawn(function()
	while task.wait(0.5) do
		if _G.AutoPvP then
			local PlayerGui = game.Players.LocalPlayer.PlayerGui

			if PlayerGui and PlayerGui.Main then
				if PlayerGui.Main:FindFirstChild(_zD1436("b0lPe1ZMXl1TWls=")) and PlayerGui.Main.PvpDisabled.Visible then
					pcall(function()
						game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")).Remotes.CommF_:InvokeServer(_zD1436("elFeXVNab0lP"))
					end)
				end
			end
		end
	end
end)

do
	GRP_Combat_Quests_Players:AddToggle(_zD1436("fkpLUGBsXllaYHJQW1o="), {
		Text =_zD1436("fkpLUB9sXllaH3JQW1o="),
		Default = false,
		Callback = function(p327)
			_G.SafeMode = p327
		end
	})
end

spawn(function()
	while task.wait(0.1) do
		if _G.SafeMode then
			local Character = game.Players.LocalPlayer.Character

			if Character then
				local exitTo2

				repeat
					local HumanoidRootPart = Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

					exitTo2 = nil

					while true do
						if HumanoidRootPart then
							_tp(HumanoidRootPart.CFrame * CFrame.new((805-805), (306+694), (763-763)))
						end

						local exitTo

						while task.wait(0.1) do
							if _G.SafeMode then
								exitTo = (1+0)

								break
							end
						end

						if exitTo ~= (1+0) then
							break
						end

						Character = game.Players.LocalPlayer.Character
						HumanoidRootPart = Character

						if HumanoidRootPart then
							exitTo2 = (1+0)

							break
						end
					end
				until exitTo2 ~= (39-38)

				return
			end
		end
	end
end)
GRP_Combat_LocalPlayer_Settings = t15.Combat:AddLeftGroupbox(_zD1436("c1BcXlNvU15GWk0fbFpLS1ZRWEw="))

do
	local Players2 = game:GetService(_zD1436("b1NeRlpNTA=="))

	game:GetService(_zD1436("akxaTXZRT0pLbFpNSVZcWg=="))

	local RunService = game:GetService(_zD1436("bUpRbFpNSVZcWg=="))
	local LocalPlayer3 = Players2.LocalPlayer
	local u1398 = false
	local n10 = (45+5)
	local connection
	local t48 = {
		f = (418-418),
		b = (321-321),
		l = (197-197),
		r = (200-200)
	}
	local BodyGyro
	local BodyVelocity

	local function v1404()
		local function v1405()
			local Character = LocalPlayer3.Character

			if not Character then
				return
			end

			local Humanoid = Character:FindFirstChildOfClass(_zD1436("d0pSXlFQVls="))

			if not Humanoid then
				return
			end

			local MoveDirection = Humanoid.MoveDirection

			t48.f = (830-830)
			t48.b = (824-824)
			t48.l = (23-23)
			t48.r = (275-275)

			if MoveDirection.Z < -0.1 then
				t48.f = (1+0)
			elseif MoveDirection.Z > 0.1 then
				t48.b = (49-48)
			end

			if MoveDirection.X < -0.1 then
				t48.l = (1+0)
			elseif MoveDirection.X > 0.1 then
				t48.r = (39-38)
			end
		end

		local connection2

		connection2 = RunService.Heartbeat:Connect(function()
			if u1398 then
				v1405()
			elseif connection2 then
				connection2:Disconnect()
			end
		end)
	end
	local function v1410(p328)
		u1398 = p328

		if u1398 then
			if not LocalPlayer3.Character then
				return
			end

			local Humanoid = LocalPlayer3.Character:FindFirstChildOfClass(_zD1436("d0pSXlFQVls="))
			local Torso

			if LocalPlayer3.Character:FindFirstChild(_zD1436("a1BNTFA=")) then
				Torso = LocalPlayer3.Character.Torso
			else
				Torso = LocalPlayer3.Character.UpperTorso
			end

			if not Humanoid or not Torso then
				return
			end

			for _, descendant in ipairs(LocalPlayer3.Character:GetDescendants()) do
				if descendant:IsA(_zD1436("fV5MWm9eTUs=")) then
					descendant.CanCollide = false
					descendant.Massless = true
				end
			end

			LocalPlayer3.Character.DescendantAdded:Connect(function(descendant)
				if u1398 and descendant:IsA(_zD1436("fV5MWm9eTUs=")) then
					descendant.CanCollide = false
					descendant.Massless = true
				end
			end)
			BodyGyro = Instance.new(_zD1436("fVBbRnhGTVA="), Torso)
			BodyGyro.P = (93872-3872)
			BodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			BodyGyro.cframe = Torso.CFrame
			BodyVelocity = Instance.new(_zD1436("fVBbRmlaU1BcVktG"), Torso)
			BodyVelocity.velocity = Vector3.new((592-592), (128-128), (736-736))
			BodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)
			Humanoid.PlatformStand = true
			v1404()
			connection = RunService.Heartbeat:Connect(function()
				if not u1398 or not LocalPlayer3.Character then
					return
				end

				for _, descendant in ipairs(LocalPlayer3.Character:GetDescendants()) do
					if descendant:IsA(_zD1436("fV5MWm9eTUs=")) and descendant.CanCollide then
						descendant.CanCollide = false
					end
				end

				if t48.l + t48.r == (419-419) and t48.f + t48.b == (319-319) then
					BodyVelocity.velocity = Vector3.new((270-270), (148-148), (376-376))
				else
					BodyVelocity.velocity = (workspace.CurrentCamera.CoordinateFrame.lookVector * (t48.f + t48.b) + (workspace.CurrentCamera.CoordinateFrame * CFrame.new(t48.l + t48.r, (t48.f + t48.b) * 0.2, (17-17)).p - workspace.CurrentCamera.CoordinateFrame.p)) * n10
				end

				BodyGyro.cframe = workspace.CurrentCamera.CoordinateFrame
			end)
		else
			if connection then
				connection:Disconnect()
				connection = nil
			end

			if LocalPlayer3.Character then
				local Humanoid = LocalPlayer3.Character:FindFirstChildOfClass(_zD1436("d0pSXlFQVls="))

				if Humanoid then
					Humanoid.PlatformStand = false
				end

				for _, descendant in ipairs(LocalPlayer3.Character:GetDescendants()) do
					if descendant:IsA(_zD1436("fV5MWm9eTUs=")) then
						descendant.CanCollide = true
						descendant.Massless = false
					end
				end

				if BodyGyro then
					BodyGyro:Destroy()
				end

				if BodyVelocity then
					BodyVelocity:Destroy()
				end
			end

			t48 = {
				f = (796-796),
				b = (774-774),
				l = (582-582),
				r = (715-715)
			}
		end
	end
	local function v1420(p329)
		n10 = p329
	end

	GRP_Combat_LocalPlayer_Settings:AddToggle(_zD1436("elFeXVNaYHlTRg=="), {
		Text =_zD1436("elFeXVNaH3lTRg=="),
		Default = false,
		Callback = function(p330)
			v1410(p330)
		end
	})
	GRP_Combat_LocalPlayer_Settings:AddSlider({
		Text =_zD1436("bE9aWlsfeVNGH3JQW1o="),
		Min = (65-55),
		Max = (191+9),
		Default = (3+47),
		Rounding = (217-217),
		Callback = function(p331)
			v1420(p331)
		end
	})
end

GRP_Combat_LocalPlayer_Settings:AddToggle(_zD1436("e15MV2BxUGB8UFBTW1BIUQ=="), {
	Text =_zD1436("e15MVx9xUB98UFBTW1BIUQ=="),
	Default = false,
	Callback = function(p332)
		getgenv().DodgeNoCD = p332
	end
})

do
	local function v1421()
		local Dodge = game.Players.LocalPlayer.Character:WaitForChild(_zD1436("e1BbWFo="))
		local v1423, v1424 = getgc()

		for _, v1 in next, v1423, v1424 do
			if typeof(v1) ==_zD1436("WUpRXEtWUFE=") and getfenv(v1).script == Dodge then
				local next_ = next
				local v1428, v1429 = getupvalues(v1)

				for k, v2 in next_, v1428, v1429 do
					if tostring(v2) ==_zD1436("DxEL") then
						setupvalue(v1, k, (176-176))
					end
				end
			end
		end
	end
end

do
	GRP_Combat_LocalPlayer_Settings:AddToggle(_zD1436("dlFMS15RXFpgclZRVGBpDGBkYHZxeWBi"), {
		Text =_zD1436("dlFMS15RXFofclZRVB9pDB9kH3ZxeR9i"),
		Default = false,
		Callback = function(p333)
			InfAblities = p333
		end
	})
end

spawn(function()
	while wait(0.2) do
		pcall(function()
			if InfAblities then
				if not LocalPlayer2.Character.HumanoidRootPart:FindFirstChild(_zD1436("flhWU1ZLRg==")) then
					local clone = ReplicatedStorage2.FX.Agility:Clone()

					clone.Name =_zD1436("flhWU1ZLRg==")
					clone.Parent = LocalPlayer2.Character.HumanoidRootPart
				end
			else
				LocalPlayer2.Character.HumanoidRootPart.Agility:Destroy()
			end
		end)
	end
end)

do
	GRP_Combat_LocalPlayer_Settings:AddToggle(_zD1436("dlFMS15RXFpgelFaTVhGYGRgdnF5YGI="), {
		Text =_zD1436("dlFMS15RXFofelFaTVhGH2QfdnF5H2I="),
		Default = false,
		Callback = function(p334)
			infEnergy = p334

			if p334 then
				getInfinity_Ability(_zD1436("elFaTVhG"), infEnergy)
			end
		end
	})
end

GRP_Combat_LocalPlayer_Settings:AddToggle(_zD1436("dlFMS15RXFpgbFBNSmBkYHZxeWBi"), {
	Text =_zD1436("dlFMS15RXFofbFBNSh9kH3ZxeR9i"),
	Default = false,
	Callback = function(p335)
		_G.InfSoru = p335

		if p335 then
			getInfinity_Ability(_zD1436("bFBNSg=="), _G.InfSoru)
		end
	end
})

do
	GRP_Combat_LocalPlayer_Settings:AddToggle(_zD1436("dlFMS15RXFpgcF1MWk1JXktWUFFgbV5RWFpgZGB2cXlgYg=="), {
		Text =_zD1436("dlFMS15RXFofcF1MWk1JXktWUFEfbV5RWFofZB92cXkfYg=="),
		Default = false,
		Callback = function(p336)
			_G.InfiniteObRange = p336

			if p336 then
				getInfinity_Ability(_zD1436("cF1MWk1JXktWUFE="), _G.InfiniteObRange)
			end
		end
	})
end

GRP_Combat_LocalPlayer_Settings:AddToggle(_zD1436("dlhRUE1aYGxeUlpga1peUkw="), {
	Text =_zD1436("dlhRUE1aH2xeUlofa1peUkw="),
	Default = false,
	Callback = function(p337)
		_G.NoAimTeam = p337
	end
})

do
	GRP_Combat_LocalPlayer_Settings:AddToggle(_zD1436("flxcWk9LYH5TU1ZaTA=="), {
		Text =_zD1436("flxcWk9LH35TU1ZaTA=="),
		Default = false,
		Callback = function(p338)
			_G.AcceptAlly = p338
		end
	})
end

spawn(function()
	while wait(Sec) do
		if _G.AcceptAlly then
			pcall(function()
				for _, child in pairs(ply:GetChildren()) do
					if child.Name ~= LocalPlayer2.Name and child:FindFirstChild(_zD1436("d0pSXlFQVls=")) and child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
						ReplicatedStorage2:WaitForChild(_zD1436("bVpSUEtaTA==")):WaitForChild(_zD1436("fFBSUnlg")):InvokeServer(_zD1436("flxcWk9LflNTRg=="), child.Name)
					end
				end
			end)
		end
	end
end)
GRP_Travel_Travel_Worlds = t15.Travel:AddLeftGroupbox(_zD1436("a01eSVpTHxIfaFBNU1tM"))

do
	GRP_Travel_Travel_Worlds:AddButton({
		Text =_zD1436("a01eSVpTH3peTEsffVNKWh8XaFBNU1sfDhY="),
		Func = function()
		end
	})
end

do
	GRP_Travel_Travel_Worlds:AddButton({
		Text =_zD1436("a01eSVpTH3tNWkxMTVBMXh8XaFBNU1sfDRY="),
		Func = function()
		end
	})
end

do
	GRP_Travel_Travel_Worlds:AddButton({
		Text =_zD1436("a01eSVpTH2VQSh8XaFBNU1sfDBY="),
		Func = function()
		end
	})
end

GRP_Travel_Travel_Island = t15.Travel:AddLeftGroupbox(_zD1436("a01eSVpTHxIfdkxTXlFb"))
Location = {}

for _, child in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
	table.insert(Location, child.Name)
end

do
	Travelllll = GRP_Travel_Travel_Island:AddDropdown(_zD1436("bFpTWlxLYGtNXklaU1NWUVg="), {
		Text =_zD1436("bFpTWlxLH2tNXklaU1NWUVg="),
		Values = Location,
		Default = (1+0),
		Callback = function(p339)
			_G.Island = p339
		end
	})
end

do
	GoIsland = GRP_Travel_Travel_Island:AddToggle(_zD1436("fkpLUGBrTV5JWlM="), {
		Text =_zD1436("fkpLUB9rTV5JWlM="),
		Default = false,
		Callback = function(p340)
			_G.Teleport = p340

			if p340 then
				for _, child in pairs(workspace._WorldOrigin.Locations:GetChildren()) do
					if child.Name == _G.Island then
						while true do
							wait()
							_tp(child.CFrame * CFrame.new((900-900), (13+17), (617-617)))

							if _G.Teleport then
								if Root.CFrame == child.CFrame then
									break
								end
							else
								break
							end
						end
					end
				end
			end
		end
	})
end

GRP_Travel_Travel_Portal = t15.Travel:AddLeftGroupbox(_zD1436("a01eSVpTHxIfb1BNS15T"))

if World1 then
	Location_Portal = {
_zD1436("bFRG"),
_zD1436("alFbWk1oXktaTQ==")
	}
elseif World2 then
	Location_Portal = {
_zD1436("bEheUW1QUFI="),
_zD1436("fEpNTFpbH2xXVk8=")
	}
elseif World3 then
	Location_Portal = {
_zD1436("fF5MS1NaH3BRH2tXWh9sWl4="),
_zD1436("cl5RTFZQUR98Xlla"),
_zD1436("d0ZbTV4fa1pTWk9QTUs="),
_zD1436("fF5RSVpRW1ZMVx9tUFBS"),
_zD1436("a1pST1NaH1BZH2tWUlo=")
	}
end

PortalTP = GRP_Travel_Travel_Portal:AddDropdown(_zD1436("bFpTWlxLYG9QTUteUw=="), {
	Text =_zD1436("bFpTWlxLH29QTUteUw=="),
	Values = Location_Portal,
	Default = (13-12),
	Callback = function(p341)
		_G.Island_PT = p341
	end
})

do
	GRP_Travel_Travel_Portal:AddButton({
		Text =_zD1436("TVpOSlpMS3pRS01eUVxa"),
		Func = function()
		end
	})
end

GRP_Travel_Travel_NPCs = t15.Travel:AddLeftGroupbox(_zD1436("a01eSVpTHxIfcW98TA=="))

for _, child in pairs(ReplicatedStorage2.NPCs:GetChildren()) do
	table.insert(NPCList, child.Name)
end

do
	NPCsPos = GRP_Travel_Travel_NPCs:AddDropdown(_zD1436("bFpTWlxLYHFvfEw="), {
		Text =_zD1436("bFpTWlxLH3FvfEw="),
		Values = NPCList,
		Default = (41-40),
		Callback = function(p342)
			_G.TPNpc = p342
		end
	})
end

do
	GoNPCs = GRP_Travel_Travel_NPCs:AddToggle(_zD1436("fkpLUGBrSFpaUWBLUGBxb3w="), {
		Text =_zD1436("fkpLUB9rSFpaUR9LUB9xb3w="),
		Default = false,
		Callback = function(p343)
			_G.TPNpc = p343
		end
	})
end

spawn(function()
	while wait(Sec) do
		if _G.TPNpc then
			pcall(function()
				for _, child in pairs(ReplicatedStorage2.NPCs:GetChildren()) do
					if child.Name == NPClist then
						_tp(child.HumanoidRootPart.CFrame)
					end
				end
			end)
		end
	end
end)
GRP_Shop_Shop_Options = t15.Shop:AddLeftGroupbox(_zD1436("bFdQTx9wT0tWUFFM"))
GRP_Shop_Shop_Options:AddButton({
	Text =_zD1436("fUpGH31KTFA="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGd15UVg=="),_zD1436("fUpMUA=="))
	end
})

do
	GRP_Shop_Shop_Options:AddButton({
		Text =_zD1436("fUpGH3haT09Q"),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGd15UVg=="),_zD1436("eFpPT1A="))
		end
	})
end

GRP_Shop_Shop_Options:AddButton({
	Text =_zD1436("fUpGH2xQTUo="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGd15UVg=="),_zD1436("bFBNSg=="))
	end
})
GRP_Shop_Shop_Options:AddButton({
	Text =_zD1436("fUpGH3RaUQ=="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("dFpRa15TVA=="),_zD1436("fUpG"))
	end
})
GRP_Shop_Fighting_Style = t15.Shop:AddLeftGroupbox(_zD1436("eVZYV0tWUVgfEh9sS0ZTWg=="))

do
	GRP_Shop_Fighting_Style:AddButton({
		Text =_zD1436("fUpGH31TXlxUH3NaWA=="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGfVNeXFRzWlg="))
		end
	})
end

GRP_Shop_Fighting_Style:AddButton({
	Text =_zD1436("fUpGH3pTWlxLTVA="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGelNaXEtNUA=="))
	end
})
GRP_Shop_Fighting_Style:AddButton({
	Text =_zD1436("fUpGH3lWTFdSXlEfdF5NXkta"),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGeVZMV1JeUXReTV5LWg=="))
	end
})

do
	GRP_Shop_Fighting_Style:AddButton({
		Text =_zD1436("fUpGH3tNXlhQUXxTXkg="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fVNeXFRdWl5NW21aSF5NWw=="),_zD1436("e01eWFBRfFNeSA=="),_zD1436("DQ=="))
		end
	})
end

do
	GRP_Shop_Fighting_Style:AddButton({
		Text =_zD1436("fUpGH2xKT1pNV0pSXlE="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGbEpPWk1XSlJeUQ=="))
		end
	})
end

GRP_Shop_Fighting_Style:AddButton({
	Text =_zD1436("fUpGH3taXktXH2xLWk8="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGe1peS1dsS1pP"))
	end
})

do
	GRP_Shop_Fighting_Style:AddButton({
		Text =_zD1436("fUpGH2xXXk1UUl5RH3ReTV5LWg=="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGbFdeTVRSXlF0Xk1eS1o="))
		end
	})
end

do
	GRP_Shop_Fighting_Style:AddButton({
		Text =_zD1436("fUpGH3pTWlxLTVZcfFNeSA=="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGelNaXEtNVlx8U15I"))
		end
	})
end

GRP_Shop_Fighting_Style:AddButton({
	Text =_zD1436("fUpGH3tNXlhQUWteU1BR"),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGe01eWFBRa15TUFE="))
	end
})
GRP_Shop_Fighting_Style:AddButton({
	Text =_zD1436("fUpGH3hQW1dKUl5R"),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGeFBbV0pSXlE="))
	end
})
GRP_Shop_Fighting_Style:AddButton({
	Text =_zD1436("fUpGH2xeUVhKVlFafk1L"),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGbF5RWEpWUVp+TUs="))
	end
})
GRP_Shop_Accessory = t15.Shop:AddLeftGroupbox(_zD1436("flxcWkxMUE1G"))

do
	GRP_Shop_Accessory:AddButton({
		Text =_zD1436("fUpGH2tQUlBaH21WUVg="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("a1BSUFofbVZRWA=="))
		end
	})
end

GRP_Shop_Accessory:AddButton({
	Text =_zD1436("fUpGH31TXlxUH3xeT1o="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("fVNeXFQffF5PWg=="))
	end
})

do
	GRP_Shop_Accessory:AddButton({
		Text =_zD1436("fUpGH2xIUE1bTFJeUR93Xks="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("bEhQTVtMUl5RH3deSw=="))
		end
	})
end

GRP_Shop_Accessory:AddButton({
	Text =_zD1436("fUpGH31WRV5NTVofbVZZU1o="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("elxLUE9TXkxS"),_zD1436("fUpG"), (1+0))
	end
})

do
	GRP_Shop_Accessory:AddButton({
		Text =_zD1436("fUpGH3hXUEpTH3JeTFQ="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("elxLUE9TXkxS"),_zD1436("fUpG"), (1+1))
		end
	})
end

GRP_Shop_Weapon_World1 = t15.Shop:AddLeftGroupbox(_zD1436("aFpeT1BRH2hQTVNbDg=="))

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH3xKS1NeTEw="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("fEpLU15MTA=="))
		end
	})
end

GRP_Shop_Weapon_World1:AddButton({
	Text =_zD1436("fUpGH3ReS15RXg=="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("dF5LXlFe"))
	end
})

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH3ZNUFEfcl5cWg=="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("dk1QUR9yXlxa"))
		end
	})
end

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH3tKWlMfdF5LXlFe"),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("e0paUx90XkteUV4="))
		end
	})
end

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH2tNVk9TWh90XkteUV4="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("a01WT1NaH3ReS15RXg=="))
		end
	})
end

GRP_Shop_Weapon_World1:AddButton({
	Text =_zD1436("fUpGH29WT1o="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("b1ZPWg=="))
	end
})

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH3tKXlMSd1peW1pbH31TXlta"),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("e0peUxJ3Wl5bWlsffVNeW1o="))
		end
	})
end

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH31WTFpRS1A="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("fVZMWlFLUA=="))
		end
	})
end

GRP_Shop_Weapon_World1:AddButton({
	Text =_zD1436("fUpGH2xQSlMffF5RWg=="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("bFBKUx98XlFa"))
	end
})

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH2xTVlFYTFdQSw=="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("bFNWUVhMV1BL"))
		end
	})
end

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH3JKTFRaSw=="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("ckpMVFpL"))
		end
	})
end

GRP_Shop_Weapon_World1:AddButton({
	Text =_zD1436("fUpGH3tKXlMfeVNWUUtTUFxU"),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("e0peUx95U1ZRS1NQXFQ="))
	end
})

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH3lTVlFLU1BcVA=="),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("eVNWUUtTUFxU"))
		end
	})
end

do
	GRP_Shop_Weapon_World1:AddButton({
		Text =_zD1436("fUpGH21aWVZRWlsfeVNWUUtTUFxU"),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("bVpZVlFaWx95U1ZRS1NQXFQ="))
		end
	})
end

GRP_Shop_Weapon_World1:AddButton({
	Text =_zD1436("fUpGH3xeUVFQUQ=="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fUpGdktaUg=="),_zD1436("fF5RUVBR"))
	end
})
GRP_Shop_Weapon_World1:AddButton({
	Text =_zD1436("fUpGH3ReXUpcV14="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fVNeXFRdWl5NW21aSF5NWw=="),_zD1436("bFNWUVhMV1BL"),_zD1436("DQ=="))
	end
})
GRP_Shop_Fragments_shop = t15.Shop:AddLeftGroupbox(_zD1436("eU1eWFJaUUtMH0xXUE8="))
GRP_Shop_Fragments_shop:AddButton({
	Text =_zD1436("fUpGH21aWUpRWx9sS15LTA=="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fVNeXFRdWl5NW21aSF5NWw=="),_zD1436("bVpZSlFb"),_zD1436("DQ=="))
	end
})

do
	GRP_Shop_Fragments_shop:AddButton({
		Text =_zD1436("fUpGH21aTVBTUx9tXlxa"),
		Func = function()
			ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fVNeXFRdWl5NW21aSF5NWw=="),_zD1436("bVpNUFNT"),_zD1436("DQ=="))
		end
	})
end

GRP_Shop_Fragments_shop:AddButton({
	Text =_zD1436("fUpGH3hXUEpTH21eXFo="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("elxLUE9TXkxS"),_zD1436("H3xXXlFYWg=="), (14-10))
	end
})
GRP_Shop_Fragments_shop:AddButton({
	Text =_zD1436("fUpGH3xGXVBNWB9tXlxaHxcNEQpUFg=="),
	Func = function()
		ReplicatedStorage2.Remotes.CommF_:InvokeServer(_zD1436("fEZdUE1Ya01eVlFaTQ=="),_zD1436("H31KRg=="))
	end
})
GRP_Shop_Fragments_shop:AddButton({
	Text =_zD1436("fUpGH3tNXlxQH21eXFo="),
	Func = function()
		task.spawn(function()
			_tp(CFrame.new(5814.42724609375, 1208.3267822265625, 884.57855224609375))

			local vector3 = Vector3.new(5814.42724609375, 1208.3267822265625, 884.57855224609375)

			while true do
				task.wait()

				if not LocalPlayer2.Character then
					continue
				end

				if LocalPlayer2.Character.HumanoidRootPart and (LocalPlayer2.Character.HumanoidRootPart.Position - vector3).Magnitude < (1+0) then
					break
				end
			end

			ReplicatedStorage2.Modules.Net:FindFirstChild(_zD1436("bXkQdlFLWk1eXEt7TV5YUFFuSlpMSw==")):InvokeServer(unpack({ {
				NPC =_zD1436("e01eWFBRH2hWRV5NWw=="),
				Command =_zD1436("e01eWFBRbV5cWg==")
			} }))
		end)
	end
})
GRP_Misc_Server_Function = t15.Misc:AddLeftGroupbox(_zD1436("bFpNSVpNHxIfeUpRXEtWUFE="))
GRP_Misc_Server_Function:AddButton({
	Text =_zD1436("bVpbWlpSH35TUx98UFtaTA=="),
	Func = function()
		local t49 = {
_zD1436("c3Z4d2txdnF4fn1qbHo="),
_zD1436("DnNwbGt+e3J2cQ=="),
_zD1436("fntydnF5dnh3aw=="),
_zD1436("eHZ5a3ZxeGB3cGptbA=="),
_zD1436("cXBycG16d358dA=="),
_zD1436("fX5xemdvc3B2aw=="),
_zD1436("aFZTW3teTVpM"),
_zD1436("fVBMTH1KVlNb"),
_zD1436("eFpLb01eUVRaWw=="),
_zD1436("en5tcWB5bWp2a2w="),
_zD1436("bGp9DXh+cnptbXB9cGtgbXpsemsO"),
_zD1436("dHZra2Btemx6aw=="),
_zD1436("fVZYUVpITA=="),
_zD1436("fHd+cXtzem0="),
_zD1436("eUpbWw4P"),
_zD1436("WUpbWw4PYEkN"),
_zD1436("bEpdDWpRXFNadFZFXk1K"),
_zD1436("eXZ4d2sLeW1qdms="),
_zD1436("VFZLS1heUlZRWA=="),
_zD1436("a212b3N6fn1qbHo="),
_zD1436("bEpdDXxeT0teVlFyXkpW"),
_zD1436("bEpdDXlaTQYGBg=="),
_zD1436("elFGSmBWTGBvTVA="),
_zD1436("cl5YVlxdSkw="),
_zD1436("dXxodA=="),
_zD1436("bEteTVxQW1pXWlA="),
_zD1436("fVNKR0dG"),
_zD1436("bGp9DXh+cnptbXB9cGtgemdvDg=="),
_zD1436("bEpdDXFQUF1yXkxLWk0ODQw="),
_zD1436("bEpdDXteVlhNUFxU"),
_zD1436("fkdWUE1a"),
_zD1436("a15RS15WeF5SVlFY"),
_zD1436("bEtNXkh3XktyXlZRWg=="),
_zD1436("bEpdDXBZWVZcVl5TcVBQXVZa"),
_zD1436("a1daeE1aXkt+XFo="),
_zD1436("dWpzZmpve35remBtemx6aw=="),
_zD1436("fntydnF3fnx0ens="),
_zD1436("bHp+a21wc3N2cXg="),
_zD1436("DQtxcH57cnZx"),
_zD1436("fntydnFga21wc3M="),
_zD1436("cXpoa21wc3M="),
_zD1436("bHp8bXprYH57cnZx"),
_zD1436("TEteWVldXktLU1o="),
_zD1436("cXB6Z29zcHZr"),
_zD1436("cXBwfQ1+e3J2cQ=="),
_zD1436("fHB7emxzdnt6"),
_zD1436("WU1KVktcUFFcWk9LTA=="),
_zD1436("VE1eRUZbXk1aTA=="),
_zD1436("DH1pdmx2a2w="),
_zD1436("am97Dgk="),
_zD1436("emdvYAp9")
		}
		local Redeem = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo=")):WaitForChild(_zD1436("bVpSUEtaTA==")):FindFirstChild(_zD1436("bVpbWlpS"))

		if not Redeem then
			return
		end

		for _, v1 in ipairs(t49) do
			task.wait((557-557))
			pcall(function()
				if Redeem.InvokeServer then
					Redeem:InvokeServer(v1)
				else
					Redeem:FireServer(v1)
				end
			end)
		end
	end
})
GRP_Misc_Server_Function:AddButton({
	Text =_zD1436("bVpVUFZRH2xaTUlaTQ=="),
	Func = function()
		game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa")):Teleport(game.PlaceId, game.Players.LocalPlayer)
	end
})
GRP_Misc_Server_Function:AddButton({
	Text =_zD1436("d1BPH2xaTUlaTQ=="),
	Func = function()
		task.spawn(function()
			local HttpService = game:GetService(_zD1436("d0tLT2xaTUlWXFo="))
			local TeleportService_ = game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa"))
			local Players2 = game:GetService(_zD1436("b1NeRlpNTA=="))
			local ok, result = pcall(function()
				local response = game:HttpGet(_zD1436("V0tLT0wFEBBYXlJaTBFNUF1TUEcRXFBSEEkOEFheUlpMEA==") .. game.PlaceId .._zD1436("EExaTUlaTUwQb0pdU1ZcAExQTUtwTVtaTQJ+TFwZU1ZSVksCDg8P"))

				return HttpService:JSONDecode(response).data
			end)

			if ok and result then
				local id

				for _, v1 in pairs(result) do
					if v1.playing < v1.maxPlayers then
						id = v1.id
					end
				end

				if id then
					pcall(function()
						TeleportService_:TeleportToPlaceInstance(game.PlaceId, id, Players2.LocalPlayer)
					end)
				end
			end
		end)
	end
})
GRP_Misc_Server_Function:AddButton({
	Text =_zD1436("d1BPH0tQH3NQSFpMSx9vU15GWk1M"),
	Func = function()
		local HttpService = game:GetService(_zD1436("d0tLT2xaTUlWXFo="))
		local TeleportService_ = game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa"))
		local v1459 =_zD1436("V0tLT0wFEBBYXlJaTBFNUF1TUEcRXFBSEEkOEFheUlpMEA==") .. game.PlaceId .._zD1436("EExaTUlaTUwQb0pdU1ZcAExQTUtwTVtaTQJ+TFwZU1ZSVksCDg8P")

		local function v1460(p344)
			local response = game:HttpGet(v1459 .. (p344 and(_zD1436("GVxKTUxQTQI=")) .. p344 or""))

			return HttpService:JSONDecode(response)
		end

		local nextPageCursor
		local v1463

		repeat
			local v1464 = v1460(nextPageCursor)

			v1463 = v1464.data[(1+0)]
			nextPageCursor = v1464.nextPageCursor
		until v1463

		TeleportService_:TeleportToPlaceInstance(game.PlaceId, v1463.id, LocalPlayer2)
	end
})

local ReplicatedStorage3 = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo="))

GRP_Misc_Server_Function:AddButton({
	Text =_zD1436("d1BPH0tQH3NQSFpMSx9vVlFYTB9sWk1JWk0="),
	Func = function()
		local HttpService = game:GetService(_zD1436("d0tLT2xaTUlWXFo="))
		local TeleportService_ = game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa"))
		local Stats_ = game:GetService(_zD1436("bEteS0w="))

		local function v1469(p345, p346)
			local v1470 = string.format(_zD1436("V0tLT0wFEBBYXlJaTBFNUF1TUEcRXFBSEEkOEFheUlpMEBpbEExaTUlaTUwQb0pdU1ZcAFNWUlZLAhpb"), p345, p346)
			local ok, result = pcall(function()
				return HttpService:JSONDecode(game:HttpGet(v1470))
			end)

			if ok and result and result.data then
				return result.data
			end

			return nil
		end

		local v1473 = v1469(game.PlaceId, (52+48))

		if not v1473 then
			return
		end

		local v1474 = v1473[(14-13)]

		for _, v1 in pairs(v1473) do
			if v1.ping < v1474.ping and v1.playing < v1.maxPlayers then
				v1474 = v1
			end
		end

		if tonumber(Stats_.Network.ServerStatsItem[_zD1436("e15LXh9vVlFY")]:GetValueString():match(_zD1436("FxpbFBY="))) >= (69+31) then
			TeleportService_:TeleportToPlaceInstance(game.PlaceId, v1474.id)
		end
	end
})

do
	GRP_Misc_Server_Function:AddInput(_zD1436("dlFPSktgdVBdYHZb"), {
		Text =_zD1436("dlFPSksfdVBdH3Zb"),
		Default ="",
		Placeholder =_zD1436("dVBdH3Z7"),
		Callback = function(p347)
			_G.Rechat = p347
		end
	})
end

GRP_Misc_Server_Function:AddButton({
	Text =_zD1436("a1pTWk9QTUsfZHVQXR92e2I="),
	Func = function()
		if _G.Rechat and _G.Rechat ~="" then
			game:GetService(_zD1436("a1pTWk9QTUtsWk1JVlxa")):TeleportToPlaceInstance(game.PlaceId, _G.Rechat, LocalPlayer2)
		end
	end
})

do
	GRP_Misc_Server_Function:AddButton({
		Text =_zD1436("fFBPRh91UF12ew=="),
		Func = function()
			setclipboard(tostring(game.JobId))
		end
	})
end

GRP_Misc_Player_Gui_Others = t15.Misc:AddLeftGroupbox(_zD1436("b1NeRlpNH3hKVh8QH3BLV1pNTA=="))
GRP_Misc_Player_Gui_Others:AddButton({
	Text =_zD1436("cE9aUR9+SF5UWlFWUVhMH3pHT1pNSw=="),
	Func = function()
		LocalPlayer2.PlayerGui.Main.AwakeningToggler.Visible = true
	end
})
GRP_Misc_Player_Gui_Others:AddButton({
	Text =_zD1436("cE9aUR9rVktTWh9sWlNaXEtWUFE="),
	Func = function()
		ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("WFpLa1ZLU1pM"), true)
		LocalPlayer2.PlayerGui.Main.Titles.Visible = true
	end
})
DisbleChat = GRP_Misc_Player_Gui_Others:AddToggle(_zD1436("e1ZMXl1TWmB8V15LYHhqdg=="), {
	Text =_zD1436("e1ZMXl1TWh98V15LH3hqdg=="),
	Default = false,
	Callback = function(p348)
		_G.Rechat = p348

		if _G.Rechat == true then
			game:GetService(_zD1436("bEteTUtaTXhKVg==")):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
		elseif _G.Rechat == false then
			game:GetService(_zD1436("bEteTUtaTXhKVg==")):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
		end
	end
})

do
	DisbleLeaderB = GRP_Misc_Player_Gui_Others:AddToggle(_zD1436("e1ZMXl1TWmBzWl5bWk1gfVBeTVtgeGp2"), {
		Text =_zD1436("e1ZMXl1TWh9zWl5bWk0ffVBeTVsfeGp2"),
		Default = false,
		Callback = function(p349)
			ReLeader = p349

			if ReLeader == true then
				game:GetService(_zD1436("bEteTUtaTXhKVg==")):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
			elseif ReLeader == false then
				game:GetService(_zD1436("bEteTUtaTXhKVg==")):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
			end
		end
	})
end

GRP_Misc_Player_Gui_Others:AddButton({
	Text =_zD1436("bFpLH29WTV5LWh9rWl5S"),
	Func = function()
		ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("bFpLa1peUg=="),_zD1436("b1ZNXktaTA=="))
	end
})

do
	GRP_Misc_Player_Gui_Others:AddButton({
		Text =_zD1436("bFpLH3JeTVZRWh9rWl5S"),
		Func = function()
			ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("bFpLa1peUg=="),_zD1436("cl5NVlFaTA=="))
		end
	})
end

UnPortal = GRP_Misc_Player_Gui_Others:AddToggle(_zD1436("alFTUFxUYH5TU2BvUE1LXlNM"), {
	Text =_zD1436("alFTUFxUH35TUx9vUE1LXlNM"),
	Default = false,
	Callback = function(p350)
		_G.PortalUnLock = p350
	end
})
spawn(function()
	while wait(Sec) do
		pcall(function()
			if _G.PortalUnLock then
				if t9.Pos(CstlePos_Miti, (65-57)) then
					ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
				elseif t9.Pos(Man3Pos_Miti, (56-48)) then
					ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
				elseif t9.Pos(HydraPos_Miti, (65-57)) then
					ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(5748.7587890625, 610.44982910156, -267.81704711914))
				elseif t9.Pos(HydratoCastle, (7+1)) then
					ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("TVpOSlpMS3pRS01eUVxa"), Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
				end
			end
		end)
	end
end)
GRP_Misc_Graphics_Haki_Stats = t15.Misc:AddLeftGroupbox(_zD1436("eE1eT1dWXEwfEB93XlRWH2xLXktM"))
HakiSt = {
_zD1436("bEteS1ofDw=="),
_zD1436("bEteS1ofDg=="),
_zD1436("bEteS1ofDQ=="),
_zD1436("bEteS1ofDA=="),
_zD1436("bEteS1ofCw=="),
_zD1436("bEteS1ofCg==")
}
HakiStat = GRP_Misc_Graphics_Haki_Stats:AddDropdown(_zD1436("bFpTWlxLYHdeVFZgbEteS1pM"), {
	Text =_zD1436("bFpTWlxLH3deVFYfbEteS1pM"),
	Values = HakiSt,
	Default = (1+0),
	Callback = function(p351)
		_G.SelectStateHaki = p351
	end
})

do
	GRP_Misc_Graphics_Haki_Stats:AddButton({
		Text =_zD1436("fFdeUVhafUpMUGxLXlha"),
		Func = function()
			if _G.SelectStateHaki ==_zD1436("bEteS1ofDw==") then
				ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("fFdeUVhafUpMUGxLXlha"), (319-319))
			elseif _G.SelectStateHaki ==_zD1436("bEteS1ofDg==") then
				ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("fFdeUVhafUpMUGxLXlha"), (1+0))
			elseif _G.SelectStateHaki ==_zD1436("bEteS1ofDQ==") then
				ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("fFdeUVhafUpMUGxLXlha"), (1+1))
			elseif _G.SelectStateHaki ==_zD1436("bEteS1ofDA==") then
				ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("fFdeUVhafUpMUGxLXlha"), (3+0))
			elseif _G.SelectStateHaki ==_zD1436("bEteS1ofCw==") then
				ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("fFdeUVhafUpMUGxLXlha"), (56-52))
			elseif _G.SelectStateHaki ==_zD1436("bEteS1ofCg==") then
				ReplicatedStorage3.Remotes.CommF_:InvokeServer(_zD1436("fFdeUVhafUpMUGxLXlha"), (2+3))
			end
		end
	})
end

do
	rtxM = GRP_Misc_Graphics_Haki_Stats:AddToggle(_zD1436("a0pNUWBQUWBta2dgclBbWg=="), {
		Text =_zD1436("a0pNUR9QUR9ta2cfclBbWg=="),
		Default = false,
		Callback = function(p352)
			_G.RTXMode = p352

			for _, child in pairs(game.Lighting:GetChildren()) do
				if child.Name ==_zD1436("bWtnfFBTUE18UE1NWlxLVlBR") or child.Name ==_zD1436("bWtna1ZRSw==") then
					child:Destroy()
				end
			end

			if _G.RTXMode then
				local ColorCorrectionEffect = Instance.new(_zD1436("fFBTUE18UE1NWlxLVlBRellZWlxL"), game.Lighting)

				ColorCorrectionEffect.Name =_zD1436("bWtnfFBTUE18UE1NWlxLVlBR")

				local ColorCorrectionEffect2 = Instance.new(_zD1436("fFBTUE18UE1NWlxLVlBRellZWlxL"), game.Lighting)

				ColorCorrectionEffect2.Name =_zD1436("bWtna1ZRSw==")
				OldAmbient = game.Lighting.Ambient
				OldBrightness = game.Lighting.Brightness
				OldColorShift_Top = game.Lighting.ColorShift_Top
				OldBrightnessc = ColorCorrectionEffect.Brightness
				OldContrastc = ColorCorrectionEffect.Contrast
				OldTintColorc = ColorCorrectionEffect.TintColor
				OldTintColore = ColorCorrectionEffect2.TintColor
				ColorCorrectionEffect.Brightness = 0.176
				ColorCorrectionEffect.Contrast = 0.39
				ColorCorrectionEffect.TintColor = Color3.fromRGB((193+24), (309-164), (152-95))
				ColorCorrectionEffect2.TintColor = Color3.fromRGB((352-135), (3+142), (20+37))
				game.Lighting.FogEnd = (656+343)
				spawn(function()
					while _G.RTXMode do
						wait()
						game.Lighting.Ambient = Color3.fromRGB((23+10), (66-33), (99-66))
						game.Lighting.Brightness = 0.3

						if not _G.RTXMode then
							break
						end

						if LocalPlayer2.Character then
							if LocalPlayer2.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
								if not LocalPlayer2.Character.HumanoidRootPart:FindFirstChild(_zD1436("bWtnb1BWUUtzVlhXSw==")) then
									local PointLight = Instance.new(_zD1436("b1BWUUtzVlhXSw=="))

									PointLight.Name =_zD1436("bWtnb1BWUUtzVlhXSw==")
									PointLight.Parent = LocalPlayer2.Character.HumanoidRootPart
									PointLight.Range = (70-55)
									PointLight.Color = Color3.fromRGB((37+180), (101+44), (87-30))
								end
							end
						end
					end
				end)
			else
				pcall(function()
					if OldAmbient then
						game.Lighting.Ambient = OldAmbient
					end

					if OldBrightness then
						game.Lighting.Brightness = OldBrightness
					end

					if OldColorShift_Top then
						game.Lighting.ColorShift_Top = OldColorShift_Top
					end

					game.Lighting.FogEnd = (1164+1336)
				end)

				for _, child in pairs(game.Lighting:GetChildren()) do
					if child.Name ==_zD1436("bWtnfFBTUE18UE1NWlxLVlBR") or child.Name ==_zD1436("bWtna1ZRSw==") then
						child:Destroy()
					end
				end

				if LocalPlayer2.Character then
					if LocalPlayer2.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) then
						local RTXPointLight = LocalPlayer2.Character.HumanoidRootPart:FindFirstChild(_zD1436("bWtnb1BWUUtzVlhXSw=="))

						if RTXPointLight then
							RTXPointLight:Destroy()
						end
					end
				end
			end
		end
	})
end

GRP_Misc_Graphics_Haki_Stats:AddButton({
	Text =_zD1436("a0pNUR9QUR95XkxLH3JQW1o="),
	Func = function()
		local descendants, v1486 = workspace:GetDescendants()

		for _, v1 in next, descendants, v1486 do
			if table.find(t2, v1.ClassName) then
				v1.Material =_zD1436("b1NeTEtWXA==")
			end
		end
	end
})
GRP_Misc_Graphics_Haki_Stats:AddButton({
	Text =_zD1436("a0pNUR9QUR9zUEgffG9q"),
	Func = function()
		LowCpu()
	end
})

do
	GRP_Misc_Graphics_Haki_Stats:AddButton({
		Text =_zD1436("a0pNUR9QUR9WUVxNWl5MWh99UF5LTA=="),
		Func = function()
			for _, child in pairs(workspace.Boats:GetChildren()) do
				if tostring(child.Owner.Value) == tostring(LocalPlayer2.Name) then
					for _, descendant in pairs(child:GetDescendants()) do
						if descendant:IsA(_zD1436("aVpXVlxTWmxaXks=")) then
							descendant.MaxSpeed = (535-185)
							descendant.Torque = 0.2
							descendant.TurnSpeed = (41-36)
							descendant.HeadsUpDisplay = true
						end
					end
				end
			end
		end
	})
end

GRP_Misc_Graphics_Haki_Stats:AddButton({
	Text =_zD1436("bVpSUElaH2xURh95UFg="),
	Func = function()
		for _, child in pairs(game.Lighting:GetChildren()) do
			if child.Name ==_zD1436("bFRG") or child.Name ==_zD1436("c1ZYV0tWUVhzXkZaTUw=") or child.Name ==_zD1436("bFpea1pNTVBNfHw=") or child.Name ==_zD1436("eV5RS15MRmxURg==") then
				child:Destroy()
			end
		end
	end
})
GRP_Misc_Configure_God = t15.Misc:AddLeftGroupbox(_zD1436("fFBRWVZYSk1aHxIfeFBb"))
GRP_Misc_Configure_God:AddButton({
	Text =_zD1436("bV5WUR95TUpWS0wfF3xTVlpRSxY="),
	Func = function()
		if ReplicatedStorage3:FindFirstChild(_zD1436("fkxMWktM")) then
			if ReplicatedStorage3.Assets:FindFirstChild(_zD1436("clBbWlNM")) then
				local children = ReplicatedStorage3.Assets.Models:GetChildren()

				for _, child in pairs(children) do
					if child:IsA(_zD1436("clBbWlM=")) and child.Name ~=_zD1436("dlxabE9WVFpMCw==") then
						local clone = child:Clone()

						clone.Parent = workspace

						if clone:FindFirstChild(_zD1436("eVNQXks=")) then
							clone.Float:Destroy()
						end

						clone:SetPrimaryPartCFrame(CFrame.new(LocalPlayer2.Character.HumanoidRootPart.Position + Vector3.new(math.random(-(43+7), (26+24)), (147-47), math.random(-(31+19), (36+14)))))
					end
				end
			end
		end
	end
})
briggt1 = GRP_Misc_Configure_God:AddToggle(_zD1436("a0pNUWBQUWB5SlNTYH1NVlhXSw=="), {
	Text =_zD1436("a0pNUR9QUR95SlNTH31NVlhXSw=="),
	Default = false,
	Callback = function(p353)
		_G.SelectDN = p353
	end
})
DayN = GRP_Misc_Configure_God:AddDropdown(_zD1436("bFpTWlxLYGtWUlo="), {
	Text =_zD1436("bFpTWlxLH2tWUlo="),
	Values = {
_zD1436("e15G"),
_zD1436("cVZYV0s=")
	},
	Default = (48-47),
	Callback = function(p354)
		_G.SelectDN = p354
	end
})
dayornight = GRP_Misc_Configure_God:AddToggle(_zD1436("a0pNUWBQUWBrVlJa"), {
	Text =_zD1436("a0pNUR9QUR9rVlJa"),
	Default = false,
	Callback = function(p355)
		_G.daylightN = p355
	end
})

do
	task.spawn(function()
		while task.wait() do
			if _G.daylightN then
				if _G.SelectDN ==_zD1436("e15G") then
					Lighting.ClockTime = (3+9)
				elseif _G.SelectDN ==_zD1436("cVZYV0s=") then
					Lighting.ClockTime = (122-122)
				end
			end
		end
	end)
end

walkWater = GRP_Misc_Configure_God:AddToggle(_zD1436("a0pNUWBQUWBoXlNUYFBRYGheS1pN"), {
	Text =_zD1436("a0pNUR9QUR9oXlNUH1BRH2heS1pN"),
	Default = true,
	Callback = function(p356)
		_G.WalkWater_Part = p356

		if _G.WalkWater_Part then
			game:GetService(_zD1436("aFBNVExPXlxa")).Map[_zD1436("aF5LWk19XkxaEm9TXlFa")].Size = Vector3.new((36+964), (126-14), (2+998))
		else
			game:GetService(_zD1436("aFBNVExPXlxa")).Map[_zD1436("aF5LWk19XkxaEm9TXlFa")].Size = Vector3.new((1866-866), (108-28), (881+119))
		end
	end
})

do
	iceWalk = GRP_Misc_Configure_God:AddToggle(_zD1436("a0pNUWBQUWB2XFpgaF5TVA=="), {
		Text =_zD1436("a0pNUR9QUR92XFofaF5TVA=="),
		Default = false,
		Callback = function(p357)
			_G.WalkWater = p357
		end
	})
end

do
	spawn(function()
		while task.wait() do
			if _G.WalkWater then
				pcall(function()
					if LocalPlayer2.Character then
						if LocalPlayer2.Character:FindFirstChild(_zD1436("c1pZS3lQUEs=")) then
							local clone = ReplicatedStorage3.Assets.Models.IceSpikes4:Clone()

							clone.Parent = workspace
							clone.Size = Vector3.new((2+1) + math.random((57-47), (19-7)), 1.7, (10-7) + math.random((36-26), (6+6)))
							clone.Color = Color3.fromRGB((115+13), (119+68), (390-171))
							clone.CFrame = CFrame.new(LocalPlayer2.Character.Head.Position.X, -3.8, LocalPlayer2.Character.Head.Position.Z) * CFrame.Angles((math.random() - 0.5) * 0.06, math.random() * (25-18), (math.random() - 0.5) * 0.07)

							local t50 = {
								Size = Vector3.new((885-885), 0.3, (913-913))
							}
							local tween = TW:Create(clone, TweenInfo.new((2+0), Enum.EasingStyle.Quad, Enum.EasingDirection.In), t50)

							tween.Completed:Connect(function()
								clone:Destroy()
							end)
							tween:Play()
						end
					end
				end)
			end
		end
	end)
end

do
	local LocalPlayer3 = game.Players.LocalPlayer

	local function v1503(p358)
		if not p358 then
			return false
		end

		local Humanoid = p358:FindFirstChild(_zD1436("d0pSXlFQVls="))

		return Humanoid and Humanoid.Health > (803-803)
	end
	local function v1505(p359, p360)
		local children = game:GetService(_zD1436("aFBNVExPXlxa")).Enemies:GetChildren()
		local players = game:GetService(_zD1436("b1NeRlpNTA==")):GetPlayers()
		local t51 = {}
		local Position = p359:GetPivot().Position

		for _, child in ipairs(children) do
			local HumanoidRootPart = child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

			if HumanoidRootPart and v1503(child) and (HumanoidRootPart.Position - Position).Magnitude <= p360 then
				table.insert(t51, child)
			end
		end

		for _, player in ipairs(players) do
			if player ~= LocalPlayer3 and player.Character then
				local HumanoidRootPart = player.Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

				if HumanoidRootPart and v1503(player.Character) and (HumanoidRootPart.Position - Position).Magnitude <= p360 then
					table.insert(t51, player.Character)
				end
			end
		end

		return t51
	end

	AttackNoCoolDown = function()
		local LocalPlayer4 = game:GetService(_zD1436("b1NeRlpNTA==")).LocalPlayer
		local Character = LocalPlayer4.Character

		if not Character then
			return
		end

		local v1518
		local v1519, v1520, v1521 = ipairs(Character:GetChildren())
		local v1522 = geniter(v1519, v1520, v1521)

		while true do
			local v1523 = table.pack(v1522())

			if not v1523[(30-29)] then
				break
			end

			local v1524 = v1523[(2+1)]

			if v1524:IsA(_zD1436("a1BQUw==")) then
				v1518 = v1524

				break
			end
		end

		if not v1518 then
			return
		end

		local v1525 = v1505(Character, (54+6))

		if #v1525 == (287-287) then
			return
		end

		local ReplicatedStorage4 = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo="))
		local Modules = ReplicatedStorage4:FindFirstChild(_zD1436("clBbSlNaTA=="))

		if not Modules then
			return
		end

		local RERegisterAttack = ReplicatedStorage4:WaitForChild(_zD1436("clBbSlNaTA==")):WaitForChild(_zD1436("cVpL")):WaitForChild(_zD1436("bXoQbVpYVkxLWk1+S0teXFQ="))
		local RERegisterHit = ReplicatedStorage4:WaitForChild(_zD1436("clBbSlNaTA==")):WaitForChild(_zD1436("cVpL")):WaitForChild(_zD1436("bXoQbVpYVkxLWk13Vks="))

		if not RERegisterAttack or not RERegisterHit then
			return
		end

		local t52 = {}
		local v1531
		local v1532, v1533, v1534 = ipairs(v1525)

		for _, v1 in v1532, v1533, v1534 do
			if not v1:GetAttribute(_zD1436("dkx9UF5L")) then
				local t53 = {
_zD1436("bVZYV0tzUEhaTX5NUg=="),
_zD1436("bVZYV0tqT09aTX5NUg=="),
_zD1436("c1pZS3NQSFpNfk1S"),
_zD1436("c1pZS2pPT1pNfk1S"),
_zD1436("bVZYV0t3XlFb"),
_zD1436("c1pZS3deUVs=")
				}
				local PrimaryPart = v1:FindFirstChild(t53[math.random(#t53)]) or v1.PrimaryPart

				if PrimaryPart then
					table.insert(t52, {
						v1,
						PrimaryPart
					})
					v1531 = PrimaryPart
				end
			end
		end

		if not v1531 then
			return
		end

		RERegisterAttack:FireServer((894-894))

		local PlayerScripts = LocalPlayer4:FindFirstChild(_zD1436("b1NeRlpNbFxNVk9LTA=="))

		if not PlayerScripts then
			return
		end

		local LocalScript = PlayerScripts:FindFirstChildOfClass(_zD1436("c1BcXlNsXE1WT0s="))

		while not LocalScript do
			PlayerScripts.ChildAdded:Wait()
			LocalScript = PlayerScripts:FindFirstChildOfClass(_zD1436("c1BcXlNsXE1WT0s="))
		end

		local SendHitsToServer

		if getsenv then
			local ok, result = pcall(getsenv, LocalScript)

			if ok and result then
				SendHitsToServer = result._G.SendHitsToServer
			end
		end

		local ok, result = pcall(function()
			return require(Modules.Flags).COMBAT_REMOTE_THREAD or false
		end)

		if ok and result and SendHitsToServer then
			SendHitsToServer(v1531, t52)
		elseif ok and not result then
			RERegisterHit:FireServer(v1531, t52)
		end
	end
end

CameraShakerR = require(game.ReplicatedStorage.Util.CameraShaker)
CameraShakerR:Stop()

do
	get_Monster = function()
		for _, child in pairs(workspace.Enemies:GetChildren()) do
			local UpperTorso = child:FindFirstChild(_zD1436("ak9PWk1rUE1MUA==")) or child:FindFirstChild(_zD1436("d1peWw=="))

			if child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="), true) and UpperTorso and (child.Head.Position - LocalPlayer2.Character.HumanoidRootPart.Position).Magnitude <= (42+8) then
				return true, UpperTorso.Position
			end
		end

		for _, child in pairs(workspace.SeaBeasts:GetChildren()) do
			if child:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw==")) and child:FindFirstChild(_zD1436("d1peU0tX")) and child.Health.Value > (81-81) then
				return true, child.HumanoidRootPart.Position
			end
		end

		for _, child in pairs(workspace.Enemies:GetChildren()) do
			if child:FindFirstChild(_zD1436("d1peU0tX")) and child.Health.Value > (640-640) and child:FindFirstChild(_zD1436("aVpXVlxTWmxaXks=")) then
				return true, child.Engine.Position
			end
		end
	end
end

do
	Actived = function()
		local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass(_zD1436("a1BQUw=="))
		local v1554, v1555 = getconnections(Tool.Activated)

		for _, v1 in next, v1554, v1555 do
			if typeof(v1.Function) ==_zD1436("WUpRXEtWUFE=") then
				getupvalues(v1.Function)
			end
		end
	end
end

do
	task.spawn(function()
		RunSer.Heartbeat:Connect(function()
			pcall(function()
				if not _G.Seriality then
					return
				end

				AttackNoCoolDown()

				local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass(_zD1436("a1BQUw=="))
				local ToolTip = Tool.ToolTip
				local v1560 = get_Monster()

				if ToolTip ==_zD1436("fVNQRx95TUpWSw==") and v1560 then
					local LeftClickRemote = Tool:FindFirstChild(_zD1436("c1pZS3xTVlxUbVpSUEta"))

					if LeftClickRemote then
						Actived()
						LeftClickRemote:FireServer(Vector3.new(0.01, -(418+82), 0.01), (1+0), true)
						LeftClickRemote:FireServer(false)
					end
				end
			end)
		end)
	end)
end

local Players2 = game:GetService(_zD1436("b1NeRlpNTA=="))
local RunService = game:GetService(_zD1436("bUpRbFpNSVZcWg=="))
local ReplicatedStorage4 = game:GetService(_zD1436("bVpPU1ZcXktaW2xLUE1eWFo="))
local Workspace = game:GetService(_zD1436("aFBNVExPXlxa"))
local LocalPlayer3 = Players2.LocalPlayer

if not LocalPlayer3.Character then
	LocalPlayer3.CharacterAdded:Wait()
end

local function v1570(p361, p362)
	local _, result = pcall(function()
		return p361:WaitForChild(p362)
	end)

	return result
end

local enemies = v1570(Workspace,_zD1436("elFaUlZaTA=="))
local characters = v1570(Workspace,_zD1436("fFdeTV5cS1pNTA=="))
local modules = v1570(ReplicatedStorage4,_zD1436("clBbSlNaTA=="))
local net = v1570(modules,_zD1436("cVpL"))
local t54 = {
	Rate = 2e-(3+6),
	Enabled = true,
	IsAlive = function(p363)
		local Humanoid = p363:FindFirstChild(_zD1436("d0pSXlFQVls="))

		if Humanoid and Humanoid.Health > (154-154) then
			return true
		end

		return false
	end,
	GetNearbyTargets = function(p364, p365)
		local Position = p364:GetPivot().Position
		local t56 = {}
		local children = p365:GetChildren()

		for i = (6-5), #children do
			local v1582 = children[i]
			local Humanoid = v1582:FindFirstChild(_zD1436("d0pSXlFQVls="))
			local HumanoidRootPart = v1582:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

			if Humanoid and HumanoidRootPart and Humanoid.Health > (146-146) and (HumanoidRootPart.Position - Position).Magnitude <= (6+54) then
				table.insert(t56, v1582)
			end
		end

		return t56
	end
}

local function getTargetParts(p366)
	local t57 = {}

	for i = (1+0), #p366 do
		local v1588 = p366[i]
		local Head = v1588:FindFirstChild(_zD1436("d1peWw==")) or v1588.PrimaryPart

		if Head then
			table.insert(t57, {
				v1588,
				Head
			})
		end
	end

	return t57
end

t54.GetTargetParts = getTargetParts
t54.GetAllTargets = function(p367)
	local v1590 = t54.GetNearbyTargets(p367, enemies)
	local v1591 = t54.GetNearbyTargets(p367, characters)
	local t58 = {}

	for i = (1+0), #v1590 do
		table.insert(t58, v1590[i])
	end

	for i = (52-51), #v1591 do
		table.insert(t58, v1591[i])
	end

	return t58
end
t54.ExecuteFastAttack = function()
	local Character = LocalPlayer3.Character

	if not Character then
		return
	end

	if not Character:FindFirstChildOfClass(_zD1436("a1BQUw==")) then
		return
	end

	local v1596 = t54.GetAllTargets(Character)

	if #v1596 < (6-5) then
		return
	end

	local v1597 = t54.GetTargetParts(v1596)

	if #v1597 < (35-34) then
		return
	end

	local reRegisterHit = net[_zD1436("bXoQbVpYVkxLWk13Vks=")]

	net[_zD1436("bXoQbVpYVkxLWk1+S0teXFQ=")]:FireServer(t54.Rate)
	reRegisterHit:FireServer(v1597[(12-11)][(2+0)], v1597)
end

local u1599
local attribute

local function v1601()
	for _, v1 in ipairs({
		ReplicatedStorage4.Util,
		ReplicatedStorage4.Common,
		ReplicatedStorage4.Remotes,
		ReplicatedStorage4.Assets,
		ReplicatedStorage4.FX
	}) do
		local children = v1:GetChildren()

		for _, child in ipairs(children) do
			if child:IsA(_zD1436("bVpSUEtaeklaUUs=")) and child:GetAttribute(_zD1436("dls=")) then
				u1599 = child
				attribute = child:GetAttribute(_zD1436("dls="))
			end
		end

		v1.ChildAdded:Connect(function(child)
			if child:IsA(_zD1436("bVpSUEtaeklaUUs=")) and child:GetAttribute(_zD1436("dls=")) then
				u1599 = child
				attribute = child:GetAttribute(_zD1436("dls="))
			end
		end)
	end
end

v1601()

local t55 = {
	Execute = function()
		local Character = LocalPlayer3.Character

		if not Character then
			return
		end

		local HumanoidRootPart = Character:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

		if not HumanoidRootPart then
			return
		end

		local t59 = {}

		local function v1610(p368)
			local children = p368:GetChildren()

			for i = (25-24), #children do
				local v1613 = children[i]
				local Humanoid = v1613:FindFirstChild(_zD1436("d0pSXlFQVls="))
				local HumanoidRootPart2 = v1613:FindFirstChild(_zD1436("d0pSXlFQVlttUFBLb15NSw=="))

				if Humanoid and HumanoidRootPart2 and Humanoid.Health > (53-53) and v1613 ~= Character and (HumanoidRootPart2.Position - HumanoidRootPart.Position).Magnitude <= (140-80) then
					local children2 = v1613:GetChildren()

					for _, v1 in ipairs(children2) do
						if v1:IsA(_zD1436("fV5MWm9eTUs=")) then
							table.insert(t59, {
								v1613,
								v1
							})
						end
					end
				end
			end
		end

		v1610(enemies)
		v1610(characters)

		local Tool = Character:FindFirstChildOfClass(_zD1436("a1BQUw=="))

		if #t59 > (689-689) and Tool and (Tool:GetAttribute(_zD1436("aFpeT1BRa0ZPWg==")) ==_zD1436("clpTWlo=") or Tool:GetAttribute(_zD1436("aFpeT1BRa0ZPWg==")) ==_zD1436("bEhQTVs=")) then
			local response = modules.Net.seed:InvokeServer()
			local reRegisterHit = net[_zD1436("bXoQbVpYVkxLWk13Vks=")]

			net[_zD1436("bXoQbVpYVkxLWk1+S0teXFQ=")]:FireServer()

			local Head = t59[(1+0)][(46-45)]:FindFirstChild(_zD1436("d1peWw=="))

			if not Head then
				return
			end

			reRegisterHit:FireServer(Head, t59, {})

			if u1599 then
				local v1623 = math.floor(Workspace:GetServerTimeNow() / (1+9) % (1+9)) + (42-41)
				local RegisterHit = string.gsub(_zD1436("bXoQbVpYVkxLWk13Vks="),_zD1436("EQ=="), function(p369)
					return string.char(bit32.bxor(string.byte(p369), v1623))
				end)
				local v1625 = bit32.bxor(attribute + (1742380-833290), response * (15-13))

				cloneref(u1599):FireServer(RegisterHit, v1625, Head, t59)
			end
		end
	end
}

local function v1626()
	require(ReplicatedStorage4.Util.CameraShaker):Stop()
end

do
	local function v1627()
		task.spawn(function()
			while task.wait(t54.Rate) do
				t54.ExecuteFastAttack()
			end
		end)
		RunService.Heartbeat:Connect(function()
			pcall(t55.Execute)
		end)
	end

	v1627()
end

lib:Notify({
	Title =_zD1436("a15Rb1deSx93Sl0="),
	Description =_zD1436("a15Rb1deSx93Sl0fVkwfXVpMSw=="),
	Icon =_zD1436("TV1HXkxMWktWWwUQEA4PCgoHBw8HCw4OBwwMDg=="),
	Duration = (4+1)
})
