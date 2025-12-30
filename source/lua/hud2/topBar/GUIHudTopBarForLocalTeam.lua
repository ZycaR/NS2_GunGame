//
//	GunGame NS2 Mod
//	ZycaR (c) 2025
//
// override for original \lua\hud2\topBar\GUIHudTopBarForLocalTeam.lua

Script.Load("lua/GUI/layouts/GUIListLayout.lua")

---@class GUIHudTopBarForLocalTeam : GUIListLayout
local baseClass = GUIListLayout
class "GUIHudTopBarForLocalTeam" (baseClass)

GUIHudTopBarForLocalTeam:AddClassProperty("IsCommander", false)

function GUIHudTopBarForLocalTeam:Initialize(params, errorDepth)
    errorDepth = (errorDepth or 1) + 1
    PushParamChange(params, "spacing", 0)
    PushParamChange(params, "orientation", "vertical")
    baseClass.Initialize(self, params, errorDepth)
end
function GUIHudTopBarForLocalTeam:OnLocalPlayerChanged(forPlayer)
end
function GUIHudTopBarForLocalTeam:SetIsHiddenOverride(hidden)
end 