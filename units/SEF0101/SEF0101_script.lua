local SAirUnit = import('/lua/seraphimunits.lua').SAirUnit
local SDFPhasicAutoGunWeapon = import('/lua/seraphimweapons.lua').SDFPhasicAutoGunWeapon

SEF0101 = Class(SAirUnit) {
    Weapons = {
        TurretLeft = Class(SDFPhasicAutoGunWeapon) {},
        TurretRight = Class(SDFPhasicAutoGunWeapon) {},
    },
}
TypeClass = SEF0101