; Valid sprite IDs for each outdoor map.

MapSpriteSets:
	table_width 1, MapSpriteSets
	db SPRITESET_PALLET_VIRIDIAN ; PALLET_TOWN
	db SPRITESET_PALLET_VIRIDIAN ; VIRIDIAN_CITY
	db SPRITESET_PEWTER_CERULEAN ; PEWTER_CITY
	db SPRITESET_PEWTER_CERULEAN ; CERULEAN_CITY
	db SPRITESET_LAVENDER        ; LAVENDER_TOWN
	db SPRITESET_VERMILION       ; VERMILION_CITY
	db SPRITESET_CELADON         ; CELADON_CITY
	db SPRITESET_FUCHSIA         ; FUCHSIA_CITY
	db SPRITESET_PALLET_VIRIDIAN ; CINNABAR_ISLAND
	db SPRITESET_INDIGO          ; INDIGO_PLATEAU
	db SPRITESET_SAFFRON         ; SAFFRON_CITY
	db SPRITESET_PALLET_VIRIDIAN ; UNUSED_MAP_0B
	db SPRITESET_PALLET_VIRIDIAN ; ROUTE_1
	db SPLITSET_ROUTE_2          ; ROUTE_2
	db SPRITESET_PEWTER_CERULEAN ; ROUTE_3
	db SPRITESET_PEWTER_CERULEAN ; ROUTE_4
	db SPLITSET_ROUTE_5          ; ROUTE_5
	db SPLITSET_ROUTE_6          ; ROUTE_6
	db SPLITSET_ROUTE_7          ; ROUTE_7
	db SPLITSET_ROUTE_8          ; ROUTE_8
	db SPRITESET_PEWTER_CERULEAN ; ROUTE_9
	db SPLITSET_ROUTE_10         ; ROUTE_10
	db SPLITSET_ROUTE_11         ; ROUTE_11
	db SPLITSET_ROUTE_12         ; ROUTE_12
	db SPRITESET_SILENCE_BRIDGE  ; ROUTE_13
	db SPRITESET_SILENCE_BRIDGE  ; ROUTE_14
	db SPLITSET_ROUTE_15         ; ROUTE_15
	db SPLITSET_ROUTE_16         ; ROUTE_16
	db SPRITESET_CYCLING_ROAD    ; ROUTE_17
	db SPLITSET_ROUTE_18         ; ROUTE_18
	db SPRITESET_FUCHSIA         ; ROUTE_19
	db SPLITSET_ROUTE_20         ; ROUTE_20
	db SPRITESET_PALLET_VIRIDIAN ; ROUTE_21
	db SPRITESET_PALLET_VIRIDIAN ; ROUTE_22
	db SPRITESET_INDIGO          ; ROUTE_23
	db SPRITESET_PEWTER_CERULEAN ; ROUTE_24
	db SPRITESET_PEWTER_CERULEAN ; ROUTE_25
	assert_table_length FIRST_INDOOR_MAP

; Format:
; #1: whether the map is split EAST_WEST or NORTH_SOUTH
; #2: coordinate of dividing line
; #3: sprite set ID if on the west or north side
; #4: sprite set ID if on the east or south side
SplitMapSpriteSets:
	table_width 4, SplitMapSpriteSets
	db NORTH_SOUTH, 37, SPRITESET_PEWTER_CERULEAN, SPRITESET_PALLET_VIRIDIAN ; SPLITSET_ROUTE_2
	db NORTH_SOUTH, 50, SPRITESET_PEWTER_CERULEAN, SPRITESET_LAVENDER        ; SPLITSET_ROUTE_10
	db EAST_WEST,   57, SPRITESET_VERMILION,       SPRITESET_SILENCE_BRIDGE  ; SPLITSET_ROUTE_11
	db NORTH_SOUTH, 21, SPRITESET_LAVENDER,        SPRITESET_SILENCE_BRIDGE  ; SPLITSET_ROUTE_12
	db EAST_WEST,    8, SPRITESET_FUCHSIA,         SPRITESET_SILENCE_BRIDGE  ; SPLITSET_ROUTE_15
	db EAST_WEST,   24, SPRITESET_CYCLING_ROAD,    SPRITESET_CELADON         ; SPLITSET_ROUTE_16
	db EAST_WEST,   34, SPRITESET_CYCLING_ROAD,    SPRITESET_FUCHSIA         ; SPLITSET_ROUTE_18
	db EAST_WEST,   53, SPRITESET_PALLET_VIRIDIAN, SPRITESET_FUCHSIA         ; SPLITSET_ROUTE_20
	db NORTH_SOUTH, 33, SPRITESET_PEWTER_CERULEAN, SPRITESET_SAFFRON         ; SPLITSET_ROUTE_5
	db NORTH_SOUTH,  2, SPRITESET_SAFFRON,         SPRITESET_VERMILION       ; SPLITSET_ROUTE_6
	db EAST_WEST,   17, SPRITESET_CELADON,         SPRITESET_SAFFRON         ; SPLITSET_ROUTE_7
	db EAST_WEST,    3, SPRITESET_SAFFRON,         SPRITESET_LAVENDER        ; SPLITSET_ROUTE_8
	assert_table_length NUM_SPLIT_SETS

