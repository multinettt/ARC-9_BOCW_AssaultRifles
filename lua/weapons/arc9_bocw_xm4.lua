--=============================================================================
--   CALL OF DUTY: BLACK OPS COLD WAR
--   XM4
--   LUA - MAIN
--=============================================================================
--[[
--   SWEP INFORMATION:

--   BASE  : ARC-9
--   BUILD : v1.0
--   SR.NO : 133108


ooooooo  ooooo ooo        ooooo       .o   
 `8888    d8'  `88.       .888'     .d88   
   Y888..8P     888b     d'888    .d'888   
    `8888'      8 Y88. .P  888  .d'  888   
   .8PY888.     8  `888'   888  88ooo888oo 
  d8'  `888b    8    Y     888       888   
o888o  o88888o o8o        o888o     o888o  
                                                                       
                                       
]]

AddCSLuaFile()


SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "ARC9 - Black Ops Cold War"
SWEP.SubCategory = "Assault Rifles"
SWEP.AdminOnly = false

SWEP.PrintName = "XM4"
SWEP.TrueName = "XM177E1"
SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
     Manufacturer = "Colt Manufacturing Company",
     Calibre = "5.56x45mm",
     Mechanism = "Direct impingement",
     Country = "USA",
     Year = 1966
}

SWEP.Credits = {
     Author = "multinett",
     --Contact = "https://steamcommunity.com/id/multinett/"
}

SWEP.Description = [[Full-auto assault rifle. Reliable damage with improved fire rate. Fair weapon control when sustaining fire.

The XM4 is an assault rifle featured in Call of Duty: Black Ops Cold War.]]

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arc9/c_arc9_xm4_bocw.mdl"
SWEP.WorldModel = "models/weapons/arc9/c_arc9_xm4_bocw.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true

SWEP.DefaultBodygroups = "00000000000000000000"

SWEP.WorldModelOffset = {
    Pos = Vector(-5, 3, -6.2),
    Ang = Angle(-10, 0, 180),
    Scale = 1
}

SWEP.Crosshair = true
SWEP.CanBlindFire = false

SWEP.ViewModelFOVBase = 75

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 30 -- Damage done at point blank range
SWEP.DamageMin = 28 -- Damage done at maximum range

SWEP.DamageRand = 0.01 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 10 * 39.37 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 150 * 39.37 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 1200 * 39.37 -- In Hammer units, how far bullets can travel, period.

SWEP.Num = 1 -- Number of bullets to shoot
-- Bear in mind: Damage is divided by Num

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.

SWEP.DamageType = DMG_BULLET -- The damage type of the gun.
-- DMG_BLAST will create explosive effects and create AOE damage.
-- DMG_BURN will ignite the target.
-- DMG_AIRBOAT will damage Combine Hunter-Choppers.

SWEP.ArmorPiercing = 0.2 -- Between 0-1. A proportion of damage that is done as direct damage, ignoring protection.

SWEP.HeadshotDamage = 1.4
SWEP.ChestDamage = 1
SWEP.StomachDamage = 1
SWEP.ArmDamage = 1
SWEP.LegDamage = 1

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

SWEP.AlwaysPhysBullet = true

SWEP.PhysBulletMuzzleVelocity = 550 * 39.37
SWEP.PhysBulletDrag = 1
SWEP.PhysBulletGravity = 1
SWEP.PhysBulletDontInheritPlayerVelocity = false -- Set to true to disable "Browning Effect"

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerFinalMag = 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor = Color(255, 200, 200)
SWEP.TracerSize = 0.5

-------------------------- MAGAZINE

SWEP.Ammo = "smg1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC-9 supply crate.
SWEP.SecondarySupplyLimit = 2 -- Amount of reserve UBGL magazines you can take.

SWEP.ForceDefaultClip = nil -- Set to force a default amount of ammo this gun can have. Otherwise, this is controlled by console variables.

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater.

-------------------------- FIREMODES

SWEP.RPM = 722

-- Works different to ArcCW

