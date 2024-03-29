#
# Cybran Dumbfire Rocket "The tadpole"
#
local CCorsairRocketProjectile = import('/lua/cybranprojectiles.lua').CCorsairRocketProjectile
CDFXenonitRocket01 = Class(CCorsairRocketProjectile) {

   PolyTrail = '/effects/emitters/default_polytrail_06_emit.bp',

   OnCreate = function(self)
        CCorsairRocketProjectile.OnCreate(self)
        self:ForkThread(self.UpdateThread)
   end,

    UpdateThread = function(self)
        WaitSeconds(0.15)
        self:SetMesh('/mods/beyond_infrastructure/projectiles/CDFXenonitRocket01/CDFXenonitRocket01UnPacked01_mesh')
        local army = self:GetArmy()

        # Polytrails offset to wing tips
        CreateTrail(self, -1, army, self.PolyTrail ):OffsetEmitter(0.075, -0.05, 0.25)
        CreateTrail(self, -1, army, self.PolyTrail ):OffsetEmitter(-0.085, -0.055, 0.25)
        CreateTrail(self, -1, army, self.PolyTrail ):OffsetEmitter(0, 0.09, 0.25)

        # FIXME, Until we can offset beam emitters, can't use this
        #local beam = CreateBeamEmitter('/effects/emitters/missile_meson_exhaust_beam_01_emit.bp',army)
        #AttachBeamToEntity(beam, self, -1, army)
    end,
}

TypeClass = CDFXenonitRocket01
