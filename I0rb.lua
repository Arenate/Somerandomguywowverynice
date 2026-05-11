--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local tool
for _,v in ipairs(player:GetDescendants()) do
	if v.Name == "SyncAPI" then tool = v.Parent end
end
for _,v in ipairs(ReplicatedStorage:GetDescendants()) do
	if v.Name == "SyncAPI" then tool = v.Parent end
end

local remote = tool.SyncAPI.ServerEndpoint
local function _(args)
	remote:InvokeServer(unpack(args))
end

local function CreatePart(cf,parent) _( {"CreatePart","Ball",cf,parent} ) end
local function MovePart(part,cf) _( {"SyncMove",{ {Part=part, CFrame=cf} } } ) end
local function Resize(part,size,cf) _( {"SyncResize",{ {Part=part, Size=size, CFrame=cf} } } ) end
local function SetAnchor(bool,part) _( {"SyncAnchor",{ {Part=part, Anchored=bool} } } ) end
local function SetCollision(part,bool) _( {"SyncCollision",{ {Part=part, CanCollide=bool} } } ) end
local function SetName(part,name) _( {"SetName",{part},name} ) end
local function Color(part,color) _( {"SyncColor",{ {Part=part, Color=color, UnionColoring=false} } } ) end

function AddFire(part, size, color, color2, heat)
	local createArgs = {
		[1] = "CreateDecorations",
		[2] = {
			[1] = {
				["Part"] = part,
				["DecorationType"] = "Fire"
			}
		}
	}

	local syncArgs = {
		[1] = "SyncDecorate",
		[2] = {
			[1] = {
				["Part"] = part,
				["DecorationType"] = "Fire",
				["Size"] = size,
				["Heat"] = heat,
				["Color"] = color,
				["SecondaryColor"] = color2
			}
		}
	}

	_(createArgs)
	_(syncArgs)
end

local function createOrbitBall()
	local radius = 3
	local verticalAmplitude = 3 
	local speed = math.rad(100)
	local angle = 0
	local hue = 0

	local initialCF = hrp.CFrame * CFrame.new(radius, -0.1, 0)
	CreatePart(initialCF, workspace)

	local ball
	repeat task.wait()
		for _,v in ipairs(workspace:GetDescendants()) do
			if v:IsA("BasePart") and (v.Position - initialCF.Position).Magnitude < 0.1 then
				ball = v
				break
			end
		end
	until ball

	SetName(ball,"OrbitBall")
	Resize(ball, Vector3.new(0.9,0.9,0.9), initialCF)
	SetAnchor(true, ball)
	SetCollision(ball, true)

	-- Initial fire
	AddFire(ball, 1.2, Color3.new(1,1,1), Color3.new(1,1,1), 18)

	local connection
	connection = RunService.Heartbeat:Connect(function(dt)
		angle = angle + dt * speed
		hue = (hue + dt * 1.2) % 1  -- Rainbow speed

		-- Rainbow colors
		local rainbowColor = Color3.fromHSV(hue, 1, 1)
		local secondaryColor = Color3.fromHSV((hue + 0.15) % 1, 1, 1)  -- Slightly offset for nicer fire

		-- Update part color
		Color(ball, rainbowColor)

		-- Update fire colors
		local syncArgs = {
			[1] = "SyncDecorate",
			[2] = {
				[1] = {
					["Part"] = ball,
					["DecorationType"] = "Fire",
					["Size"] = 1.2,
					["Heat"] = 18,
					["Color"] = rainbowColor,
					["SecondaryColor"] = secondaryColor
				}
			}
		}
		_(syncArgs)

		-- Orbit movement
		local x = math.cos(angle) * radius
		local z = math.sin(angle) * radius
		local y = 2 + math.sin(angle*2) * verticalAmplitude

		local lookDir = Vector3.new(-math.sin(angle), math.cos(angle*2)*0.1, math.cos(angle))    
		local newCF = CFrame.new(hrp.Position + Vector3.new(x,y,z), hrp.Position + Vector3.new(x,y,z) + lookDir)    
		MovePart(ball, newCF)
	end)
end

createOrbitBall()