-- -1: Automatic
-- 0: Safe. Don't use this for safety.
-- 1: Semi.
-- 2: Two-round burst.
-- 3: Three-round burst.
-- n: n-round burst.

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 3,
    },
}

-------------------------- RECOIL

SWEP.Recoil = 1
SWEP.RecoilSide = -0.3
SWEP.RecoilUp = 0.5

SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0

SWEP.RecoilDissipationRate = 40 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.1 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 0.75
SWEP.RecoilKick = 2

SWEP.Spread = math.rad(1.3 / 37.5)
SWEP.SpreadMultRecoil = 1.2

SWEP.SpreadMultSights = 0.1
SWEP.SpreadAddHipFire = math.rad(150 / 37.5)
SWEP.SpreadAddMove = math.rad(100 / 37.5)
SWEP.SpreadAddMidAir = 0.1
-- SWEP.SpreadAddShooting = math.rad(5 / 37.5) -- math.rad(108 / 37.5)

SWEP.RecoilPatternDrift = 8

SWEP.UseVisualRecoil = true

SWEP.VisualRecoil = 1
SWEP.VisualRecoilMultSights = 0.8

SWEP.VisualRecoilUp = 0
SWEP.VisualRecoilSide = 0
SWEP.VisualRecoilRoll = 0

SWEP.VisualRecoilCenter = Vector(0, 0, 0)

SWEP.VisualRecoilPunch = 2
SWEP.VisualRecoilPunchMultSights = 1


SWEP.NPCWeaponType = "weapon_smg"
SWEP.NPCWeight = 50

-------------------------- HANDLING

SWEP.FreeAimRadius = 0 -- In degrees, how much this gun can free aim in hip fire.
SWEP.Sway = 0.3 -- How much the gun sways.

SWEP.HoldBreathTime = 5 -- time that you can hold breath for
SWEP.RestoreBreathTime = 4

SWEP.FreeAimRadiusMultSights = 0.25

SWEP.SwayMultSights = 0.5

SWEP.AimDownSightsTime = 0.3 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.266 -- How long it takes to go from sprinting to being able to fire.

SWEP.ShootWhileSprint = false

SWEP.Speed = 1

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.375
SWEP.SpeedMultShooting = 0.8
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
--SWEP.SpeedMultBlindFire = 1

-------------------------- MELEE

SWEP.Bash = true
SWEP.PrimaryBash = false

SWEP.BashDamage = 50
SWEP.BashLungeRange = 64
SWEP.BashRange = 64
SWEP.PreBashTime = 0.18
SWEP.PostBashTime = 0.5
SWEP.BashDecal = "ManhackCut"

-------------------------- NPC

SWEP.NotForNPCs = false -- Won't be given to NPCs.
SWEP.NPCWeight = 100 -- How likely it is for an NPC to get this weapon as opposed to other weapons.

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.FirstShootSound = nil                      -- First fire
SWEP.ShootSound = "ARC9_BOCW.XM4_fire"                            -- Fire
--SWEP.ShootSoundIndoor = "ARC9_BOCW.rifle_fire_int_decay"                  -- Fire indoors
SWEP.ShootSoundSilenced = "ARC9_BOCW.XM4_fire_silenced"                    -- Fire silenced
SWEP.ShootSoundIndoorSilenced = nil             -- Fire indoors silenced
SWEP.FirstShootSoundSilenced = nil              -- First fire silenced
SWEP.FirstDistantShootSound = nil               -- First distant fire
SWEP.DistantShootSound = "ARC9_BOCW.Shared_Decay_Close_Pistol"                     -- Distant fire
SWEP.DistantShootSoundIndoor = nil              -- Distant fire indoors
SWEP.DistantShootSoundSilenced = "ARC9_BOCW.Shared_Null"            -- Distant fire silenced
SWEP.DistantShootSoundIndoorSilenced = nil      -- Distant fire indoors silenced
SWEP.FirstDistantShootSoundSilenced = nil       -- First distant fire silenced

SWEP.Silencer = false -- Silencer installed or not?

SWEP.DryFireSound = "weapons/arc9/bocw/dryfire_smg.wav"

SWEP.FiremodeSound = "arc9/firemode.wav"
SWEP.ToggleAttSound = "items/flashlight1.wav"

