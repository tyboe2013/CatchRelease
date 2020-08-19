import ('TemBot.Lua.TemBotLua')

-- Start right in front of Desert Shop

-- Registering the Temtem Window
tblua:RegisterTemTemWindow()

tblua:GetAreaColor()

-- Change Temcards thrown amount without rebuy
TemcardsBeforeRebuy = 30
-- Change Dead tems amount before Rebuy
DeadBeforeRebuy = 3
--

i = 0
t = 1
dead = 0

tblua:Sleep(1500)

MovementSwitch = 1

if tblua:IsInWorld() == true then

 while(true)
 do
        local sleepbegin = math.random(74, 132)
        tblua:Sleep(sleepbegin)
        --check pause and logout user settings
        tblua:CheckPause()
        tblua:CheckLogout()
        while tblua:IsInWorld() == true
        do
            t = 1
            --Rebuy TemCards
            if i > TemcardsBeforeRebuy then
                tblua:KeyDown(0x57)
                tblua:Sleep(8000)
                tblua:PressKey(0x57)
                tblua:Sleep(100)
                tblua:PressKey(0x38)
                tblua:KeyDown(0x57)
                tblua:Sleep(8000)
                tblua:PressKey(0x57)
                tblua:Sleep(100)
                tblua:PressKey(0x38)
                if tblua:IsInFight() == false then
                    tblua:PressKey(0x58)
                    tblua:Sleep(500)
                    tblua:PressKey(0x57)
                    tblua:Sleep(500)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x53)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x53)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    if tblua:IsInWorld() == false then
                        --Rebuy Amount
                        tblua:PressKey(0x35)
                        tblua:Sleep(500)
                        tblua:PressKey(0x30)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x46)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x1B)
                        tblua:Sleep(100)
                        tblua:KeyDown(0x25)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x25)
                        tblua:Sleep(100)
                        tblua:PressKey(0x26)
                        tblua:Sleep(100)
                        tblua:PressKey(0x46)
                        tblua:Sleep(10000)
                        tblua:KeyDown(0x27)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x27)
                        i = 0
                        dead = 0
                    end
                end
            else
            if dead > DeadBeforeRebuy then
                tblua:KeyDown(0x57)
                tblua:Sleep(8000)
                tblua:PressKey(0x38)
                tblua:KeyDown(0x57)
                tblua:Sleep(8000)
                tblua:PressKey(0x38)
                if tblua:IsInFight() == false then
                    tblua:PressKey(0x58)
                    tblua:Sleep(500)
                    tblua:PressKey(0x57)
                    tblua:Sleep(500)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x53)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x53)
                    tblua:Sleep(1000)
                    tblua:PressKey(0x46)
                    tblua:Sleep(1000)
                    if tblua:IsInWorld() == false then
                        --Rebuy Amount
                        tblua:PressKey(0x35)
                        tblua:Sleep(500)
                        tblua:PressKey(0x30)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x46)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x1B)
                        tblua:Sleep(100)
                        tblua:KeyDown(0x25)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x25)
                        tblua:Sleep(100)
                        tblua:PressKey(0x26)
                        tblua:Sleep(100)
                        tblua:PressKey(0x46)
                        tblua:Sleep(10000)
                        tblua:KeyDown(0x27)
                        tblua:Sleep(1000)
                        tblua:PressKey(0x27)
                        i = 0
                        dead = 0
                    end
                end
              end
            end
        local Sleep = math.random(683, 2718)
        --random top down delay
        if MovementSwitch == 1 then
            tblua:KeyDown(0x57)
            tblua:Sleep(Sleep)
            tblua:KeyUp(0x57)
            MovementSwitch = 2
        elseif MovementSwitch == 2 then
            tblua:KeyDown(0x53)
            tblua:Sleep(Sleep)
            tblua:KeyUp(0x53)
            MovementSwitch = 1
        end
        end
           --loop if minimap not detected
      while tblua:IsInWorld() == false do
      tblua:StopMovement()
                    local cr = math.random(1030, 1594)
                --if bot is in fight
                if tblua:IsInFight() == true then
                    --Luma check positive (message and notification)
                    if tblua:CheckLuma() == true then
                        tblua:SendTelegramMessage("Luma Found! Waiting...")
                        tblua:TestMessage("Luma Found! Waiting...")
                        tblua:PressKey(0x71)
                    else
                    local sleepy = math.random(74, 132)
                    -- exhausted
                    if tblua:GetPixelColor(276, 631) == "0xFFFFFF" then
                    tblua:Sleep(sleepy)
                    tblua:PressKey(0x36)
                    tblua:Sleep(sleepy)
                    else
                      if tblua:GetPixelColor(777, 65) == "0x1E1E1E" then
                      if tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
                       if tblua:GetPixelColor(832, 36) == "0xFFFFFF" then
                        if tblua:GetPixelColor(1097, 72) == "0xFFFFFF" then
                        -- run away
                         while tblua:IsInWorld() == false
                         do
                           if tblua:IsInFight() == true then
                             local RandomRun = math.random(330, 694)
                             tblua:Sleep(RandomRun)
                             tblua:PressKey(0x38)
                             tblua:Sleep(RandomRun)
                           else
                             local RandomSleepzz = math.random(455, 694)
                             tblua:Sleep(RandomSleepzz)
                           end
                         end
                        else
                        -- left vulffy focus
                        if t > 3 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                         i = i + 2
                        elseif t == 3 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x45)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x26)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                         i = i + 2
                        elseif t < 3 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x26)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                        end
                       end
                       elseif tblua:GetPixelColor(1097, 72) == "0xFFFFFF" then
                         if tblua:GetPixelColor(832, 36) == "0xFFFFFF" then
                        -- run away
                         while tblua:IsInWorld() == false
                         do
                           if tblua:IsInFight() == true then
                             local RandomRunz = math.random(330, 694)
                             tblua:Sleep(RandomRunz)
                             tblua:PressKey(0x38)
                           else
                             local RandomSleepzzz = math.random(455, 694)
                             tblua:Sleep(RandomSleepzzz)
                           end
                         end
                        else
                       -- right vulffy focus
                         if t > 3 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         i = i + 2
                         t = t + 1
                        elseif t == 3 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x45)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x26)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         i = i + 2
                         t = t + 1
                        elseif t == 2 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x26)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                        elseif t == 1 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                        end
                        end
                       else
                        if t > 3 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                         i = i + 2
                        elseif t == 3 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x45)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x26)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         i = i + 2
                         t = t + 1
                        elseif t == 2 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x26)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                        elseif t == 1 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                        end
                      end
                     else
                         if t > 2 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                         i = i + 2
                        elseif t == 2 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x45)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         i = i + 2
                         t = t + 1
                        elseif t == 1 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                        end
                     end
                    elseif tblua:GetPixelColor(1045, 100) == "0x1E1E1E" then
                        if t > 2 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                         i = i + 2
                        elseif t == 2 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x45)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x37)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         i = i + 2
                         t = t + 1
                        elseif t == 1 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         t = t + 1
                        end
                    end   
                  end
                 end
                else
                    local crx = math.random(1030, 1594)
                    local crxxx = math.random(1534, 2857)
                    -- Catch screen Release
                    if tblua:GetPixelColor(750, 530) == "0x1CD1D3" then
                    tblua:PressKey(0x27)
                    tblua:Sleep(crx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crx)
                    -- Skill learn
                    elseif tblua:GetPixelColor(215, 255) == "0x1CD1D3" then
                        tblua:PressKey(0x1B)
                    tblua:Sleep(crx)
                    -- Exp screen F
                    elseif tblua:GetPixelColor(590, 245) == "0x1CD1D3" then
                    tblua:PressKey(0x1B)
                    tblua:Sleep(crx)
                    -- Swap dead tem
                    elseif tblua:GetPixelColor(1180, 455) == "0x1E1E1E" then
                    local swap = math.random(4)
                      if swap == 4 then
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                        dead = dead + 1
                      elseif swap == 3 then
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                        dead = dead + 1
                      elseif swap == 2 then
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                        dead = dead + 1
                      elseif swap == 1 then
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                        dead = dead + 1
                      end
                    else
                        tblua:Sleep(crx)
                    end
                end
            end
    end
else
    MovementSwitch = 0
    tblua:TestMessage("Error: Not ready to start the script")
end