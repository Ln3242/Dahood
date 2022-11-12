repeat task.wait() until game:IsLoaded()
local queueteleport = syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport
game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Started then
        queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/Ln3242/Dahood/main/Loader.lua'))()")
    end
end)


local placeid = game.PlaceId
if placeid == 2788229376 then
    if betterisfile("Dahood/Modules/2788229376.lua") then
        loadstring(readfile("Dahood/Modules/2788229376.lua"))()
    else
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Ln3242/Dahood/main/Modules/2788229376.lua"))()
    end
end

