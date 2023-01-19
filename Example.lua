local Library = loadstring(game:HttpGet("https://bitbucket.org/cat__/turtle-ui/raw/main/Module"))()

local Main = Library:Window("Main")
local Settings = Library:Window("Settings")

Main:Label("Label")

Main:Button("Button", function(Func)
    print("This is a button")
end)

Main:Toggle("Toggle", false, function(State, Func)
    print("Toggle:", State)
    Func:SetText(State and "Toggle Enabled" or "Toggle Disabled")
end, false)

Main:Slider("Slider", 1, 100, 50, function(Value, Func)
    print("Slider:", Value)
end)

Main:Box("Box", "", "Default", function(Text, Focused, Func)
    if Focused then
        print(Text)
    end
end)

Main:Dropdown("Dropdown", {"A", "B", "C"}, function(Selected)
    print("Dropdown:", Selected)
end, true)

Main:ColorPicker("ColorPicker", Color3.fromRGB(255, 255, 255), function(Color, Func)
    print("ColorPicker:", Color)
end)

Main:Bind("Bind", Enum.KeyCode.F, false, function(State, Func)
    print("Bind:", State)
end)

Settings:HideUI()
Settings:MinimiseWindows()
Settings:DestroyUI()