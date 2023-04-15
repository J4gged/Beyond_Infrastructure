local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local EffectTemplate = import('/lua/EffectTemplates.lua')

BROBT1PERI = Class(TStructureUnit) {


OnStopBeingBuilt = function(self,builder,layer)
        TStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Trash:Add(CreateRotator(self, 'Object02', 'y', nil, -10, 0, 0))
     
        self:CreatTheEffects()    
    end,

CreatTheEffects = function(self)
	local army =  self:GetArmy()
	for k, v in EffectTemplate['CSoothSayerAmbient'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy02', army, v):ScaleEmitter(0.35))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy01', army, v):ScaleEmitter(1.75))
	end
end,

OnKilled = function(self, instigator, damagetype, overkillRatio)
        TStructureUnit.OnKilled(self, instigator, damagetype, overkillRatio)
        self:CreatTheEffectsDeath()  
    end,
}

TypeClass = BROBT1PERI