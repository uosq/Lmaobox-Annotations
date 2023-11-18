---@meta

---@enum FButtons
FButtons = {
    IN_ATTACK = (1 << 0),
    IN_JUMP = (1 << 1),
    IN_DUCK = (1 << 2),
    IN_FORWARD = (1 << 3),
    IN_BACK = (1 << 4),
    IN_USE = (1 << 5),
    IN_CANCEL = (1 << 6),
    IN_LEFT = (1 << 7),
    IN_RIGHT = (1 << 8),
    IN_MOVELEFT = (1 << 9),
    IN_MOVERIGHT = (1 << 10),
    IN_ATTACK2 = (1 << 11),
    IN_RUN = (1 << 12),
    IN_RELOAD = (1 << 13),
    IN_ALT1 = (1 << 14),
    IN_ALT2 = (1 << 15),
    IN_SCORE = (1 << 16),    -- Used by client.dll for when scoreboard is held down
    IN_SPEED = (1 << 17),    -- Player is holding the speed key
    IN_WALK = (1 << 18),     -- Player holding walk key
    IN_ZOOM = (1 << 19),     -- Zoom key for HUD zoom
    IN_WEAPON1 = (1 << 20),  -- weapons these bits
    IN_WEAPON2 = (1 << 21),  -- weapons these bits
    IN_BULLRUSH = (1 << 22),
    IN_GRENADE1 = (1 << 23), -- grenade 1
    IN_GRENADE2 = (1 << 24), -- grenade 2
    IN_ATTACK3 = (1 << 25)
}

---@enum FContents
FContents = {
    CONTENTS_EMPTY = 0,    -- No contents
    CONTENTS_SOLID = 0x1,  -- an eye is never valid in a solid
    CONTENTS_WINDOW = 0x2, -- translucent, but not watery (glass)
    CONTENTS_AUX = 0x4,
    CONTENTS_GRATE = 0x8,  -- alpha-tested "grate" textures.  Bullets/sight pass through, but solids don't
    CONTENTS_SLIME = 0x10,
    CONTENTS_WATER = 0x20,
    CONTENTS_BLOCKLOS = 0x40, -- block AI line of sight
    CONTENTS_OPAQUE = 0x80,   -- things that cannot be seen through (may be non-solid though)
    LAST_VISIBLE_CONTENTS = 0x80,
    ALL_VISIBLE_CONTENTS = 0xFF,
    CONTENTS_TESTFOGVOLUME = 0x100,
    CONTENTS_UNUSED = 0x200,
    CONTENTS_UNUSED6 = 0x400,
    CONTENTS_TEAM1 = 0x800,                 -- per team contents used to differentiate collisions
    CONTENTS_TEAM2 = 0x1000,                -- between players and objects on different teams
    CONTENTS_IGNORE_NODRAW_OPAQUE = 0x2000, -- ignore CONTENTS_OPAQUE on surfaces that have SURF_NODRAW
    CONTENTS_MOVEABLE = 0x4000,             -- hits entities which are MOVETYPE_PUSH (doors, plats, etc.)
    CONTENTS_AREAPORTAL = 0x8000,
    CONTENTS_PLAYERCLIP = 0x10000,
    CONTENTS_MONSTERCLIP = 0x20000,
    CONTENTS_CURRENT_0 = 0x40000,
    CONTENTS_CURRENT_90 = 0x80000,
    CONTENTS_CURRENT_180 = 0x100000,
    CONTENTS_CURRENT_270 = 0x200000,
    CONTENTS_CURRENT_UP = 0x400000,
    CONTENTS_CURRENT_DOWN = 0x800000,
    CONTENTS_ORIGIN = 0x1000000,
    CONTENTS_MONSTER = 0x2000000,
    CONTENTS_DEBRIS = 0x4000000,
    CONTENTS_DETAIL = 0x8000000,
    CONTENTS_TRANSLUCENT = 0x10000000,
    CONTENTS_LADDER = 0x20000000,
    CONTENTS_HITBOX = 0x40000000 -- use accurate hitboxes on trace
}

---@enum FDmgType
FDmgType = {
    DMG_GENERIC = 0,                       -- generic ,damage -- do not use if you want players to flinch and bleed!
    DMG_CRUSH = (1 << 0),                  -- crushed by falling or moving object.
    DMG_BULLET = (1 << 1),                 -- shot
    DMG_SLASH = (1 << 2),                  -- cut, clawed, stabbed
    DMG_BURN = (1 << 3),                   -- heat burned
    DMG_VEHICLE = (1 << 4),                -- hit by a vehicle
    DMG_FALL = (1 << 5),                   -- fell too far
    DMG_BLAST = (1 << 6),                  -- explosive blast damage
    DMG_CLUB = (1 << 7),                   -- crowbar, punch, headbutt
    DMG_SHOCK = (1 << 8),                  -- electric shock
    DMG_SONIC = (1 << 9),                  -- sound pulse shockwave
    DMG_ENERGYBEAM = (1 << 10),            -- laser or other high energy beam
    DMG_PREVENT_PHYSICS_FORCE = (1 << 11), -- Prevent a physics force
    DMG_NEVERGIB = (1 << 12),              -- with this bit OR'd in, no damage type will be able to gib victims upon death
    DMG_ALWAYSGIB = (1 << 13),             -- with this bit OR'd in, any damage type can be made to gib victims upon death.
    DMG_DROWN = (1 << 14),                 -- Drowning
    DMG_PARALYZE = (1 << 15),              -- slows affected creature down
    DMG_NERVEGAS = (1 << 16),              -- nerve toxins, very bad
    DMG_POISON = (1 << 17),                -- blood poisoning - heals over time like drowning damage
    DMG_RADIATION = (1 << 18),             -- radiation exposure
    DMG_DROWNRECOVER = (1 << 19),          -- drowning recovery
    DMG_ACID = (1 << 20),                  -- toxic chemicals or acid burns
    DMG_SLOWBURN = (1 << 21),              -- in an oven
    DMG_REMOVENORAGDOLL = (1 << 22),       -- with this bit OR'd in, no ragdoll will be created, and the target will be quietly removed.
    DMG_PHYSGUN = (1 << 23),               -- Hit by manipulator. Usually doesn't do any damage.
    DMG_PLASMA = (1 << 24),                -- Shot by Cremator
    DMG_AIRBOAT = (1 << 25),               -- Hit by the airboat's gun
    DMG_DISSOLVE = (1 << 26),              -- Dissolving!
    DMG_BLAST_SURFACE = (1 << 27),         -- A blast on the surface of water that cannot harm things underwater
    DMG_DIRECT = (1 << 28),
    DMG_BUCKSHOT = (1 << 29)               -- not quite a bullet. Little, rounder, different.
}

