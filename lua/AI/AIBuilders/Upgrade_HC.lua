
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'

BuilderGroup {
	BuilderGroupName = 'Upgrade-HC',
	BuildersType = 'PlatoonFormBuilder',
	Builder {
		BuilderName = 'Upgrade-HC1',
		PlatoonTemplate = 'Upgrade-HC1',
		Priority = 200,
		BuilderConditions = {
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH1 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH2 } },
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 10.0, 150.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
	Builder {
		BuilderName = 'Upgrade-HC2',
		PlatoonTemplate = 'Upgrade-HC2',
		Priority = 200,
		BuilderConditions = {
			{ UCBC, 'HaveLessThanUnitsWithCategory', { 1, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH1 } },
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH2 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH3 } },
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 15.0, 1000.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
	Builder {
		BuilderName = 'Upgrade-HC3',
		PlatoonTemplate = 'Upgrade-HC3',
		Priority = 200,
		BuilderConditions = {
			{ UCBC, 'HaveLessThanUnitsWithCategory', { 1, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH1 } },
			{ UCBC, 'HaveLessThanUnitsWithCategory', { 1, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH2 } },
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.TECH3 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 1, categories.HYDROCARBON * categories.ENERGYPRODUCTION * categories.EXPERIMENTAL } },
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 20.0, 1500.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
}