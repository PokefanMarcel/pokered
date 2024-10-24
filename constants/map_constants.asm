MACRO map_const
	const \1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

; map ids
; indexes for:
; - MapHeaderBanks (see data/maps/map_header_banks.asm)
; - MapHeaderPointers (see data/maps/map_header_pointers.asm)
; - MapSongBanks (see data/maps/songs.asm)
; - MapHSPointers (see data/maps/hide_show_data.asm)
; - MapSpriteSets (see data/maps/sprite_sets.asm)
; - ExternalMapEntries (see data/maps/town_map_entries.asm)
; - WildDataPointers (see data/wild/grass_water.asm)
; Each map also has associated data in maps.asm.
; Order: towns/cities, then routes, then indoor/dungeon maps
	const_def
	map_const PALLET_TOWN,                   14,  9 ; $00 ; marcelnote - expanded
	map_const VIRIDIAN_CITY,                 20, 18 ; $01
	map_const PEWTER_CITY,                   20, 18 ; $02
	map_const CERULEAN_CITY,                 20, 18 ; $03
	map_const LAVENDER_TOWN,                 10,  9 ; $04
	map_const VERMILION_CITY,                20, 18 ; $05
	map_const CELADON_CITY,                  25, 18 ; $06
	; marcelnote - SAFFRON should be here
	map_const FUCHSIA_CITY,                  20, 18 ; $07
	map_const CINNABAR_ISLAND,               14,  9 ; $08 ; marcelnote - added Cinnabar Volcano
	; marcelnote - MANDARIN_ISLAND should be here
	map_const INDIGO_PLATEAU,                10,  9 ; $09
	map_const SAFFRON_CITY,                  20, 18 ; $0A
	map_const MANDARIN_ISLAND,               16, 15 ; $0Abis ; marcelnote - new map
DEF NUM_CITY_MAPS EQU const_value
	map_const UNUSED_MAP_0B,                  0,  0 ; $0B
DEF FIRST_ROUTE_MAP EQU const_value
	map_const ROUTE_1,                       10, 18 ; $0C
	map_const ROUTE_2,                       10, 36 ; $0D
	map_const ROUTE_3,                       37,  9 ; $0E ; marcelnote - expanded from 35 for Celadon Grove
	map_const ROUTE_4,                       45,  9 ; $0F
	map_const ROUTE_5,                       10, 18 ; $10
	map_const ROUTE_6,                       10, 18 ; $11
	map_const ROUTE_7,                       10,  9 ; $12
	map_const ROUTE_8,                       30,  9 ; $13
	map_const ROUTE_9,                       30,  9 ; $14
	map_const ROUTE_10,                      10, 36 ; $15
	map_const ROUTE_11,                      30,  9 ; $16
	map_const ROUTE_12,                      10, 54 ; $17
	map_const ROUTE_13,                      30,  9 ; $18
	map_const ROUTE_14,                      10, 27 ; $19
	map_const ROUTE_15,                      30,  9 ; $1A
	map_const ROUTE_16,                      20,  9 ; $1B
	map_const ROUTE_17,                      10, 72 ; $1C
	map_const ROUTE_18,                      25,  9 ; $1D
	map_const ROUTE_19,                      15, 27 ; $1E ; marcelnote - adjusted for expanded Route 19
	map_const ROUTE_20,                      45,  9 ; $1F ; marcelnote - adjusted for expanded Route 19
	map_const ROUTE_21,                      10, 45 ; $20
	map_const ROUTE_22,                      20, 10 ; $21 ; marcelnote - modified to accommodate Route22OldRodHouse
	map_const ROUTE_23,                      10, 72 ; $22
	map_const ROUTE_24,                      10, 18 ; $23
	map_const ROUTE_25,                      30,  9 ; $24
	map_const ROUTE_28,                      39,  9 ; $24bis ; marcelnote - testing