---@enum FPlayer
FPlayer = {
    FL_ONGROUND = 1,
    FL_DUCKING = 2,
    FL_ANIMDUCKING = 4,
    FL_WATERJUMP = 8,
    PLAYER_FLAG_BITS = 11,
    FL_ONTRAIN = 16,
    FL_INRAIN = 32,
    FL_FROZEN = 64,
    FL_ATCONTROLS = 128,
    FL_CLIENT = 256,
    FL_FAKECLIENT = 512,
    FL_INWATER = 1024,
    FL_FLY = 2048,
    FL_SWIM = 4096,
    FL_CONVEYOR = 8192,
    FL_NPC = 16384,
    FL_GODMODE = 32768,
    FL_NOTARGET = 65536,
    FL_AIMTARGET = 131072,
    FL_PARTIALGROUND = 262144,
    FL_STATICPROP = 524288,
    FL_GRAPHED = 1048576,
    FL_GRENADE = 2097152,
    FL_STEPMOVEMENT = 4194304,
    FL_DONTTOUCH = 8388608,
    FL_BASEVELOCITY = 16777216,
    FL_WORLDBRUSH = 33554432,
    FL_OBJECT = 67108864,
    FL_KILLME = 134217728,
    FL_ONFIRE = 268435456,
    FL_DISSOLVING = 536870912,
    FL_TRANSRAGDOLL = 1073741824,
    FL_UNBLOCKABLE_BY_PLAYER = 2147483648
}

---@enum FFileAttribute
FFileAttribute = {
    FILE_ATTRIBUTE_READONLY = 0x1,
    FILE_ATTRIBUTE_HIDDEN = 0x2,
    FILE_ATTRIBUTE_SYSTEM = 0x4,
    FILE_ATTRIBUTE_DIRECTORY = 0x10,
    FILE_ATTRIBUTE_ARCHIVE = 0x20,
    FILE_ATTRIBUTE_DEVICE = 0x40,
    FILE_ATTRIBUTE_NORMAL = 0x80,
    FILE_ATTRIBUTE_TEMPORARY = 0x100,
    FILE_ATTRIBUTE_SPARSE_FILE = 0x200,
    FILE_ATTRIBUTE_REPARSE_POINT = 0x400,
    FILE_ATTRIBUTE_COMPRESSED = 0x800,
    FILE_ATTRIBUTE_OFFLINE = 0x1000,
    FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x2000,
    FILE_ATTRIBUTE_ENCRYPTED = 0x4000,
    FILE_ATTRIBUTE_INTEGRITY_STREAM = 0x8000,
    FILE_ATTRIBUTE_VIRTUAL = 0x10000,
    FILE_ATTRIBUTE_NO_SCRUB_DATA = 0x20000,
    FILE_ATTRIBUTE_RECALL_ON_OPEN = 0x40000,
    FILE_ATTRIBUTE_PINNED = 0x80000,
    FILE_ATTRIBUTE_UNPINNED = 0x100000,
    FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS = 0x400000,
    INVALID_FILE_ATTRIBUTES = 0xFFFFFFFF
}

---@enum FFontFlag
FFontFlag = {
    FONTFLAG_NONE = 0,
    FONTFLAG_ITALIC = 1,
    FONTFLAG_UNDERLINE = 2,
    FONTFLAG_STRIKEOUT = 4,
    FONTFLAG_SYMBOL = 8,
    FONTFLAG_ANTIALIAS = 16,
    FONTFLAG_GAUSSIANBLUR = 32,
    FONTFLAG_ROTARY = 64,
    FONTFLAG_DROPSHADOW = 128,
    FONTFLAG_ADDITIVE = 256,
    FONTFLAG_OUTLINE = 512,
    FONTFLAG_CUSTOM = 1024,
    FONTFLAG_BITMAP = 2048
}

---@enum FMaterialFlag
FMaterialFlag = {
    MATERIAL_VAR_DEBUG = (1 << 0),
    MATERIAL_VAR_NO_DEBUG_OVERRIDE = (1 << 1),
    MATERIAL_VAR_NO_DRAW = (1 << 2),
    MATERIAL_VAR_USE_IN_FILLRATE_MODE = (1 << 3),
    MATERIAL_VAR_VERTEXCOLOR = (1 << 4),
    MATERIAL_VAR_VERTEXALPHA = (1 << 5),
    MATERIAL_VAR_SELFILLUM = (1 << 6),
    MATERIAL_VAR_ADDITIVE = (1 << 7),
    MATERIAL_VAR_ALPHATEST = (1 << 8),
    MATERIAL_VAR_ZNEARER = (1 << 10),
    MATERIAL_VAR_MODEL = (1 << 11),
    MATERIAL_VAR_FLAT = (1 << 12),
    MATERIAL_VAR_NOCULL = (1 << 13),
    MATERIAL_VAR_NOFOG = (1 << 14),
    MATERIAL_VAR_IGNOREZ = (1 << 15),
    MATERIAL_VAR_DECAL = (1 << 16),
    MATERIAL_VAR_ENVMAPSPHERE = (1 << 17),
    MATERIAL_VAR_ENVMAPCAMERASPACE = (1 << 19),
    MATERIAL_VAR_BASEALPHAENVMAPMASK = (1 << 20),
    MATERIAL_VAR_TRANSLUCENT = (1 << 21),
    MATERIAL_VAR_NORMALMAPALPHAENVMAPMASK = (1 << 22),
    MATERIAL_VAR_NEEDS_SOFTWARE_SKINNING = (1 << 23),
    MATERIAL_VAR_OPAQUETEXTURE = (1 << 24),
    MATERIAL_VAR_ENVMAPMODE = (1 << 25),
    MATERIAL_VAR_SUPPRESS_DECALS = (1 << 26),
    MATERIAL_VAR_HALFLAMBERT = (1 << 27),
    MATERIAL_VAR_WIREFRAME = (1 << 28),
    MATERIAL_VAR_ALLOWALPHATOCOVERAGE = (1 << 29),
    MATERIAL_VAR_ALPHA_MODIFIED_BY_PROXY = (1 << 30),
    MATERIAL_VAR_VERTEXFOG = (1 << 31)
}

-- Standard Enum

