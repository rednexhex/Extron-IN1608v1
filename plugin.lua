-- Extron SW8
-- by Matty
-- November 2024

-- Information block for the plugin
--[[ #include "info.lua" ]]

-- Define the color of the plugin object in the design
function GetColor(props)
  return { 155, 66, 245 }
end

-- The name that will initially display when dragged into a design
function GetPrettyName(props)
  return "Extron SW8, ver. " .. PluginInfo.Version
end

-- Define User configurable Properties of the plugin
function GetProperties()
  local props = {}
  --[[ #include "properties.lua" ]]
  return props
end

-- Defines the Controls used within the plugin
function GetControls(props)
  local ctrls = {}
  --[[ #include "controls.lua" ]]
  return ctrls
end

--Layout of controls and graphics for the plugin UI to display
function GetControlLayout(props)
  local layout = {}
  local graphics = {}
  --[[ #include "layout.lua" ]]
  return layout, graphics
end

--Start event based logic
if  Controls then
  --[[ #include "runtime.lua" ]]  
end