//
//	GunGame NS2 Mod
//	ZycaR (c) 2016
//
// override for original lua\GUIPlayerResource.lua

Script.Load("lua/gg_gui/GUIGunGameProgress.lua")

class 'GUIPlayerResource'


GUIPlayerResource.kPersonalResourceIcon = { Width = 0, Height = 0, X = 0, Y = 0 }
GUIPlayerResource.kPersonalResourceIcon.Width = 32
GUIPlayerResource.kPersonalResourceIcon.Height = 64

GUIPlayerResource.kPersonalResourceIconSize = Vector(GUIPlayerResource.kPersonalResourceIcon.Width, GUIPlayerResource.kPersonalResourceIcon.Height, 0)
GUIPlayerResource.kPersonalResourceIconSizeBig = Vector(GUIPlayerResource.kPersonalResourceIcon.Width, GUIPlayerResource.kPersonalResourceIcon.Height, 0) * 1.1

GUIPlayerResource.kPersonalIconPos = Vector(30,-4,0)
GUIPlayerResource.kPersonalTextPos = Vector(100,4,0)
GUIPlayerResource.kPresDescriptionPos = Vector(110,4,0)

GUIPlayerResource.kTeam1TextPos = Vector(20, 360, 0)
GUIPlayerResource.kTeam2TextPos = Vector(20, 540, 0)

GUIPlayerResource.kIconTextXOffset = -20

GUIPlayerResource.kFontSizePersonal = 30
GUIPlayerResource.kFontSizePersonalBig = 30

GUIPlayerResource.kPulseTime = 0.5

GUIPlayerResource.kFontSizePresDescription = 18
GUIPlayerResource.kFontSizeResGained = 25
GUIPlayerResource.kFontSizeTeam = 18
GUIPlayerResource.kTextFontName = Fonts.kAgencyFB_Small
GUIPlayerResource.kTresTextFontName = Fonts.kAgencyFB_Small
GUIPlayerResource.kResGainedFontName = Fonts.kAgencyFB_Small



function CreatePlayerResourceDisplay(scriptHandle, hudLayer, frame, style, teamNum)
    local result = GUIPlayerResource()
	
    result.GunGameProgress = GUIGunGameProgress()
    result.GunGameProgress:Initialize()

	// for NS2+ (and other mods) to supply expected child elements
	result.script = scriptHandle
    result.hudLayer = hudLayer
    result.frame = frame
	result:Initialize(style, teamNum)

    return result
end

// for NS2+ (and other mods) to supply expected child elements
function GUIPlayerResource:Initialize(style, teamNumber)
    self.style = style
    self.teamNumber = teamNumber
    self.scale = 1
    self.lastPersonalResources = 0
	
    self.background = self.script:CreateAnimatedGraphicItem()
    self.rtCount = GetGUIManager():CreateGraphicItem()
    self.personalIcon = self.script:CreateAnimatedGraphicItem()
    self.personalText = self.script:CreateAnimatedTextItem()
    self.pResDescription = self.script:CreateAnimatedTextItem()
    self.ResGainedText = self.script:CreateAnimatedTextItem()
    self.teamText = self.script:CreateAnimatedTextItem()
end

function GUIPlayerResource:Reset(scale)
    //self.GunGameProgress:Reset(scale)
end

function GUIPlayerResource:Update(deltaTime, parameters)
    self.GunGameProgress:Update(deltaTime)
end

function GUIPlayerResource:OnAnimationCompleted(animatedItem, animationName, itemHandle)
    //self.GunGameProgress:OnAnimationCompleted(animatedItem, animationName, itemHandle)
end

function GUIPlayerResource:Destroy()
    if self.GunGameProgress then
        self.GunGameProgress:Uninitialize()
        self.GunGameProgress = nil
    end
end


