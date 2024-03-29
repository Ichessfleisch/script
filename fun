local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()
local Window = Library.CreateLib("LukasHub", "BloodTheme")

--New Tab

local Tab = Window:NewTab("LukasHub")
local Section = Tab:NewSection("Main")

Section:NewButton("Toggle Mailbox Dupe", "ButtonInfo", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ichessfleisch/script/main/Dupe'))()
end)

Section:NewTextBox("Your Username", "Insert user", function(txt)
	print(Success)
end)


--New tab 

local Tab = Window:NewTab("Others")
local Section = Tab:NewSection("New Tab section")

Section:NewToggle("Infinite Jump", "By toggling this you can jump infinitely.", function(state)    ---put your script to enabled true
    if state then                                                                                                                                              ---should be the same script
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
        print("Infinite Jump: ON")
    else
        InfiniteJumpEnabled = false                                                                                                            ---Put your script  disabled false
        game:GetService("UserInputService").JumpRequest:connect(function()         
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
        print("Infinite Jump: OFF")
    end
end)

Section:NewTextBox("Set WalkSpeed", "Info", function(txt)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)

Section:NewTextBox("Set JumpPower", "Info", function(txt)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end)

Section:NewButton("Reset Walkspeed", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

Section:NewButton("Reset Jumpower", "ButtonInfo", function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)
