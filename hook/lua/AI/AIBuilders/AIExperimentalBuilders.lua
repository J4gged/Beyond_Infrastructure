BuilderGroup {
    BuilderGroupName = 'EconomicExperimentalEngineers',
    BuildersType = 'EngineerBuilder',
    Builder {
        BuilderName = 'Econ Exper Engineer 1/2',
        PlatoonTemplate = 'T3EngineerBuilder',
        Priority = 1700,
        InstanceCount = 1,
        BuilderConditions = {
            { UCBC, 'HaveGreaterThanUnitsWithCategory', { 2, categories.ENERGYPRODUCTION * categories.TECH3}}, -- we need at least 3 x T3 ENERGYPRODUCTION
            { UCBC, 'HaveLessThanUnitsWithCategory', { 1, categories.EXPERIMENTAL * categories.ENERGYPRODUCTION * categories.MASSPRODUCTION }},-- Is this the first Reactor ?
            { IBC,  'BrainNotLowPowerMode', {} },
        },
        BuilderType = 'Any',
        BuilderData = {
            MinNumAssistees = 10,
            Construction = {
                BuildClose = false,
                AdjacencyCategory = 'SHIELD STRUCTURE',
                AdjacencyDistance = 30,
                BuildStructures = {
                    'T4EconExperimental',
                },
                Location = 'LocationType',
            }
        }
    },
    Builder {
        BuilderName = 'Econ Exper Engineer 2/2',
        PlatoonTemplate = 'T3EngineerBuilder',
        Priority = 1700,
        InstanceCount = 1,
        BuilderConditions = {
            { UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.EXPERIMENTAL * categories.ENERGYPRODUCTION * categories.MASSPRODUCTION }},-- Is this NOT the first Reactor ?
            { UCBC, 'HaveLessThanUnitsWithCategory', { 3, categories.EXPERIMENTAL * categories.ENERGYPRODUCTION * categories.MASSPRODUCTION }},-- Build 3 Resource generators
            { UCBC, 'UnitsLessAtLocation', { 'LocationType', 1, categories.EXPERIMENTAL * categories.ENERGYPRODUCTION * categories.MASSPRODUCTION } }, -- dont build 2 at the same location
        },
        BuilderType = 'Any',
        BuilderData = {
            MinNumAssistees = 10,
            Construction = {
                BuildClose = false,
                AdjacencyCategory = 'SHIELD STRUCTURE',
                AdjacencyDistance = 30,
                BuildStructures = {
                    'T4EconExperimental',
                },
                Location = 'LocationType',
            }
        }
    },
    Builder {
        BuilderName = 'T2 Engineer Assist Experimental Economic',
        PlatoonTemplate = 'T2EngineerAssist',
        Priority = 1700,
        InstanceCount = 10,
        BuilderConditions = {
            { UCBC, 'HaveGreaterThanUnitsInCategoryBeingBuilt', { 0, categories.EXPERIMENTAL * categories.ENERGYPRODUCTION * categories.MASSPRODUCTION }}, -- Don't build 1 if we already building 1
            { IBC,  'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 1.0, 1.0 }},
        },
        BuilderType = 'Any',
        BuilderData = {
            Assist = {
                AssistLocation = 'LocationType',
                AssisteeType = 'Engineer',
                AssistRange = 250,
                BeingBuiltCategories = {'EXPERIMENTAL ENERGYPRODUCTION MASSPRODUCTION'},
            },
        }
    },
    Builder {
        BuilderName = 'T3 Engineer Assist Experimental Mobile Economic',
        PlatoonTemplate = 'T3EngineerAssist',
        Priority = 960,
        InstanceCount = 10,
        BuilderConditions = {
            { UCBC, 'HaveGreaterThanUnitsInCategoryBeingBuilt', { 0, categories.EXPERIMENTAL * categories.ENERGYPRODUCTION * categories.MASSPRODUCTION }}, -- Don't build 1 if we already building 1
            { IBC,  'BrainNotLowPowerMode', {} },
            { EBC, 'GreaterThanEconEfficiencyOverTime', { 1.0, 1.0 }},
        },
        BuilderType = 'Any',
        BuilderData = {
            Assist = {
                AssistLocation = 'LocationType',
                AssisteeType = 'Engineer',
                AssistRange = 250,
                BeingBuiltCategories = {'EXPERIMENTAL ENERGYPRODUCTION MASSPRODUCTION'},
            },
        }
    },
}
