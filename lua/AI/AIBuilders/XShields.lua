
-- Add locals for BuilderConditions
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'
local MaxDefense = 0.15 -- 15% of all units can be defenses (categories.STRUCTURE * categories.DEFENSE)

-- Experimantal Shields (XShields)
BuilderGroup {
    BuilderGroupName = 'XShields',                           -- BuilderGroupName, initalized from AIBaseTemplates in "\lua\AI\AIBaseTemplates\"
    BuildersType = 'EngineerBuilder',
    Builder {
        BuilderName = 'U4 Shield',
        PlatoonTemplate = 'T3EngineerBuilder',
        Priority = 16000,
        InstanceCount = 1,
        BuilderConditions = {
            -- When do we want to build this ?
            { UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, categories.TECH3 * categories.ENERGYPRODUCTION }},
            -- Do we need additional conditions to build it ?
            -- Have we the eco to build it ?
            { EBC, 'GreaterThanEconTrend', { 0.0, 12.0 } },
            { EBC, 'GreaterThanEconStorageRatio', { 0.50, 0.99 } },
            -- Don't build it if...
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, categories.STRUCTURE * categories.SHIELD * categories.EXPERIMENTAL }},
            { UCBC, 'UnitsLessAtLocation', { 'LocationType', 3, categories.STRUCTURE * categories.SHIELD * categories.EXPERIMENTAL  }},
            -- Respect UnitCap
            { UCBC, 'UnitCapCheckLess', { 0.95 } },
        },
        BuilderType = 'Any',
        BuilderData = {
            Construction = {
                DesiresAssist = true,
                NumAssistees = 4,
                BuildClose = true,
                AdjacencyCategory = 'STRUCTURE ENERGYPRODUCTION TECH3',
                AvoidCategory = categories.EXPERIMENTAL * categories.SHIELD,
                maxUnits = 1,
                maxRadius = 40,
                LocationType = 'LocationType',
                BuildStructures = {
                    't4xshield',
                },
            }
        }
    },
    Builder {
        BuilderName = 'U4 Para Shield',
        PlatoonTemplate = 'T3EngineerBuilder',
        Priority = 16000,
        InstanceCount = 2,
        BuilderConditions = {
            -- When do we want to build this ?
            -- Do we need additional conditions to build it ?
            -- Have we the eco to build it ?
            { UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.STRUCTURE * categories.EXPERIMENTAL * categories.ECONOMIC }},
            -- Don't build it if...
            { UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, categories.STRUCTURE * categories.SHIELD * categories.EXPERIMENTAL }},
            { UCBC, 'UnitsLessAtLocation', { 'LocationType', 3, categories.STRUCTURE * categories.SHIELD * categories.EXPERIMENTAL  }},
            -- Respect UnitCap
            { UCBC, 'UnitCapCheckLess', { 0.95 } },
        },
        BuilderType = 'Any',
        BuilderData = {
            Construction = {
                DesiresAssist = true,
                NumAssistees = 4,
                BuildClose = true,
                AdjacencyCategory = 'STRUCTURE ENERGYPRODUCTION TECH3',
                AvoidCategory = categories.EXPERIMENTAL * categories.SHIELD,
                maxUnits = 1,
                maxRadius = 40,
                LocationType = 'LocationType',
                BuildStructures = {
                    't4xshield',
                },
            }
        }
    },
}
