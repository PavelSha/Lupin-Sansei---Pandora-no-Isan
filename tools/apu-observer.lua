-- pulse channel 1 (old values)
oram4000 = 0x00;
oram4001 = 0x00;
oram4002 = 0x00;
oram4003 = 0x00;

-- pulse channel 2 (old values)
oram4004 = 0x00;
oram4005 = 0x00;
oram4006 = 0x00;
oram4007 = 0x00;

-- triangle channel (old values)
oram4008 = 0x00;
oram4009 = 0x00;
oram400A = 0x00;
oram400B = 0x00;

-- noise channel (old values)
oram400C = 0x00;
oram400D = 0x00;
oram400E = 0x00;
oram400F = 0x00;


while (true) do

  -- pulse channel 1
  ram4000 = memory.readbyte(0x4000);
  ram4001 = memory.readbyte(0x4001);
  ram4002 = memory.readbyte(0x4002);
  ram4003 = memory.readbyte(0x4003);

  -- pulse channel 2
  ram4004 = memory.readbyte(0x4004);
  ram4005 = memory.readbyte(0x4005);
  ram4006 = memory.readbyte(0x4006);
  ram4007 = memory.readbyte(0x4007);

  -- triangle channel
  ram4008 = memory.readbyte(0x4008);
  ram4009 = memory.readbyte(0x4009);
  ram400A = memory.readbyte(0x400A);
  ram400B = memory.readbyte(0x400B);

  -- noise channel
  ram400C = memory.readbyte(0x400C);
  ram400D = memory.readbyte(0x400D);
  ram400E = memory.readbyte(0x400E);
  ram400F = memory.readbyte(0x400F);

  apuCh1Changed = ram4000 ~= oram4000 or ram4001 ~= oram4001 or ram4002 ~= oram4002 or ram4003 ~= oram4003;
  apuCh2Changed = ram4004 ~= oram4004 or ram4005 ~= oram4005 or ram4006 ~= oram4006 or ram4007 ~= oram4007;
  apuCh3Changed = ram4008 ~= oram4008 or ram4009 ~= oram4009 or ram400A ~= oram400A or ram400B ~= oram400B;
  apuCh4Changed = ram400C ~= oram400C or ram400D ~= oram400D or ram400E ~= oram400E or ram400F ~= oram400F;

  if (apuCh1Changed or apuCh2Changed or apuCh3Changed or apuCh4Changed) then
	  emu.print(string.format("case %d:", emu.framecount()));
	  if apuCh1Changed then
	      -- emu.print(string.format("    setApuChannel1(0x%02X, 0x%02X, 0x%02X, 0x%02X);", ram4000, ram4001, ram4002, ram4003));
		  emu.print(string.format("    Pulse 1: 0x%02X 0x%02X 0x%02X 0x%02X ", ram4000, ram4001, ram4002, ram4003));
		  oram4000 = ram4000;
		  oram4001 = ram4001;
		  oram4002 = ram4002;
		  oram4003 = ram4003;
	  end;
	  if apuCh2Changed then
	      --emu.print(string.format("    setApuChannel2(0x%02X, 0x%02X, 0x%02X, 0x%02X);", ram4004, ram4005, ram4006, ram4007));
		  emu.print(string.format("    Pulse 2: 0x%02X 0x%02X 0x%02X 0x%02X ", ram4004, ram4005, ram4006, ram4007));
		  oram4004 = ram4004;
		  oram4005 = ram4005;
		  oram4006 = ram4006;
		  oram4007 = ram4007;
	  end;
	  if apuCh3Changed then
	      --emu.print(string.format("    setApuChannel3(0x%02X, 0x%02X, 0x%02X, 0x%02X);", ram4008, ram4009, ram400A, ram400B));
		  emu.print(string.format("    Triangle 2: 0x%02X 0x%02X 0x%02X 0x%02X ", ram4008, ram4009, ram400A, ram400B));
		  oram4008 = ram4008;
		  oram4009 = ram4009;
		  oram400A = ram400A;
		  oram400B = ram400B;
	  end;
	  if apuCh4Changed then
	      --emu.print(string.format("    setApuChannel4(0x%02X, 0x%02X, 0x%02X, 0x%02X);", ram400C, ram400D, ram400E, ram400F));
		  emu.print(string.format("    Noise 2: 0x%02X 0x%02X 0x%02X 0x%02X ", ram400C, ram400D, ram400E, ram400F));
		  oram400C = ram400C;
		  oram400D = ram400D;
		  oram400E = ram400E;
		  oram400F = ram400F;
	  end;
	  emu.print("break;");
  end;

  emu.frameadvance();
end;
