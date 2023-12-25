local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local loadstring = require(script.Loadstring) -- You need the Loadstring module... good luck

ReplicatedStorage:FindFirstChildOfClass("RemoteEvent").OnClientEvent:Connect(function(data)
    loadstring(data)()
end)