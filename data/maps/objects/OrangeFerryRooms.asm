; marcelnote - new location
	object_const_def
	const_export ORANGEFERRYROOMS_GENTLEMAN
	const_export ORANGEFERRYROOMS_HIKER
	const_export ORANGEFERRYROOMS_COOLTRAINER_F
	const_export ORANGEFERRYROOMS_CAPTAIN
	const_export ORANGEFERRYROOMS_NURSE
	const_export ORANGEFERRYROOMS_GRAMPS
	const_export ORANGEFERRYROOMS_SCIENTIST
	const_export ORANGEFERRYROOMS_FOSSIL

OrangeFerryRooms_Object:
	db $c ; border block

	def_warp_events
	warp_event 30, 11, ORANGE_FERRY_DECK, 5  ; Captain's room
	warp_event  1, 11, ORANGE_FERRY_DECK, 6  ; top rooms
	warp_event  2, 11, ORANGE_FERRY_DECK, 6
	warp_event 11, 11, ORANGE_FERRY_DECK, 7
	warp_event 12, 11, ORANGE_FERRY_DECK, 7
	warp_event 21, 11, ORANGE_FERRY_DECK, 8
	warp_event 22, 11, ORANGE_FERRY_DECK, 8
	warp_event  0,  0, ORANGE_FERRY_DECK, 9  ; bottom rooms
	warp_event 10,  0, ORANGE_FERRY_DECK, 10
	warp_event 20,  0, ORANGE_FERRY_DECK, 11


	def_bg_events

	def_object_events
	; trainers
	object_event  0,  2, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_ORANGEFERRYROOMS_GENTLEMAN, OPP_GENTLEMAN, 9
	object_event 23,  1, SPRITE_HIKER, STAY, LEFT, TEXT_ORANGEFERRYROOMS_HIKER, OPP_HIKER, 16
	object_event 13, 10, SPRITE_COOLTRAINER_F, STAY, LEFT, TEXT_ORANGEFERRYROOMS_COOLTRAINER_F, OPP_LASS, 20
	; nontrainers
	object_event 35,  9, SPRITE_CAPTAIN, STAY, RIGHT, TEXT_ORANGEFERRYROOMS_CAPTAIN
	object_event  2,  9, SPRITE_NURSE, STAY, DOWN, TEXT_ORANGEFERRYROOMS_NURSE
	object_event 20, 10, SPRITE_GRAMPS, STAY, DOWN, TEXT_ORANGEFERRYROOMS_GRAMPS
	object_event 11,  2, SPRITE_SCIENTIST, STAY, DOWN, TEXT_ORANGEFERRYROOMS_SCIENTIST
	object_event 11,  3, SPRITE_FOSSIL, STAY, NONE, TEXT_ORANGEFERRYROOMS_FOSSIL

	def_warps_to ORANGE_FERRY_ROOMS