--[[
 	GunGame NS2 Mod
	ZycaR (c) 2025
]]

-- Override to always use default marine variant
function MarineVariantMixin:GetVariantModel()
    local type = ConditionalValue(self.marineType == kMarineVariantsBaseType.female, kMarineVariantsBaseType.female, kMarineVariantsBaseType.male)
    return MarineVariantMixin.kModelNames[ GetMarineTypeLabel( type ) ][ kDefaultMarineVariant ]
end

if Client then
    local ns2_OnMarineSkinChanged = MarineVariantMixin.OnMarineSkinChanged
    function MarineVariantMixin:OnMarineSkinChanged()
        if self.clientVariant == self.variant and not self.forceSkinsUpdate then
            return
        end
        if table.icontains( kRoboticMarineVariantIds, self.variant ) then
            return -- Prevent changing to robotic variants
        end
        ns2_OnMarineSkinChanged(self)
    end
end
