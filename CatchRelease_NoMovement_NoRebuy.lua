import("TemBot.Lua.TemBotLua")

--Registering the Temtem Window
tblua:RegisterTemTemWindow()

-- define turn
t = 1

tblua:Sleep(1500)

    while (true) do
    local RandomSleep = math.random(74, 132)
    tblua:Sleep(RandomSleep)
            if tblua:IsInWorld() == true then
                t = 1
            end

            --loop if minimap not detected
            while tblua:IsInWorld() == false do
            tblua:StopMovement()
                --if bot is in fight
                if tblua:IsInFight() == true then
                    --Luma check positive (message and notification)
                    if tblua:CheckLuma() == true then
                        tblua:SendTelegramMessage("Luma Found! Waiting...")
                        tblua:TestMessage("Luma Found! Waiting...")
                        tblua:PressKey(0x71)
                    else
                    local RandomSleepy = math.random(174, 332)
                    local cr = math.random(1030, 1394)
                    -- exhausted
                    if tblua:GetPixelColor(276, 631) == "0xFFFFFF" then
                    tblua:Sleep(RandomSleepy)
                    tblua:PressKey(0x36)
                    tblua:Sleep(RandomSleepy)
                    else
                      if tblua:GetEnemyCount() == 1 then
                        if t > 1 then
                         tblua:Sleep(cr)
                         tblua:Catch()
                         tblua:Sleep(cr)
                         tblua:Catch()
                         tblua:Sleep(cr)
                         t = t + 1
                        else
                         tblua:Sleep(cr)
                         tblua:Attack()
                         tblua:Sleep(cr)
                         tblua:Attack()
                         tblua:Sleep(cr)
                         t = t + 1
                        end
                      elseif tblua:GetEnemyCount() == 2 then
                        if t > 3 then
                         tblua:Sleep(cr)
                         tblua:Catch()
                         tblua:Sleep(cr)
                         tblua:Catch()
                         tblua:Sleep(cr)
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
                         tblua:Catch()
                         tblua:Sleep(cr)
                         t = t + 1
                        elseif t == 2 then
                         tblua:Sleep(cr)
                         tblua:PressKey(0x31)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x26)
                         tblua:Sleep(cr)
                         tblua:PressKey(0x46)
                         tblua:Sleep(cr)
                         tblua:Attack()
                         tblua:Sleep(cr)
                         t = t + 1
                        elseif t == 1 then
                         tblua:Sleep(cr)
                         tblua:Attack()
                         tblua:Sleep(cr)
                         tblua:Attack()
                         tblua:Sleep(cr)
                         t = t + 1
                        end
                      end
                    end
                   end        
                else
                    local crx = math.random(534, 857)
                    -- Catch screen Release
                    if tblua:GetPixelColor(750, 530) == "0x1CD1D3" then
                    tblua:Sleep(crx)
                    tblua:PressKey(0x27)
                    tblua:Sleep(crx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crx)
                    -- Skill learn
                    elseif tblua:GetPixelColor(215, 255) == "0x1CD1D3" then
                    tblua:Sleep(crx)
                    tblua:PressKey(0x1B)
                    tblua:Sleep(crx)
                    -- Exp screen F
                    elseif tblua:GetPixelColor(590, 245) == "0x1CD1D3" then
                    tblua:Sleep(crx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crx)
                     -- Swap dead tem
                    elseif tblua:GetPixelColor(1180, 455) == "0x1E1E1E" then
                    local swap = math.random(4)
                      if swap == 4 then
                        tblua:Sleep(crx)
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
                      elseif swap == 3 then
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
                      elseif swap == 2 then
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                      elseif swap == 1 then
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                      end
                    else
                    tblua:Sleep(crx)
                    end
                end
            end
    end
