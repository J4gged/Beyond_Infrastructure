
local InfrastructureAddGlobalBaseTemplate = AddGlobalBaseTemplate
function AddGlobalBaseTemplate(aiBrain, locationType, baseBuilderName)
    SPEW('Beyond_Infrstructure : Injecting BuilderGroups')
    AddGlobalBuilderGroup(aiBrain, locationType, 'XShields')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-HC')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-EXMEX')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-PGen')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-Storage-E')
    AddGlobalBuilderGroup(aiBrain, locationType, 'Upgrade-Storage-M')
    InfrastructureAddGlobalBaseTemplate(aiBrain, locationType, baseBuilderName)
end
