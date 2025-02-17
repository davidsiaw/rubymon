local peripheral_list = peripheral.getNames();

local monitor = peripheral.wrap("monitor_0");

monitor.clear();
monitor.setTextScale(0.5);
monitor.setCursorPos(1,1);
monitor.setPaletteColor(colors.white, 0xeeeeee);
monitor.write("Starting up")

local x, y = monitor.getCursorPos();
monitor.setCursorPos(1,y+1);
monitor.write("Found peripherals");

for _,name in ipairs(peripheral_list) do
  local typ = peripheral.getType(name);
  
  local x, y = monitor.getCursorPos();
  monitor.setCursorPos(1,y+1);
  monitor.write(""..name.." ("..typ..")");
end

while true do
  local event, side, x, y = os.pullEvent("monitor_touch");
  monitor.clear();
  monitor.setCursorPos(1,1);
  monitor.write("" .. side .. ": " .. x .. "," .. y);
end