SWEP.EnterSightsSound = "ARC9_BOCW.Shared_ADS_In"
SWEP.ExitSightsSound = "ARC9_BOCW.Shared_ADS_Out"

SWEP.EnterBipodSound = "arc9/bipod_down.wav"
SWEP.ExitBipodSound = "arc9/bipod_up.wav"

SWEP.EnterUBGLSound = ""
SWEP.ExitUBGLSound = ""

SWEP.MalfunctionSound = ""

SWEP.MeleeHitSound = "ARC9_BOCW.Shared_Rifle_Melee_Hit"
SWEP.MeleeHitWallSound = "arc9/melee_hitworld.wav"
SWEP.MeleeSwingSound = "ARC9_BOCW.Shared_Rifle_Melee_Swing"

SWEP.BreathInSound = "arc9/breath_inhale.wav"
SWEP.BreathOutSound = "arc9/breath_exhale.wav"
SWEP.BreathRunOutSound = "arc9/breath_runout.wav"

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1" -- Used for some muzzle effects.
--SWEP.MuzzleEffect = "MuzzleFlash"

SWEP.ShellModel = "models/shells/shell_556.mdl"

SWEP.ShellSmoke = true

SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellPitch = 100 -- for shell sounds
SWEP.ShellSounds = ARC9.ShellSoundsTable

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = 3


--SWEP.DoFireAnimation = true

SWEP.NoViewBob = false

-------------------------- VISUALS

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "tag_bullet_animate",
    [2] = "tag_bullets",
}
SWEP.CaseBones = {}
-- Unlike BulletBones, these bones are determined by the missing bullet amount when reloading
SWEP.StripperClipBones = {}

-- The same as the bone versions but works via bodygroups.
-- Bodygroups work the same as in attachmentelements.
-- [0] = {ind = 0, bg = 1}
SWEP.BulletBGs = {}
SWEP.CaseBGs = {}
SWEP.StripperClipBGs = {}

SWEP.HideBones = {
    "tag_clip1",
    "tag_bullet_animate",
    "tag_bullets",
} -- bones to hide in third person and customize menu. {"list", "of", "bones"}
SWEP.ReloadHideBoneTables = { -- works only with TPIK
    [1] = {"tag_clip", "tag_bullet_animate", "tag_bullets"},
    [2] = {"tag_clip1"},
    -- [2] = {"list", "of", "bones"}
}

SWEP.PoseParameters = {} -- Poseparameters to manage. ["parameter"] = starting value.
-- Use animations to switch between different pose parameters.
-- When an animation is being played that switches between pose parameters, those parameters are all set to 0 for the animation.
-- There are also different default pose parameters:
-- firemode (Changes based on Fire Mode. Don't use this if you have animated firemode switching.)
-- sights (Changes based on sight delta)
-- sprint (Changes based on sprint delta)
-- empty (Changes based on whether a bullet is loaded)
-- ammo (Changes based on the ammo in the clip)

-------------------------- CAMO SYSTEM

SWEP.CustomCamoTexture = nil
SWEP.CustomCamoScale = 1
SWEP.CustomBlendFactor = nil

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.14, -6.5, 0.78),
    Ang = Angle(0, 0, 3.25),
    Magnification = 1,
    --AssociatedSlot = 0, -- Attachment slot to associate the sights with. Causes RT scopes to render.
    CrosshairInSights = false,
}

SWEP.HasSights = true

SWEP.ActivePos = Vector(-0.2, -1.5, 0.1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -1, -1)
SWEP.CrouchAng = Angle(0, 0, -15)

-- Position when sprinting or safe
SWEP.RestPos = Vector(0, -1.2, 0)
SWEP.RestAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(0, -1.2, 0)
SWEP.SprintAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, 0, -5)
SWEP.HolsterAng = Angle(0, -15, 25)

--SWEP.SprintMidPoint = {
--    Pos = Vector(4, 8, -4),
--    Ang = Angle(0, 5, -25)
--}

