--------------------------------------------------------------------------------
-- Summary  :  Cybran Power Generator Script
--------------------------------------------------------------------------------
local CEnergyCreationUnit = import('/lua/cybranunits.lua').CEnergyCreationUnit
local EffectUtil = import('/lua/EffectUtilities.lua')

URB1401 = Class(CEnergyCreationUnit) {

    OnStopBeingBuilt = function(self, builder, layer)
        self:SetMaintenanceConsumptionActive()
        self:SetScriptBit('RULEUTC_CloakToggle', false)
        CEnergyCreationUnit.OnStopBeingBuilt(self, builder, layer)
        --Force update of the cloak effect if there is a cloak mesh. For FAF graphics
        if self:GetBlueprint().Display.CloakMeshBlueprint then
            self:ForkThread(
                function()
                    WaitTicks(1)
                    self:UpdateCloakEffect(true, 'Cloak')
                end
            )
        end
    end,

    OnIntelEnabled = function(self)
        CEnergyCreationUnit.OnIntelEnabled(self)
        if self.IntelEffects and not self.IntelFxOn then
            self.IntelEffectsBag = {}
            self.CreateTerrainTypeEffects( self, self.IntelEffects, 'FXIdle',  self:GetCurrentLayer(), nil, self.IntelEffectsBag )
            self.IntelFxOn = true
        end
    end,

    OnIntelDisabled = function(self)
        CEnergyCreationUnit.OnIntelDisabled(self)
        EffectUtil.CleanupEffectBag(self,'IntelEffectsBag')
        self.IntelFxOn = false
    end,

CloakDelayed = function(self)
        if not self.Dead then
            WaitSeconds(2)
            self.IntelDisables['RadarStealth']['ToggleBit5'] = true
            self.IntelDisables['CloakField']['ToggleBit3'] = true
            self:EnableUnitIntel('ToggleBit5', 'RadarStealth')
            self:EnableUnitIntel('ToggleBit3', 'CloakField')
        end
        KillThread(self.DelayedCloakThread)
        self.DelayedCloakThread = nil
    end,

    IntelEffects = {
        {
            Bones = {0},
            Offset = {1.5, 3, 0},
            Scale = 5,
            Type = 'Cloak01',
        },
        {
            Bones = {0},
            Offset = {-1.5, 3, 0},
            Scale = 5,
            Type = 'Cloak01',
        },
    },
}

TypeClass = URB1401
