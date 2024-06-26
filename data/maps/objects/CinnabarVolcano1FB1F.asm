;marcelnote - new location
	object_const_def
	const_export CINNABARVOLCANOB1F_SCIENTIST
	const_export CINNABARVOLCANOB1F_HIKER
	const_export CINNABARVOLCANOB1F_COOLTRAINER_F
	const_export CINNABARVOLCANO1F_COOLTRAINER_M
	const_export CINNABARVOLCANO1F_BURGLAR
	const_export CINNABARVOLCANO1F_GENTLEMAN
	const_export CINNABARVOLCANO1F_BEAUTY
	const_export CINNABARVOLCANOB1F_CHARIZARD  ; marcelnote - postgame Lance event
	const_export CINNABARVOLCANO1F_LANCE       ; marcelnote - postgame Lance event
	const_export CINNABARVOLCANOB1F_LANCE      ; marcelnote - postgame Lance event
	const_export CINNABARVOLCANOB1F_IRON
	const_export CINNABARVOLCANOB1F_ICE_HEAL
	const_export CINNABARVOLCANO1F_FULL_RESTORE
	const_export CINNABARVOLCANO1F_BOULDER

CinnabarVolcano1FB1F_Object:
	db $3 ; border block

	def_warp_events
	warp_event 27, 11, LAST_MAP, 6
	warp_event 27, 12, LAST_MAP, 6
	warp_event  2,  2, CINNABAR_VOLCANO_1FB1F, 5
	warp_event  3, 13, CINNABAR_VOLCANO_1FB1F, 6
	warp_event  2, 21, CINNABAR_VOLCANO_1FB1F, 3
	warp_event  3, 34, CINNABAR_VOLCANO_1FB1F, 4
	warp_event 26, 23, CINNABAR_VOLCANO_2F, 1

	def_bg_events
	bg_event  5, 25, TEXT_CINNABARVOLCANOB1F_LAVA_SIGN
	bg_event 23, 11, TEXT_CINNABARVOLCANO1F_BURNHEAL_SIGN

	def_object_events
	object_event 19, 30, SPRITE_SCIENTIST, STAY, DOWN, TEXT_CINNABARVOLCANOB1F_SCIENTIST, OPP_SCIENTIST, 14
	object_event 17, 27, SPRITE_HIKER, STAY, LEFT, TEXT_CINNABARVOLCANOB1F_HIKER, OPP_HIKER, 15
	object_event  9, 23, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_CINNABARVOLCANOB1F_COOLTRAINER_F, OPP_COOLTRAINER_F, 9
	object_event  3,  6, SPRITE_COOLTRAINER_M, STAY, DOWN, TEXT_CINNABARVOLCANO1F_COOLTRAINER_M, OPP_COOLTRAINER_M, 11
	object_event  7, 14, SPRITE_SUPER_NERD, STAY, UP, TEXT_CINNABARVOLCANO1F_BURGLAR, OPP_BURGLAR, 10
	object_event 17, 10, SPRITE_GENTLEMAN, STAY, UP, TEXT_CINNABARVOLCANO1F_GENTLEMAN, OPP_GENTLEMAN, 7
	object_event  5,  2, SPRITE_BEAUTY, STAY, RIGHT, TEXT_CINNABARVOLCANO1F_BEAUTY, OPP_BEAUTY, 16
	object_event 19, 23, SPRITE_MONSTER, STAY, RIGHT, TEXT_CINNABARVOLCANOB1F_CHARIZARD       ; marcelnote - postgame Lance event
	object_event 24, 10, SPRITE_LANCE, STAY, NONE, TEXT_CINNABARVOLCANO1F_LANCE_CAME_IN_HASTE ; marcelnote - postgame Lance event
	object_event 20, 23, SPRITE_LANCE, STAY, LEFT, TEXT_CINNABARVOLCANOB1F_LANCE_TOGETHER     ; marcelnote - postgame Lance event
	object_event 12, 24, SPRITE_POKE_BALL, STAY, NONE, TEXT_CINNABARVOLCANOB1F_IRON, IRON
	object_event 13, 34, SPRITE_POKE_BALL, STAY, NONE, TEXT_CINNABARVOLCANOB1F_ICE_HEAL, ICE_HEAL
	object_event  5,  1, SPRITE_POKE_BALL, STAY, NONE, TEXT_CINNABARVOLCANO1F_FULL_RESTORE, FULL_RESTORE
	object_event 18, 12, SPRITE_BOULDER, STAY, BOULDER_MOVEMENT_BYTE_2, TEXT_CINNABARVOLCANO1F_BOULDER

	def_warps_to CINNABAR_VOLCANO_1FB1F
