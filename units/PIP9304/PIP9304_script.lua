#****************************************************************************
#**
#**  File     :  /cdimage/units/XRB0204/XRB0204_script.lua
#**  Author(s):  Dru Staltman
#**
#**  Summary  :  Cybran Engineering tower
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local CConstructionStructureUnit = import('/lua/cybranunits.lua').CConstructionStructureUnit

PIP9304 = Class(CConstructionStructureUnit) {

    OnCreate = function(self)
        local reclaimthread = ForkThread(self.ReclaimCheckThread, self)
        self.Trash:Add(reclaimthread)
        CConstructionStructureUnit.OnCreate(self)
    end,

    ReclaimCheckThread = function(self)
        local aiBrain = GetArmyBrain(self:GetArmy())
        local bp = self:GetBlueprint().Economy.MaxBuildDistance
        local curMass = 0
        local reclaimMass = false
        while not self.Dead do
            curMass = aiBrain:GetEconomyStoredRatio('MASS')

            -- Decide whether to start/stop reclaiming mass.
            if (curMass > 0.9) then
                -- LOG('AutoReclaim: Halting automatic mass reclaim')
                IssueClearCommands({self})
            elseif (curMass < 0.5) then
                -- LOG('AutoReclaim: Enabling automatic mass reclaim')
                -- Find all targets in range
                local pos = self:GetPosition()
                local reclaimTargets = GetReclaimablesInRect(pos[1] - bp, pos[3] - bp, pos[1] + bp, pos[3] + bp)
				local maxQueue = 10
				local reclaimQueue = {}
                for k,v in reclaimTargets do
                    -- Check v is properly defined
                    if v then
                        -- Check range to target
                        targetpos = v:GetPosition()
                        if VDist2(pos[1], pos[3], targetpos[1], targetpos[3]) <= bp then
                            if not IsUnit(v) then
                                IssueReclaim({self}, v)
								maxQueue = maxQueue - 1
								if maxQueue == 0 then
									WaitSeconds(6)
									maxQueue = 10
								end
                            end
                        end
                    end
                end
            end
			
            WaitSeconds(3)
        end
    end,

    OnStartBuild = function(self, unitBeingBuilt, order)
        CConstructionStructureUnit.OnStartBuild(self, unitBeingBuilt, order)
        
        if not self.AnimationManipulator then
            self.AnimationManipulator = CreateAnimator(self)
            self.Trash:Add(self.AnimationManipulator)
        end
        self.AnimationManipulator:PlayAnim(self:GetBlueprint().Display.AnimationOpen, false):SetRate(1)
    end,
    
    OnStopBuild = function(self, unitBeingBuilt)
        CConstructionStructureUnit.OnStopBuild(self, unitBeingBuilt)
        
        if not self.AnimationManipulator then
            self.AnimationManipulator = CreateAnimator(self)
            self.Trash:Add(self.AnimationManipulator)
        end
        self.AnimationManipulator:SetRate(-1)
    end,
}

TypeClass = PIP9304