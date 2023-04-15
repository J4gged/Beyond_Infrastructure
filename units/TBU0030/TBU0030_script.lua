local TMassFabricationUnit = import('/lua/terranunits.lua').TMassFabricationUnit
local DeathNukeWeapon = import('/lua/sim/defaultweapons.lua').DeathNukeWeapon

TBU0030 = Class(TMassFabricationUnit) {
    Weapons = {
        DeathWeapon = Class(DeathNukeWeapon) {},  
    },
    OnStopBeingBuilt = function(self,builder,layer)
        TEnergyCreationUnit.OnStopBeingBuilt(self,builder,layer)
        ChangeState(self, self.ActiveState)
    end,

    ActiveState = State {
        Main = function(self)
            # Play the "Activate" sound
            local myBlueprint = self:GetBlueprint()
            if myBlueprint.Audio.Activate then
                self:PlaySound(myBlueprint.Audio.Activate)
            end
        end,

        OnInActive = function(self)
            ChangeState(self, self.InActiveState)
        end,
    },

    InActiveState = State {
        Main = function(self)
        end,

        OnActive = function(self)
            ChangeState(self, self.ActiveState)
        end,
    },
}

TypeClass = TBU0030