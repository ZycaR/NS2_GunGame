--[[
 	GunGame NS2 Mod
	ZycaR (c) 2025
]]
  
-- Override to always use default exo variant
function ExoVariantMixin:GetExoVariant()
    return kDefaultExoVariant
end

function ExoVariantMixin:SetExoVariant(variant)
    self.exoVariant = kDefaultExoVariant
end

if Client then
    function ExoVariantMixin:OnExoSkinChanged()
        return false
    end
end