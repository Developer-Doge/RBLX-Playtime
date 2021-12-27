-- Test Controller
-- Username
-- December 27, 2021



local TestController = {}


function TestController:Start()
	local Fade = self.Controllers.Fade
    Fade:SetText("Hello")
		Fade:Out()
		wait(1)
		Fade:In()
end


function TestController:Init()
	
end


return TestController