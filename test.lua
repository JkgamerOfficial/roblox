local Movement = World:AddSection("Movement", {default = false})

    local WalkSpeedSlider = Movement:AddSlider("Walkspeed", 1, 500, 16, {toggleable = true, default = false, flag = "Walkspeed_Flag", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
        spawn(function()
            if bool then
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = val
            else 
                game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
            end
        end)
    end)
