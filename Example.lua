local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/tntmaster1385/ServerLib/refs/heads/main/Library/init.lua"))()

local Window = Lib:Window({
	Name = "Server's Library",
	CurrentTheme = "Dark",
	Theme = {
		Dark = {
			BrandColor = Color3.fromRGB(255, 0, 0),
			
			TabItemBackgroundColor = Color3.fromRGB(35, 35, 35),
			TabItemHoverColor = Color3.fromRGB(50,50,50),
			Outline = Color3.fromRGB(50, 50, 50),
			Background = Color3.fromRGB(25, 25, 25),
			DropShadow = Color3.fromRGB(20, 20, 20),
			RegularTextColor = Color3.fromRGB(200, 200, 200),
			ShadedTextColor = Color3.fromRGB(150, 150, 150),
			CircularButtonRippleColor = Color3.fromRGB(255, 255, 255),
			NavigationBackgroundColor = Color3.fromRGB(36,36,36),
			SliderFillOutlineColor = Color3.fromRGB(71, 71, 71),
			ToggleBoxColor = Color3.fromRGB(50,50,50),
			CheckmarkColor = Color3.fromRGB(0, 0, 0),
			TopGradientColor = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(41, 41, 41)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(26, 26, 26))},
		},
		
		Light = {
			BrandColor = Color3.fromRGB(114, 135, 253),

			TabItemBackgroundColor = Color3.fromRGB(230, 230, 230),
			TabItemHoverColor = Color3.fromRGB(150,150,150),
			Outline = Color3.fromRGB(150,150,150),
			Background = Color3.fromRGB(255, 255, 255),
			DropShadow = Color3.fromRGB(20, 20, 20),
			RegularTextColor = Color3.fromRGB(50, 50, 50),
			ShadedTextColor = Color3.fromRGB(100,100,100),
			CircularButtonRippleColor = Color3.fromRGB(0, 0, 0),
			NavigationBackgroundColor = Color3.fromRGB(255, 255, 255),
			SliderFillOutlineColor = Color3.fromRGB(100,100,100),
			ToggleBoxColor = Color3.fromRGB(255,255,255),
			CheckmarkColor = Color3.fromRGB(255, 255, 255),
			TopGradientColor = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(216, 216, 216))},
		},
	},

	DragSnapping = false,
	TopMost = true,
})

do
	local Tab = Window:Tab({
		Name = "Tab Example",
		Icon = 12988752403,
	})
	
	Tab:Section({Name = "Example Section"})
	
	Tab:Button({
		Name = "Example Button",
		Description = "Example Description",
		CanDebug = true,
		Action = function()
			print("Example Button Clicked")
		end,
	})
	
	Tab:Slider({
		Name = "Slider Example",
		Description = "Description Example",
		Range = {0, 500},
		CurrentValue = 100,
		Increment = 10,
		Action = function(Value)
			print(Value)
		end,
	})
	
	Tab:Paragraph({
		Name = "Paragraph Example",
		Description = "Description Example"
	})
	
	Tab:Section({Name = "Example Section 2"})
	
	Tab:Toggle({
		Name = "Toggle Example",
		Description = "Description Example",
		Toggled = false,
		CanDebug = true,
		Action = function(Value)
			print(Value)
		end,
	})
	
	Tab:Dropdown({
		Name = "Dropdown Example",
		Options = {
			{"Option 1", "Option 1 selected"},
			{"Option 2", "Option 2 selected"},
			{"Option 3", "Option 3 selected"},
		},
		Action = function(Value)
			print(Value)
		end,
	})
	
	Tab:Textbox({
		Name = "Textbox Example",
		Action = function(Value)
			print(Value)
		end,
	})
	
	Tab:ColorPicker({
		
	})
end
