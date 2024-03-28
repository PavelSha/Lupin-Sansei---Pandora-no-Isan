noDamageB = 0x003A;
no        = 0x001E;
fA        = 0;
fB        = 0;
fS        = 0;
fT        = 0;
fU        = 0;
fD        = 0;
fL        = 0;
fR        = 0;

while (true) do
  value = memory.readbyte(no);

  -- Cheat 'no damage'
  --if memory.readbyte(noDamageB) ~= 0x80 then
    --memory.writebyte(noDamageB, 0x80);
  --end;
  if value ~= 0 then

    fA = 0;
	if value % 2 == 1 then
	  fA = 1;
	end;
    fB = 0;
	if bit.rshift(value, 1) % 2 == 1 then
	  fB = 1;
	end;
    fS = 0;
	if bit.rshift(value, 2) % 2 == 1 then
	  fS = 1;
	end;
    fT = 0;
	if bit.rshift(value, 3) % 2 == 1 then
	  fT = 1;
	end;
    fU = 0;
	if bit.rshift(value, 4) % 2 == 1 then
	  fU = 1;
	end;
    fD = 0;
	if bit.rshift(value, 5) % 2 == 1 then
	  fD = 1;
	end;
    fL = 0;
	if bit.rshift(value, 6) % 2 == 1 then
	  fL = 1;
	end;
    fR = 0;
	if bit.rshift(value, 7) % 2 == 1 then
	  fR = 1;
	end;
    emu.print(string.format("addr:%04X, value: %02X, frame: %d - %d %d %d %d %d %d %d %d", no, value, emu.framecount(), fA, fB, fS, fT, fU, fD, fL, fR));

	-- Execute screenshot
	-- gui.savescreenshotas(string.format("snaps/%X-%d.png", no, emu.framecount()));

  end;
  emu.frameadvance();
end;