---@enum EUserMessage
EUserMessage = {
    Geiger = 0,
    Train = 1,
    HudText = 2,
    SayText = 3,
    SayText2 = 4,
    TextMsg = 5,
    ResetHUD = 6,
    GameTitle = 7,
    ItemPickup = 8,
    ShowMenu = 9,
    Shake = 10,
    Fade = 11,
    VGUIMenu = 12,
    Rumble = 13,
    CloseCaption = 14,
    SendAudio = 15,
    VoiceMask = 16,
    RequestState = 17,
    Damage = 18,
    HintText = 19,
    KeyHintText = 20,
    HudMsg = 21,
    AmmoDenied = 22,
    AchievementEvent = 23,
    UpdateRadar = 24,
    VoiceSubtitle = 25,
    HudNotify = 26,
    HudNotifyCustom = 27,
    PlayerStatsUpdate = 28,
    MapStatsUpdate = 29,
    PlayerIgnited = 30,
    PlayerIgnitedInv = 31,
    HudArenaNotify = 32,
    UpdateAchievement = 33,
    TrainingMsg = 34,
    TrainingObjective = 35,
    DamageDodged = 36,
    PlayerJarated = 37,
    PlayerExtinguished = 38,
    PlayerJaratedFade = 39,
    PlayerShieldBlocked = 40,
    BreakModel = 41,
    CheapBreakModel = 42,
    BreakModel_Pumpkin = 43,
    BreakModelRocketDud = 44,
    CallVoteFailed = 45,
    VoteStart = 46,
    VotePass = 47,
    VoteFailed = 48,
    VoteSetup = 49,
    PlayerBonusPoints = 50,
    RDTeamPointsChanged = 51,
    SpawnFlyingBird = 52,
    PlayerGodRayEffect = 53,
    PlayerTeleportHomeEffect = 54,
    MVMStatsReset = 55,
    MVMPlayerEvent = 56,
    MVMResetPlayerStats = 57,
    MVMWaveFailed = 58,
    MVMAnnouncement = 59,
    MVMPlayerUpgradedEvent = 60,
    MVMVictory = 61,
    MVMWaveChange = 62,
    MVMLocalPlayerUpgradesClear = 63,
    MVMLocalPlayerUpgradesValue = 64,
    MVMResetPlayerWaveSpendingStats = 65,
    MVMLocalPlayerWaveSpendingValue = 66,
    MVMResetPlayerUpgradeSpending = 67,
    MVMServerKickTimeUpdate = 68,
    PlayerLoadoutUpdated = 69,
    PlayerTauntSoundLoopStart = 70,
    PlayerTauntSoundLoopEnd = 71,
    ForcePlayerViewAngles = 72,
    BonusDucks = 73,
    EOTLDuckEvent = 74,
    PlayerPickupWeapon = 75,
    QuestObjectiveCompleted = 76,
    SPHapWeapEvent = 77,
    HapDmg = 78,
    HapPunch = 79,
    HapSetDrag = 80,
    HapSetConst = 81,
    HapMeleeContact = 82
}

---@enum EButtonCode
EButtonCode = {
    BUTTON_CODE_INVALID = -1,
    BUTTON_CODE_NONE = 0,
    KEY_FIRST = 0,
    KEY_NONE = KEY_FIRST,
    KEY_0 = 1,
    KEY_1 = 2,
    KEY_2 = 3,
    KEY_3 = 4,
    KEY_4 = 5,
    KEY_5 = 6,
    KEY_6 = 7,
    KEY_7 = 8,
    KEY_8 = 9,
    KEY_9 = 10,
    KEY_A = 11,
    KEY_B = 12,
    KEY_C = 13,
    KEY_D = 14,
    KEY_E = 15,
    KEY_F = 16,
    KEY_G = 17,
    KEY_H = 18,
    KEY_I = 19,
    KEY_J = 20,
    KEY_K = 21,
    KEY_L = 22,
    KEY_M = 23,
    KEY_N = 24,
    KEY_O = 25,
    KEY_P = 26,
    KEY_Q = 27,
    KEY_R = 28,
    KEY_S = 29,
    KEY_T = 30,
    KEY_U = 31,
    KEY_V = 32,
    KEY_W = 33,
    KEY_X = 34,
    KEY_Y = 35,
    KEY_Z = 36,
    KEY_PAD_0 = 37,
    KEY_PAD_1 = 38,
    KEY_PAD_2 = 39,
    KEY_PAD_3 = 40,
    KEY_PAD_4 = 41,
    KEY_PAD_5 = 42,
    KEY_PAD_6 = 43,
    KEY_PAD_7 = 44,
    KEY_PAD_8 = 45,
    KEY_PAD_9 = 46,
    KEY_PAD_DIVIDE = 47,
    KEY_PAD_MULTIPLY = 48,
    KEY_PAD_MINUS = 49,
    KEY_PAD_PLUS = 50,
    KEY_PAD_ENTER = 51,
    KEY_PAD_DECIMAL = 52,
    KEY_LBRACKET = 53,
    KEY_RBRACKET = 54,
    KEY_SEMICOLON = 55,
    KEY_APOSTROPHE = 56,
    KEY_BACKQUOTE = 57,
    KEY_COMMA = 58,
    KEY_PERIOD = 59,
    KEY_SLASH = 60,
    KEY_BACKSLASH = 61,
    KEY_MINUS = 62,
    KEY_EQUAL = 63,
    KEY_ENTER = 64,
    KEY_SPACE = 65,
    KEY_BACKSPACE = 66,
    KEY_TAB = 67,
    KEY_CAPSLOCK = 68,
    KEY_NUMLOCK = 69,
    KEY_ESCAPE = 70,
    KEY_SCROLLLOCK = 71,
    KEY_INSERT = 72,
    KEY_DELETE = 73,
    KEY_HOME = 74,
    KEY_END = 75,
    KEY_PAGEUP = 76,
    KEY_PAGEDOWN = 77,
    KEY_BREAK = 78,
    KEY_LSHIFT = 79,
    KEY_RSHIFT = 80,
    KEY_LALT = 81,
    KEY_RALT = 82,
    KEY_LCONTROL = 83,
    KEY_RCONTROL = 84,
    KEY_LWIN = 85,
    KEY_RWIN = 86,
    KEY_APP = 87,
    KEY_UP = 88,
    KEY_LEFT = 89,
    KEY_DOWN = 90,
    KEY_RIGHT = 91,
    KEY_F1 = 92,
    KEY_F2 = 93,
    KEY_F3 = 94,
    KEY_F4 = 95,
    KEY_F5 = 96,
    KEY_F6 = 97,
    KEY_F7 = 98,
    KEY_F8 = 99,
    KEY_F9 = 100,
    KEY_F10 = 101,
    KEY_F11 = 102,
    KEY_F12 = 103,
    KEY_CAPSLOCKTOGGLE = 104,
    KEY_NUMLOCKTOGGLE = 105,
    KEY_SCROLLLOCKTOGGLE = 106,
    KEY_LAST = KEY_SCROLLLOCKTOGGLE,
    KEY_COUNT = KEY_LAST - KEY_FIRST + 1,
    MOUSE_FIRST = KEY_LAST + 1,
    MOUSE_LEFT = MOUSE_FIRST,
    MOUSE_RIGHT = MOUSE_FIRST + 1,
    MOUSE_MIDDLE = MOUSE_FIRST + 2,
    MOUSE_4 = MOUSE_FIRST + 3,
    MOUSE_5 = MOUSE_FIRST + 4,
    MOUSE_WHEEL_UP = MOUSE_FIRST + 5,
    MOUSE_WHEEL_DOWN = MOUSE_FIRST + 6
}

