-- Cmdr Setup Controller
-- Username
-- December 28, 2021



local CmdrSetupController = {}


function CmdrSetupController:Start()
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Cmdr = require(ReplicatedStorage:WaitForChild("CmdrClient"))

    -- Configurable, and you can choose multiple keys
    Cmdr:SetActivationKeys({ Enum.KeyCode.F2 })
    -- See below for the full API.
end


function CmdrSetupController:Init()
	
end


return CmdrSetupController