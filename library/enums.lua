---@meta

---@alias FileAttributeConstants
---| `FILE_ATTRIBUTE_READONLY`          # A file that is read-only.
---| `FILE_ATTRIBUTE_HIDDEN`            # The file or directory is hidden. It is not included in an ordinary directory listing.
---| `FILE_ATTRIBUTE_SYSTEM`
---| `FILE_ATTRIBUTE_DIRECTORY`         # The handle that identifies a directory.
---| `FILE_ATTRIBUTE_ARCHIVE`
---| `FILE_ATTRIBUTE_DEVICE`
---| `FILE_ATTRIBUTE_NORMAL`            # A file that does not have other attributes set. This attribute is valid only when used alone.
---| `FILE_ATTRIBUTE_TEMPORARY`         # A file that is being used for temporary storage
---| `FILE_ATTRIBUTE_SPARSE_FILE`
---| `FILE_ATTRIBUTE_REPARSE_POINT`
---| `FILE_ATTRIBUTE_COMPRESSED`
---| `FILE_ATTRIBUTE_OFFLINE`
---| `FILE_ATTRIBUTE_NOT_CONTENT_INDEXED`
---| `FILE_ATTRIBUTE_ENCRYPTED`
---| `FILE_ATTRIBUTE_INTEGRITY_STREAM`
---| `FILE_ATTRIBUTE_VIRTUAL`
---| `FILE_ATTRIBUTE_NO_SCRUB_DATA`
---| `FILE_ATTRIBUTE_RECALL_ON_OPEN`
---| `FILE_ATTRIBUTE_PINNED`
---| `FILE_ATTRIBUTE_UNPINNED`
---| `FILE_ATTRIBUTE_RECALL_ON_DATA_ACCESS`
---| `INVALID_FILE_ATTRIBUTES`

---@alias SignOnState
---| `SIGNONSTATE_NONE`        # no state yet, about to connect
---| `SIGNONSTATE_CHALLENGE`   # client challenging server, all OOB packets
---| `SIGNONSTATE_CONNECTED`   # client is connected to server, netchans ready
---| `SIGNONSTATE_NEW`         # just got serverinfo and string tables
---| `SIGNONSTATE_PRESPAWN`    # received signon buffers
---| `SIGNONSTATE_SPAWN`       # ready to receive entity packets
---| `SIGNONSTATE_FULL`        # we are fully connected, first non-delta packet received
---| `SIGNONSTATE_CHANGELEVEL` # server is changing level, please wait

---@alias UserMessageID
---|`Geiger`
---|`Train`
---|`HudText`
---|`SayText`
---|`SayText2`
---|`TextMsg`
---|`ResetHUD`
---|`GameTitle`
---|`ItemPickup`
---|`ShowMenu`
---|`Shake`
---|`Fade`
---|`VGUIMenu`
---|`Rumble`
---|`CloseCaption`
---|`SendAudio`
---|`VoiceMask`
---|`RequestState`
---|`Damage`
---|`HintText`
---|`KeyHintText`
---|`HudMsg`
---|`AmmoDenied`
---|`AchievementEvent`
---|`UpdateRadar`
---|`VoiceSubtitle`
---|`HudNotify`
---|`HudNotifyCustom`
---|`PlayerStatsUpdate`
---|`MapStatsUpdate`
---|`PlayerIgnited`
---|`PlayerIgnitedInv`
---|`HudArenaNotify`
---|`UpdateAchievement`
---|`TrainingMsg`
---|`TrainingObjective`
---|`DamageDodged`
---|`PlayerJarated`
---|`PlayerExtinguished`
---|`PlayerJaratedFade`
---|`PlayerShieldBlocked`
---|`BreakModel`
---|`CheapBreakModel`
---|`BreakModel_Pumpkin`
---|`BreakModelRocketDud`
---|`CallVoteFailed`
---|`VoteStart`
---|`VotePass`
---|`VoteFailed`
---|`VoteSetup`
---|`PlayerBonusPoints`
---|`RDTeamPointsChanged`
---|`SpawnFlyingBird`
---|`PlayerGodRayEffect`
---|`PlayerTeleportHomeEffect`
---|`MVMStatsReset`
---|`MVMPlayerEvent`
---|`MVMResetPlayerStats`
---|`MVMWaveFailed`
---|`MVMAnnouncement`
---|`MVMPlayerUpgradedEvent`
---|`MVMVictory`
---|`MVMWaveChange`
---|`MVMLocalPlayerUpgradesClear`
---|`MVMLocalPlayerUpgradesValue`
---|`MVMResetPlayerWaveSpendingStats`
---|`MVMLocalPlayerWaveSpendingValue`
---|`MVMResetPlayerUpgradeSpending`
---|`MVMServerKickTimeUpdate`
---|`PlayerLoadoutUpdated`
---|`PlayerTauntSoundLoopStart`
---|`PlayerTauntSoundLoopEnd`
---|`ForcePlayerViewAngles`
---|`BonusDucks`
---|`EOTLDuckEvent`
---|`PlayerPickupWeapon`
---|`QuestObjectiveCompleted`
---|`SPHapWeapEvent`
---|`HapDmg`
---|`HapPunch`
---|`HapSetDrag`
---|`HapSetConst`
---|`HapMeleeContact`

