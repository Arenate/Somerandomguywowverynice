--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local rq = ReplicatedStorage:WaitForChild("HDAdminHDClient").Signals.RequestCommandSilent
local player = game.Players.LocalPlayer
  if not player.Backpack:FindFirstChild("SuperFlyGoldBoombox") then
	rq:InvokeServer(";gear me 212641536")
  end
wait(0.8)
    local char = player.Character
    local hum = char.Humanoid
    local hed = char.Head
    local tool
    char.Animate.Disabled = false
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
local TweenService = game:GetService("TweenService")

function smoothMove(part, cf)
    tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
    
    local tween = TweenService:Create(part, tweenInfo, {CFrame = cf})
    tween:Play()
    
    tween.Completed:Connect(function()
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
    end)
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
    function reflect(part,int)
        local args = {
            [1] = "SyncMaterial",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Reflectance"] = int
                }
            }
        }
        _(args)
    end
    function SetMesh(part,meshid,offset)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["MeshId"] = "rbxassetid://"..meshid,
                    ["Offset"] = offset
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
function breakWelds(part)
    local welds = {}
    for _, weld in ipairs(part:GetDescendants()) do
        if weld:IsA("WeldConstraint") or weld:IsA("Weld") or weld:IsA("Motor6D") then
            table.insert(welds, weld)
        end
    end

    if #welds == 0 then
        return false
    end

    local args = {
        "RemoveWelds",
        welds
    }
    _(args)
    return true
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
    function SetM3sh(part,meshid)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["MeshId"] = meshid,
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
    function SetT3xture(part, texid)
        local args = {
            [1] = "SyncMesh",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["TextureId"] = texid
                }
            }
        }
        _(args)
    end
function ClonePart(part,parent)
       		 local args = {
           [1] = "Clone",
           [2] = {
           [1] = part
          },
           [3] = parent
        }

    return remote:InvokeServer(unpack(args))
end
	function sound(id,parent,name)
		a = player.Backpack.SuperFlyGoldBoombox
		r=player.Backpack.SuperFlyGoldBoombox.Handle
		a.Parent = char
		task.spawn(function()
			SetTrans(r,1)
		end)
		local erg = {"Activate", vector.create(0, 0, 0)}
		a:WaitForChild("Remote"):FireServer(unpack(erg))
		wait(0.7)
		local erg = {"PlaySong",id}
		a:WaitForChild("Remote"):FireServer(unpack(erg))
		ClonePart(r,parent)
		wait(0.3)
		a.Parent = player.Backpack
		w=parent.Handle
		task.spawn(function()
			SetAnchor(true,w)
		end)
		task.spawn(function()
			SetTrans(w,1)
		end)
		task.spawn(function()
			Resize(w,Vector3.new(),parent.CFrame)
		end)
    spawn(function()
      SetName(w,name)
    end)
		task.spawn(function()
			Weld(w,parent,parent)
		end)
		wait(0.2)
		task.spawn(function()
			SetAnchor(false,w)
		end)
		local sound =w.Sound 
	end
    function mate(part,int)
        local args = {
            [1] = "SyncMaterial",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Material"] = int
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
                    ["Texture"] = "rbxasset://".. asset
                }
            }
        }
        _(args)
    end
    function AddD3cal(part,asset,side)
        local args = {
            [1] = "SyncTexture",
            [2] = {
                [1] = {
                    ["Part"] = part,
                    ["Face"] = side,
                    ["TextureType"] = "Decal",
                    ["Texture"] = asset
                }
            }
        }
        _(args)
    end
clr=Color3.fromRGB(155,0,255)
function light(part)
		local args = {
			"CreateLights",
			{
				{
					["Part"] = part,
					["LightType"] = "PointLight"
				}
	  	}
		}
		_(args)
		local args2 = {
			"SyncLighting",
			{
				{
					["Part"] = part,
					["LightType"] = "PointLight",
					["Color"] = clr,
					["Range"] = 10,
          ["Brightness"] = 7,
				}
			}
		}
		_(args2)
	end

for i,v in char:GetDescendants() do
        if v:IsA("BasePart") then
            task.defer(function()
            SetTrans(v,1)
            end)
        end
    end
    for i,v in char:GetDescendants() do
        if v:IsA("Decal") then
            task.defer(function()
            DestroyPart(v)
            end)
        end
    end
    for i,v in char:GetDescendants() do
        if v:IsA("BasePart") then
         v.Anchored=true
        end
    end

