#****************************************************************************
#**
#**  File     :  /cdimage/units/UEB1301/UEB1301_script.lua
#**  Author(s):  John Comes, Dave Tomandl, Jessica St. Croix
#**
#**  Summary  :  UEF Tier 3 Power Generator Script
#**
#**  Copyright © 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TEnergyCreationUnit = import('/lua/terranunits.lua').TEnergyCreationUnit

UEB1401 = Class(TEnergyCreationUnit) {
    ActiveState = State {
        Main = function(self)
            -- Play the "activate" sound
            local myBlueprint = self:GetBlueprint()
            if myBlueprint.Audio.Activate then
                self:PlaySound(myBlueprint.Audio.ActiveLoop)
            end
        end,
    },   
}

TypeClass = UEB1401