---@alias MatchAbandonStatus
---| `MATCHABANDON_SAFE`      # Player can leave the match without recieving penalty.
---| `MATCHABANDON_NOPENALTY` # Player can leave the match without recieving penalty.
---| `MATCHABANDON_PENALTY`   # Player will recieve a matchmaking cooldown if they choose to abandon the live match.

---@alias InventorySlot
---|`LOADOUT_POSITION_PRIMARY`
---|`LOADOUT_POSITION_SECONDARY`
---|`LOADOUT_POSITION_MELEE`
---|`LOADOUT_POSITION_UTILITY`
---|`LOADOUT_POSITION_BUILDING`
---|`LOADOUT_POSITION_PDA`
---|`LOADOUT_POSITION_PDA2`
---|`LOADOUT_POSITION_HEAD`
---|`LOADOUT_POSITION_MISC`
---|`LOADOUT_POSITION_ACTION`
---|`LOADOUT_POSITION_MISC2`
---|`LOADOUT_POSITION_TAUNT`
---|`LOADOUT_POSITION_TAUNT2`
---|`LOADOUT_POSITION_TAUNT3`
---|`LOADOUT_POSITION_TAUNT4`
---|`LOADOUT_POSITION_TAUNT5`
---|`LOADOUT_POSITION_TAUNT6`
---|`LOADOUT_POSITION_TAUNT7`
---|`LOADOUT_POSITION_TAUNT8`

---@alias RoundState
---|`ROUND_INIT`
---|`ROUND_PREGAME`
---|`ROUND_STARTGAME`
---|`ROUND_PREROUND`
---|`ROUND_RUNNING`
---|`ROUND_TEAMWIN`
---|`ROUND_RESTART`
---|`ROUND_STALEMATE`
---|`ROUND_GAMEOVER`
---|`ROUND_BONUS`
---|`ROUND_BETWEEN_ROUNDS`

---@alias LifeState
---|`LIFE_ALIVE`
---|`LIFE_DYING`
---|`LIFE_DEAD`
---|`LIFE_RESPAWNABLE`
---|`LIFE_DISCARDAIM_BODY`

---@alias MoveType
---|`MOVETYPE_NONE`		  # never moves
---|`MOVETYPE_ISOMETRIC`  # For players -- in TF2 commander view, etc.
---|`MOVETYPE_WALK`	      # Player only - moving on the ground
---|`MOVETYPE_STEP`	      # gravity, special edge handling -- monsters use this
---|`MOVETYPE_FLY`  	  # No gravity, but still collides with stuff
---|`MOVETYPE_FLYGRAVITY` # flies through the air + is affected by gravity
---|`MOVETYPE_VPHYSICS`	  # uses VPHYSICS for simulation
---|`MOVETYPE_PUSH`		  # no clip to world, push and crush
---|`MOVETYPE_NOCLIP` 	  # No gravity, no collisions, still do velocity/avelocity
---|`MOVETYPE_LADDER`	  # Used by players only when going onto a ladder
---|`MOVETYPE_OBSERVER`	  # Observer movement, depends on player's observer mode
---|`MOVETYPE_CUSTOM`	  # Allows the entity to describe its own physics

