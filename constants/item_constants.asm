; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemPrices (see data/items/prices.asm)
; - TechnicalMachinePrices (see data/items/tm_prices.asm)
; - KeyItemFlags (see data/items/key_items.asm)
; - ItemUsePtrTable (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM       ; $00
	const MASTER_BALL   ; $01
	const ULTRA_BALL    ; $02
	const GREAT_BALL    ; $03
	const POKE_BALL     ; $04
	const TOWN_MAP      ; $05
	const BICYCLE       ; $06
	const SURFBOARD     ; $07
	const SAFARI_BALL   ; $08
	const POKEDEX       ; $09
	const MOON_STONE    ; $0A
	const ANTIDOTE      ; $0B
	const BURN_HEAL     ; $0C
	const ICE_HEAL      ; $0D
	const AWAKENING     ; $0E
	const PARLYZ_HEAL   ; $0F
	const FULL_RESTORE  ; $10
	const MAX_POTION    ; $11
	const HYPER_POTION  ; $12
	const SUPER_POTION  ; $13
	const POTION        ; $14
	const SAFARI_BAIT   ; $15 ; marcelnote - cleaned from BoulderBadge
	const SAFARI_ROCK   ; $16 ; marcelnote - cleaned from CascadeBadge
	const ITEM_17       ; $17 ; unused ; marcelnote - cleaned from ThunderBadge
	const ITEM_18       ; $18 ; unused ; marcelnote - cleaned from RainbowBadge
	const ITEM_19       ; $19 ; unused ; marcelnote - cleaned from SoulBadge
	const ITEM_1A       ; $1A ; unused ; marcelnote - cleaned from MarshBadge
	const ITEM_1B       ; $1B ; unused ; marcelnote - cleaned from VolcanoBadge
	const ITEM_1C       ; $1C ; unused ; marcelnote - cleaned from EarthBadge
	const ESCAPE_ROPE   ; $1D
	const REPEL         ; $1E
	const OLD_AMBER     ; $1F
	const FIRE_STONE    ; $20
	const THUNDER_STONE ; $21
	const WATER_STONE   ; $22
	const HP_UP         ; $23
	const PROTEIN       ; $24
	const IRON          ; $25
	const CARBOS        ; $26
	const CALCIUM       ; $27
	const RARE_CANDY    ; $28
	const DOME_FOSSIL   ; $29
	const HELIX_FOSSIL  ; $2A
	const SECRET_KEY    ; $2B
	const ITEM_2C       ; $2C ; unused
	const BIKE_VOUCHER  ; $2D
	const X_ACCURACY    ; $2E
	const LEAF_STONE    ; $2F
	const CARD_KEY      ; $30
	const NUGGET        ; $31
	const ITEM_32       ; $32 ; unused
	const POKE_DOLL     ; $33
	const FULL_HEAL     ; $34
	const REVIVE        ; $35
	const MAX_REVIVE    ; $36
	const GUARD_SPEC    ; $37
	const SUPER_REPEL   ; $38
	const MAX_REPEL     ; $39
	const DIRE_HIT      ; $3A
	const COIN          ; $3B
	const FRESH_WATER   ; $3C
	const SODA_POP      ; $3D
	const LEMONADE      ; $3E
	const S_S_TICKET    ; $3F
	const GOLD_TEETH    ; $40
	const X_ATTACK      ; $41
	const X_DEFEND      ; $42
	const X_SPEED       ; $43
	const X_SPECIAL     ; $44
	const COIN_CASE     ; $45
	const OAKS_PARCEL   ; $46
	const ITEMFINDER    ; $47
	const SILPH_SCOPE   ; $48
	const POKE_FLUTE    ; $49
	const LIFT_KEY      ; $4A
	const EXP_ALL       ; $4B
	const OLD_ROD       ; $4C
	const GOOD_ROD      ; $4D
	const SUPER_ROD     ; $4E
	const PP_UP         ; $4F
	const ETHER         ; $50
	const MAX_ETHER     ; $51
	const ELIXER        ; $52
	const MAX_ELIXER    ; $53
DEF NUM_ITEMS EQU const_value - 1

; elevator floors use item IDs
	const FLOOR_B2F     ; $54
	const FLOOR_B1F     ; $55
	const FLOOR_1F      ; $56
	const FLOOR_2F      ; $57
	const FLOOR_3F      ; $58
	const FLOOR_4F      ; $59
	const FLOOR_5F      ; $5A
	const FLOOR_6F      ; $5B
	const FLOOR_7F      ; $5C
	const FLOOR_8F      ; $5D
	const FLOOR_9F      ; $5E
	const FLOOR_10F     ; $5F
	const FLOOR_11F     ; $60
	const FLOOR_B4F     ; $61
DEF NUM_FLOORS EQU const_value - 1 - NUM_ITEMS

; marcelnote - adding types as items for Pokemon Academy Blackboard
	const NORMAL_ITEM   ; $62
	const GRASS_ITEM    ; $63
	const FIRE_ITEM     ; $64
	const WATER_ITEM    ; $65
	const ELECTRIC_ITEM ; $66
	const FIGHTING_ITEM ; $67
	const POISON_ITEM   ; $68
	const GROUND_ITEM   ; $69
	const FLYING_ITEM   ; $6A
	const BUG_ITEM      ; $6B
	const ROCK_ITEM     ; $6C
	const PSYCHIC_ITEM  ; $6D
	const ICE_ITEM      ; $6E
	const GHOST_ITEM    ; $6F
	const DRAGON_ITEM   ; $70
DEF NUM_TYPES_ITEMS EQU const_value - 1 - NUM_ITEMS - NUM_FLOORS

; marcelnote - cleaned Badges from Item list as in PureRGB
	const BOULDERBADGE  ; $71
	const CASCADEBADGE  ; $72
	const THUNDERBADGE  ; $73
	const RAINBOWBADGE  ; $74
	const SOULBADGE     ; $75
	const MARSHBADGE    ; $76
	const VOLCANOBADGE  ; $77
	const EARTHBADGE    ; $78

	const_next $C4

; HMs are defined before TMs, so the actual number of TM definitions
; is not yet available. The TM quantity is hard-coded here and must
; match the actual number below.
DEF NUM_TMS EQU 51  ; marcelnote - changed from 50

DEF __tmhm_value__ = NUM_TMS + 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $C4
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE EQU \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT          ; $C4
	add_hm FLY          ; $C5
	add_hm SURF         ; $C6
	add_hm STRENGTH     ; $C7
	add_hm FLASH        ; $C8
DEF NUM_HMS EQU const_value - HM01

DEF __tmhm_value__ = 1

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $C9
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE EQU \1
	add_tmnum \1
ENDM

DEF TM01 EQU const_value
	add_tm MEGA_PUNCH   ; $C9
	add_tm RAZOR_WIND   ; $CA
	add_tm SWORDS_DANCE ; $CB
	add_tm WHIRLWIND    ; $CC
	add_tm MEGA_KICK    ; $CD
	add_tm TOXIC        ; $CE
	add_tm HORN_DRILL   ; $CF
	add_tm BODY_SLAM    ; $D0
	add_tm TAKE_DOWN    ; $D1
	add_tm DOUBLE_EDGE  ; $D2
	add_tm BUBBLEBEAM   ; $D3
	add_tm WATER_GUN    ; $D4
	add_tm ICE_BEAM     ; $D5
	add_tm BLIZZARD     ; $D6
	add_tm HYPER_BEAM   ; $D7
	add_tm PAY_DAY      ; $D8
	add_tm SUBMISSION   ; $D9
	add_tm COUNTER      ; $DA
	add_tm SEISMIC_TOSS ; $DB
	add_tm RAGE         ; $DC
	add_tm MEGA_DRAIN   ; $DD
	add_tm SOLARBEAM    ; $DE
	add_tm DRAGON_RAGE  ; $DF
	add_tm THUNDERBOLT  ; $E0
	add_tm THUNDER      ; $E1
	add_tm EARTHQUAKE   ; $E2
	add_tm FISSURE      ; $E3
	add_tm DIG          ; $E4
	add_tm PSYCHIC_M    ; $E5
	add_tm TELEPORT     ; $E6
	add_tm MIMIC        ; $E7
	add_tm DOUBLE_TEAM  ; $E8
	add_tm REFLECT      ; $E9
	add_tm BIDE         ; $EA
	add_tm METRONOME    ; $EB
	add_tm SELFDESTRUCT ; $EC
	add_tm EGG_BOMB     ; $ED
	add_tm FIRE_BLAST   ; $EE
	add_tm SWIFT        ; $EF
	add_tm SKULL_BASH   ; $F0
	add_tm SOFTBOILED   ; $F1
	add_tm DREAM_EATER  ; $F2
	add_tm SKY_ATTACK   ; $F3
	add_tm REST         ; $F4
	add_tm THUNDER_WAVE ; $F5
	add_tm PSYWAVE      ; $F6
	add_tm EXPLOSION    ; $F7
	add_tm ROCK_SLIDE   ; $F8
	add_tm TRI_ATTACK   ; $F9
	add_tm SUBSTITUTE   ; $FA
	add_tm HEX          ; $FB ; marcelnote - new TM
ASSERT NUM_TMS == const_value - TM01, "NUM_TMS ({d:NUM_TMS}) does not match the number of add_tm definitions"

DEF NUM_TM_HM EQU NUM_TMS + NUM_HMS

; 50 TMs + 5 HMs = 55 learnable TM/HM flags per Pokémon.
; These fit in 7 bytes, with one unused bit left over.
;DEF __tmhm_value__ = NUM_TM_HM + 1      ; marcelnote - HEX takes the one unused bit instead of UNUSED
;DEF UNUSED_TMNUM EQU __tmhm_value__     ;              so must remove this

DEF MAX_HIDDEN_ITEMS EQU 112
DEF MAX_HIDDEN_COINS EQU 16