SpriteSets:
	table_width SPRITE_SET_LENGTH, SpriteSets

; SPRITESET_PALLET_VIRIDIAN
	db SPRITE_BLUE
	db SPRITE_YOUNGSTER
	db SPRITE_GIRL
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_GAMBLER
	db SPRITE_SEEL
	db SPRITE_OAK
	db SPRITE_SWIMMER
	db SPRITE_POKE_BALL
	db SPRITE_GAMBLER_ASLEEP

; SPRITESET_PEWTER_CERULEAN
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKET
	db SPRITE_SUPER_NERD
	db SPRITE_HIKER
	db SPRITE_MONSTER
	db SPRITE_BLUE
	db SPRITE_GUARD
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKE_BALL
	db SPRITE_UNUSED_GAMBLER_ASLEEP_2

; SPRITESET_LAVENDER
	db SPRITE_LITTLE_GIRL
	db SPRITE_GIRL
	db SPRITE_SUPER_NERD
	db SPRITE_HIKER
	db SPRITE_GAMBLER
	db SPRITE_MONSTER
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_AGATHA
	db SPRITE_POKE_BALL
	db SPRITE_GUARD

; SPRITESET_VERMILION
	db SPRITE_BEAUTY
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	db SPRITE_GAMBLER
	db SPRITE_MONSTER
	db SPRITE_GUARD
	db SPRITE_SAILOR
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKE_BALL
	db SPRITE_UNUSED_GAMBLER_ASLEEP_2

; SPRITESET_CELADON
	db SPRITE_LITTLE_GIRL
	db SPRITE_LITTLE_BOY
	db SPRITE_GIRL
	db SPRITE_FISHER
	db SPRITE_MIDDLE_AGED_MAN
	db SPRITE_GRAMPS
	db SPRITE_MONSTER
	db SPRITE_GUARD
	db SPRITE_ROCKET
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX

; SPRITESET_INDIGO
	db SPRITE_YOUNGSTER
	db SPRITE_GYM_GUIDE
	db SPRITE_MONSTER
	db SPRITE_BLUE
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_SWIMMER
	db SPRITE_GUARD
	db SPRITE_GAMBLER
	db SPRITE_POKE_BALL
	db SPRITE_UNUSED_GAMBLER_ASLEEP_2

; SPRITESET_SAFFRON
	db SPRITE_ROCKET
	db SPRITE_SCIENTIST
	db SPRITE_SILPH_WORKER_M
	db SPRITE_SILPH_WORKER_F
	db SPRITE_GENTLEMAN
	db SPRITE_BIRD
	db SPRITE_ROCKER
	db SPRITE_COOLTRAINER_M
	db SPRITE_MONSTER
	db SPRITE_POKE_BALL
	db SPRITE_UNUSED_GAMBLER_ASLEEP_2

; SPRITESET_SILENCE_BRIDGE
	db SPRITE_BIKER
	db SPRITE_SUPER_NERD
	db SPRITE_MIDDLE_AGED_MAN
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_BEAUTY
	db SPRITE_FISHER
	db SPRITE_ROCKER
	db SPRITE_MONSTER
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX

; SPRITESET_CYCLING_ROAD
	db SPRITE_BIKER
	db SPRITE_COOLTRAINER_M
	db SPRITE_SILPH_WORKER_M
	db SPRITE_FISHER
	db SPRITE_ROCKER
	db SPRITE_HIKER
	db SPRITE_GAMBLER
	db SPRITE_MIDDLE_AGED_MAN
	db SPRITE_SUPER_NERD
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX

; SPRITESET_FUCHSIA
	db SPRITE_BIRD
	db SPRITE_COOLTRAINER_M
	db SPRITE_FAIRY
	db SPRITE_FISHER
	db SPRITE_GAMBLER
	db SPRITE_MONSTER
	db SPRITE_SEEL
	db SPRITE_SWIMMER
	db SPRITE_YOUNGSTER
	db SPRITE_POKE_BALL
	db SPRITE_FOSSIL

	assert_table_length NUM_SPRITE_SETS
