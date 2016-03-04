//
//	GunGame NS2 Mod
//	ZycaR (c) 2016
//

Script.Load("lua/ModLoader.lua")
ModLoader.SetupFileHook( "lua/Player.lua", "lua/gg_PlayerNetVars.lua" , "post" )

if Server then
    Script.Load("lua/Server.lua")
elseif Client then
    Script.Load("lua/Client.lua")
elseif Predict then
    Script.Load("lua/Predict.lua")
end

Script.Load("lua/gg_GunGameTeam.lua")
Script.Load("lua/gg_NetworkMessages.lua")
Script.Load("lua/gg_SpawnLocation.lua")
Script.Load("lua/gg_Gamerules.lua")

// GunGame specific data
kMaxGunGameLevel = 1        // updated by size of tech rewards table

kGunGamePregameLength = 1
kGunGameTimeToReadyRoom = 3


// GunGame damage balances
kAxeDamage = 100            // 400%
kClawDamage = 100           // 200%
kPistolDamage = 25          // 100%
kPulseGrenadeDamage = 110   // 100%

kAxeDamageType = kDamageType.Normal
kClawDamageType = kDamageType.Normal
kPistolDamageType = kDamageType.Normal
kPulseGrenadeDamageType = kDamageType.Normal

ReplaceLocals(Pistol.GetClipSize, { kClipSize = 25 })   // 250%


// ColorSkinMixin Globals
//kTeam1_BaseColor = Color(0.2, 0.24, 0.45, 1)
kTeam1_BaseColor = Color(0.32, 0.36, 0.68, 1)
kTeam1_AccentColor = Color(0.0, 0.04, 0.28, 1)
kTeam1_TrimColor = Color(0.01, 0.05, 0.25, 1)


kTeam2_BaseColor = Color(0.68, 0.24, 0.2, 1)
kTeam2_AccentColor = Color(0.28, 0.04, 0.0, 1)
kTeam2_TrimColor = Color(0.25, 0.03, 0.0, 1)

kNeutral_BaseColor = Color( 0.65, 0.65, 0.65, 1 )
kNeutral_AccentColor = Color( 1, 1, 1, 1 )
kNeutral_TrimColor = Color( 0, 0, 0, 1 )

Script.Load("lua/ColoredSkinsMixin.lua")

// Keep this order of scripts for tech level system. They cannot be reordered,
// because depends on various values like calculated max GunGame level, etc.
Script.Load("lua/gg_TechLevelRewards.lua")
Script.Load("lua/gg_TechLevelHooks.lua")
Script.Load("lua/gg_TechLevelSystem.lua")

Script.Load("lua/gg_PlayerHooks.lua")
