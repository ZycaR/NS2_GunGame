

Script.Load("lua/bots/TeamBrain.lua")

-- GunGameTeamBrain = nil

class 'GunGameTeamBrain' (TeamBrain)

function GunGameTeamBrain:Initialize(label, teamNumber)
    TeamBrain.Initialize(self, label, teamNumber)

    --?? GunGame specific?
    -- ...
end

function GunGameTeamBrain:Update()
    TeamBrain.Update(self)
end

function GunGameTeamBrain:OnEntityChange(oldId, newId)
    TeamBrain.OnEntityChange(self, oldId, newId)
end

