	object_const_def
	const_export POKEMONTOWER4F_CHANNELER1
	const_export POKEMONTOWER4F_CHANNELER2
	const_export POKEMONTOWER4F_CHANNELER3
	const_export POKEMONTOWER4F_ELIXIR
	const_export POKEMONTOWER4F_AWAKENING
	const_export POKEMONTOWER4F_HP_UP

PokemonTower4F_Object:
	db $1 ; border block

	def_warp_events
	warp_event  3,  9, POKEMON_TOWER_5F, 1
	warp_event 18,  9, POKEMON_TOWER_3F, 2

	def_bg_events

	def_object_events
	object_event  5, 10, SPRITE_CHANNELER, STAY, RIGHT, TEXT_POKEMONTOWER4F_CHANNELER1, OPP_CHANNELER, 9
	object_event 15,  7, SPRITE_CHANNELER, STAY, DOWN, TEXT_POKEMONTOWER4F_CHANNELER2, OPP_CHANNELER, 10
	object_event 14, 12, SPRITE_CHANNELER, STAY, LEFT, TEXT_POKEMONTOWER4F_CHANNELER3, OPP_CHANNELER, 12
	object_event 12, 10, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER4F_ELIXIR, ELIXIR
	object_event  9, 10, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER4F_AWAKENING, AWAKENING
	object_event 12, 16, SPRITE_POKE_BALL, STAY, NONE, TEXT_POKEMONTOWER4F_HP_UP, HP_UP

	def_warps_to POKEMON_TOWER_4F
