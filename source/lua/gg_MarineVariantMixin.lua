--[[
 	GunGame NS2 Mod
	ZycaR (c) 2025
]]

function MarineVariantMixin:GetMarineType()
    return ConditionalValue(self.marineType == kMarineVariantsBaseType.female, kMarineVariantsBaseType.female, kMarineVariantsBaseType.male)
end

function MarineVariantMixin:GetMarineTypeString()
    return GetMarineTypeLabel( self:GetMarineType() )
end

function MarineVariantMixin:GetVariantModel()
    return MarineVariantMixin.kModelNames[ self:GetMarineTypeString() ][ kDefaultMarineVariant ]
end