-- Position for customizing
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(15, 32, 4)
SWEP.CustomizeRotateAnchor = Vector(17, -1.88, -5)

SWEP.CustomizeSnapshotFOV = 75
SWEP.CustomizeSnapshotPos = Vector(0, 10, 0)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.BipodPos = Vector(0, 4, -4)
SWEP.BipodAng = Angle(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "smg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"
SWEP.HoldTypeNPC = nil

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
--SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- While in TPIK only
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------- ATTACHMENTS

-- Activate attachment elements by default.
SWEP.DefaultElements = {}

SWEP.AttachmentElements = {
    ["maggone"] = {
        Bodygroups = {
            {1, 1},
            {2, 1},
            {10, 1}
        }
    },
    ["magtapegone"] = {
        Bodygroups = {
            {10, 1}
        }
    },
    ["optic_attached"] = {
        Bodygroups = {
            {3, 1},
            {4, 1},
        }
    },
    ["bodymount_lasermixbody"] = {
        Bodygroups = {
            {13, 1},
            {14, 1},
        }
    },
    ["bodymount_flashlight"] = {
        Bodygroups = {
            {13, 1},
            {14, 2},
        }
    },
    ["stock_tac"] = {
        Bodygroups = {
            {6, 1},
            {7, 1},
            {9, 1},
        }
    },
    ["stock_dst"] = {
        Bodygroups = {
            {6, 1},
            {7, 2},
            {9, 1},
        }
    },
    ["stockgone"] = {
        Bodygroups = {
            {7, 3},
            {9, 1},
        }
    },
    ["slinggone"] = {
        Bodygroups = {
            {9, 1},
        }
    },
    ["handguard_quad"] = {
        Bodygroups = {
            {11, 1},
        }
    },
    ["handguard_quadgrip"] = {
        Bodygroups = {
            {12, 1},
        }
    },
    ["barrel_extended"] = {
        Bodygroups = {
            {5, 1}
        },
        AttPosMods = {
            [2] = {
                Pos = Vector(0.955, 0, 0),
            },
            [13] = {
                Pos = Vector(0.955, 0, 0),
            },
        },
    },
    ["barrel_cavalrylancer"] = {
        Bodygroups = {
            {5, 1}
        },
        AttPosMods = {
            [2] = {
                Pos = Vector(2.53, 0, 0),
            },
            [13] = {
                Pos = Vector(2.53, 0, 0),
            }
        },
    },
    ["barrel_reinforcedheavy"] = {
        Bodygroups = {
            {5, 1}
        },
        AttPosMods = {
            [2] = {
                Pos = Vector(4.46, 0, 0),
            },
            [13] = {
                Pos = Vector(3.6, 0, 0),
            }
        },
    },
    ["barrel_ranger"] = {
        Bodygroups = {
            {5, 1}
        },
        AttPosMods = {
            [2] = {
                Pos = Vector(4.82, 0, 0),
            },
            [13] = {
                Pos = Vector(3.6, 0, 0),
            }
        },
    },
    ["barrel_takedown"] = {
        Bodygroups = {
            {5, 1}
        },
        AttPosMods = {
            [2] = {
                Pos = Vector(4.82, 0, 0),
            },
            [13] = {
                Pos = Vector(3.6, 0, 0),
            }
        },
    },
    ["barrel_taskforce"] = {
        Bodygroups = {
            {5, 1}
        },
        AttPosMods = {
            [2] = {
                Pos = Vector(4.46, 0, 0),
            },
            [13] = {
                Pos = Vector(3.6, 0, 0),
            }
        },
    },
}

-- Use to override attachment table entry data.
SWEP.AttachmentSlotMods = {
    -- ["name"] = {
    --     [1] = {
    --     }
    -- }
}

-- Adjust the stats of specific attachments when applied to this gun
SWEP.AttachmentTableOverrides = {
    ["bocw_optic_visiontech2x"] = {
        VisualRecoil = 0.2
    },
    ["bocw_optic_anpvs4thermal"] = {
        VisualRecoil = 0.2
    },
    ["bocw_optic_axialarms3x"] = {
        VisualRecoil = 0.2
    },
    ["bocw_optic_hangmanrf"] = {
        VisualRecoil = 0.2
    },
    ["bocw_optic_pellingtonscope"] = {
        VisualRecoil = 0.2
    },
    ["bocw_optic_royalkross4x"] = {
        VisualRecoil = 0.2
    },
    ["bocw_optic_susatmultizoom"] = {
        VisualRecoil = 0.2
    },
    ["bocw_optic_ultrazoomcustom"] = {
        VisualRecoil = 0.2
    },
    ["bocw_optic_vulturecustomzoom"] = {
        VisualRecoil = 0.2
    },
}

SWEP.DuplicateAttachments = true

SWEP.Attachments = {
    {
        PrintName = "OPTIC", -- print name
        Bone = "tag_weapon",
        Pos = Vector(4, 0, 4.525),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-1, 0, 0.5),
        DefaultName = "Iron Sights",
        Category = {"optic_picatinny"},
        InstalledElements = {"optic_attached"},
    },
    {
        PrintName = "MUZZLE",
        Bone = "tag_muzzle",
        Pos = Vector(-0.012, 0, 0),
        Ang = Angle(0, 0, 0),
        Category = {"bocw_xm4_muzzle"},
        Installed = "bocw_xm4_muzzle_base",
    },
    {
        PrintName = "UNDRBARREL",
        Bone = "tag_weapon",
        Pos = Vector(-10.65, -4.42, 6.675),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(20.25, 4.5, -5),
        Category = {"bocw_underbarrel_west"},
        ExcludeElements = {"handguard_quad"},
    },
    {
        PrintName = "BODY",
        Bone = "tag_weapon",
        Pos = Vector(15.25, 0, 2.112),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, -0.3),
        Category = {"bocw_xm4_body"},
        InstalledElements = {"bodymount_lasermixbody"},
    },
    {
        Hidden = true,
        Bone = "tag_weapon",
        Pos = Vector(15.5, 0, 1.77),
        Ang = Angle(0, 0, 0),
        Category = {"bocw_xm4_body_flash"},
        InstalledElements = {"bodymount_flashlight"},
        MergeSlots = {4,5}
    },
    {
        PrintName = "BARREL",
        Bone = "tag_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
        Category = {"bocw_xm4_barrel"},
    },
    {
        PrintName = "HANDGUARD",
        Bone = "tag_barrel",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-4.6, 0, 0),
        Category = {"bocw_xm4_handguard"},
    },
    {
        PrintName = "BODY 4",
        Bone = "tag_weapon",
        Pos = Vector(10.6, -1, 3.4),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, -0.5),
        Category = {"bocw_xm4_body"},
        RequireElements = {"handguard_quad", "handguard_quadgrip"},
    },
    {
        PrintName = "STOCK",
        Bone = "tag_weapon",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-5, 0, 3.6),
        Category = {"bocw_xm4_stock"},
    },
    {
        PrintName = "MAGAZINE",
        Bone = "tag_clip",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0.25, 0, -2),
        DuplicateModels = {
            {
                Bone = "tag_clip1",
            }
        },
        Category = {"bocw_xm4_mag"},
    },
    {
        PrintName = "HANDLE",
        Bone = "tag_weapon",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-0.5, 0, -0.5),
        Category = {"bocw_xm4_wrap"},
    },
    {
        PrintName = "SLING",
        Bone = "tag_weapon",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(-3.1, -0.75, 4),
        ExcludeElements = {"stockgone", "stock_tac", "stock_dst", "handguard_quad"},
        Category = {"bocw_xm4_sling"},
    },
    {
        PrintName = "SOUND",
        Bone = "tag_weapon",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(22, 0, 3.5),
        Category = {"bocw_xm4_sound"},
    },
    {
        PrintName = "Cosmetic",
        DefaultCompactName = "CAMO",
        DefaultIcon = Material("arc9/def_att_icons/skin.png"),
        Bone = "tag_weapon",
        Pos = Vector(3, 0, -1),
        Ang = Angle(0, 0, 0),
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
}

