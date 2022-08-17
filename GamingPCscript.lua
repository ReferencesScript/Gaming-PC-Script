game:GetService("RunService").Heartbeat:Wait();
   settings().Physics.AllowSleep = false;
   game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.huge;
   setsimulationradius(math.huge);

loadstring(game:HttpGet("https://pastebin.com/raw/tUUGAeaH", true))()

game.Players.LocalPlayer.Character.Humanoid.HipHeight = -1
game.Players.LocalPlayer.Character.Animate.Disabled = true
local Char = game.Players.LocalPlayer.Character
local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

for i,v in next, Hum:GetPlayingAnimationTracks() do
    v:Stop()
end

local player = game.Players.LocalPlayer
local char = player.Character
local Align = function(Part0, Part1,Mesh)
    local Aligns = {
        AlignOrientation = Instance.new("AlignOrientation", Part0),
        AlignPosition = Instance.new("AlignPosition", Part0)
    }

    local Attachments = {
        Attach0 = Instance.new("Attachment", Part0),
        Attach1 = Instance.new("Attachment", Part1)
    }
    local m = Part0:FindFirstChildOfClass('SpecialMesh')
    if Mesh and m then 
        m:Destroy()
    end
    Part0:BreakJoints()
    Aligns.AlignOrientation.Attachment0 = Attachments.Attach0
    Aligns.AlignOrientation.Attachment1 = Attachments.Attach1
    Aligns.AlignOrientation.Responsiveness = math.huge
    Aligns.AlignOrientation.RigidityEnabled = true

    Aligns.AlignPosition.Attachment0 = Attachments.Attach0
    Aligns.AlignPosition.Attachment1 = Attachments.Attach1
    Aligns.AlignPosition.Responsiveness = math.huge
    Aligns.AlignPosition.RigidityEnabled = true
        Aligns.AlignPosition.MaxForce = 999999999
        spawn(function()
            while _G.loop do 
                local mag = (Part0.Position - (Part1.CFrame*Attachments.Attach0.CFrame:Inverse()).p).magnitude--magnitude can get the distance between two cframe or position
                if mag >= 5 then 
                Part0.CFrame = Part1.CFrame*Attachments.Attach0.CFrame:Inverse()
                end
                Part0.Velocity = Vector3.new(0,35,0)
                game['Run Service'].Heartbeat:wait()
                end
        end)
 return {Attachments.Attach0, Attachments, Aligns}

end 
local hat = Align(char['PeaceSign_01'].Handle,char['Torso'],true)
local hnd = char['Torso'].CFrame*CFrame.new(0,-0.1,0)*CFrame.Angles(math.rad(-270),math.rad(0),0)
local hat1 = Align(char['Pal Hair'].Handle,char['Left Arm'],true)
local hnd1 = char['Left Arm'].CFrame*CFrame.new(0,-1,-1)*CFrame.Angles(math.rad(-270),math.rad(0),0)
local hat2 = Align(char['Kate Hair'].Handle,char['Right Arm'],true)
local hnd2 = char['Right Arm'].CFrame*CFrame.new(0,-1,-1)*CFrame.Angles(math.rad(-270),math.rad(0),0)
local hat3 = Align(char['Pink Hair'].Handle,char['Left Leg'],true)
local hnd3 = char['Left Leg'].CFrame*CFrame.new(-1,1,1)*CFrame.Angles(math.rad(-270),math.rad(0),0)
local hat4 = Align(char['LavanderHair'].Handle,char['Right Leg'],true)
local hnd4 = char['Right Leg'].CFrame*CFrame.new(1,1,1)*CFrame.Angles(math.rad(-270),math.rad(0),0)
local hat5 = Align(char['LUAhEAD'].Handle,char['Head'],false)
local hnd5 = char['Head'].CFrame*CFrame.new(0,-0.7,1)*CFrame.Angles(math.rad(0),math.rad(0),0)
local hat6 = Align(char['WDW_FoamFinger'].Handle,char['Head'],true)
local hnd6 = char['Head'].CFrame*CFrame.new(0,-1.5,-0.7)*CFrame.Angles(math.rad(-270),math.rad(0),-55)
hat[1].CFrame = hnd:Inverse() * char['Torso'].CFrame
hat1[1].CFrame = hnd1:Inverse() * char['Left Arm'].CFrame
hat2[1].CFrame = hnd2:Inverse() * char['Right Arm'].CFrame
hat3[1].CFrame = hnd3:Inverse() * char['Left Leg'].CFrame
hat4[1].CFrame = hnd4:Inverse() * char['Right Leg'].CFrame
hat5[1].CFrame = hnd5:Inverse() * char['Head'].CFrame
hat6[1].CFrame = hnd6:Inverse() * char['Head'].CFrame

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(0,35,0)
wait(0.5)
end)
end
end

local Player = game.Players.LocalPlayer

wait(.5)
game.Players.LocalPlayer.Character["PeaceSign_01"].Handle.Anchored = true
game.Players.LocalPlayer.Character["Pal Hair"].Handle.Anchored = true
game.Players.LocalPlayer.Character["Kate Hair"].Handle.Anchored = true
game.Players.LocalPlayer.Character["Pink Hair"].Handle.Anchored = true
game.Players.LocalPlayer.Character["LavanderHair"].Handle.Anchored = true
game.Players.LocalPlayer.Character["LUAhEAD"].Handle.Anchored = true
game.Players.LocalPlayer.Character["WDW_FoamFinger"].Handle.Anchored = true
game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
game.Players.LocalPlayer.Character.Animate.Disabled = false

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "FE Gaming PC";
	Text = "Made By References#5693"})
Duration = 1;
