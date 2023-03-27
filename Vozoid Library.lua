local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))()

local main = library:Load{
   Name = "Pw-Remake",
   SizeX = 400,
   SizeY = 400,
   Theme = "Midnight",
   Extension = "txt", -- config file extension
   Folder = "remake" -- config folder name
}

-- library.Extension = "txt" (config file extension)
-- library.Folder = "config folder name"

local Visualstab = main:Tab("Visuals")

local Espsection = Visualstab:Section{Name = "ESP", Side = "Left"}

local ESPtoggle = Visualstab:Toggle{Name = "Enabled", Flag = "ESP", Callback = function(State)
    Settings.Visuals.ESP.Enabled = State
end}

ESPtoggle:ColorPicker{Default = Color3.fromRGB(255, 255, 255), Flag = "None", Callback = function(Color)
    Settings.Visuals.ESP.Color = Color
end}

Visualstab:Toggle{Name = "Boxes", Flag = "Box", Callback = function(State)
    Settings.Visuals.ESP.Boxes = State
end}

Visualstab:Toggle{Name = "Names", Flag = "Name", Callback = function(State)
    Settings.Visuals.ESP.Names = State
end}

Visualstab:Toggle{Name = "Distance", Flag = "Distance", Callback = function(State)
    Settings.Visuals.ESP.Distance = State
end}

Visualstab:Toggle{Name = "Health Text", Flag = "Health", Callback = function(State)
    Settings.Visuals.ESP.HealthText = State
end}

Visualstab:Toggle{Name = "Tool", Flag = "Tool", Callback = function(State)
    Settings.Visuals.ESP.Tool = State
end}

Visualstab:Toggle{Name = "Tracer", Flag = "Tracer", Callback = function(State)
    Settings.Visuals.ESP.Tracers = State
end}

local Espsettings = Visualstab:Section{Name = "ESP Settings", Side = "Left"}

Espsettings:Dropdown{Name = "ESP Checks", Content = {"Visiblity Check", "Team Check", "Team Color", "Face Camera"}, Flag = "ESPChecks" Max = 4, Callback = function(State) 
    Settings.Visuals.ESP.ESPChecks = State
end}

Espsettings:Slider{Name = "Font Size", Text = "[Value]/20", Default = 13, Min = 10, Max = 20, Float = 1, Callback = function(Font)
    Settings.Visuals.ESP.FontSize = Font
end}

Espsettings:Dropdown{Name = "Font Type", Content = {"MonoSpace", "System", "UI", "Bold"}, Flag = "FontType", Callback = function(Font)
    Settings.Visuals.ESP.FontType = Font
end}

Espsettings:Slider{Name = "Tracer Position", Text = "[Value]/30", Default = 1, Min = 1, Max = 30, Float = 1, Flag = "TracerPosition", Callback = function(State)
    Settings.Visuals.ESP.TracerPostion = State
end}

Espsettings:Dropdown{Name = "Extra ESPS", Content = {"Inventory", "Ping & FPS", "Look Direction"}, Max = 3, Flag = "ExtraESP", Callback = function(State)
    Settings.Visuals.ESP.ExtraESP = State
end}

local dropdown = section:Dropdown{
    Name = "Health ESP Choice",
    --Default = "Option 1",
    Content = {
        "Health Bar",
        "Health Number",
        "Health Bar + Number"
    },
    Flag = "Dropdown 1",
    Callback = function(option)
        print("Dropdown 1 is now " .. tostring(option))
    end
 }
 

--[[section:Label("Label")

section:Button{
   Name = "Button",
   Callback  = function()
       print("Button clicked")
   end
}
]]

local toggle = section:Toggle{
   Name = "Enabled",
   Flag = "Toggle 1",
   --Default = true,
   Callback  = function(bool)
       print("Toggle 1 is now " .. (bool and "enabled" or "disabled"))
   end
}

