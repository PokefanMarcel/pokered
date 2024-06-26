	object_const_def
	const_export CELADONMANSION3F_PROGRAMMER
	const_export CELADONMANSION3F_GRAPHIC_ARTIST
	const_export CELADONMANSION3F_WRITER
	const_export CELADONMANSION3F_GAME_DESIGNER

CeladonMansion3F_Object:
	db $0 ; border block ; marcelnote - chanegd from $f

	def_warp_events
	warp_event  6,  0, CELADON_MANSION_2F, 1   ; marcelnote - moved from y=1
	warp_event  7,  0, CELADON_MANSION_ROOF, 1 ; marcelnote - moved from y=1
	warp_event  2,  0, CELADON_MANSION_ROOF, 2 ; marcelnote - moved from y=1
	warp_event  4,  0, CELADON_MANSION_2F, 4   ; marcelnote - moved from y=1

	def_bg_events
	bg_event  1,  3, TEXT_CELADONMANSION3F_GAME_PROGRAM_PC
	bg_event  4,  3, TEXT_CELADONMANSION3F_PLAYING_GAME_PC
	bg_event  1,  6, TEXT_CELADONMANSION3F_GAME_SCRIPT_PC
	bg_event  4,  9, TEXT_CELADONMANSION3F_DEV_ROOM_SIGN

	def_object_events
	object_event  0,  4, SPRITE_BIKE_SHOP_CLERK, STAY, UP, TEXT_CELADONMANSION3F_PROGRAMMER
	object_event  3,  4, SPRITE_CLERK, STAY, UP, TEXT_CELADONMANSION3F_GRAPHIC_ARTIST
	object_event  0,  7, SPRITE_SUPER_NERD, STAY, UP, TEXT_CELADONMANSION3F_WRITER
	object_event  2,  3, SPRITE_SILPH_WORKER_M, STAY, NONE, TEXT_CELADONMANSION3F_GAME_DESIGNER

	def_warps_to CELADON_MANSION_3F
