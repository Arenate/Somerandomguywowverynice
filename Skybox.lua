local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local head = char:WaitForChild("Head")

local tool

for _,v in ipairs(player:GetDescendants()) do
	if v.Name == "SyncAPI" then
		tool = v.Parent
	end
end

for _,v in ipairs(ReplicatedStorage:GetDescendants()) do
	if v.Name == "SyncAPI" then
		tool = v.Parent
	end
end

local remote = tool.SyncAPI.ServerEndpoint

local function _(args)
	remote:InvokeServer(unpack(args))
end

local function CreatePart(cf,parent)
	_({
		"CreatePart",
		"Normal",
		cf,
		parent
	})
end

local function MovePart(part,cf)
	_({
		"SyncMove",
		{
			{
				Part = part,
				CFrame = cf
			}
		}
	})
end

local function Color(part,color)
	_({
		"SyncColor",
		{
			{
				Part = part,
				Color = color,
				UnionColoring = false
			}
		}
	})
end

local function SetName(part,name)
	_({
		"SetName",
		{part},
		name
	})
end

local startCF = head.CFrame * CFrame.new(0,4,0)

CreatePart(startCF,workspace)

local part

repeat
	task.wait()

	for _,v in ipairs(workspace:GetDescendants()) do
		if v:IsA("BasePart") and (v.Position - startCF.Position).Magnitude < 0.1 then
			part = v
			break
		end
	end
until part

SetName(part,"Sky")

_({
	"CreateMeshes",
	{
		{
			Part = part
		}
	}
})

_({
	"SyncMesh",
	{
		{
			MeshType = Enum.MeshType.FileMesh,
			Part = part
		}
	}
})

_({
	"SyncMesh",
	{
		{
			Scale = Vector3.new(-10000,-10000,-10000),
			Part = part
		}
	}
})

_({
	"CreateTextures",
	{
		{
			Part = part,
			Face = Enum.NormalId.Front,
			TextureType = "Decal"
		}
	}
})

_({
	"SyncTexture",
	{
		{
			Part = part,
			Face = Enum.NormalId.Front,
			TextureType = "Decal",
			Texture = "rbxassetid://123777241725663"
		}
	}
})

local hue = 0
local rotation = 0

RunService.Heartbeat:Connect(function(dt)
	hue = (hue + dt * 0.15) % 1
	rotation = rotation + dt * math.rad(15)

	local rainbow = Color3.fromHSV(hue,1,1)

	Color(part,rainbow)

	local cf = CFrame.new(head.Position + Vector3.new(0,4,0)) * CFrame.Angles(0,rotation,0)

	MovePart(part,cf)
end)