local togglepicker1 = toggle:ColorPicker{
   Default = Color3.fromRGB(255, 0, 0),
   Flag = "Toggle 1 Picker 1",
   Callback = function(color)
       print("Toggle 1 Picker 1 is now " .. string.format("%s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255)))
   end
}

--togglepicker1:Set(Color3.fromRGB(255, 255, 255))

local togglepicker2 = toggle:ColorPicker{
   Default = Color3.fromRGB(0, 255, 0),
   Flag = "Toggle 1 Picker 2",
   Callback = function(color)
       print("Toggle 1 Picker 2 is now " .. string.format("%s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255)))
   end
}

local boxesfct = section:toggle{
    Name = "Boxes",
    Flag = "Boxes",
    Callback = function()
        print(Cope)
    end
}

boxesfct:ColorPicker{
    Default = Color3.fromRGB(255, 255, 255),
    Flag = "Boxes Color",
    Callback = function(Color)
        print("Color = Cool")
    end
}

local namesfct = section:toggle{
    Name = "Names",
    Flag = "Names",
    Callback = function(State)
        print(Cope)
    end
}

namesfct:ColorPicker{
    Default = Color3.fromRGB(0, 255, 0),
    --Flag = "Col",
    Callback = function(Color)
        print("Color = Cool")
    end
}

local healthfct = section:toggle{
    Name = "Health",
    Flag = "Health",
    Callback = function(State)
        if State then
            print("cool")
        end
    end
}

local Tracerfct = section:toggle{
    Name = "Tracer",
    Flag = "Tracer",
    Callback = function(State)
        print(ok)
    end
}


Tracerfct:ColorPicker{
    Default = Color3.fromRGB(0, 255, 0),
    --Flag = "Cool",
    Callback = function(Color)
        print("color")
    end
}


local dropdown = section:Dropdown{
    Name = "Health ESP Choice",
    --Default = "Option 1",
    Content = {
        "Health Bar",
        "Health Number",
        "Health Bar + Number"
    },
    Flag = "Dropdown 1",
    Callback = function(option)
        print("Dropdown 1 is now " .. tostring(option))
    end
 }
 

--togglepicker2:Set(Color3.fromRGB(255, 255, 255))

--toggle:Toggle(true)



local box = section:Box{
   Name = "Update Rate",
   Default = "",
   Placeholder = "Update Rate (1)",
   Flag = "Box 1",
   Callback = function(text)
       print("Box 1 is now " .. text)
   end
}

--box:Set("New box text")

local slider = section:Slider{
   Name = "Font text size",
   Text = "[value]/20",
   Default = 15,
   Min = 1,
   Max = 20,
   Float = 1,
   Flag = "Slider 1",
   Callback = function(value)
       print("Slider 1 is now " .. value)
   end
}

--slider:Set(1)

local dropdown = section:Dropdown{
   Name = "Extra ESP",
   --Default = "Option 1",
   Max = 3,
   Content = {
       "Inventory",
       "Equipped Tool",
       "Detection On Attack"
   },
   Flag = "Dropdown 1",
   Callback = function(option)
       print("Dropdown 1 is now " .. tostring(option))
   end
}

--[[ Extra stuff
dropdown:Set() -- using this without any args or with wrong args will unset the dropdown
--dropdown:Set("option 6") wont work and will unset

dropdown:Refresh{
   "Refreshed option 1",
   "Refreshed option 2",
   "Refreshed option 3"
}

dropdown:Set("Refreshed option 1")

dropdown:Add("Option 4")

dropdown:Remove("Option 4")
]]
local multidropdown = section:Dropdown{
   Name = "Outlines Choices",
   --Default = {"Option 1"},
   Max = 4, -- makes it multi
   Content = {
       "Boxes",
       "Names",
       "Healthbar",
       "Distance"
   },
   Flag = "Multi dropdown 1",
   Callback = function(option)
       print("Multi dropdown 1 is now " .. table.concat(option, ", "))
   end
}
--[[ --\\ Extra stuff


multidropdown:Set() -- using this without any args or with wrong args will unset the dropdown
multidropdown:Set{} -- using this without any args or with wrong args will unset the dropdown
--multidropdown:Set{"option 12321313"} wont work and will unset
--multidropdown:Set("hello") wont work and will unset

multidropdown:Refresh{
   "Refreshed option 1",
   "Refreshed option 2",
   "Refreshed option 3",
   "Refreshed option 4"
}

multidropdown:Set{
   "Refreshed option 1",
   "Refreshed option 2"
}

multidropdown:Add("Option 5")

multidropdown:Remove("Option 5")
]]
local colorpicker = section:ColorPicker{
   Name = "Color picker",
   Default = Color3.fromRGB(0, 255, 0),
   Flag = "Color picker 1",
   Callback = function(color)
       print("Color picker 1 is no: " .. string.format("%s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255)))
   end
}

--colorpicker:Set(Color3.fromRGB(255, 255, 255))

local colorpickerpicker1 = colorpicker:ColorPicker{
   Default = Color3.fromRGB(0, 255, 255),
   Flag = "Color picker picker 1",
   Callback = function(color)
       print("Color picker 1 picker 1 is no: " .. string.format("%s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255)))
   end
}

--colorpickerpicker1:Set(Color3.fromRGB(255, 255, 255))

local colorpickerpicker2 = colorpicker:ColorPicker{
   Default = Color3.fromRGB(255, 255, 255),
   Flag = "Color picker picker 2",
   Callback = function(color)
       print("Color picker 1 picker 2 is now " .. string.format("%s, %s, %s", math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255)))
   end
}

--colorpickerpicker2:Set(Color3.fromRGB(255, 255, 255))

local keybind = section:Keybind{
   Name = "Keybind",
   --Default = Enum.KeyCode.A,
   --Blacklist = {Enum.UserInputType.MouseButton1, Enum.UserInputType.MouseButton2},
   Flag = "Keybind 1",
   Callback = function(key, fromsetting)
       if fromsetting then
           print("Keybind 1 is now " .. tostring(key))
       else
           print("Keybind 1 was pressed")
       end
   end
}


--library:SaveConfig("config", true) -- universal config
--library:SaveConfig("config") -- game specific config
--library:DeleteConfig("config", true) -- universal config
--library:DeleteConfig("config") -- game specific config
--library:GetConfigs(true) -- return universal and game specific configs (table)
--library:GetConfigs() -- return game specific configs (table)
--library:LoadConfig("config", true) -- load universal config
--library:LoadConfig("config") -- load game specific config

local configs = main:Tab("Configuration")

local themes = configs:Section{Name = "Theme", Side = "Left"}

local themepickers = {}

local themelist = themes:Dropdown{
   Name = "Theme",
   Default = library.currenttheme,
   Content = library:GetThemes(),
   Flag = "Theme Dropdown",
   Callback = function(option)
       if option then
           library:SetTheme(option:lower())

           for option, picker in next, themepickers do
               picker:Set(library.theme[option])
           end
       end
   end
}

library:ConfigIgnore("Theme Dropdown")

local namebox = themes:Box{
   Name = "Custom Theme Name",
   Placeholder = "Custom Theme",
   Flag = "Custom Theme"
}

library:ConfigIgnore("Custom Theme")

themes:Button{
   Name = "Save Custom Theme",
   Callback = function()
       if library:SaveCustomTheme(library.flags["Custom Theme"]) then
           themelist:Refresh(library:GetThemes())
           themelist:Set(library.flags["Custom Theme"])
           namebox:Set("")
       end
   end
}

local customtheme = configs:Section{Name = "Custom Theme", Side = "Right"}

themepickers["Accent"] = customtheme:ColorPicker{
   Name = "Accent",
   Default = library.theme["Accent"],
   Flag = "Accent",
   Callback = function(color)
       library:ChangeThemeOption("Accent", color)
   end
}

library:ConfigIgnore("Accent")

themepickers["Window Background"] = customtheme:ColorPicker{
   Name = "Window Background",
   Default = library.theme["Window Background"],
   Flag = "Window Background",
   Callback = function(color)
       library:ChangeThemeOption("Window Background", color)
   end
}

library:ConfigIgnore("Window Background")

themepickers["Window Border"] = customtheme:ColorPicker{
   Name = "Window Border",
   Default = library.theme["Window Border"],
   Flag = "Window Border",
   Callback = function(color)
       library:ChangeThemeOption("Window Border", color)
   end
}

library:ConfigIgnore("Window Border")

themepickers["Tab Background"] = customtheme:ColorPicker{
   Name = "Tab Background",
   Default = library.theme["Tab Background"],
   Flag = "Tab Background",
   Callback = function(color)
       library:ChangeThemeOption("Tab Background", color)
   end
}

library:ConfigIgnore("Tab Background")

themepickers["Tab Border"] = customtheme:ColorPicker{
   Name = "Tab Border",
   Default = library.theme["Tab Border"],
   Flag = "Tab Border",
   Callback = function(color)
       library:ChangeThemeOption("Tab Border", color)
   end
}

library:ConfigIgnore("Tab Border")

themepickers["Tab Toggle Background"] = customtheme:ColorPicker{
   Name = "Tab Toggle Background",
   Default = library.theme["Tab Toggle Background"],
   Flag = "Tab Toggle Background",
   Callback = function(color)
       library:ChangeThemeOption("Tab Toggle Background", color)
   end
}

library:ConfigIgnore("Tab Toggle Background")

themepickers["Section Background"] = customtheme:ColorPicker{
   Name = "Section Background",
   Default = library.theme["Section Background"],
   Flag = "Section Background",
   Callback = function(color)
       library:ChangeThemeOption("Section Background", color)
   end
}

library:ConfigIgnore("Section Background")

themepickers["Section Border"] = customtheme:ColorPicker{
   Name = "Section Border",
   Default = library.theme["Section Border"],
   Flag = "Section Border",
   Callback = function(color)
       library:ChangeThemeOption("Section Border", color)
   end
}

library:ConfigIgnore("Section Border")

themepickers["Text"] = customtheme:ColorPicker{
   Name = "Text",
   Default = library.theme["Text"],
   Flag = "Text",
   Callback = function(color)
       library:ChangeThemeOption("Text", color)
   end
}

library:ConfigIgnore("Text")

themepickers["Disabled Text"] = customtheme:ColorPicker{
   Name = "Disabled Text",
   Default = library.theme["Disabled Text"],
   Flag = "Disabled Text",
   Callback = function(color)
       library:ChangeThemeOption("Disabled Text", color)
   end
}

library:ConfigIgnore("Disabled Text")

themepickers["Object Background"] = customtheme:ColorPicker{
   Name = "Object Background",
   Default = library.theme["Object Background"],
   Flag = "Object Background",
   Callback = function(color)
       library:ChangeThemeOption("Object Background", color)
   end
}

library:ConfigIgnore("Object Background")

themepickers["Object Border"] = customtheme:ColorPicker{
   Name = "Object Border",
   Default = library.theme["Object Border"],
   Flag = "Object Border",
   Callback = function(color)
       library:ChangeThemeOption("Object Border", color)
   end
}

library:ConfigIgnore("Object Border")

themepickers["Dropdown Option Background"] = customtheme:ColorPicker{
   Name = "Dropdown Option Background",
   Default = library.theme["Dropdown Option Background"],
   Flag = "Dropdown Option Background",
   Callback = function(color)
       library:ChangeThemeOption("Dropdown Option Background", color)
   end
}

library:ConfigIgnore("Dropdown Option Background")

local configsection = configs:Section{Name = "Configs", Side = "Left"}

local configlist = configsection:Dropdown{
   Name = "Configs",
   Content = library:GetConfigs(), -- GetConfigs(true) if you want universal configs
   Flag = "Config Dropdown"
}

library:ConfigIgnore("Config Dropdown")

local loadconfig = configsection:Button{
   Name = "Load Config",
   Callback = function()
       library:LoadConfig(library.flags["Config Dropdown"]) -- LoadConfig(library.flags["Config Dropdown"], true)  if you want universal configs
   end
}

local delconfig = configsection:Button{
   Name = "Delete Config",
   Callback = function()
       library:DeleteConfig(library.flags["Config Dropdown"]) -- DeleteConfig(library.flags["Config Dropdown"], true)  if you want universal configs
   end
}


local configbox = configsection:Box{
   Name = "Config Name",
   Placeholder = "Config Name",
   Flag = "Config Name"
}

library:ConfigIgnore("Config Name")

local save = configsection:Button{
   Name = "Save Config",
   Callback = function()
       library:SaveConfig(library.flags["Config Name"]) -- SaveConfig(library.flags["Config Name"], true) if you want universal configs
       configlist:Refresh(library:GetConfigs())
   end
}

local menustuff = configs:Section{Name = "Menu Shit", Side = "Left"}

menustuff:toggle{
    Name = "Watermark",
    Flag = "Watermark",
    Callback = function(State)
        library:Watermark("Shit | {fps} | {game}")
    end
}


--[[
local scrolling = main:Tab("Scrolling Columns")

for i = 1, 20 do
   local sec = scrolling:Section{
       Name = tostring(math.random(2000, 20000000)),
       Side = math.random(1, 2) == 1 and "Left" or "Right"
   }

   for i = 1, math.random(3, 10) do
       if math.random(1, 2) == 1 then
           sec:Label(tostring(math.random(2000, 20000000)))
       else
           sec:Button{Name = tostring(math.random(2000, 20000000))}
       end
   end
end
]]
--library:Close(Enum.KeyCode.RightShift)
--library:Unload(Enum.KeyCode.RightControl)
--watermark:Hide(Enum.KeyDown.L)