sound(1080752200,char.HumanoidRootPart,"Static")
local Scythe1 = remote:InvokeServer("CreatePart","Normal",CFrame.new(0,0,0),char)
task.defer(function()
AddMesh(Scythe1)
end)
task.defer(function()
SetMesh(Scythe1,"134254117607114", Vector3.new(0, 0, 0))
end)
task.defer(function()
SetName(Scythe1,"Scythe1")
end)
task.defer(function()
Color(Scythe1, Color3.new(0,0,0))
end)
task.defer(function()
SetCollision(Scythe1,false)
end)
task.defer(function()
Resize(Scythe1, Vector3.new(8.551, 0.654, 7.861),Scythe1.CFrame)
end)

local Neon = remote:InvokeServer("CreatePart","Normal",CFrame.new(0,0,0),char)
spawn(function()
AddMesh(Neon)
end)
task.defer(function()
SetMesh(Neon,"108303781621285", Vector3.new(0,0,0))
end)
task.defer(function()
SetName(Neon,"Neon")
end)
task.defer(function()
light(Neon)
end)
task.defer(function()
mate(Neon,Enum.Material.Neon)
end)
task.defer(function()
Resize(Neon, Vector3.new(8.551, 0.654, 7.861),Neon.CFrame)
end)
task.defer(function()
Color(Neon,clr)
end)

    cf=CFrame.new()
local larm = char["Left Arm"]
local rarm = char["Right Arm"]
local lleg = char["Left Leg"]
local rleg = char["Right Leg"]
local trs= char.Torso
local hd = char.Head

nlarm = remote:InvokeServer("CreatePart","Normal",cf,char)
nrarm = remote:InvokeServer("CreatePart","Normal",cf,char)
nlleg = remote:InvokeServer("CreatePart","Normal",cf,char)
nrleg = remote:InvokeServer("CreatePart","Normal",cf,char)
ntrs = remote:InvokeServer("CreatePart","Normal",cf,char)
nhd = remote:InvokeServer("CreatePart","Normal",cf,char)


task.defer(function()
Resize(nlarm, larm.Size, larm.CFrame)
end)
task.defer(function()
Resize(nrarm, rarm.Size, rarm.CFrame)
end)
task.defer(function()
Resize(nlleg, lleg.Size, lleg.CFrame)
end)
task.defer(function()
Resize(nrleg, rleg.Size, rleg.CFrame)
end)
task.defer(function()
Resize(ntrs, trs.Size, trs.CFrame)
end)
task.defer(function()
Resize(nhd, hd.Size, hd.CFrame)
end)


task.defer(function()
Color(nlarm, larm.Color)
end)
task.defer(function()
Color(nrarm, rarm.Color)
end)
task.defer(function()
Color(nlleg, lleg.Color)
end)
task.defer(function()
Color(nrleg, rleg.Color)
end)
task.defer(function()
Color(ntrs, trs.Color)
end)
task.defer(function()
Color(nhd, hd.Color)
end)

task.defer(function()
SetCollision(nlarm, false)
end)
task.defer(function()
SetCollision(nrarm, false)
end)
task.defer(function()
SetCollision(nlleg, false)
end)
task.defer(function()
SetCollision(nrleg, false)
end)
task.defer(function()
SetCollision(ntrs, false)
end)
task.defer(function()
SetCollision(nhd, false)
end)
task.defer(function()
SetCollision(Neon, false)
end)
task.defer(function()
SetCollision(Scythe1, false)
end)

task.defer(function()
AddMesh(nhd)
end)
task.defer(function()
MeshResize(nhd, Vector3.new(1.25,1.25,1.25))
end)
if hd:FindFirstChildOfClass("SpecialMesh") then
if hd:FindFirstChildOfClass("SpecialMesh").MeshType == Enum.MeshType.FileMesh then
mesh=hd:FindFirstChildOfClass("SpecialMesh")
    task.defer(function()
     SetM3sh(nhd,mesh.MeshId)
    end)
task.defer(function()
MeshResize(nhd,mesh.Scale)
end)
  end
end

task.defer(function()
SpawnDecal(nhd,Enum.NormalId.Front)
end)
if hd:FindFirstChildOfClass("Decal") then
    local face = hd:FindFirstChildOfClass("Decal")
    if face.Texture ~= "rbxasset://textures/face.png" then
        task.defer(function()
            AddD3cal(nhd, face.Texture, Enum.NormalId.Front)
        end)
    else
        task.defer(function()
            AddDecal(nhd, "textures/face.png", Enum.NormalId.Front)
        end)
    end
end

local accs = {}

