-- Loading Controller
-- Username
-- December 27, 2021



local LoadingController = {}


function LoadingController:Start()
    local Player = game.Players.LocalPlayer
    local PlayerGui = Player.PlayerGui
	local Janitor = self.Shared.Janitor
	local Jntr = Janitor.new()

	--[[if Player.UserId == 340621144 then
		return
	end]]--

	local fade = self.Controllers.Fade
    fade:SetText("Loading")
    local Fusion = self.Shared.Fusion
    local New = Fusion.New
    local Children = Fusion.Children

    local MenuTheme = New "Sound" {
        Looped = true;
        Name = "MenuTheme";
        Parent = workspace;
        SoundId = "rbxassetid://1837824504";
        Volume = 0.1;
        Playing = true;
    }

    local LoadingGui = New "ScreenGui" {
	    Name = "LoadingGui";
	    Parent = PlayerGui;
	    ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
        IgnoreGuiInset = true;
	
	    [Children] = {
		    New "Frame" {
			    BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			    BorderColor3 = Color3.fromRGB(0, 0, 0);
			    Size = UDim2.fromScale(1, 1);
			
			    [Children] = {
				    New "ImageLabel" {
					    Name = "Logo";
					    AnchorPoint = Vector2.new(0.5, 0.5);
					    BackgroundColor3 = Color3.new(1, 1, 1);
					    Position = UDim2.fromScale(0.5, 0.5);
					    Size = UDim2.fromOffset(600, 600);
					    Image = "rbxassetid://8378011616"
				    };
				    New "TextLabel" {
					    Name = "Text";
					    AnchorPoint = Vector2.new(0.5, 0.5);
					    BackgroundColor3 = Color3.new(1, 1, 1);
					    BackgroundTransparency = 1;
					    Position = UDim2.fromScale(0.5, 0.75);
					    Size = UDim2.fromOffset(600, 100);
					    Font = Enum.Font.Kalam;
					    Text = "Hello there";
					    TextColor3 = Color3.new(1, 1, 1);
					    TextSize = 14
				    }
			    }
		    }
	    }
    }

	Jntr:Add(LoadingGui, "Destroy", "LoadingGui")

    repeat
        task.wait()
    until game:IsLoaded()
    fade:Out()
    task.wait(5)
    fade:ClearText()
    fade:In(2.5)
    task.wait(2.5)
    fade:Out(2.5)
	Jntr:Remove("LoadingGui")
	print("Removed LoadingGui/IntroCreditsGui")
    fade:In(2.5)
	Jntr:Cleanup()
	print("Cleaned up Janitor for LoadingGui/IntroCreditsGui")
end


function LoadingController:Init()
	
end


return LoadingController