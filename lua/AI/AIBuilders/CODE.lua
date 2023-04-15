{ UCBC, 'AdjacencyCheck', { 'LocationType', 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3', 100, 'ueb1106' } },




    Builder {
        BuilderName = 'T2 Mass Adjacency Engineer',
        PlatoonTemplate = 'T2EngineerBuilder',
        Priority = 850,
        BuilderConditions = {
            { MABC, 'MarkerLessThanDistance',  { 'Mass', 100, -3, 0, 0}},
            { UCBC, 'UnitCapCheckLess', { .8 } },
            { UCBC, 'AdjacencyCheck', { 'LocationType', 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3', 100, 'ueb1106' } },
        },
        BuilderType = 'Any',
        BuilderData = {
            Construction = {
                AdjacencyCategory = 'MASSEXTRACTION TECH2, MASSEXTRACTION TECH3',
                AdjacencyDistance = 100,
                BuildClose = false,
                ThreatMin = -3,
                ThreatMax = 0,
                ThreatRings = 0,
                BuildStructures = {
                    'MassStorage',
                }
            }
        }
    },