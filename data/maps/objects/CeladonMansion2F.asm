CeladonMansion2F_Object:
	db $0 ; border block ; marcelnote - chanegd from $f

	def_warp_events
	warp_event  6,  0, CELADON_MANSION_3F, 1 ; marcelnote - moved from y=1
	warp_event  7,  0, CELADON_MANSION_1F, 4 ; marcelnote - moved from y=1
	warp_event  2,  0, CELADON_MANSION_1F, 5 ; marcelnote - moved from y=1
	warp_event  4,  0, CELADON_MANSION_3F, 4 ; marcelnote - moved from y=1

	def_bg_events
	bg_event  4,  9, TEXT_CELADONMANSION2F_MEETING_ROOM_SIGN

	def_object_events

	def_warps_to CELADON_MANSION_2F