---@alias RuneType
---|`RUNETYPE_TEMP_NONE`
---|`RUNETYPE_TEMP_CRIT`
---|`RUNETYPE_TEMP_UBER`

---@alias TF2_TEAM
---|`TEAM_UNASSIGNED`
---|`TEAM_SPECTATOR`
---|`TEAM_RED`
---|`TEAM_BLU`

---@alias TF2_HITBOX
---|`HITBOX_HEAD`
---|`HITBOX_PELVIS`
---|`HITBOX_SPINE_0`
---|`HITBOX_SPINE_1`
---|`HITBOX_SPINE_2`
---|`HITBOX_SPINE_3`
---|`HITBOX_UPPERARM_L`
---|`HITBOX_LOWERARM_L`
---|`HITBOX_HAND_L`
---|`HITBOX_UPPERARM_R`
---|`HITBOX_LOWERARM_R`
---|`HITBOX_HAND_R`
---|`HITBOX_HIP_L`
---|`HITBOX_KNEE_L`
---|`HITBOX_FOOT_L`

---@alias TF2_COND
---|`TFCond_Slowed`
---|`TFCond_Zoomed`
---|`TFCond_Disguising`
---|`TFCond_Disguised`
---|`TFCond_Cloaked`
---|`TFCond_Ubercharged`
---|`TFCond_TeleportedGlow`
---|`TFCond_Taunting`
---|`TFCond_UberchargeFading`
---|`TFCond_Unknown1`
---|`TFCond_CloakFlicker`
---|`TFCond_Teleporting`
---|`TFCond_Kritzkrieged`
---|`TFCond_Unknown2`
---|`TFCond_TmpDamageBonus`
---|`TFCond_DeadRingered`
---|`TFCond_Bonked`
---|`TFCond_Dazed`
---|`TFCond_Buffed`
---|`TFCond_Charging`
---|`TFCond_DemoBuff`
---|`TFCond_CritCola`
---|`TFCond_InHealRadius`
---|`TFCond_Healing`
---|`TFCond_OnFire`
---|`TFCond_Overhealed`
---|`TFCond_Jarated`
---|`TFCond_Bleeding`
---|`TFCond_DefenseBuffed`
---|`TFCond_Milked`
---|`TFCond_MegaHeal`
---|`TFCond_RegenBuffed`
---|`TFCond_MarkedForDeath`
---|`TFCond_NoHealingDamageBuff`
---|`TFCond_SpeedBuffAlly`
---|`TFCond_HalloweenCritCandy`
---|`TFCond_CritCanteen`
---|`TFCond_CritDemoCharge`
---|`TFCond_CritHype`
---|`TFCond_CritOnFirstBlood`
---|`TFCond_CritOnWin`
---|`TFCond_CritOnFlagCapture`
---|`TFCond_CritOnKill`
---|`TFCond_RestrictToMelee`
---|`TFCond_DefenseBuffNoCritBlock`
---|`TFCond_Reprogrammed`
---|`TFCond_CritMmmph`
---|`TFCond_DefenseBuffMmmph`
---|`TFCond_FocusBuff`
---|`TFCond_DisguiseRemoved`
---|`TFCond_MarkedForDeathSilent`
---|`TFCond_DisguisedAsDispenser`
---|`TFCond_Sapped`
---|`TFCond_UberchargedHidden`
---|`TFCond_UberchargedCanteen`
---|`TFCond_HalloweenBombHead`
---|`TFCond_HalloweenThriller`
---|`TFCond_RadiusHealOnDamage`
---|`TFCond_CritOnDamage`
---|`TFCond_UberchargedOnTakeDamage`
---|`TFCond_UberBulletResist`
---|`TFCond_UberBlastResist`
---|`TFCond_UberFireResist`
---|`TFCond_SmallBulletResist`
---|`TFCond_SmallBlastResist`
---|`TFCond_SmallFireResist`
---|`TFCond_Stealthed`
---|`TFCond_MedigunDebuff`
---|`TFCond_StealthedUserBuffFade`
---|`TFCond_BulletImmune`
---|`TFCond_BlastImmune`
---|`TFCond_FireImmune`
---|`TFCond_PreventDeath`
---|`TFCond_MVMBotRadiowave`
---|`TFCond_HalloweenSpeedBoost`
---|`TFCond_HalloweenQuickHeal`
---|`TFCond_HalloweenGiant`
---|`TFCond_HalloweenTiny`
---|`TFCond_HalloweenInHell`
---|`TFCond_HalloweenGhostMode`
---|`TFCond_MiniCritOnKill`
---|`TFCond_DodgeChance`
---|`TFCond_ObscuredSmoke`
---|`TFCond_Parachute`
---|`TFCond_BlastJumping`
---|`TFCond_HalloweenKart`
---|`TFCond_HalloweenKartDash`
---|`TFCond_BalloonHead`
---|`TFCond_MeleeOnly`
---|`TFCond_SwimmingCurse`
---|`TFCond_HalloweenKartNoTurn`
---|`TFCond_FreezeInput`
---|`TFCond_HalloweenKartCage`
---|`TFCond_HasRune`
---|`TFCond_RuneStrength`
---|`TFCond_RuneHaste`
---|`TFCond_RuneRegen`
---|`TFCond_RuneResist`
---|`TFCond_RuneVampire`
---|`TFCond_RuneWarlock`
---|`TFCond_RunePrecision`
---|`TFCond_RuneAgility`
---|`TFCond_GrapplingHook`
---|`TFCond_GrapplingHookSafeFall`
---|`TFCond_GrapplingHookLatched`
---|`TFCond_GrapplingHookBleeding`
---|`TFCond_AfterburnImmune`
---|`TFCond_RuneKnockout`
---|`TFCond_RuneImbalance`
---|`TFCond_CritRuneTemp`
---|`TFCond_PasstimeInterception`
---|`TFCond_SwimmingNoEffects`
---|`TFCond_EyeaductUnderworld`
---|`TFCond_KingRune`
---|`TFCond_PlagueRune`
---|`TFCond_SupernovaRune`
---|`TFCond_Plague`
---|`TFCond_KingAura`
---|`TFCond_SpawnOutline`
---|`TFCond_KnockedIntoAir`
---|`TFCond_CompetitiveWinner`
---|`TFCond_CompetitiveLoser`
---|`TFCond_NoTaunting_DEPRECATED`
---|`TFCond_HealingDebuff`
---|`TFCond_PasstimePenaltyDebuff`
---|`TFCond_GrappledToPlayer`
---|`TFCond_GrappledByPlayer`
---|`TFCond_ParachuteDeployed`
---|`TFCond_Gas`
---|`TFCond_BurningPyro`
---|`TFCond_RocketPack`
---|`TFCond_LostFooting`
---|`TFCond_AirCurrent`

