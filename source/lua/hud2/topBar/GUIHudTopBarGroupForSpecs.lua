//
//	GunGame NS2 Mod
//	ZycaR (c) 2025
//
// override for original \lua\hud2\topBar\GUIHudTopBarGroupForSpecs.lua

Script.Load("lua/GUI/layouts/GUIListLayout.lua")

---@class GUIHudTopBarGroupForSpecs : GUIListLayout
local baseClass = GUIListLayout
class "GUIHudTopBarGroupForSpecs" (baseClass)

function GUIHudTopBarGroupForSpecs:Initialize(params, errorDepth)
    errorDepth = (errorDepth or 1) + 1
    PushParamChange(params, "spacing", 0)
    PushParamChange(params, "orientation", "vertical")
    baseClass.Initialize(self, params, errorDepth)
end