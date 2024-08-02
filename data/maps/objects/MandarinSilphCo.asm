; marcelnote - new location
	object_const_def
	;const_export CELADONMANSION1F_GRANNY

MandarinSilphCo_Object:
	db $0 ; border block

	def_warp_events
	warp_event  4, 49, LAST_MAP, 5
	warp_event  5, 49, LAST_MAP, 5
	warp_event  6, 42, MANDARIN_SILPH_CO, 4 ; stairs 1F -> 2F
	warp_event  6, 28, MANDARIN_SILPH_CO, 3 ; stairs 2F -> 1F
	warp_event  7, 28, MANDARIN_SILPH_CO, 6 ; stairs 2F -> 3F
	warp_event  7, 14, MANDARIN_SILPH_CO, 5 ; stairs 3F -> 2F
	warp_event  6, 14, MANDARIN_SILPH_CO, 8 ; stairs 3F -> 4F
	warp_event  6,  0, MANDARIN_SILPH_CO, 7 ; stairs 4F -> 3F

	def_bg_events
	bg_event  4, 30, TEXT_MANDARINSILPHCO2F_SALES_SIGN
	bg_event  4, 16, TEXT_MANDARINSILPHCO3F_MEETING_ROOM_SIGN
	bg_event  4,  2, TEXT_MANDARINSILPHCO4F_REGIONAL_MANAGER_SIGN

	def_object_events
	object_event  2, 43, SPRITE_LINK_RECEPTIONIST, STAY, DOWN, TEXT_MANDARINSILPHCO1F_RECEPTIONIST_TEXT
	object_event  0, 32, SPRITE_SILPH_WORKER_F, STAY, UP, TEXT_MANDARINSILPHCO2F_WORKER_F_TEXT
	object_event  0, 35, SPRITE_SILPH_WORKER_M, STAY, UP, TEXT_MANDARINSILPHCO2F_WORKER_M_TEXT
	object_event  4, 34, SPRITE_COOLTRAINER_M, STAY, UP, TEXT_MANDARINSILPHCO2F_ASSISTANT_TEXT
	object_event  3, 18, SPRITE_SCIENTIST, STAY, NONE, TEXT_MANDARINSILPHCO3F_SCIENTIST_TEXT
	object_event  2,  6, SPRITE_GENTLEMAN, WALK, LEFT_RIGHT, TEXT_MANDARINSILPHCO4F_MANAGER_TEXT

	def_warps_to MANDARIN_SILPH_CO
