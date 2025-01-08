local monitor = peripheral.wrap("monitor_0");

monitor.clear();
monitor.setTextScale(0.5);
monitor.setCursorPos(1,1);
monitor.setPaletteColor(colors.white, 0xeeeeee);
monitor.write("Starting up.")

while true do
  local event, side, x, y = os.pullEvent("monitor_touch");
  monitor.clear();
  monitor.setCursorPos(1,1);
  monitor.write("" .. side .. ": " .. x .. "," .. y);
end