DEF FIRST_INDOOR_MAP EQU const_value
	map_const REDS_YELLOWS_HOUSES,           25,  4 ; $25 ; marcelnote - merged RedsHouse floors, added YellowsHouse
	map_const UNUSED_MAP_26,                  0,  0 ; $26 ; marcelnote - was REDS_HOUSE_2F
	map_const BLUES_AIDES_HOUSES,            11,  4 ; $27 ; marcelnote - added Aide's house
	map_const OAKS_LAB,                       5,  6 ; $28
	map_const VIRIDIAN_POKECENTER,            7,  4 ; $29
	map_const VIRIDIAN_MART,                  4,  4 ; $2A
	map_const VIRIDIAN_SCHOOL_HOUSE,          4,  4 ; $2B
	map_const VIRIDIAN_NICKNAME_HOUSE,        4,  4 ; $2C
	map_const VIRIDIAN_GYM,                  10,  9 ; $2D
	map_const DIGLETTS_CAVE_ROUTE_2,          4,  4 ; $2E
	map_const VIRIDIAN_FOREST_NORTH_GATE,     5,  4 ; $2F
	map_const ROUTE_2_TRADE_HOUSE,            4,  4 ; $30
	map_const ROUTE_2_GATE,                   5,  4 ; $31
	map_const VIRIDIAN_FOREST_SOUTH_GATE,     5,  4 ; $32
	map_const VIRIDIAN_FOREST,               17, 24 ; $33
	map_const MUSEUM_1F,                     10,  4 ; $34
	map_const MUSEUM_2F,                      7,  4 ; $35
	map_const PEWTER_GYM,                     5,  7 ; $36
	map_const PEWTER_NIDORAN_HOUSE,           4,  4 ; $37
	map_const PEWTER_MART,                    4,  4 ; $38
	map_const PEWTER_SPEECH_HOUSE,            4,  4 ; $39
	map_const PEWTER_POKECENTER,              7,  4 ; $3A
	map_const MT_MOON_1F,                    20, 18 ; $3B
	map_const MT_MOON_B1F,                   14, 14 ; $3C
	map_const MT_MOON_B2F,                   20, 18 ; $3D
	map_const CERULEAN_TRASHED_HOUSE,         4,  4 ; $3E
	map_const CERULEAN_TRADE_HOUSE,           4,  4 ; $3F
	map_const CERULEAN_POKECENTER,            7,  4 ; $40
	map_const CERULEAN_GYM,                   5,  7 ; $41
	map_const BIKE_SHOP,                      4,  4 ; $42
	map_const CERULEAN_MART,                  4,  4 ; $43
	map_const MT_MOON_POKECENTER,             7,  4 ; $44
	map_const CERULEAN_TRASHED_HOUSE_COPY,    4,  4 ; $45
	map_const ROUTE_5_GATE,                  10,  3 ; $46 ; marcelnote - added 2nd floor
	map_const UNDERGROUND_PATH_ROUTE_5,       4,  4 ; $47
	map_const DAYCARE,                        4,  4 ; $48
	map_const ROUTE_6_GATE,                  10,  3 ; $49 ; marcelnote - added 2nd floor
	map_const UNDERGROUND_PATH_ROUTE_6,       4,  4 ; $4A
	map_const UNDERGROUND_PATH_ROUTE_6_COPY,  4,  4 ; $4B
	map_const ROUTE_7_GATE,                   3, 10 ; $4C ; marcelnote - added 2nd floor
	map_const UNDERGROUND_PATH_ROUTE_7,       4,  4 ; $4D
	map_const UNDERGROUND_PATH_ROUTE_7_COPY,  4,  4 ; $4E
	map_const ROUTE_8_GATE,                   3, 10 ; $4F ; marcelnote - added 2nd floor
	map_const UNDERGROUND_PATH_ROUTE_8,       4,  4 ; $50
	map_const ROCK_TUNNEL_POKECENTER,         7,  4 ; $51
	map_const ROCK_TUNNEL_1F,                20, 18 ; $52
	map_const POWER_PLANT,                   20, 18 ; $53
	map_const ROUTE_11_GATE,                  4, 11 ; $54 ; marcelnote - merged ROUTE_11_GATE floors
	map_const DIGLETTS_CAVE_ROUTE_11,         4,  4 ; $55
	map_const PALLET_HOUSES,                 11,  4 ; $56 ; marcelnote - was ROUTE_11_GATE_2F
	map_const ROUTE_12_GATE,                 11,  4 ; $57 ; marcelnote - merged ROUTE_12_GATE floors
	map_const BILLS_HOUSE,                    4,  4 ; $58
	map_const VERMILION_POKECENTER,           7,  4 ; $59
	map_const POKEMON_FAN_CLUB,               4,  4 ; $5A
	map_const VERMILION_MART,                 4,  4 ; $5B
	map_const VERMILION_GYM,                  5,  9 ; $5C
	map_const VERMILION_PIDGEY_HOUSE,         4,  4 ; $5D
	map_const VERMILION_DOCK,                14,  6 ; $5E
	map_const SS_ANNE_1F,                    20,  9 ; $5F
	map_const SS_ANNE_2F,                    20,  9 ; $60
	map_const SS_ANNE_3F,                    10,  3 ; $61
	map_const SS_ANNE_B1F,                   15,  4 ; $62
	map_const SS_ANNE_BOW,                   10,  7 ; $63
	map_const SS_ANNE_KITCHEN,                7,  8 ; $64
	map_const SS_ANNE_CAPTAINS_ROOM,          3,  4 ; $65
	map_const SS_ANNE_1F_ROOMS,              12,  8 ; $66
	map_const SS_ANNE_2F_ROOMS,              12,  8 ; $67
	map_const SS_ANNE_B1F_ROOMS,             12,  8 ; $68
	map_const CINNABAR_VOLCANO_1FB1F,        14, 18 ; $69 ; marcelnote - new location
	map_const CINNABAR_VOLCANO_2F,           17, 15 ; $6A ; marcelnote - new location
	map_const UNUSED_MAP_6B,                  0,  0 ; $6B
	map_const VICTORY_ROAD_1F,               10,  9 ; $6C
	map_const MANDARIN_POKECENTER_MART,      14,  4 ; $6D ; marcelnote - was UNUSED_MAP_6D
	map_const MANDARIN_SURF_SHOP,             4,  4 ; $6E ; marcelnote - was UNUSED_MAP_6E
	map_const MANDARIN_HOTEL,                33,  6 ; $6F ; marcelnote - was UNUSED_MAP_6F
	map_const MANDARIN_SILPH_CO,              4, 25 ; $70 ; marcelnote - was UNUSED_MAP_70
	map_const LANCES_ROOM,                   13, 13 ; $71
	map_const SILPH_FACTORY_1F,              14, 13 ; $72 ; marcelnote - was UNUSED_MAP_72
	map_const SILPH_FACTORY_2F,              15, 14 ; $73 ; marcelnote - was UNUSED_MAP_73
	map_const UNUSED_MAP_74,                  0,  0 ; $74
	map_const UNUSED_MAP_75,                  0,  0 ; $75
	map_const HALL_OF_FAME,                   5,  4 ; $76
	map_const UNDERGROUND_PATH_NORTH_SOUTH,   4, 24 ; $77 ; UndergroundPathNorthSouth.blk is actually 4x23
	map_const CHAMPIONS_ROOM,                 4,  4 ; $78
	map_const UNDERGROUND_PATH_WEST_EAST,    25,  4 ; $79
	map_const CELADON_MART_1F2F3F,           10, 18 ; $7A ; marcelnote - merged 1F 2F 3F
	map_const UNUSED_MAP_7B,                  0,  0 ; $7B ; marcelnote - was CELADON_MART_2F
	map_const UNUSED_MAP_7C,                  0,  0 ; $7C ; marcelnote - was CELADON_MART_3F
	map_const CELADON_MART_4F5F6F,           10, 18 ; $7D ; marcelnote - merged 4F 5F + new 6F
	map_const CELADON_MART_ROOF,             10,  6 ; $7E ; marcelnote - expanded from y=4
	map_const CELADON_MART_ELEVATOR,          2,  2 ; $7F
	map_const CELADON_MANSION_1F,             4,  6 ; $80
	map_const CELADON_MANSION_2F,             4,  6 ; $81
	map_const CELADON_MANSION_3F,             4,  6 ; $82
	map_const CELADON_MANSION_ROOF,           4,  8 ; $83 ; marcelnote - expanded from y=6
	map_const CELADON_MANSION_ROOF_HOUSE,     4,  4 ; $84
	map_const CELADON_POKECENTER,             7,  4 ; $85
	map_const CELADON_GYM,                    5,  9 ; $86
	map_const GAME_CORNER,                   10,  9 ; $87
	map_const FUCHSIA_MOVE_DELETER_HOUSE,     4,  4 ; $88 ; marcelnote - new location, was CELADON_MART_5F
	map_const GAME_CORNER_PRIZE_ROOM,         5,  4 ; $89
	map_const CELADON_DINER,                  5,  4 ; $8A
	map_const CELADON_CHIEF_HOUSE,            4,  4 ; $8B
	map_const CELADON_HOTEL,                  7,  4 ; $8C
	map_const LAVENDER_POKECENTER,            7,  4 ; $8D
	map_const POKEMON_TOWER_1F,              10,  9 ; $8E
	map_const POKEMON_TOWER_2F,              10,  9 ; $8F
	map_const POKEMON_TOWER_3F,              10,  9 ; $90
	map_const POKEMON_TOWER_4F,              10,  9 ; $91
	map_const POKEMON_TOWER_5F,              10,  9 ; $92
	map_const POKEMON_TOWER_6F,              10,  9 ; $93
	map_const POKEMON_TOWER_7F,              10,  9 ; $94
	map_const MR_FUJIS_HOUSE,                 4,  4 ; $95
	map_const LAVENDER_MART,                  4,  4 ; $96
	map_const LAVENDER_CUBONE_HOUSE,          4,  4 ; $97
	map_const FUCHSIA_MART,                   4,  4 ; $98
	map_const FUCHSIA_BILLS_GRANDPAS_HOUSE,   4,  4 ; $99
	map_const FUCHSIA_POKECENTER,             7,  4 ; $9A
	map_const WARDENS_HOUSE,                  5,  4 ; $9B
	map_const SAFARI_ZONE_GATE,               4,  3 ; $9C
	map_const FUCHSIA_GYM,                    5,  9 ; $9D
	map_const FUCHSIA_MEETING_ROOM,           7,  4 ; $9E
	map_const SEAFOAM_ISLANDS_B1F,           15,  9 ; $9F
	map_const SEAFOAM_ISLANDS_B2F,           15,  9 ; $A0
	map_const SEAFOAM_ISLANDS_B3F,           15,  9 ; $A1
	map_const SEAFOAM_ISLANDS_B4F,           15,  9 ; $A2
	map_const VERMILION_GOOD_ROD_HOUSE,       4,  4 ; $A3 ; marcelnote - from Old to Good Rod
	map_const FUCHSIA_SUPER_ROD_HOUSE,        4,  4 ; $A4 ; marcelnote - from Good to Super Rod
	map_const POKEMON_MANSION_1F,            15, 14 ; $A5
	map_const CINNABAR_GYM,                  10,  9 ; $A6
	map_const CINNABAR_LAB,                   9,  4 ; $A7
	map_const CINNABAR_LAB_TRADE_ROOM,        4,  4 ; $A8
	map_const CINNABAR_LAB_METRONOME_ROOM,    4,  4 ; $A9
	map_const CINNABAR_LAB_FOSSIL_ROOM,       4,  4 ; $AA
	map_const CINNABAR_POKECENTER,            7,  4 ; $AB
	map_const CINNABAR_MART,                  4,  4 ; $AC
	map_const CINNABAR_MART_COPY,             4,  4 ; $AD
	map_const INDIGO_PLATEAU_LOBBY,           8,  6 ; $AE
	map_const COPYCATS_HOUSE_1F,              4,  4 ; $AF
	map_const COPYCATS_HOUSE_2F,              4,  4 ; $B0
	map_const FIGHTING_DOJO,                  5,  6 ; $B1
	map_const SAFFRON_GYM,                   10,  9 ; $B2
	map_const SAFFRON_PIDGEY_HOUSE,           4,  4 ; $B3
	map_const SAFFRON_MART,                   4,  4 ; $B4
	map_const SILPH_CO_1F,                   15,  9 ; $B5
	map_const SAFFRON_POKECENTER,             7,  4 ; $B6
	map_const MR_PSYCHICS_HOUSE,              4,  4 ; $B7
	map_const ROUTE_15_GATE,                  4, 11 ; $B8 ; marcelnote - merged ROUTE_15_GATE floors
	map_const CELADON_GROVE,                 22, 24 ; $B9 ; marcelnote - new location, was ROUTE_15_GATE_2F
	map_const ROUTE_16_GATE,                  4, 13 ; $BA ; marcelnote - merged ROUTE_16_GATE floors
	map_const CELADON_GROVE_SOUTH_GATE,       5,  4 ; $BB ; marcelnote - new location, was ROUTE_15_GATE_2F
	map_const ROUTE_16_FLY_HOUSE,             4,  4 ; $BC
	map_const ROUTE_12_FISHING_GUIDE_HOUSE,   4,  4 ; $BD ; marcelnote - from Super Rod to Fishing Guide
	map_const ROUTE_18_GATE,                  4, 11 ; $BE ; marcelnote - merged ROUTE_18_GATE floors
	map_const CELADON_GROVE_NORTH_GATE,       5,  4 ; $BF ; marcelnote - new location, was ROUTE_18_GATE_2F
	map_const SEAFOAM_ISLANDS_1F,            15,  9 ; $C0
	map_const ROUTE_22_GATE,                 18,  4 ; $C1 ; marcelnote - added 2nd floor
	map_const VICTORY_ROAD_2F,               15,  9 ; $C2
	map_const ROUTE_22_GATE_3F,               6,  5 ; $C3 ; marcelnote - new location, was ROUTE_12_GATE_2F
	map_const VERMILION_TRADE_HOUSE,          4,  4 ; $C4
	map_const DIGLETTS_CAVE,                 20, 18 ; $C5
	map_const VICTORY_ROAD_3F,               15,  9 ; $C6
	map_const ROCKET_HIDEOUT_B1F,            15, 14 ; $C7
	map_const ROCKET_HIDEOUT_B2F,            15, 14 ; $C8
	map_const ROCKET_HIDEOUT_B3F,            15, 14 ; $C9
	map_const ROCKET_HIDEOUT_B4F,            15, 12 ; $CA
	map_const ROCKET_HIDEOUT_ELEVATOR,        3,  4 ; $CB
	map_const ROUTE_22_OLD_ROD_HOUSE,         4,  4 ; $CC ; marcelnote - new location
	map_const POKEMON_ACADEMY_1F2F,          19,  6 ; $CD ; marcelnote - new location
	map_const POKEMON_ACADEMY_3F4F,          19,  6 ; $CE ; marcelnote - new location
	map_const SILPH_CO_2F,                   15,  9 ; $CF
	map_const SILPH_CO_3F,                   15,  9 ; $D0
	map_const SILPH_CO_4F,                   15,  9 ; $D1
	map_const SILPH_CO_5F,                   15,  9 ; $D2
	map_const SILPH_CO_6F,                   13,  9 ; $D3
	map_const SILPH_CO_7F,                   13,  9 ; $D4
	map_const SILPH_CO_8F,                   13,  9 ; $D5
	map_const POKEMON_MANSION_2F,            15, 14 ; $D6
	map_const POKEMON_MANSION_3F,            15,  9 ; $D7
	map_const POKEMON_MANSION_B1F,           15, 14 ; $D8
	map_const SAFARI_ZONE_EAST,              15, 13 ; $D9
	map_const SAFARI_ZONE_NORTH,             20, 18 ; $DA
	map_const SAFARI_ZONE_WEST,              15, 13 ; $DB
	map_const SAFARI_ZONE_CENTER,            15, 13 ; $DC
	map_const SAFARI_ZONE_CENTER_REST_HOUSE,  4,  4 ; $DD
	map_const SAFARI_ZONE_SECRET_HOUSE,       4,  4 ; $DE
	map_const SAFARI_ZONE_WEST_REST_HOUSE,    4,  4 ; $DF
	map_const SAFARI_ZONE_EAST_REST_HOUSE,    4,  4 ; $E0
	map_const SAFARI_ZONE_NORTH_REST_HOUSE,   4,  4 ; $E1
	map_const CERULEAN_CAVE_2F,              15,  9 ; $E2
	map_const CERULEAN_CAVE_B1F,             15,  9 ; $E3
	map_const CERULEAN_CAVE_1F,              15,  9 ; $E4
	map_const NAME_RATERS_HOUSE,              4,  4 ; $E5
	map_const CERULEAN_BADGE_HOUSE,           4,  4 ; $E6
	map_const MT_MOON_SQUARE,                12,  6 ; $E7 ; marcelnote - new location
	map_const ROCK_TUNNEL_B1F,               20, 18 ; $E8
	map_const SILPH_CO_9F,                   13,  9 ; $E9
	map_const SILPH_CO_10F,                   8,  9 ; $EA
	map_const SILPH_CO_11F,                   9,  9 ; $EB
	map_const SILPH_CO_ELEVATOR,              2,  2 ; $EC
	map_const UNUSED_MAP_ED,                  0,  0 ; $ED ; marcelnote - used by SilphCoElevator_Object
	map_const UNUSED_MAP_EE,                  0,  0 ; $EE
	map_const TRADE_CENTER,                   5,  4 ; $EF
	map_const COLOSSEUM,                      5,  4 ; $F0
	map_const MT_SILVER_1F,                  12, 18 ; $F1 ; marcelnote - new location
	map_const MT_SILVER_2F,                  15, 17 ; $F2 ; marcelnote - new location
	map_const MT_SILVER_3F,                  10, 18 ; $F3 ; marcelnote - new location
	map_const UNUSED_MAP_F4,                  0,  0 ; $F4
	map_const LORELEIS_ROOM,                  5,  6 ; $F5
	map_const BRUNOS_ROOM,                    5,  6 ; $F6
	map_const AGATHAS_ROOM,                   5,  6 ; $F7
DEF NUM_MAPS EQU const_value

; Indoor maps, such as houses, use this as the Map ID in their exit warps
; This map ID takes the player back to the last outdoor map they were on, stored in wLastMap
DEF LAST_MAP EQU -1
