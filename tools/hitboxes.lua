
-- Windows size: 256x240
function drawEnemyHB(x, y, w, h)
  local MENU_OFFSET = 0; --8;
  --local COLOR = "#f7abee"
  local COLOR = string.format("#%02X00FF", emu.framecount() % 255);

  gui.box(x, y + MENU_OFFSET, x + w - 1, y + h - 1 + MENU_OFFSET, nil, COLOR);
end;

function proccesEnemyA(type, status, px, py, pstatus)
  if type == 0 or bit.rshift(status, 7) % 2 == 0 then
    return
  end;
  local isLeft = (status % 2 == 1);
  if type == 0x35 then
    -- Egyptian with bow
    if bit.rshift(status, 4) % 2 == 1 then
      -- squatting
      drawEnemyHB(px, py - 0x18, 0x04, 0x18);
    else
      drawEnemyHB(px, py - 0x20, 0x04, 0x20);
   end
  elseif type == 0x37 then
    -- Egyptian with a boomerung
    if bit.rshift(status, 4) % 2 == 1 then
      -- squatting
      drawEnemyHB(px, py - 0x18, 0x04, 0x18);
    else
      drawEnemyHB(px, py - 0x20, 0x04, 0x20);
    end
    if bit.rshift(pstatus, 7) % 2 == 1 then
      if isLeft then
        if bit.rshift(status, 4) % 2 == 1 then
          -- squatting
          drawEnemyHB(px - 4, py - 8 - 0x10, 0x04, 0x10);
        else
          drawEnemyHB(px - 4, py - 16 - 0x10, 0x04, 0x10);
        end
      else
        if bit.rshift(status, 4) % 2 == 1 then
          -- squatting
          drawEnemyHB(px + 4, py - 8 - 0x10, 0x04, 0x10);
        else
          drawEnemyHB(px + 4, py - 16 - 0x10, 0x04, 0x10);
        end
      end
    end
  end
end;


while (true) do

  local enemyAType = memory.readbyte(0x0300);
  if enemyAType ~= 0 then
    local enemyA1Status = memory.readbyte(0x0320);
    local enemyA1PosX = memory.readbyte(0x0332);
    local enemyA1PosY = memory.readbyte(0x032C);
    local enemyA1Projectile1Status = memory.readbyte(0x0322);
    proccesEnemyA(enemyAType, enemyA1Status, enemyA1PosX, enemyA1PosY, enemyA1Projectile1Status);

    local enemyA2Status = memory.readbyte(0x0321);
    local enemyA2PosX = memory.readbyte(0x0333);
    local enemyA2PosY = memory.readbyte(0x032D);
    local enemyA2Projectile1Status = memory.readbyte(0x0323);
    proccesEnemyA(enemyAType, enemyA2Status, enemyA2PosX, enemyA2PosY, enemyA2Projectile1Status);
  end

  emu.frameadvance();
end;