---@enum ETFCOND
ETFCOND = {
    TF_COND_AIMING = 0,
    TF_COND_ZOOMED = 1,
    TF_COND_DISGUISING = 2,
    TF_COND_DISGUISED = 3,
    TF_COND_STEALTHED = 4,
    TF_COND_INVULNERABLE = 5,
    TF_COND_TELEPORTED = 6,
    TF_COND_TAUNTING = 7,
    TF_COND_INVULNERABLE_WEARINGOFF = 8,
    TF_COND_STEALTHED_BLINK = 9,
    TF_COND_SELECTED_TO_TELEPORT = 10,
    TF_COND_CRITBOOSTED = 11,
    TF_COND_TMPDAMAGEBONUS = 12,
    TF_COND_FEIGN_DEATH = 13,
    TF_COND_PHASE = 14,
    TF_COND_STUNNED = 15,
    TF_COND_OFFENSEBUFF = 16,
    TF_COND_SHIELD_CHARGE = 17,
    TF_COND_DEMO_BUFF = 18,
    TF_COND_ENERGY_BUFF = 19,
    TF_COND_RADIUSHEAL = 20,
    TF_COND_HEALTH_BUFF = 21,
    TF_COND_BURNING = 22,
    TF_COND_HEALTH_OVERHEALED = 23,
    TF_COND_URINE = 24,
    TF_COND_BLEEDING = 25,
    TF_COND_DEFENSEBUFF = 26,
    TF_COND_MAD_MILK = 27,
    TF_COND_MEGAHEAL = 28,
    TF_COND_REGENONDAMAGEBUFF = 29,
    TF_COND_MARKEDFORDEATH = 30,
    TF_COND_NOHEALINGDAMAGEBUFF = 31,
    TF_COND_SPEED_BOOST = 32,
    TF_COND_CRITBOOSTED_PUMPKIN = 33,
    TF_COND_CRITBOOSTED_USER_BUFF = 34,
    TF_COND_CRITBOOSTED_DEMO_CHARGE = 35,
    TF_COND_SODAPOPPER_HYPE = 36,
    TF_COND_CRITBOOSTED_FIRST_BLOOD = 37,
    TF_COND_CRITBOOSTED_BONUS_TIME = 38,
    TF_COND_CRITBOOSTED_CTF_CAPTURE = 39,
    TF_COND_CRITBOOSTED_ON_KILL = 40,
    TF_COND_CANNOT_SWITCH_FROM_MELEE = 41,
    TF_COND_DEFENSEBUFF_NO_CRIT_BLOCK = 42,
    TF_COND_REPROGRAMMED = 43,
    TF_COND_CRITBOOSTED_RAGE_BUFF = 44,
    TF_COND_DEFENSEBUFF_HIGH = 45,
    TF_COND_SNIPERCHARGE_RAGE_BUFF = 46,
    TF_COND_DISGUISE_WEARINGOFF = 47,
    TF_COND_MARKEDFORDEATH_SILENT = 48,
    TF_COND_DISGUISED_AS_DISPENSER = 49,
    TF_COND_SAPPED = 50,
    TF_COND_INVULNERABLE_HIDE_UNLESS_DAMAGED = 51,
    TF_COND_INVULNERABLE_USER_BUFF = 52,
    TF_COND_HALLOWEEN_BOMB_HEAD = 53,
    TF_COND_HALLOWEEN_THRILLER = 54,
    TF_COND_RADIUSHEAL_ON_DAMAGE = 55,
    TF_COND_CRITBOOSTED_CARD_EFFECT = 56,
    TF_COND_INVULNERABLE_CARD_EFFECT = 57,
    TF_COND_MEDIGUN_UBER_BULLET_RESIST = 58,
    TF_COND_MEDIGUN_UBER_BLAST_RESIST = 59,
    TF_COND_MEDIGUN_UBER_FIRE_RESIST = 60,
    TF_COND_MEDIGUN_SMALL_BULLET_RESIST = 61,
    TF_COND_MEDIGUN_SMALL_BLAST_RESIST = 62,
    TF_COND_MEDIGUN_SMALL_FIRE_RESIST = 63,
    TF_COND_STEALTHED_USER_BUFF = 64,
    TF_COND_MEDIGUN_DEBUFF = 65,
    TF_COND_STEALTHED_USER_BUFF_FADING = 66,
    TF_COND_BULLET_IMMUNE = 67,
    TF_COND_BLAST_IMMUNE = 68,
    TF_COND_FIRE_IMMUNE = 69,
    TF_COND_PREVENT_DEATH = 70,
    TF_COND_MVM_BOT_STUN_RADIOWAVE = 71,
    TF_COND_HALLOWEEN_SPEED_BOOST = 72,
    TF_COND_HALLOWEEN_QUICK_HEAL = 73,
    TF_COND_HALLOWEEN_GIANT = 74,
    TF_COND_HALLOWEEN_TINY = 75,
    TF_COND_HALLOWEEN_IN_HELL = 76,
    TF_COND_HALLOWEEN_GHOST_MODE = 77,
    TF_COND_MINICRITBOOSTED_ON_KILL = 78,
    TF_COND_OBSCURED_SMOKE = 79,
    TF_COND_PARACHUTE_ACTIVE = 80,
    TF_COND_BLASTJUMPING = 81,
    TF_COND_HALLOWEEN_KART = 82,
    TF_COND_HALLOWEEN_KART_DASH = 83,
    TF_COND_BALLOON_HEAD = 84,
    TF_COND_MELEE_ONLY = 85,
    TF_COND_SWIMMING_CURSE = 86,
    TF_COND_FREEZE_INPUT = 87,
    TF_COND_HALLOWEEN_KART_CAGE = 88,
    TF_COND_DONOTUSE_0 = 89,
    TF_COND_RUNE_STRENGTH = 90,
    TF_COND_RUNE_HASTE = 91,
    TF_COND_RUNE_REGEN = 92,
    TF_COND_RUNE_RESIST = 93,
    TF_COND_RUNE_VAMPIRE = 94,
    TF_COND_RUNE_REFLECT = 95,
    TF_COND_RUNE_PRECISION = 96,
    TF_COND_RUNE_AGILITY = 97,
    TF_COND_GRAPPLINGHOOK = 98,
    TF_COND_GRAPPLINGHOOK_SAFEFALL = 99,
    TF_COND_GRAPPLINGHOOK_LATCHED = 100,
    TF_COND_GRAPPLINGHOOK_BLEEDING = 101,
    TF_COND_AFTERBURN_IMMUNE = 102,
    TF_COND_RUNE_KNOCKOUT = 103,
    TF_COND_RUNE_IMBALANCE = 104,
    TF_COND_CRITBOOSTED_RUNE_TEMP = 105,
    TF_COND_PASSTIME_INTERCEPTION = 106,
    TF_COND_SWIMMING_NO_EFFECTS = 107,
    TF_COND_PURGATORY = 108,
    TF_COND_RUNE_KING = 109,
    TF_COND_RUNE_PLAGUE = 110,
    TF_COND_RUNE_SUPERNOVA = 111,
    TF_COND_PLAGUE = 112,
    TF_COND_KING_BUFFED = 113,
    TF_COND_TEAM_GLOWS = 114,
    TF_COND_KNOCKED_INTO_AIR = 115,
    TF_COND_COMPETITIVE_WINNER = 116,
    TF_COND_COMPETITIVE_LOSER = 117,
    TF_COND_HEALING_DEBUFF = 118,
    TF_COND_PASSTIME_PENALTY_DEBUFF = 119,
    TF_COND_GRAPPLED_TO_PLAYER = 120,
    TF_COND_GRAPPLED_BY_PLAYER = 121,
    TF_COND_PARACHUTE_DEPLOYED = 122,
    TF_COND_GAS = 123,
    TF_COND_BURNING_PYRO = 124,
    TF_COND_ROCKETPACK = 125,
    TF_COND_LOST_FOOTING = 126,
    TF_COND_AIR_CURRENT = 127,
    TF_COND_HALLOWEEN_HELL_HEAL = 128,
    TF_COND_POWERUPMODE_DOMINANT = 129,
    TF_COND_INVALID = -1
}

