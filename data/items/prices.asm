ItemPrices::
	table_width 3, ItemPrices
	bcd3 0     ; MASTER_BALL
	bcd3 1200  ; ULTRA_BALL
	bcd3 600   ; GREAT_BALL
	bcd3 200   ; POKE_BALL
	bcd3 0     ; TOWN_MAP
	bcd3 0     ; BICYCLE
	bcd3 0     ; SURFBOARD
	bcd3 1000  ; SAFARI_BALL
	bcd3 0     ; POKEDEX
	bcd3 0     ; MOON_STONE
	bcd3 100   ; ANTIDOTE
	bcd3 250   ; BURN_HEAL
	bcd3 250   ; ICE_HEAL
	bcd3 200   ; AWAKENING
	bcd3 200   ; PARLYZ_HEAL
	bcd3 3000  ; FULL_RESTORE
	bcd3 2500  ; MAX_POTION
	bcd3 1500  ; HYPER_POTION
	bcd3 700   ; SUPER_POTION
	bcd3 300   ; POTION
	bcd3 0     ; BAIT
	bcd3 0     ; ROCK
	bcd3 0     ; ITEM_17
	bcd3 0     ; ITEM_18
	bcd3 0     ; ITEM_19
	bcd3 0     ; ITEM_1A
	bcd3 0     ; ITEM_1B
	bcd3 0     ; ITEM_1C
	bcd3 550   ; ESCAPE_ROPE
	bcd3 200   ; REPEL          ; marcelnote - changed from 350, 100/200 = .50 step per ¥
	bcd3 0     ; OLD_AMBER
	bcd3 2100  ; FIRE_STONE
	bcd3 2100  ; THUNDER_STONE
	bcd3 2100  ; WATER_STONE
	bcd3 9800  ; HP_UP
	bcd3 9800  ; PROTEIN
	bcd3 9800  ; IRON
	bcd3 9800  ; CARBOS
	bcd3 9800  ; CALCIUM
	bcd3 4800  ; RARE_CANDY
	bcd3 0     ; DOME_FOSSIL
	bcd3 0     ; HELIX_FOSSIL
	bcd3 0     ; SECRET_KEY
	bcd3 0     ; CITRUS_PASS ; marcelnote - new, was ITEM_2C
	bcd3 0     ; BIKE_VOUCHER
	bcd3 950   ; X_ACCURACY
	bcd3 2100  ; LEAF_STONE
	bcd3 0     ; CARD_KEY
	bcd3 10000 ; NUGGET
	bcd3 0     ; FUJIS_NOTES ; marcelnote - new, was ITEM_32
	bcd3 1000  ; POKE_DOLL
	bcd3 600   ; FULL_HEAL
	bcd3 1500  ; REVIVE
	bcd3 4000  ; MAX_REVIVE
	bcd3 700   ; GUARD_SPEC
	bcd3 350   ; SUPER_REPEL   ; marcelnote - changed from 500, 200/350 = .57 step per ¥
	bcd3 400   ; MAX_REPEL     ; marcelnote - changed from 700, 250/400 = .63 step per ¥
	bcd3 650   ; DIRE_HIT
	bcd3 10    ; COIN
	bcd3 200   ; FRESH_WATER
	bcd3 300   ; SODA_POP
	bcd3 350   ; LEMONADE
	bcd3 0     ; S_S_TICKET
	bcd3 0     ; GOLD_TEETH
	bcd3 500   ; X_ATTACK
	bcd3 550   ; X_DEFEND
	bcd3 350   ; X_SPEED
	bcd3 750   ; X_SPECIAL     ; marcelnote - changed from 350
	bcd3 0     ; COIN_CASE
	bcd3 0     ; OAKS_PARCEL
	bcd3 0     ; ITEMFINDER
	bcd3 0     ; SILPH_SCOPE
	bcd3 0     ; POKE_FLUTE
	bcd3 0     ; LIFT_KEY
	bcd3 0     ; EXP_ALL
	bcd3 0     ; OLD_ROD
	bcd3 0     ; GOOD_ROD
	bcd3 0     ; SUPER_ROD
	bcd3 9800  ; PP_UP      ; marcelnote - changed from 0
	bcd3 400   ; ETHER      ; marcelnote - changed from 0
	bcd3 1200  ; MAX_ETHER  ; marcelnote - changed from 0
	bcd3 1000  ; ELIXIR     ; marcelnote - changed from 0
	bcd3 3000  ; MAX_ELIXIR ; marcelnote - changed from 0
	assert_table_length NUM_ITEMS
	bcd3 0     ; FLOOR_B2F
	bcd3 0     ; FLOOR_B1F
	bcd3 0     ; FLOOR_1F
	bcd3 0     ; FLOOR_2F
	bcd3 0     ; FLOOR_3F
	bcd3 0     ; FLOOR_4F
	bcd3 0     ; FLOOR_5F
	bcd3 0     ; FLOOR_6F
	bcd3 0     ; FLOOR_7F
	bcd3 0     ; FLOOR_8F
	bcd3 0     ; FLOOR_9F
	bcd3 0     ; FLOOR_10F
	bcd3 0     ; FLOOR_11F
	bcd3 0     ; FLOOR_B4F
	assert_table_length NUM_ITEMS + NUM_FLOORS
; marcelnote - adding types as items for Pokemon Academy Blackboard
	bcd3 0     ; NORMAL_ITEM
	bcd3 0     ; GRASS_ITEM
	bcd3 0     ; FIRE_ITEM
	bcd3 0     ; WATER_ITEM
	bcd3 0     ; ELECTRIC_ITEM
	bcd3 0     ; FIGHTING_ITEM
	bcd3 0     ; POISON_ITEM
	bcd3 0     ; GROUND_ITEM
	bcd3 0     ; FLYING_ITEM
	bcd3 0     ; BUG_ITEM
	bcd3 0     ; ROCK_ITEM
	bcd3 0     ; PSYCHIC_ITEM
	bcd3 0     ; ICE_ITEM
	bcd3 0     ; GHOST_ITEM
	bcd3 0     ; DRAGON_ITEM
	assert_table_length NUM_ITEMS + NUM_FLOORS + NUM_TYPES_ITEMS
; marcelnote - cleaned Badges from Item list as in PureRGB
	bcd3 0     ; BOULDERBADGE
	bcd3 0     ; CASCADEBADGE
	bcd3 0     ; THUNDERBADGE
	bcd3 0     ; RAINBOWBADGE
	bcd3 0     ; SOULBADGE
	bcd3 0     ; MARSHBADGE
	bcd3 0     ; VOLCANOBADGE
	bcd3 0     ; EARTHBADGE
	assert_table_length NUM_ITEMS + NUM_FLOORS + NUM_TYPES_ITEMS + NUM_BADGES
