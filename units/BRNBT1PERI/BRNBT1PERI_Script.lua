local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local EffectTemplate = import('/lua/EffectTemplates.lua')

BRNBT1PERI = Class(TStructureUnit) {


OnStopBeingBuilt = function(self,builder,layer)
        TStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Trash:Add(CreateRotator(self, 'Object01', 'y', nil, -30, 0, 0))
     
        self:CreatTheEffects()    
    end,

CreatTheEffects = function(self)
	local army =  self:GetArmy()
	for k, v in EffectTemplate['CSoothSayerAmbient'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'perieffect', army, v):ScaleEmitter(0.3))
	end
end,

OnKilled = function(self, instigator, damagetype, overkillRatio)
        TStructureUnit.OnKilled(self, instigator, damagetype, overkillRatio)
        self:CreatTheEffectsDeath()  
    end,
}

TypeClass = BRNBT1PERI