---@enum ELifeState
ELifeState = {
    LIFE_ALIVE = 0, -- alive
    LIFE_DYING = 1, -- playing death animation or still falling off of a ledge waiting to hit ground
    LIFE_DEAD = 2,  -- dead. lying still.
    LIFE_RESPAWNABLE = 3,
    LIFE_DISCARDAIM_BODY = 4
}

---@enum EWeaponID
EWeaponID = {
    TF_WEAPON_NONE = 0,
    TF_WEAPON_BAT = 1,
    TF_WEAPON_BAT_WOOD = 2,
    TF_WEAPON_BOTTLE = 3,
    TF_WEAPON_FIREAXE = 4,
    TF_WEAPON_CLUB = 5,
    TF_WEAPON_CROWBAR = 6,
    TF_WEAPON_KNIFE = 7,
    TF_WEAPON_FISTS = 8,
    TF_WEAPON_SHOVEL = 9,
    TF_WEAPON_WRENCH = 10,
    TF_WEAPON_BONESAW = 11,
    TF_WEAPON_SHOTGUN_PRIMARY = 12,
    TF_WEAPON_SHOTGUN_SOLDIER = 13,
    TF_WEAPON_SHOTGUN_HWG = 14,
    TF_WEAPON_SHOTGUN_PYRO = 15,
    TF_WEAPON_SCATTERGUN = 16,
    TF_WEAPON_SNIPERRIFLE = 17,
    TF_WEAPON_MINIGUN = 18,
    TF_WEAPON_SMG = 19,
    TF_WEAPON_SYRINGEGUN_MEDIC = 20,
    TF_WEAPON_TRANQ = 21,
    TF_WEAPON_ROCKETLAUNCHER = 22,
    TF_WEAPON_GRENADELAUNCHER = 23,
    TF_WEAPON_PIPEBOMBLAUNCHER = 24,
    TF_WEAPON_FLAMETHROWER = 25,
    TF_WEAPON_GRENADE_NORMAL = 26,
    TF_WEAPON_GRENADE_CONCUSSION = 27,
    TF_WEAPON_GRENADE_NAIL = 28,
    TF_WEAPON_GRENADE_MIRV = 29,
    TF_WEAPON_GRENADE_MIRV_DEMOMAN = 30,
    TF_WEAPON_GRENADE_NAPALM = 31,
    TF_WEAPON_GRENADE_GAS = 32,
    TF_WEAPON_GRENADE_EMP = 33,
    TF_WEAPON_GRENADE_CALTROP = 34,
    TF_WEAPON_GRENADE_PIPEBOMB = 35,
    TF_WEAPON_GRENADE_SMOKE_BOMB = 36,
    TF_WEAPON_GRENADE_HEAL = 37,
    TF_WEAPON_GRENADE_STUNBALL = 38,
    TF_WEAPON_GRENADE_JAR = 39,
    TF_WEAPON_GRENADE_JAR_MILK = 40,
    TF_WEAPON_PISTOL = 41,
    TF_WEAPON_PISTOL_SCOUT = 42,
    TF_WEAPON_REVOLVER = 43,
    TF_WEAPON_NAILGUN = 44,
    TF_WEAPON_PDA = 45,
    TF_WEAPON_PDA_ENGINEER_BUILD = 46,
    TF_WEAPON_PDA_ENGINEER_DESTROY = 47,
    TF_WEAPON_PDA_SPY = 48,
    TF_WEAPON_BUILDER = 49,
    TF_WEAPON_MEDIGUN = 50,
    TF_WEAPON_GRENADE_MIRVBOMB = 51,
    TF_WEAPON_FLAMETHROWER_ROCKET = 52,
    TF_WEAPON_GRENADE_DEMOMAN = 53,
    TF_WEAPON_SENTRY_BULLET = 54,
    TF_WEAPON_SENTRY_ROCKET = 55,
    TF_WEAPON_DISPENSER = 56,
    TF_WEAPON_INVIS = 57,
    TF_WEAPON_FLAREGUN = 58,
    TF_WEAPON_LUNCHBOX = 59,
    TF_WEAPON_JAR = 60,
    TF_WEAPON_COMPOUND_BOW = 61,
    TF_WEAPON_BUFF_ITEM = 62,
    TF_WEAPON_PUMPKIN_BOMB = 63,
    TF_WEAPON_SWORD = 64,
    TF_WEAPON_DIRECTHIT = 65,
    TF_WEAPON_LIFELINE = 66,
    TF_WEAPON_LASER_POINTER = 67,
    TF_WEAPON_DISPENSER_GUN = 68,
    TF_WEAPON_SENTRY_REVENGE = 69,
    TF_WEAPON_JAR_MILK = 70,
    TF_WEAPON_HANDGUN_SCOUT_PRIMARY = 71,
    TF_WEAPON_BAT_FISH = 72,
    TF_WEAPON_CROSSBOW = 73,
    TF_WEAPON_STICKBOMB = 74,
    TF_WEAPON_HANDGUN_SCOUT_SEC = 75,
    TF_WEAPON_SODA_POPPER = 76,
    TF_WEAPON_SNIPERRIFLE_DECAP = 77,
    TF_WEAPON_RAYGUN = 78,
    TF_WEAPON_PARTICLE_CANNON = 79,
    TF_WEAPON_MECHANICAL_ARM = 80,
    TF_WEAPON_DRG_POMSON = 81,
    TF_WEAPON_BAT_GIFTWRAP = 82,
    TF_WEAPON_GRENADE_ORNAMENT = 83,
    TF_WEAPON_RAYGUN_REVENGE = 84,
    TF_WEAPON_PEP_BRAWLER_BLASTER = 85,
    TF_WEAPON_CLEAVER = 86,
    TF_WEAPON_GRENADE_CLEAVER = 87,
    TF_WEAPON_STICKY_BALL_LAUNCHER = 88,
    TF_WEAPON_GRENADE_STICKY_BALL = 89,
    TF_WEAPON_SHOTGUN_BUILDING_RESCUE = 90,
    TF_WEAPON_CANNON = 91,
    TF_WEAPON_THROWABLE = 92,
    TF_WEAPON_GRENADE_THROWABLE = 93,
    TF_WEAPON_PDA_SPY_BUILD = 94,
    TF_WEAPON_GRENADE_WATERBALLOON = 95,
    TF_WEAPON_HARVESTER_SAW = 96,
    TF_WEAPON_SPELLBOOK = 97,
    TF_WEAPON_SPELLBOOK_PROJECTILE = 98,
    TF_WEAPON_SNIPERRIFLE_CLASSIC = 99,
    TF_WEAPON_PARACHUTE = 100,
    TF_WEAPON_GRAPPLINGHOOK = 101,
    TF_WEAPON_PASSTIME_GUN = 102,
    TF_WEAPON_CHARGED_SMG = 103,
    TF_WEAPON_BREAKABLE_SIGN = 104,
    TF_WEAPON_ROCKETPACK = 105,
    TF_WEAPON_SLAP = 106,
    TF_WEAPON_JAR_GAS = 107,
    TF_WEAPON_GRENADE_JAR_GAS = 108,
    TF_WEAPON_FLAME_BALL = 109
}

