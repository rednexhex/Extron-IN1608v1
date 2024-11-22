
--------  Graphic Elements  -------

table.insert(graphics,{
  Type = "Text",
  Text = "Build Info",
  FontSize = 12,
  HTextAlign = "Left",
  Position = {0, 150},
  Size = {62, 20}
})
table.insert(graphics,{
  Type = "Text",
  Text = "v" .. PluginInfo.BuildVersion,
  FontSize = 12,
  HTextAlign = "Left",
  Position = {0, 170},
  Size = {62, 20}
})
table.insert(graphics,{
  Type="Image",
  Image=sig,
  Position={0,130},
  Size={20,23}
})

table.insert(graphics,{
  Type="Image",
  Image=esilogo,
  Position={250,150},
  Size={175,40}
})

-- Connection Controls
table.insert(graphics, {
  Type = "Text",
  Text = "IP Address:",
  Position = {5, 5},
  Size = {95, 16},
  FontSize = 14,
  HTextAlign = "Right"
})
table.insert(graphics, {
  Type = "Text",
  Text = "Port:",
  Position = {5, 25},
  Size = {95, 16},
  FontSize = 14,
  HTextAlign = "Right"
})
layout["IPAddress"] = {
  PrettyName = "IP Address",
  Style = "Text",
  Position = {100, 5},
  Size = {100, 16}
}
layout["Port"] = {
  PrettyName = "Port",
  Style = "Text",
  Position = {100, 25},
  Size = {100, 16}
}

--------  Switch Matrix  ----------
    
for x = 1, 8 do
layout["in".. string.format("%d",x)] = {
  PrettyName = "n "..string.format("%d",x),
  Legend = ""..string.format("%d",x),
  Color = {0,255,127},
  FontSize = 12,
  Style = "Button",
  ButtonStyle = "Toggle",
  Position = {10 + 32 * x, 75},
  Size = {32, 32}
}
end