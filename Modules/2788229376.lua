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
