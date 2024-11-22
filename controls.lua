
table.insert(ctrls, {
  Name = "IPAddress",
  ControlType = "Text",
  DefaultValue = "127.0.0.1",
  Count = 1
})
table.insert(ctrls, {
  Name = "Port",
  ControlType = "Knob",
  ControlUnit = "Integer",
  Min = 1,
  Max = 65535,
  DefaultValue = 23,
  Count = 1
})

--------  Switch Matrix  ----------

for x = 1, 8 do
table.insert(ctrls, {
  Name = "in" .. string.format("%d",x),
  ControlType = "Button",
  ButtonType = "Trigger",
  Count = 1,
})
end