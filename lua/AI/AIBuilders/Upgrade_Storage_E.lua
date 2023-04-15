
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'

BuilderGroup {
	BuilderGroupName = 'Upgrade-Storage-E',
	BuildersType = 'PlatoonFormBuilder',

	Builder {
		BuilderName = 'Upgrade-Storage-ET1',
		PlatoonTemplate = 'Upgrade-EStorage-T1',
		Priority = 100,
		BuilderConditions = {
			{ EBC, 'GreaterThanEconTrend', { 1.0, 20.0 } },
			{ EBC, 'GreaterThanEconIncome', { 2.5, 1200.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
	Builder {
		BuilderName = 'Upgrade-Storage-ET2',
		PlatoonTemplate = 'Upgrade-EStorage-T2',
		Priority = 100,
		BuilderConditions = {
			{ EBC, 'GreaterThanEconTrend', { 1.0, 200.0 } },
			{ EBC, 'GreaterThanEconIncome', { 2.5, 2500.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
}