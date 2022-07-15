_G.speed = 100
_G.enabled = false

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local root = game.Players.LocalPlayer.Character.PrimaryPart

UserInputService.InputBegan:Connect(function(inputObject, processed)
    if inputObject.KeyCode == Enum.KeyCode.Q then
        _G.enabled = not _G.enabled
    end
end)

RunService.RenderStepped:Connect(function()
    if _G.enabled then
        root.Velocity = root.CFrame.LookVector * _G.speed
    end
end)
