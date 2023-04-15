local TStructureUnit = import('/lua/terranunits.lua').TStructureUnit
local EffectTemplate = import('/lua/EffectTemplates.lua')

BRMBT1PERI = Class(TStructureUnit) {


OnStopBeingBuilt = function(self,builder,layer)
        TStructureUnit.OnStopBeingBuilt(self,builder,layer)
        self.Trash:Add(CreateRotator(self, 'B02', 'y', nil, -90, 0, 0))
     
        self:CreatTheEffects()    
    end,

CreatTheEffects = function(self)
	local army =  self:GetArmy()
	for k, v in EffectTemplate['SmokePlumeMedDensitySml01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy01', army, v):ScaleEmitter(1.35))
	end
	for k, v in EffectTemplate['SmokePlumeMedDensitySml01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy02', army, v):ScaleEmitter(1.35))
	end
	for k, v in EffectTemplate['CSoothSayerAmbient'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy02', army, v):ScaleEmitter(0.3))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy05', army, v):ScaleEmitter(0.35))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy06', army, v):ScaleEmitter(0.35))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy07', army, v):ScaleEmitter(0.35))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy08', army, v):ScaleEmitter(0.35))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy09', army, v):ScaleEmitter(0.35))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy10', army, v):ScaleEmitter(0.35))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy11', army, v):ScaleEmitter(0.35))
	end
	for k, v in EffectTemplate['GenericTeleportCharge01'] do
		self.Trash:Add(CreateAttachedEmitter(self, 'Dummy12', army, v):ScaleEmitter(0.35))
	end
end,

OnKilled = function(self, instigator, damagetype, overkillRatio)
        TStructureUnit.OnKilled(self, instigator, damagetype, overkillRatio)
        self:CreatTheEffectsDeath()  
    end,
}

TypeClass = BRMBT1PERI