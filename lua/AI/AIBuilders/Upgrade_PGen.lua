
local UCBC = '/lua/editor/UnitCountBuildConditions.lua'
local EBC = '/lua/editor/EconomyBuildConditions.lua'

BuilderGroup {
	BuilderGroupName = 'Upgrade-PGen',
	BuildersType = 'PlatoonFormBuilder',

	Builder {
		BuilderName = 'Upgrade-T2PGen',
		PlatoonTemplate = 'Upgrade-PGen-T2',
		Priority = 100,
		BuilderConditions = {
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 2.5, 250.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
	Builder {
		BuilderName = 'Upgrade-T3PGen',
		PlatoonTemplate = 'Upgrade-PGen-T3',
		Priority = 100,
		BuilderConditions = {
			{ EBC, 'GreaterThanEconTrend', { 0.0, 0.0 } },
			{ EBC, 'GreaterThanEconIncome', { 5.0, 500.0 } },
		},
		FormRadius = 10000,
		BuilderType = 'Any',
	},
}