---@alias TF2_CHARACTER
---|`TF2_Scout`
---|`TF2_Soldier`
---|`TF2_Pyro`
---|`TF2_Demoman`
---|`TF2_Heavy`
---|`TF2_Engineer`
---|`TF2_Medic`
---|`TF2_Sniper`
---|`TF2_Spy`

---@alias FontFlags
---| `FONTFLAG_NONE`
---| `FONTFLAG_ITALIC`
---| `FONTFLAG_UNDERLINE`
---| `FONTFLAG_STRIKEOUT`
---| `FONTFLAG_SYMBOL`
---| `FONTFLAG_ANTIALIAS`
---| `FONTFLAG_GAUSSIANBLUR`
---| `FONTFLAG_ROTARY`
---| `FONTFLAG_DROPSHADOW`
---| `FONTFLAG_ADDITIVE`
---| `FONTFLAG_OUTLINE`
---| `FONTFLAG_CUSTOM`
---| `FONTFLAG_BITMAP`

---@alias ButtonCode
---|`KEY_0`
---|`KEY_1`
---|`KEY_2`
---|`KEY_3`
---|`KEY_4`
---|`KEY_5`
---|`KEY_6`
---|`KEY_7`
---|`KEY_8`
---|`KEY_9`
---|`KEY_A`
---|`KEY_B`
---|`KEY_C`
---|`KEY_D`
---|`KEY_E`
---|`KEY_F`
---|`KEY_G`
---|`KEY_H`
---|`KEY_I`
---|`KEY_J`
---|`KEY_K`
---|`KEY_L`
---|`KEY_M`
---|`KEY_N`
---|`KEY_O`
---|`KEY_P`
---|`KEY_Q`
---|`KEY_R`
---|`KEY_S`
---|`KEY_T`
---|`KEY_U`
---|`KEY_V`
---|`KEY_W`
---|`KEY_X`
---|`KEY_Y`
---|`KEY_Z`
---|`KEY_PAD_0`
---|`KEY_PAD_1`
---|`KEY_PAD_2`
---|`KEY_PAD_3`
---|`KEY_PAD_4`
---|`KEY_PAD_5`
---|`KEY_PAD_6`
---|`KEY_PAD_7`
---|`KEY_PAD_8`
---|`KEY_PAD_9`
---|`KEY_PAD_DIVIDE`
---|`KEY_PAD_MULTIPLY`
---|`KEY_PAD_MINUS`
---|`KEY_PAD_PLUS`
---|`KEY_PAD_ENTER`
---|`KEY_PAD_DECIMAL`
---|`KEY_LBRACKET`
---|`KEY_RBRACKET`
---|`KEY_SEMICOLON`
---|`KEY_APOSTROPHE`
---|`KEY_BACKQUOTE`
---|`KEY_COMMA`
---|`KEY_PERIOD`
---|`KEY_SLASH`
---|`KEY_BACKSLASH`
---|`KEY_MINUS`
---|`KEY_EQUAL`
---|`KEY_ENTER`
---|`KEY_SPACE`
---|`KEY_BACKSPACE`
---|`KEY_TAB`
---|`KEY_CAPSLOCK`
---|`KEY_NUMLOCK`
---|`KEY_ESCAPE`
---|`KEY_SCROLLLOCK`
---|`KEY_INSERT`
---|`KEY_DELETE`
---|`KEY_HOME`
---|`KEY_END`
---|`KEY_PAGEUP`
---|`KEY_PAGEDOWN`
---|`KEY_BREAK`
---|`KEY_LSHIFT`
---|`KEY_RSHIFT`
---|`KEY_LALT`
---|`KEY_RALT`
---|`KEY_LCONTROL`
---|`KEY_RCONTROL`
---|`KEY_LWIN`
---|`KEY_RWIN`
---|`KEY_APP`
---|`KEY_UP`
---|`KEY_LEFT`
---|`KEY_DOWN`
---|`KEY_RIGHT`
---|`KEY_F1`
---|`KEY_F2`
---|`KEY_F3`
---|`KEY_F4`
---|`KEY_F5`
---|`KEY_F6`
---|`KEY_F7`
---|`KEY_F8`
---|`KEY_F9`
---|`KEY_F10`
---|`KEY_F11`
---|`KEY_F12`
---|`KEY_CAPSLOCKTOGGLE`
---|`KEY_NUMLOCKTOGGLE`
---|`KEY_SCROLLLOCKTOGGLE`
---|`MOUSE_LEFT`
---|`MOUSE_RIGHT`
---|`MOUSE_MIDDLE`
---|`MOUSE_4`
---|`MOUSE_5`
---|`MOUSE_WHEEL_UP`
---|`MOUSE_WHEEL_DOWN`
