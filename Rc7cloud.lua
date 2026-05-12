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
local sc = remote
function _(args)
remote:InvokeServer(unpack(args))
end

function SetCollision(part,boolean)
local args = {[1] = "SyncCollision",[2] = {[1] = {["Part"] = part,["CanCollide"] = boolean}}}_(args)
end

function SetAnchor(boolean,part)
local args = {[1] = "SyncAnchor",[2] = {[1] = {["Part"] = part,["Anchored"] = boolean}}}_(args)
end

function CreatePart(cf,parent)
local args = {[1] = "CreatePart",[2] = "Normal",[3] = cf,[4] = parent}_(args)
task.wait(0.1)
for _, obj in ipairs(parent:GetChildren()) do
if obj:IsA("BasePart") and (obj.Position - cf.Position).Magnitude < 1 then
return obj
end
end
end

function DestroyPart(part)
local args = {[1] = "Remove",[2] = {[1] = part}}_(args)
end

function MovePart(part,cf)
local args = {[1] = "SyncMove",[2] = {[1] = {["Part"] = part,["CFrame"] = cf}}}_(args)
end

function Resize(part,size,cf)
local args = {[1] = "SyncResize",[2] = {[1] = {["Part"] = part,["CFrame"] = cf,["Size"] = size}}}_(args)
end

function AddMesh(part)
local args = {[1] = "CreateMeshes",[2] = {[1] = {["Part"] = part}}}_(args)
end

function SetMesh(part,meshid)
local args = {[1] = "SyncMesh",[2] = {[1] = {["Part"] = part,["MeshId"] = "rbxassetid://"..meshid}}}_(args)
end

function SetTexture(part, texid)
local args = {[1] = "SyncMesh",[2] = {[1] = {["Part"] = part,["TextureId"] = "rbxassetid://"..texid}}}_(args)
end

function SetName(part, stringg)
local args = {[1] = "SetName",[2] = {[1] = part},[3] = stringg}_(args)
end

function MeshResize(part,size)
local args = {[1] = "SyncMesh",[2] = {[1] = {["Part"] = part,["Scale"] = size}}}_(args)
end

function Weld(part1, part2,lead)
local args = {[1] = "CreateWelds",[2] = {[1] = part1,[2] = part2},[3] = lead}_(args)
end

function SetLocked(part,boolean)
local args = {[1] = "SetLocked",[2] = {[1] = part},[3] = boolean}_(args)
end

function SetTransparency(part,int)
local args = {[1] = "SyncMaterial",[2] = {[1] = {["Part"] = part,["Transparency"] = int}}}_(args)
end

function reflect(part,int)
local args = {[1] = "SyncMaterial",[2] = {[1] = {["Part"] = part,["Reflectance"] = int}}}_(args)
end

function CreateSpotlight(part)
local args = {[1] = "CreateLights",[2] = {[1] = {["Part"] = part,["LightType"] = "SpotLight"}}}_(args)
end

function SyncLighting(part,brightness)
local args = {[1] = "SyncLighting",[2] = {[1] = {["Part"] = part,["LightType"] = "SpotLight",["Brightness"] = brightness}}}_(args)
end

function Color(part,color)
local args = {[1] = "SyncColor",[2] = {[1] = {["Part"] = part,["Color"] = color,["UnionColoring"] = false}}}_(args)
end

function SpawnDecal(part,side)
local args = {[1] = "CreateTextures",[2] = {[1] = {["Part"] = part,["Face"] = side,["TextureType"] = "Decal"}}}_(args)
end

function AddDecal(part,asset,side)
local args = {[1] = "SyncTexture",[2] = {[1] = {["Part"] = part,["Face"] = side,["TextureType"] = "Decal",["Texture"] = "rbxassetid://".. asset}}}_(args)
end

local head = player.Character and player.Character:FindFirstChild("Head")
head.Anchored = true
local targetCFrame = head.CFrame + Vector3.new(0, 8, 0)
local Cloud = CreatePart(targetCFrame, workspace)
SetLocked(Cloud, true)
SetCollision(Cloud, false)
Color(Cloud, Color3.fromRGB(255, 255, 0))
AddMesh(Cloud)
SetMesh(Cloud, "111820358")
MeshResize(Cloud, Vector3.new(8, 8, 8))
reflect(Cloud, 0.5)
Weld(Cloud, char.HumanoidRootPart, char.HumanoidRootPart)
SetAnchor(false, Cloud)
head.Anchored = false

local function rainFromCloud()
    while true do
        wait(0.1)
        if Cloud and Cloud.Parent then
            local basePos = Cloud.Position
            local offsetX = math.random(-3, 3)
            local offsetZ = math.random(-3, 3)
           
            local spawnCFrame = CFrame.new(
                basePos.X + offsetX,
                basePos.Y - 2,
                basePos.Z + offsetZ
            )
            spawn(function()
                local newPart = remote:InvokeServer("CreatePart","Normal",CFrame.new(0,0,0),Cloud)
                if not newPart then return end
                spawn(function() SetName(newPart, "parti") end)
                spawn(function() SetCollision(newPart, false) end)
                spawn(function() SetAnchor(false, newPart) end)
                spawn(function() Resize(newPart, Vector3.new(2, 2, 0.000001), spawnCFrame) end)
                spawn(function() SpawnDecal(newPart, Enum.NormalId.Front) end)
                spawn(function() AddDecal(newPart, "331959655", Enum.NormalId.Front) end)
                spawn(function() SpawnDecal(newPart, Enum.NormalId.Back) end)
                spawn(function() AddDecal(newPart, "331959655", Enum.NormalId.Back) end)
                spawn(function()
                    local randomAngle = math.random(0, 1) == 0 and math.rad(-30) or math.rad(30)
                    MovePart(newPart, spawnCFrame * CFrame.Angles(0, 0, randomAngle))
                end)
                spawn(function() SetTransparency(newPart, 1) end)
            end)
        end
        wait(0.05)
    end
end

coroutine.wrap(rainFromCloud)()
