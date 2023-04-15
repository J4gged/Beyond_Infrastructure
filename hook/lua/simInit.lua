
local InfrastructureSetupSession = SetupSession
function SetupSession()
    InfrastructureSetupSession()
    import('/mods/Beyond_Infrastructure/lua/AI/AIBuilders/XShields.lua')
    import('/mods/Beyond_Infrastructure/lua/AI/AIBuilders/Upgrade_EXMEX.lua')
    import('/mods/Beyond_Infrastructure/lua/AI/AIBuilders/Upgrade_HC.lua')
    import('/mods/Beyond_Infrastructure/lua/AI/AIBuilders/Upgrade_PGen.lua')
    import('/mods/Beyond_Infrastructure/lua/AI/AIBuilders/Upgrade_Storage_E.lua')
    import('/mods/Beyond_Infrastructure/lua/AI/AIBuilders/Upgrade_Storage_M.lua')
end
