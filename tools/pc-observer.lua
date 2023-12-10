oldValue = 0;
noDamageB = 0x003A;
PC_CONTROL_ADDRESS = 0xD31A

--no        = 0x0068;
no        = 0x0004;

function f1()
  --value = memory.readbyte(no);
  --value = memory.getregister("a");
  value = memory.getregister("y");
  if oldValue ~= value then
    --emu.print(string.format("addr:%04X, value: %02X", no, value));
	emu.print(string.format("pc:%04X, y: %02X", PC_CONTROL_ADDRESS, value));
	oldValue = value;
  end;
end

memory.registerexecute(PC_CONTROL_ADDRESS, f1);

while (true) do

  -- Cheat 'no damage'
  if memory.readbyte(noDamageB) ~= 0x80 then
    memory.writebyte(noDamageB, 0x80);
  end;

  emu.frameadvance();
end;
