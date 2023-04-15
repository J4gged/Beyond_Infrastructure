-- Platoon template for Upgrades
-- called from AIBuilders

-- HC Upgrades
PlatoonTemplate {
    Name = 'Upgrade-HC1',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH1, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-HC2',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH2, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-HC3',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH3, 1, 1, 'support', 'None'},
    }
}

-- EXMEX Upgrade
PlatoonTemplate {
    Name = 'Upgrade-EXMEX',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.MASSEXTRACTION * categories.TECH3, 1, 1, 'support', 'None'},
    }
}

-- PGen Upgrades
PlatoonTemplate {
    Name = 'Upgrade-PGen-T2',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYPRODUCTION * categories.TECH2 * categories.ECONOMIC - categories.UPGRADED, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-PGen-T3',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYPRODUCTION * categories.TECH3 * categories.ECONOMIC - categories.UPGRADED, 1, 1, 'support', 'None'},
    }
}

-- Storage Upgrades Energy
PlatoonTemplate {
    Name = 'Upgrade-EStorage-T1',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYSTORAGE * categories.TECH1 * categories.ECONOMIC * categories.STRUCTURE, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-EStorage-T2',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.ENERGYSTORAGE * categories.TECH2 * categories.ECONOMIC * categories.STRUCTURE, 1, 1, 'support', 'None'},
    }
}

-- Storage Upgrades Mass
PlatoonTemplate {
    Name = 'Upgrade-MStorage-T1',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.MASSSTORAGE * categories.TECH1 * categories.ECONOMIC * categories.STRUCTURE, 1, 1, 'support', 'None'},
    }
}
PlatoonTemplate {
    Name = 'Upgrade-MStorage-T2',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.MASSSTORAGE * categories.TECH2 * categories.ECONOMIC * categories.STRUCTURE, 1, 1, 'support', 'None'},
    }
}

-- Shields Upgrades
PlatoonTemplate {
    Name = 'T3EngineerBuilder',
    Plan = 'UnitUpgradeAI',
    GlobalSquads = {
        {categories.SHIELD * categories.TECH3 * categories.STRUCTURE * categories.DEFENSE, 1, 1, 'support', 'None'},
    }
}
-- StructureUpgradeTemplates for Upgrades
-- called from platoon.lua -> UnitUpgradeAI()

-- Earth (UEF) structure upgrades
table.insert(StructureUpgradeTemplates[1], {'ueb1102', 'beb1202'})    -- HC Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[1], {'beb1202', 'beb1302'})    -- HC Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[1], {'beb1302', 'brnbt1peri'}) -- HC Upgrade (T3->T4)
table.insert(StructureUpgradeTemplates[1], {'ueb1302', 'ueb1402'})    -- MEX Upgrade (T3->T4)
table.insert(StructureUpgradeTemplates[1], {'ueb1201', 'uepowerup'})  -- PGen Upgrade (T2->T2+)
table.insert(StructureUpgradeTemplates[1], {'ueb1301', 'ueb1401'})    -- PGen Upgrade (T3->T3+)
table.insert(StructureUpgradeTemplates[1], {'ueb1105', 'euebest2'})   -- Storage E Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[1], {'euebest2', 'euebest3'})  -- Storage E Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[1], {'ueb1106', 'euebmst2'})   -- Storage M Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[1], {'euebmst2', 'euebmst3'})  -- Storage M Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[1], {'UEB4301', 'feb4401'})    -- Shield Upgrade (T3->T4)

-- Alien (Aeon) structure upgrades
table.insert(StructureUpgradeTemplates[2], {'uab1102', 'bab1202'})    -- HC Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[2], {'bab1202', 'bab1302'})    -- HC Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[2], {'bab1302', 'brobt1peri'}) -- HC Upgrade (T3->T4)
table.insert(StructureUpgradeTemplates[2], {'uab1302', 'uab1402'})    -- MEX Upgrade (T3->T4)
table.insert(StructureUpgradeTemplates[2], {'uab1201', 'uapowerup'})  -- PGen Upgrade (T2->T2+)
table.insert(StructureUpgradeTemplates[2], {'uab1301', 'uab1401'})    -- PGen Upgrade (T3->T3+)
table.insert(StructureUpgradeTemplates[2], {'uab1105', 'euabest2'})   -- Storage E Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[2], {'euabest2', 'euabest3'})  -- Storage E Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[2], {'uab1106', 'euabmst2'})   -- Storage M Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[2], {'euabmst2', 'euabmst3'})  -- Storage M Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[2], {'uab4202', 'uab4301'})    -- Shield Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[2], {'uab4301', 'fab4401'})    -- Shield Upgrade (T3->T4)

-- Recycler (Cybran) structure upgrades
table.insert(StructureUpgradeTemplates[3], {'urb1102', 'brb1202'})    -- HC Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[3], {'brb1202', 'brb1302'})    -- HC Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[3], {'brb1302', 'brmbt1peri'}) -- HC Upgrade (T3->T4)
table.insert(StructureUpgradeTemplates[3], {'urb1302', 'urb1402'})    -- MEX Upgrade (T3->T4)
table.insert(StructureUpgradeTemplates[3], {'urb1201', 'urpowerup'})  -- PGen Upgrade (T2->T2+)
table.insert(StructureUpgradeTemplates[3], {'urb1301', 'urb1401'})    -- PGen Upgrade (T3->T3+)
table.insert(StructureUpgradeTemplates[3], {'urb1105', 'eurbest2'})   -- Storage E Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[3], {'eurbest2', 'eurbest3'})  -- Storage E Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[3], {'urb1106', 'eurbmst2'})   -- Storage M Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[3], {'eurbmst2', 'eurbmst3'})  -- Storage M Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[3], {'urb4207', 'frb4401'})    -- Shield Upgrade (T3->T4)

-- Seraphim structure upgrades
table.insert(StructureUpgradeTemplates[4], {'xsb1102', 'bsb1202'})    -- HC Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[4], {'bsb1202', 'bsb1302'})    -- HC Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[4], {'bsb1302', 'brpbt1peri'}) -- HC Upgrade (T3->T4)
table.insert(StructureUpgradeTemplates[4], {'xsb1302', 'xsb1402'})    -- MEX Upgrade (T3->T4)
table.insert(StructureUpgradeTemplates[4], {'xsb1105', 'exsbest2'})   -- Storage E Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[4], {'exsbest2', 'exsbest3'})  -- Storage E Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[4], {'xsb1106', 'exsbmst2'})   -- Storage M Upgrade (T1->T2)
table.insert(StructureUpgradeTemplates[4], {'exsbmst2', 'exsbmst3'})  -- Storage M Upgrade (T2->T3)
table.insert(StructureUpgradeTemplates[4], {'xsb1201', 'xspowerup'})  -- PGen Upgrade (T2->T2+)
table.insert(StructureUpgradeTemplates[4], {'xsb1301', 'xsb1401'})    -- PGen Upgrade (T3->T3+)
table.insert(StructureUpgradeTemplates[4], {'xsb4301', 'fsb4401'})    -- Shield Upgrade (T3->T4)