SWEP.Hook_ModifyBodygroups = function(self, data)

    local vm = data.model
    local attached = data.elements


    local camo = 0
    if attached["universal_camo"] then
        camo = 1
    end

    vm:SetSkin(camo)

end

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    if elements["xm4_mag_ext"] then
        return anim .. "_ext"
    end

    if elements["xm4_mag_dual"] then
        return anim .. "_dual"
    end

    if elements["xm4_mag_mix"] then
        return anim .. "_mix"
    end

    if elements["optic_attached"] then
        return anim .. "_optic"
    end

end

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 10,
    },
    ["idle_empty"] = {
        Source = "idle_empty",
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.8,
    },
    ["holster"] = {
        Source = "holster",
        Time = 0.4,
    },
    ["ready"] = {
        Source = "ready",
        EventTable = {
            { s = "ARC9_BOCW.XM4_ready_start", t = 0 },
            { s = "ARC9_BOCW.XM4_boltback", t = 0.3 },
            { s = "ARC9_BOCW.XM4_boltrelease", t = 0.5 },
            { s = "ARC9_BOCW.XM4_ready_end", t = 0.9 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.65,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["1_ready"] = {
        Source = "ready_quick",
        EventTable = {
            { s = "ARC9_BOCW.XM4_ready_start", t = 0 },
            { s = "ARC9_BOCW.XM4_boltback", t = 0.1 },
            { s = "ARC9_BOCW.XM4_boltrelease", t = 0.4 },
            { s = "ARC9_BOCW.XM4_ready_end", t = 0.7 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.65,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["bash"] = {
        Source = "melee",
        Time = 1,
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.55,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.7,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["fire"] = {
        Source = {"fire"},
        EjectAt = 0,
    },
    ["fire_optic"] = {
        Source = "fire_optic",
        EjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        NoMagSwap = true,
        MinProgress = 0.58,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_magout", t = 0.65 },
            { s = "ARC9_BOCW.XM4_reload_magin", t = 1.1 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 2.15 },
            { hide = 2, t = 0 },
            { hide = 0, t = 0.2 },
            { hide = 1, t = 2.1 },
            { hide = 2, t = 2.3 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        MinProgress = 0.6,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_empty_magout", t = 0.3 },
            { s = "ARC9_BOCW.XM4_reload_empty_magdrop", t = 0.8 },
            { s = "ARC9_BOCW.XM4_reload_empty_magin", t = 1.1 },
            { s = "ARC9_BOCW.XM4_reload_empty_magintap", t = 1.8 },
            { s = "ARC9_BOCW.XM4_boltback", t = 2.2 },
            { s = "ARC9_BOCW.XM4_boltrelease", t = 2.5 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 2.8 },
            { hide = 2, t = 0 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["reload_ext"] = {
        Source = "reload_ext",
        MinProgress = 0.55,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_magout", t = 0.7 },
            { s = "ARC9_BOCW.XM4_reload_magin", t = 1.2 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 2.1 },
            { hide = 2, t = 0 },
            { hide = 0, t = 0.2 },
            { hide = 1, t = 2.1 },
            { hide = 2, t = 2.3 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["reload_empty_ext"] = {
        Source = "reload_ext_empty",
        MinProgress = 0.6,
        MagSwapTime = 1,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_empty_magout", t = 0.3 },
            { s = "ARC9_BOCW.XM4_reload_empty_magin", t = 1.1 },
            { s = "ARC9_BOCW.XM4_reload_empty_magintap", t = 1.8 },
            { s = "ARC9_BOCW.XM4_boltback", t = 2.2 },
            { s = "ARC9_BOCW.XM4_boltrelease", t = 2.5 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 2.8 },
            { hide = 2, t = 0 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["reload_dual"] = {
        Source = "reload_dual",
        MinProgress = 0.5,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_magout_dual", t = 0.35 },
            { s = "ARC9_BOCW.XM4_reload_magin_dual", t = 0.8 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 1.55 },
            { hide = 2, t = 0 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["1_reload_dual"] = {
        Source = "reload_dual2",
        MinProgress = 0.5,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_magout_dual", t = 0.35 },
            { s = "ARC9_BOCW.XM4_reload_magin_dual", t = 0.8 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 1.55 },
            { hide = 2, t = 0 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["reload_empty_dual"] = {
        Source = "reload_dual_empty",
        MinProgress = 0.5,
        MagSwapTime = 1.57,
        RareSourceChance = 0.5,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_magout_dual", t = 0.35 },
            { s = "ARC9_BOCW.XM4_reload_magin_dual", t = 0.8 },
            { s = "ARC9_BOCW.XM4_reload_fast_boltrelease", t = 1.55 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 1.9 },
            { hide = 2, t = 0 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["1_reload_empty_dual"] = {
        Source = "reload_dual2_empty",
        MinProgress = 0.5,
        MagSwapTime = 1.57,
        RareSourceChance = 0.5,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_magout_dual", t = 0.35 },
            { s = "ARC9_BOCW.XM4_reload_magin_dual", t = 0.8 },
            { s = "ARC9_BOCW.XM4_reload_fast_boltrelease", t = 1.5 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 1.9 },
            { hide = 2, t = 0 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["reload_mix"] = {
        Source = "reload_mix",
        MinProgress = 1.52,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_magout", t = 0.65 },
            { s = "ARC9_BOCW.XM4_reload_magin", t = 1.1 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 2.15 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["reload_empty_mix"] = {
        Source = "reload_mix_empty",
        MinProgress = 1.52,
        EventTable = {
            { s = "ARC9_BOCW.XM4_reload_empty_magout", t = 0.3 },
            { s = "ARC9_BOCW.XM4_reload_empty_magdrop", t = 0.8 },
            { s = "ARC9_BOCW.XM4_reload_empty_magin", t = 1.1 },
            { s = "ARC9_BOCW.XM4_reload_empty_magintap", t = 1.8 },
            { s = "ARC9_BOCW.XM4_boltback", t = 2.2 },
            { s = "ARC9_BOCW.XM4_boltrelease", t = 2.5 },
            { s = "ARC9_BOCW.XM4_reload_end", t = 2.8 },
            { hide = 2, t = 0 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["enter_sprint"] = {
        Source = "supersprint_in",
        Time = 0.75,
        NoStatAffectors = true
    },
    ["idle_sprint"] = {
        Source = "sprint_loop",
        Time = 3,
        NoStatAffectors = true
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
        Time = 0.4,
        NoStatAffectors = true
    },
    ["enter_inspect"] = {
        Source = "inspect",
        Time = 4.5,
        EventTable = {
            { s = "ARC9_BOCW.XM4_inspect1", t = 0 },
            { s = "ARC9_BOCW.XM4_inspect2", t = 3.2 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.92,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.97,
                lhik = 1,
                rhik = 0
            },
        },
    },
    --[[
    ["1_enter_inspect"] = {
        Source = "inspect_elektrik",
        EventTable = {
            { s = "ARC9_BOCW.XM4_inspect_giga1", t = 0 },
            { s = "ARC9_BOCW.XM4_inspect_giga2", t = 6.15 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.94,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.98,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ]]
    ["enter_inspect_ext"] = {
        Source = "inspect_extmag",
        Time = 4.5,
        EventTable = {
            { s = "ARC9_BOCW.XM4_inspect1", t = 0 },
            { s = "ARC9_BOCW.XM4_inspect2", t = 3.2 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.92,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.97,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["enter_inspect_mix"] = {
        Source = "inspect_mixmag",
        Time = 4.5,
        EventTable = {
            { s = "ARC9_BOCW.XM4_inspect1", t = 0 },
            { s = "ARC9_BOCW.XM4_inspect2", t = 3.2 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.92,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.97,
                lhik = 1,
                rhik = 0
            },
        },
    },
    ["enter_inspect_dual"] = {
        Source = "inspect_dualmag",
        EventTable = {
            { s = "ARC9_BOCW.XM4_inspect_dual1", t = 0 },
            { s = "ARC9_BOCW.XM4_inspect_dual2", t = 3.2 },
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.56,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.65,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.92,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.97,
                lhik = 1,
                rhik = 0
            },
        },
    },
}
