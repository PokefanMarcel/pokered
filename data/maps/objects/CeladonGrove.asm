; marcelnote - new location
	object_const_def
	const_export CELADONGROVE_YOUNGSTER
	const_export CELADONGROVE_CHANNELER1
	const_export CELADONGROVE_SUPERNERD
	const_export CELADONGROVE_MEW
	const_export CELADONGROVE_GRAMPS
	const_export CELADONGROVE_CHANNELER2
	const_export CELADONGROVE_LEAF_STONE
	const_export CELADONGROVE_GREAT_BALL

CeladonGrove_Object:
	db $3 ; border block

	def_warp_events
	warp_event 38, 47, CELADON_GROVE_SOUTH_GATE, 1
	warp_event 39, 47, CELADON_GROVE_SOUTH_GATE, 1
	warp_event  4,  0, CELADON_GROVE_NORTH_GATE, 2
	warp_event  5,  0, CELADON_GROVE_NORTH_GATE, 3

	def_bg_events
	bg_event 38, 38, TEXT_CELADONGROVE_ENTRANCESIGN
	bg_event 28,  8, TEXT_CELADONGROVE_SHRINESIGN

	def_object_events
	object_event 22, 40, SPRITE_YOUNGSTER, STAY, RIGHT, TEXT_CELADONGROVE_YOUNGSTER, OPP_BUG_CATCHER, 16
	object_event 33, 28, SPRITE_CHANNELER, STAY, DOWN, TEXT_CELADONGROVE_CHANNELER1, OPP_CHANNELER, 1
	object_event  7, 15, SPRITE_SUPER_NERD, STAY, LEFT, TEXT_CELADONGROVE_SUPERNERD, OPP_POKEMANIAC, 8
	object_event  8, 40, SPRITE_MONSTER, STAY, NONE, TEXT_CELADONGROVE_MEW, MEW, 30
	object_event 29,  8, SPRITE_GRAMPS, STAY, DOWN, TEXT_CELADONGROVE_GRAMPS
	object_event 19,  5, SPRITE_CHANNELER, STAY, RIGHT, TEXT_CELADONGROVE_CHANNELER2
	object_event 36,  9, SPRITE_POKE_BALL, STAY, NONE, TEXT_VIRIDIANFOREST_LEAF_STONE, LEAF_STONE
	object_event 15, 21, SPRITE_POKE_BALL, STAY, NONE, TEXT_VIRIDIANFOREST_GREAT_BALL, GREAT_BALL

	def_warps_to CELADON_GROVE
