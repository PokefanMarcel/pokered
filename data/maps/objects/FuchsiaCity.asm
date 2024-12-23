	object_const_def
	const_export FUCHSIACITY_YOUNGSTER1
	const_export FUCHSIACITY_GAMBLER
	const_export FUCHSIACITY_ERIK
	const_export FUCHSIACITY_YOUNGSTER2
	const_export FUCHSIACITY_BLACKBELT ; marcelnote - new NPC
	const_export FUCHSIACITY_PRIMEAPE  ; marcelnote - new NPC
	const_export FUCHSIACITY_CHANSEY
	const_export FUCHSIACITY_VOLTORB
	const_export FUCHSIACITY_KANGASKHAN
	const_export FUCHSIACITY_SLOWPOKE
	const_export FUCHSIACITY_LAPRAS
	const_export FUCHSIACITY_FOSSIL

FuchsiaCity_Object:
	db $f ; border block

	def_warp_events
	warp_event  5, 13, FUCHSIA_POKECENTER_MART, 3 ; marcelnote - merged Fuchsia Pokecenter and Mart
	warp_event 11, 27, FUCHSIA_BILLS_GRANDPAS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_MART, 1 ; marcelnote - merged Fuchsia Pokecenter and Mart
	warp_event 27, 27, WARDENS_HOUSE, 1
	warp_event 18,  3, SAFARI_ZONE_GATE, 1
	warp_event  5, 27, FUCHSIA_GYM, 1
	warp_event 22, 13, FUCHSIA_MEETING_ROOM, 1
	warp_event 31, 27, FUCHSIA_SUPER_ROD_HOUSE, 2 ; marcelnote - from Good to Super Rod
	warp_event 31, 24, FUCHSIA_SUPER_ROD_HOUSE, 1 ; marcelnote - from Good to Super Rod
	warp_event 15, 27, FUCHSIA_MOVE_DELETER_HOUSE, 1 ; marcelnote - Move deleter house

	def_bg_events
	bg_event 25, 15, TEXT_FUCHSIACITY_SIGN  ; marcelnote - removed unused sign bg object
	bg_event 17,  5, TEXT_FUCHSIACITY_SAFARI_GAME_SIGN
	bg_event  6, 13, TEXT_FUCHSIACITY_MART_SIGN
	bg_event 20, 27, TEXT_FUCHSIACITY_POKECENTER_SIGN
	bg_event 27, 29, TEXT_FUCHSIACITY_WARDENS_HOME_SIGN
	bg_event 21, 15, TEXT_FUCHSIACITY_SAFARI_ZONE_SIGN
	bg_event  5, 29, TEXT_FUCHSIACITY_GYM_SIGN
	bg_event 33,  7, TEXT_FUCHSIACITY_CHANSEY_SIGN
	bg_event 27,  7, TEXT_FUCHSIACITY_VOLTORB_SIGN
	bg_event 13,  7, TEXT_FUCHSIACITY_KANGASKHAN_SIGN
	bg_event 31, 13, TEXT_FUCHSIACITY_SLOWPOKE_SIGN
	bg_event 13, 15, TEXT_FUCHSIACITY_LAPRAS_SIGN
	bg_event  7,  7, TEXT_FUCHSIACITY_FOSSIL_SIGN

	def_object_events
	object_event 10, 12, SPRITE_YOUNGSTER, WALK, LEFT_RIGHT, TEXT_FUCHSIACITY_YOUNGSTER1
	object_event 28, 17, SPRITE_GAMBLER, WALK, LEFT_RIGHT, TEXT_FUCHSIACITY_GAMBLER
	object_event 30, 14, SPRITE_FISHER, STAY, DOWN, TEXT_FUCHSIACITY_ERIK
	object_event 24,  8, SPRITE_YOUNGSTER, STAY, UP, TEXT_FUCHSIACITY_YOUNGSTER2
	object_event 29, 32, SPRITE_BLACKBELT, STAY, NONE, TEXT_FUCHSIACITY_BLACKBELT    ; marcelnote - new NPC
	object_event 31, 32, SPRITE_MONSTER, WALK, LEFT_RIGHT, TEXT_FUCHSIACITY_PRIMEAPE ; marcelnote - new NPC
	object_event 31,  5, SPRITE_FAIRY, WALK, ANY_DIR, TEXT_FUCHSIACITY_CHANSEY
	object_event 25,  6, SPRITE_POKE_BALL, STAY, NONE, TEXT_FUCHSIACITY_VOLTORB
	object_event 12,  6, SPRITE_MONSTER, WALK, ANY_DIR, TEXT_FUCHSIACITY_KANGASKHAN  ; marcelnote - changed from LEFT_RIGHT
	object_event 30, 12, SPRITE_MONSTER, WALK, ANY_DIR, TEXT_FUCHSIACITY_SLOWPOKE    ; marcelnote - changed from LEFT_RIGHT
	object_event  8, 17, SPRITE_SEEL, WALK, ANY_DIR, TEXT_FUCHSIACITY_LAPRAS
	object_event  6,  5, SPRITE_FOSSIL, STAY, NONE, TEXT_FUCHSIACITY_FOSSIL

	def_warps_to FUCHSIA_CITY
