-- Cmdr Setup Service
-- Username
-- December 28, 2021



local CmdrSetupService = {Client = {}}


function CmdrSetupService:Start()
    local Cmdr = self.Shared.Cmdr
	Cmdr:RegisterDefaultCommands()
    Cmdr:RegisterHooksIn(game.ReplicatedStorage.CmdrHooks)
end


function CmdrSetupService:Init()
	
end


return CmdrSetupService