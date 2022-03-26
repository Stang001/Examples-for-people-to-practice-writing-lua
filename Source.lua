local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Patskorn/GUI/main/New-Relax-UI.lua"))()
local window = library:Win("Hee")
local tap1 = window:Taps("Main")
local tap2= window:Taps("others")
local Main = tap1:newpage()
local others = tap2:newpage()
local LocalPlayer = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local tpservice= game:GetService("TeleportService")
Main:Toggle("Auto Swing",false,function(hee)
_G.AutoSwing = hee
end)
Main:Toggle("auto sell",false,function(afk)
        savepos = LocalPlayer.Character.HumanoidRootPart.CFrame
_G.AFK = afk
        wait(1)
        LocalPlayer.Character.HumanoidRootPart.CFrame = savepos
end)
others:Button("rejoin",function()
tpservice:Teleport(game.PlaceId, LocalPlayer)
end)
spawn(function()
RunService.Heartbeat:Connect(function()
if _G.AutoSwing then
local args = {
    [1] = "swingKatana"
}

game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
wait()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
v.Parent = game:GetService("Players").LocalPlayer.Character
end
end
end
end)
end)
spawn(function()
RunService.Heartbeat:Connect(function()
if _G.AFK then
                    savepos = LocalPlayer.Character.HumanoidRootPart.CFrame
if LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(72.730835, 2.99999881, -48.3661156, -0.841482699, -1.01676982e-07, 0.540284097, -7.29943395e-08, 1, 7.45043423e-08, -0.540284097, 2.3256435e-08, -0.841482699)
wait(.1)
                        
                    end
end
end)
end)

