local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/IEnemyFiles/EnemySaga-Lib/main/EnemyLib2.lua"))()

local EnemySaga = Library:Window("Main")
local EnemySaga2 = Library:Window("Settings")

EnemySaga:Label("Credit By : -E-#4990")

EnemySaga:Button("Button", function(Func)
    print("This is a button")
end)

EnemySaga:Toggle("Toggle", false, function(State, Func)
    print("Toggle:", State)
    Func:SetText(State and "Toggle Enabled" or "Toggle Disabled")
end, false)

EnemySaga:Slider("Slider", 1, 100, 50, function(Value, Func)
    print("Slider:", Value)
end)

EnemySaga:Box("Box", "", "Default", function(Text, Focused, Func)
    if Focused then
        print(Text)
    end
end)

EnemySaga:Dropdown("Dropdown", {"A", "B", "C"}, function(Selected)
    print("Dropdown:", Selected)
end, true)

EnemySaga:ColorPicker("ColorPicker", Color3.fromRGB(255, 255, 255), function(Color, Func)
    print("ColorPicker:", Color)
end)

EnemySaga:Bind("Bind", Enum.KeyCode.F, false, function(State, Func)
    print("Bind:", State)
end)

EnemySaga2:HideUI()
EnemySaga2:MinimiseWindows()
EnemySaga2:DestroyUI()