---@enum ESignonState
ESignonState = {
    SIGNONSTATE_NONE = 0,       -- no state yet, about to connect
    SIGNONSTATE_CHALLENGE = 1,  -- client challenging server, all OOB packets
    SIGNONSTATE_CONNECTED = 2,  -- client is connected to server, netchans ready
    SIGNONSTATE_NEW = 3,        -- just got serverinfo and string tables
    SIGNONSTATE_PRESPAWN = 4,   -- received signon buffers
    SIGNONSTATE_SPAWN = 5,      -- ready to receive entity packets
    SIGNONSTATE_FULL = 6,       -- we are fully connected, first non-delta packet received
    SIGNONSTATE_CHANGELEVEL = 7 -- server is changing level, please wait
}

---@enum ELoadoutSlot
ELoadoutSlot = {
    LOADOUT_POSITION_PRIMARY = 0,
    LOADOUT_POSITION_SECONDARY = 1,
    LOADOUT_POSITION_MELEE = 2,
    LOADOUT_POSITION_UTILITY = 3,
    LOADOUT_POSITION_BUILDING = 4,
    LOADOUT_POSITION_PDA = 5,
    LOADOUT_POSITION_PDA2 = 6,
    LOADOUT_POSITION_HEAD = 7,
    LOADOUT_POSITION_MISC = 8,
    LOADOUT_POSITION_ACTION = 9,
    LOADOUT_POSITION_MISC2 = 10,
    LOADOUT_POSITION_TAUNT = 11,
    LOADOUT_POSITION_TAUNT2 = 12,
    LOADOUT_POSITION_TAUNT3 = 13,
    LOADOUT_POSITION_TAUNT4 = 14,
    LOADOUT_POSITION_TAUNT5 = 15,
    LOADOUT_POSITION_TAUNT6 = 16,
    LOADOUT_POSITION_TAUNT7 = 17,
    LOADOUT_POSITION_TAUNT8 = 18
}

---@enum ERoundState
ERoundState = {
    -- initialize the game, create teams
    GR_STATE_INIT = 0,

    -- Before players have joined the game. Periodically checks to see if enough players are ready to start a game. Also reverts to this when there are no active players
    GR_STATE_PREGAME = 1,

    -- The game is about to start, wait a bit and spawn everyone
    GR_STATE_STARTGAME = 2,

    -- All players are respawned, frozen in place
    GR_STATE_PREROUND = 3,

    -- Round is on, playing normally
    GR_STATE_RND_RUNNING = 4,

    -- Someone has won the round
    GR_STATE_TEAM_WIN = 5,

    -- Noone has won, manually restart the game, reset scores
    GR_STATE_RESTART = 6,

    -- Noone has won, restart the game
    GR_STATE_STALEMATE = 7,

    -- Game is over, showing the scoreboard etc
    GR_STATE_GAME_OVER = 8,

    -- Game is in a bonus state, transitioned to after a round ends
    GR_STATE_BONUS = 9,

    -- Game is awaiting the next wave/round of a multi round experience
    GR_STATE_BETWEEN_RNDS = 10,

    GR_NUM_ROUND_STATES = 11
}

---@enum ESpectatorMode
ESpectatorMode = {
    OBS_MODE_NONE = 0,      -- not in spectator mode
    OBS_MODE_DEATHCAM = 1,  -- special mode for death cam animation
    OBS_MODE_FREEZECAM = 2, -- zooms to a target, and freeze-frames on them
    OBS_MODE_FIXED = 3,     -- view from a fixed camera position
    OBS_MODE_IN_EYE = 4,    -- follow a player in first person view
    OBS_MODE_CHASE = 5,     -- follow a player in third person view
    OBS_MODE_POI = 6,       -- PASSTIME point of interest - game objective, big fight, anything interesting; added in the middle of the enum due to tons of hard-coded "<ROAMING" enum compares
    OBS_MODE_ROAMING = 7,   -- free roaming

    NUM_OBSERVER_MODES = 8
}

