oldValue = 0;
noDamageB = 0x003A;
wait10   = 0;

--no        = 0x0008;
--no        = 0x002E;
no        = 0x0039;
--no        = 0x003B;
--no        = 0x003C;
--no        = 0x0046;
--no        = 0x0068;
--no        = 0x0066;
--no        = 0x006C
--no        = 0x006D;
--no        = 0x0073;
--no        = 0x0079;
--no        = 0x007A;
--no        = 0x008F;
--no        = 0x00D1;
--no        = 0x0214;
--no        = 0x0215;

while (true) do
  value = memory.readbyte(no);

  -- Cheat 'no damage'
  if memory.readbyte(noDamageB) ~= 0x80 then
    memory.writebyte(noDamageB, 0x80);
  end;
  if oldValue ~= value then
    oldValue = value;
    emu.print(string.format("addr:%04X, frame: %d, value: %02X", no, emu.framecount(), value));

	-- Execute screenshot
	-- gui.savescreenshotas(string.format("snaps/%X-%d.png", no, emu.framecount()));

	if wait10 == 0 then
	  wait10 = 10;
	end;
  end;
  if wait10 > 0 then
    if wait10 == 1 then
	  -- Execute screenshot after 10 frames
	  -- gui.savescreenshotas(string.format("snaps/%X-%d-w.png", no, emu.framecount()));
	end;
	wait10 = wait10 - 1;
  end;
  emu.frameadvance();
end;