for i,v in char:GetDescendants() do
    if v:IsA("Accessory") then
        if v:FindFirstChild("Handle") then
            local orig = v.Handle:FindFirstChildOfClass("SpecialMesh")
            local acc = remote:InvokeServer("CreatePart","Normal",cf,char)
            
            task.defer(function()
                AddMesh(acc)
            end)
            task.defer(function()
                SetM3sh(acc,orig.MeshId)
            end)
            task.defer(function()
                SetCollision(acc,false)
            end)
            task.defer(function()
                SetT3xture(acc,orig.TextureId)
            end)
            task.defer(function()
                MeshResize(acc,orig.Scale)
            end)
            
            table.insert(accs, {acc = v,part = acc,lcf =v.Handle.CFrame})
        end 
    end
end
task.defer(function()
AddMesh(nlarm)
end)
task.defer(function()
SetMesh(nlarm,"127739625807358")
end)


task.defer(function()
AddMesh(nrarm)
end)
task.defer(function()
SetMesh(nrarm,"127739625807358")
end)
task.defer(function()
AddMesh(ntrs)
end)
task.defer(function()
SetMesh(ntrs,"2027989253")
end)
task.defer(function()
AddMesh(nlleg)
end)
task.defer(function()
SetMesh(nlleg,"127739625807358")
end)
task.defer(function()
AddMesh(nrleg)
end)
task.defer(function()
SetMesh(nrleg,"127739625807358")
end)


task.defer(function()
-- anims
loadstring(game:HttpGet("https://gist.github.com/Kotyara19k-Doorsspawner/2c02b92a4e32c552566962c8e2d42284/raw/b6ca0a5626e8494e858eaeab5c9c7bf082444c28/soulreaper"))()
end)
wait(2)
scythe=char.Scythe

    for i,v in char:GetDescendants() do
        if v:IsA("BasePart") then
      if v.Name ~='Part' then
    if v.Name~='Neon' then
  if v.Name~='Scythe1' then
        v.Anchored=false
        end
       end
      end
     end
   end

game:GetService("RunService").Heartbeat:connect(function(deltaTime)

local smoothFactor = math.clamp(deltaTime * 30, 0, 1)
     hd1 = hd.CFrame:Lerp(hd.CFrame, smoothFactor)
     trs1 = trs.CFrame:Lerp(trs.CFrame, smoothFactor)
     larm1 = larm.CFrame:Lerp(larm.CFrame, smoothFactor)
     rarm1 = rarm.CFrame:Lerp(rarm.CFrame, smoothFactor)
     lleg1 = lleg.CFrame:Lerp(lleg.CFrame, smoothFactor)
     rleg1 = rleg.CFrame:Lerp(rleg.CFrame, smoothFactor)

task.defer(function()
MovePart(nhd,hd1)
end)
task.defer(function()
MovePart(ntrs,trs1)
end)
task.defer(function()
MovePart(nlarm,larm1)
end)
task.defer(function()
MovePart(nrarm,rarm1)
end)
task.defer(function()
MovePart(nlleg,lleg1)
end)
task.defer(function()
MovePart(nrleg,rleg1)
end)
   for _, data in pairs(accs) do
        local tcf = data.acc.Handle.CFrame
        data.lcf = data.lcf:Lerp(tcf, 1)
        task.defer(function()
            MovePart(data.part, data.lcf)
        end)
    end
end)
local lastScytheCF, lastNeonCF

task.defer(function()
game:GetService("RunService").Heartbeat:connect(function(deltaTime)
    local smoothFactor = math.clamp(deltaTime * 30, 0, 1)
    
    local targetCF1 = scythe:GetChildren()[2].CFrame * CFrame.new(3.8, 0, 0.8)
    lastScytheCF = (lastScytheCF or targetCF1):Lerp(targetCF1, smoothFactor)
    

    local targetCF2 = lastScytheCF * CFrame.new(0.330, 0, 0.009)
    lastNeonCF = (lastNeonCF or targetCF2):Lerp(targetCF2, smoothFactor)
    
    task.defer(function()
        MovePart(Scythe1, lastScytheCF)
    end)
    task.defer(function()
        MovePart(Neon, lastNeonCF)
    end)
end)
end)
mouse.Button1Down:connect(function()
    local hitPlayer = nil
    local cnect

    function ontc(other)
        local hitChar = other.Parent 
        if not hitChar then return end
        
        local otherPlayer = game.Players:GetPlayerFromCharacter(hitChar)
        if otherPlayer and otherPlayer ~= game.Players.LocalPlayer then
            hitPlayer = otherPlayer
            if hitPlayer.Character and hitPlayer.Character:FindFirstChild("Humanoid") then
task.defer(function()
Resize(hitPlayer.Character.Head,hitPlayer.Character.Head.Size,hitPlayer.Character.Head.CFrame)
end)
            end
        end
    end
    cnect = Scythe1.Touched:connect(ontc)
    wait(0.15)
    if cnect then
        cnect:Disconnect()
    end
end)