---@enum EMatchAbandonStatus
EMatchAbandonStatus = {
    MATCHABANDON_SAFE = 0,
    MATCHABANDON_NOPENALTY = 1,
    MATCHABANDON_PENTALTY = 2
}

---@enum ERuneType
ERuneType = {
    RUNETYPE_TEMP_NONE = 0,
    RUNETYPE_TEMP_CRIT = 1,
    RUNETYPE_TEMP_UBER = 2
}

---@enum EProjectileType
EProjectileType = {
    TF_PROJECTILE_NONE = 0,
    TF_PROJECTILE_BULLET = 1,
    TF_PROJECTILE_ROCKET = 2,
    TF_PROJECTILE_PIPEBOMB = 3,
    TF_PROJECTILE_PIPEBOMB_REMOTE = 4,
    TF_PROJECTILE_SYRINGE = 5,
    TF_PROJECTILE_FLARE = 6,
    TF_PROJECTILE_JAR = 7,
    TF_PROJECTILE_ARROW = 8,
    TF_PROJECTILE_FLAME_ROCKET = 9,
    TF_PROJECTILE_JAR_MILK = 10,
    TF_PROJECTILE_HEALING_BOLT = 11,
    TF_PROJECTILE_ENERGY_BALL = 12,
    TF_PROJECTILE_ENERGY_RING = 13,
    TF_PROJECTILE_PIPEBOMB_PRACTICE = 14,
    TF_PROJECTILE_CLEAVER = 15,
    TF_PROJECTILE_STICKY_BALL = 16,
    TF_PROJECTILE_CANNONBALL = 17,
    TF_PROJECTILE_BUILDING_REPAIR_BOLT = 18,
    TF_PROJECTILE_FESTIVE_ARROW = 19,
    TF_PROJECTILE_THROWABLE = 20,
    TF_PROJECTILE_SPELL = 21,
    TF_PROJECTILE_FESTIVE_JAR = 22,
    TF_PROJECTILE_FESTIVE_HEALING_BOLT = 23,
    TF_PROJECTILE_BREADMONSTER_JARATE = 24,
    TF_PROJECTILE_BREADMONSTER_MADMILK = 25,
    TF_PROJECTILE_GRAPPLINGHOOK = 26,
    TF_PROJECTILE_SENTRY_ROCKET = 27,
    TF_PROJECTILE_BREAD_MONSTER = 28
}

---@enum EMoveType
EMoveType = {
    MOVETYPE_NONE = 0,       -- never moves
    MOVETYPE_ISOMETRIC = 1,  -- For players -- in TF2 commander view, etc.
    MOVETYPE_WALK = 2,       -- Player only - moving on the ground
    MOVETYPE_STEP = 3,       -- gravity, special edge handling -- monsters use this
    MOVETYPE_FLY = 4,        -- No gravity, but still collides with stuff
    MOVETYPE_FLYGRAVITY = 5, -- flies through the air + is affected by gravity
    MOVETYPE_VPHYSICS = 6,   -- uses VPHYSICS for simulation
    MOVETYPE_PUSH = 7,       -- no clip to world, push and crush
    MOVETYPE_NOCLIP = 8,     -- No gravity, no collisions, still do velocity/avelocity
    MOVETYPE_LADDER = 9,     -- Used by players only when going onto a ladder
    MOVETYPE_OBSERVER = 10,  -- Observer movement, depends on player's observer mode
    MOVETYPE_CUSTOM = 11,    -- Allows the entity to describe its own physics

    -- should always be defined as the last item in the list
    MOVETYPE_LAST = EMoveType.MOVETYPE_CUSTOM,

    MOVETYPE_MAX_BITS = 4
}

---@enum EHitbox
EHitbox = {
    HITBOX_HEAD = 0,
    HITBOX_PELVIS = 1,
    HITBOX_SPINE_0 = 2,
    HITBOX_SPINE_1 = 3,
    HITBOX_SPINE_2 = 4,
    HITBOX_SPINE_3 = 5,
    HITBOX_UPPERARM_L = 6,
    HITBOX_LOWERARM_L = 7,
    HITBOX_HAND_L = 8,
    HITBOX_UPPERARM_R = 9,
    HITBOX_LOWERARM_R = 10,
    HITBOX_HAND_R = 11,
    HITBOX_HIP_L = 12,
    HITBOX_KNEE_L = 13,
    HITBOX_FOOT_L = 14,
    HITBOX_HIP_R = 15,
    HITBOX_KNEE_R = 16,
    HITBOX_FOOT_R = 17
}

