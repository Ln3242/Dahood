local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "DA HOOD OrionTest", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


local FunnyTap = Window:MakeTab({
	Name = "FunnyTesting",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


FunnyTap:AddButton({
	Name = "Anit Bag",
	Callback = function()
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
