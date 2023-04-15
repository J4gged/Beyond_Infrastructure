
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'

BuilderGroup {
	BuilderGroupName = 'Upgrade-Storage-M',
	BuildersType = 'PlatoonFormBuilder',

	Builder {
		BuilderName = 'Upgrade-Storage-T1M',
		PlatoonTemplate = 'Upgrade-MStorage-T1',
		Priority = 100,
		BuilderConditions = {
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.MASSEXTRACTION * categories.TECH3 } },
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.MASSSTORAGE * categories.TECH1 } },
			{ EBC, 'GreaterThanEconTrend', { 0.5, 20.0 } },
			{ EBC, 'GreaterThanEconIncome', { 7.5, 120.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
	Builder {
		BuilderName = 'Upgrade-Storage-T2M',
		PlatoonTemplate = 'Upgrade-MStorage-T2',
		Priority = 100,
		BuilderConditions = {
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.MASSEXTRACTION * categories.TECH3 } },
			{ UCBC, 'HaveGreaterThanUnitsWithCategory', { 0, categories.MASSSTORAGE * categories.TECH2 } },
			{ UCBC, 'HaveLessThanUnitsInCategoryBeingBuilt', { 4, categories.MASSSTORAGE * categories.TECH3 } },
			{ EBC, 'GreaterThanEconTrend', { 1.0, 25.0 } },
			{ EBC, 'GreaterThanEconIncome', { 12.5, 240.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
}