---@enum ETFDmgCustom
ETFDmgCustom = {
    TF_DMG_CUSTOM_NONE = 0,
    TF_DMG_CUSTOM_HEADSHOT = 1,
    TF_DMG_CUSTOM_BACKSTAB = 2,
    TF_DMG_CUSTOM_BURNING = 3,
    TF_DMG_WRENCH_FIX = 4,
    TF_DMG_CUSTOM_MINIGUN = 5,
    TF_DMG_CUSTOM_SUICIDE = 6,
    TF_DMG_CUSTOM_TAUNTATK_HADOUKEN = 7,
    TF_DMG_CUSTOM_BURNING_FLARE = 8,
    TF_DMG_CUSTOM_TAUNTATK_HIGH_NOON = 9,
    TF_DMG_CUSTOM_TAUNTATK_GRAND_SLAM = 10,
    TF_DMG_CUSTOM_PENETRATE_MY_TEAM = 11,
    TF_DMG_CUSTOM_PENETRATE_ALL_PLAYERS = 12,
    TF_DMG_CUSTOM_TAUNTATK_FENCING = 13,
    TF_DMG_CUSTOM_PENETRATE_NONBURNING_TEAMMATE = 14,
    TF_DMG_CUSTOM_TAUNTATK_ARROW_STAB = 15,
    TF_DMG_CUSTOM_TELEFRAG = 16,
    TF_DMG_CUSTOM_BURNING_ARROW = 17,
    TF_DMG_CUSTOM_FLYINGBURN = 18,
    TF_DMG_CUSTOM_PUMPKIN_BOMB = 19,
    TF_DMG_CUSTOM_DECAPITATION = 20,
    TF_DMG_CUSTOM_TAUNTATK_GRENADE = 21,
    TF_DMG_CUSTOM_BASEBALL = 22,
    TF_DMG_CUSTOM_CHARGE_IMPACT = 23,
    TF_DMG_CUSTOM_TAUNTATK_BARBARIAN_SWING = 24,
    TF_DMG_CUSTOM_AIR_STICKY_BURST = 25,
    TF_DMG_CUSTOM_DEFENSIVE_STICKY = 26,
    TF_DMG_CUSTOM_PICKAXE = 27,
    TF_DMG_CUSTOM_ROCKET_DIRECTHIT = 28,
    TF_DMG_CUSTOM_TAUNTATK_UBERSLICE = 29,
    TF_DMG_CUSTOM_PLAYER_SENTRY = 30,
    TF_DMG_CUSTOM_STANDARD_STICKY = 31,
    TF_DMG_CUSTOM_SHOTGUN_REVENGE_CRIT = 32,
    TF_DMG_CUSTOM_TAUNTATK_ENGINEER_GUITAR_SMASH = 33,
    TF_DMG_CUSTOM_BLEEDING = 34,
    TF_DMG_CUSTOM_GOLD_WRENCH = 35,
    TF_DMG_CUSTOM_CARRIED_BUILDING = 36,
    TF_DMG_CUSTOM_COMBO_PUNCH = 37,
    TF_DMG_CUSTOM_TAUNTATK_ENGINEER_ARM_KILL = 38,
    TF_DMG_CUSTOM_FISH_KILL = 39,
    TF_DMG_CUSTOM_TRIGGER_HURT = 40,
    TF_DMG_CUSTOM_DECAPITATION_BOSS = 41,
    TF_DMG_CUSTOM_STICKBOMB_EXPLOSION = 42,
    TF_DMG_CUSTOM_AEGIS_ROUND = 43,
    TF_DMG_CUSTOM_FLARE_EXPLOSION = 44,
    TF_DMG_CUSTOM_BOOTS_STOMP = 45,
    TF_DMG_CUSTOM_PLASMA = 46,
    TF_DMG_CUSTOM_PLASMA_CHARGED = 47,
    TF_DMG_CUSTOM_PLASMA_GIB = 48,
    TF_DMG_CUSTOM_PRACTICE_STICKY = 49,
    TF_DMG_CUSTOM_EYEBALL_ROCKET = 50,
    TF_DMG_CUSTOM_HEADSHOT_DECAPITATION = 51,
    TF_DMG_CUSTOM_TAUNTATK_ARMAGEDDON = 52,
    TF_DMG_CUSTOM_FLARE_PELLET = 53,
    TF_DMG_CUSTOM_CLEAVER = 54,
    TF_DMG_CUSTOM_CLEAVER_CRIT = 55,
    TF_DMG_CUSTOM_SAPPER_RECORDER_DEATH = 56,
    TF_DMG_CUSTOM_MERASMUS_PLAYER_BOMB = 57,
    TF_DMG_CUSTOM_MERASMUS_GRENADE = 58,
    TF_DMG_CUSTOM_MERASMUS_ZAP = 59,
    TF_DMG_CUSTOM_MERASMUS_DECAPITATION = 60,
    TF_DMG_CUSTOM_CANNONBALL_PUSH = 61,
    TF_DMG_CUSTOM_TAUNTATK_ALLCLASS_GUITAR_RIFF = 62,
    TF_DMG_CUSTOM_THROWABLE = 63,
    TF_DMG_CUSTOM_THROWABLE_KILL = 64,
    TF_DMG_CUSTOM_SPELL_TELEPORT = 65,
    TF_DMG_CUSTOM_SPELL_SKELETON = 66,
    TF_DMG_CUSTOM_SPELL_MIRV = 67,
    TF_DMG_CUSTOM_SPELL_METEOR = 68,
    TF_DMG_CUSTOM_SPELL_LIGHTNING = 69,
    TF_DMG_CUSTOM_SPELL_FIREBALL = 70,
    TF_DMG_CUSTOM_SPELL_MONOCULUS = 71,
    TF_DMG_CUSTOM_SPELL_BLASTJUMP = 72,
    TF_DMG_CUSTOM_SPELL_BATS = 73,
    TF_DMG_CUSTOM_SPELL_TINY = 74,
    TF_DMG_CUSTOM_KART = 75,
    TF_DMG_CUSTOM_GIANT_HAMMER = 76,
    TF_DMG_CUSTOM_RUNE_REFLECT = 77,
    TF_DMG_CUSTOM_DRAGONS_FURY_IGNITE = 78,
    TF_DMG_CUSTOM_DRAGONS_FURY_BONUS_BURNING = 79,
    TF_DMG_CUSTOM_SLAP_KILL = 80,
    TF_DMG_CUSTOM_CROC = 81,
    TF_DMG_CUSTOM_TAUNTATK_GASBLAST = 82,
    TF_DMG_CUSTOM_AXTINGUISHER_BOOSTED = 83,
    TF_DMG_CUSTOM_END = 84
}

---@enum ETFClass
ETFClass = {
    TF_CLASS_UNDEFINED = 0,
    TF_CLASS_SCOUT = 1,
    TF_CLASS_SNIPER = 2,
    TF_CLASS_SOLDIER = 3,
    TF_CLASS_DEMOMAN = 4,
    TF_CLASS_MEDIC = 5,
    TF_CLASS_HEAVYWEAPONS = 6,
    TF_CLASS_PYRO = 7,
    TF_CLASS_SPY = 8,
    TF_CLASS_ENGINEER = 9,
    TF_CLASS_CIVILIAN = 10,
    TF_CLASS_COUNT_ALL = 11,
    TF_CLASS_RANDOM = 12
}

---@enum ETFTeam
ETFTeam = {
    TEAM_ANY = -2,
    TEAM_INVALID = -1,
    TEAM_UNASSIGNED = 0, -- not assigned to a team
    TEAM_SPECTATOR = 1,  -- spectator team

    TF_TEAM_RED = 2,
    TF_TEAM_BLUE = 3,
    TF_TEAM_COUNT = 4,

    TF_TEAM_PVE_INVADERS = 3,       -- invading bot team in mann vs machine
    TF_TEAM_PVE_DEFENDERS = 2,      -- defending player team in mann vs machine
    TF_TEAM_PVE_INVADERS_GIANTS = 4 --  hack for replacing visuals via itemdef
}

---@enum EGCResults
EGCResults = {
    k_EGCResultOK = 0,
    k_EGCResultNoMessage = 1,
    k_EGCResultBufferTooSmall = 2,
    k_EGCResultNotLoggedOn = 3,
    k_EGCResultInvalidMessage = 4,
}
