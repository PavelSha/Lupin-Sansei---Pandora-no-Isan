oldValue = 0;
no       = 0x0046;

while (true) do
  value = memory.readbyte(no);
  if oldValue ~= value then
    oldValue = value;
    emu.print(string.format("frame: %d, value: %X", emu.framecount(), value));
	--[[gui.savescreenshotas(string.format("%X-%d.png", no, emu.framecount()));--]]
  end;
  emu.frameadvance();
end;
