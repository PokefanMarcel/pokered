; default hidden/shown objects for each map

MapHSPointers:
; entries correspond to map ids
	table_width 2, MapHSPointers
	dw PalletTownHS    ; PALLET_TOWN
	dw ViridianCityHS  ; VIRIDIAN_CITY
	dw PewterCityHS    ; PEWTER_CITY
	dw CeruleanCityHS  ; CERULEAN_CITY
	dw NoHS            ; LAVENDER_TOWN
	dw VermilionCityHS ; VERMILION_CITY ; marcelnote - new for Sailor who disappears
	dw NoHS            ; CELADON_CITY
	dw SaffronCityHS   ; SAFFRON_CITY
	dw NoHS            ; FUCHSIA_CITY
	dw NoHS            ; CINNABAR_ISLAND
	dw NoHS            ; MANDARIN_ISLAND ; marcelnote - new map
	dw NoHS            ; INDIGO_PLATEAU
	dw Route1HS        ; ROUTE_1 ; marcelnote - added for postgame Oak battle
	dw Route2HS        ; ROUTE_2
	dw NoHS            ; ROUTE_3
	dw Route4HS        ; ROUTE_4
	dw NoHS            ; ROUTE_5
	dw NoHS            ; ROUTE_6
	dw NoHS            ; ROUTE_7
	dw NoHS            ; ROUTE_8
	dw Route9HS        ; ROUTE_9
	dw NoHS            ; ROUTE_10
	dw NoHS            ; ROUTE_11
	dw Route12HS       ; ROUTE_12
	dw NoHS            ; ROUTE_13
	dw NoHS            ; ROUTE_14
	dw Route15HS       ; ROUTE_15
	dw Route16HS       ; ROUTE_16
	dw NoHS            ; ROUTE_17
	dw NoHS            ; ROUTE_18
	dw NoHS            ; ROUTE_19
	dw NoHS            ; ROUTE_20
	dw NoHS            ; ROUTE_21
	dw Route22HS       ; ROUTE_22
	dw NoHS            ; ROUTE_23
	dw Route24HS       ; ROUTE_24
	dw Route25HS       ; ROUTE_25
	dw NoHS            ; ROUTE_28 ; marcelnote - new location
	dw NoHS            ; ORANGE_ROUTE_1 ; marcelnote - new location
	dw RedsYellowsHousesHS         ; REDS_YELLOWS_HOUSES ; marcelnote - added to hide Yellow asleep
	dw BluesAidesHousesHS          ; BLUES_AIDES_HOUSES  ; marcelnote - merged Blue's house with new Aide's house
	dw OaksLabHS                   ; OAKS_LAB
	dw NoHS                        ; VIRIDIAN_POKECENTER_MART ; marcelnote - merged Viridian Pokecenter and Mart
	dw NoHS                        ; VIRIDIAN_SCHOOL_HOUSE
	dw NoHS                        ; VIRIDIAN_NICKNAME_HOUSE
	dw ViridianGymHS               ; VIRIDIAN_GYM
	dw NoHS                        ; VIRIDIAN_FOREST_SOUTH_GATE
	dw NoHS                        ; ROUTE_2_GATE
	dw ViridianForestHS            ; VIRIDIAN_FOREST
	dw NoHS                        ; VIRIDIAN_FOREST_NORTH_GATE
	dw NoHS                        ; ROUTE_2_TRADE_HOUSE
	dw NoHS                        ; DIGLETTS_CAVE_ROUTE_2
	dw NoHS                        ; PEWTER_POKECENTER_MART ; marcelnote - merged Pewter Pokecenter and Mart
	dw PewterMuseumHS              ; PEWTER_MUSEUM ; marcelnote - merged Pewter Museum floors
	dw NoHS                        ; PEWTER_NIDORAN_HOUSE
	dw NoHS                        ; PEWTER_SPEECH_HOUSE
	dw PewterGymHS                 ; PEWTER_GYM              ; marcelnote - Brock rematch
	dw NoHS                        ; CELADON_GROVE_NORTH_GATE
	dw NoHS                        ; MT_MOON_POKECENTER
	dw MtMoon1FHS                  ; MT_MOON_1F
	dw NoHS                        ; MT_MOON_B1F
	dw MtMoonB2FHS                 ; MT_MOON_B2F
	dw MtMoonSquareHS              ; MT_MOON_SQUARE          ; marcelnote - new location
	dw NoHS                        ; CERULEAN_POKECENTER_MART  ; marcelnote - merged Cerulean Pokecenter and Mart
	dw NoHS                        ; CERULEAN_TRASHED_HOUSE
	dw NoHS                        ; CERULEAN_TRADE_HOUSE
	dw NoHS                        ; CERULEAN_BADGE_HOUSE
	dw NoHS                        ; BIKE_SHOP
	dw CeruleanGymHS               ; CERULEAN_GYM            ; marcelnote - Misty rematch
	dw CeruleanCave1FHS            ; CERULEAN_CAVE_1F
	dw CeruleanCave2FHS            ; CERULEAN_CAVE_2F
	dw CeruleanCaveB1FHS           ; CERULEAN_CAVE_B1F
	dw BillsHouseHS                ; BILLS_HOUSE
	dw NoHS                        ; ROUTE_5_GATE
	dw NoHS                        ; UNDERGROUND_PATH_ROUTE_5
	dw NoHS                        ; DAYCARE
	dw NoHS                        ; ROUTE_6_GATE
	dw NoHS                        ; UNDERGROUND_PATH_ROUTE_6
	dw NoHS                        ; ROUTE_7_GATE
	dw NoHS                        ; UNDERGROUND_PATH_ROUTE_7
	dw NoHS                        ; ROUTE_8_GATE
	dw NoHS                        ; UNDERGROUND_PATH_ROUTE_8
	dw NoHS                        ; UNDERGROUND_PATH_NORTH_SOUTH
	dw NoHS                        ; UNDERGROUND_PATH_WEST_EAST
	dw NoHS                        ; VERMILION_POKECENTER_MART ; marcelnote - merged Vermilion Pokecenter and Mart
	dw NoHS                        ; VERMILION_GOOD_ROD_HOUSE
	dw NoHS                        ; POKEMON_FAN_CLUB
	dw NoHS                        ; VERMILION_PIDGEY_HOUSE
	dw NoHS                        ; VERMILION_TRADE_HOUSE
	dw VermilionGymHS              ; VERMILION_GYM ; marcelnote - Lt.Surge rematch
	dw VermilionDockHS             ; VERMILION_DOCK ; marcelnote - new for Ferry entrance
	dw NoHS                        ; SS_ANNE_1F
	dw SSAnne2FHS                  ; SS_ANNE_2F
	dw NoHS                        ; SS_ANNE_3F
	dw SSAnneB1FHS                 ; SS_ANNE_B1F ; marcelnote - merged SS Anne B1F and B1FRooms
	dw NoHS                        ; SS_ANNE_BOW
	dw NoHS                        ; SS_ANNE_KITCHEN
	dw NoHS                        ; SS_ANNE_CAPTAINS_ROOM
	dw SSAnne1FRoomsHS             ; SS_ANNE_1F_ROOMS
	dw SSAnne2FRoomsHS             ; SS_ANNE_2F_ROOMS
	dw NoHS                        ; DIGLETTS_CAVE
	dw NoHS                        ; DIGLETTS_CAVE_ROUTE_11
	dw NoHS                        ; ROUTE_11_GATE
	dw NoHS                        ; ROCK_TUNNEL_POKECENTER
	dw NoHS                        ; ROCK_TUNNEL_1F
	dw NoHS                        ; ROCK_TUNNEL_B1F
	dw PowerPlantHS                ; POWER_PLANT
	dw NoHS                        ; LAVENDER_POKECENTER_MART
	dw MrFujisHouseHS              ; MR_FUJIS_HOUSE
	dw NoHS                        ; NAME_RATERS_HOUSE
	dw NoHS                        ; LAVENDER_CUBONE_HOUSE
	dw PokemonTower1FHS            ; POKEMON_TOWER_1F ;marcelnote - postgame Agatha event
	dw PokemonTower2FHS            ; POKEMON_TOWER_2F
	dw PokemonTower3FHS            ; POKEMON_TOWER_3F
	dw PokemonTower4FHS            ; POKEMON_TOWER_4F
	dw PokemonTower5FHS            ; POKEMON_TOWER_5F
	dw PokemonTower6FHS            ; POKEMON_TOWER_6F
	dw PokemonTower7FHS            ; POKEMON_TOWER_7F
	dw NoHS                        ; ROUTE_12_GATE
	dw NoHS                        ; ROUTE_12_FISHING_GUIDE_HOUSE
	dw NoHS                        ; CELADON_POKECENTER
	dw NoHS                        ; CELADON_MART_1F2F3F
	dw NoHS                        ; CELADON_MART_4F5F6F
	dw NoHS                        ; CELADON_MART_ROOF
	dw NoHS                        ; CELADON_MART_ELEVATOR
	dw NoHS                        ; CELADON_MANSION
	dw NoHS                        ; CELADON_MANSION_ROOF
	dw CeladonMansionRoofHouseHS   ; CELADON_MANSION_ROOF_HOUSE
	dw GameCornerHS                ; GAME_CORNER
	dw NoHS                        ; GAME_CORNER_PRIZE_ROOM
	dw NoHS                        ; CELADON_DINER
	dw NoHS                        ; CELADON_CHIEF_HOUSE
	dw NoHS                        ; CELADON_HOTEL
	dw CeladonGroveSouthGateHS     ; CELADON_GROVE_SOUTH_GATE ; marcelnote - was NoHS
	dw CeladonGymHS                ; CELADON_GYM              ; marcelnote - Erika rematch
	dw RocketHideoutB1FHS          ; ROCKET_HIDEOUT_B1F
	dw RocketHideoutB2FHS          ; ROCKET_HIDEOUT_B2F
	dw RocketHideoutB3FHS          ; ROCKET_HIDEOUT_B3F
	dw RocketHideoutB4FHS          ; ROCKET_HIDEOUT_B4F
	dw NoHS                        ; ROCKET_HIDEOUT_ELEVATOR
	dw CeladonGroveHS              ; CELADON_GROVE            ; marcelnote - was NoHS
	dw NoHS                        ; ROUTE_15_GATE
	dw NoHS                        ; ROUTE_16_GATE
	dw NoHS                        ; ROUTE_16_FLY_HOUSE
	dw NoHS                        ; ROUTE_18_GATE
	dw NoHS                        ; SAFFRON_POKECENTER_MART ; marcelnote - merged Saffron Pokecenter and Mart
	dw NoHS                        ; COPYCATS_HOUSE ; marcelnote - merged Copycat's house floors
	dw FightingDojoHS              ; FIGHTING_DOJO
	dw NoHS                        ; SAFFRON_PIDGEY_HOUSE
	dw NoHS                        ; MR_PSYCHICS_HOUSE
	dw SaffronGymHS                ; SAFFRON_GYM ; marcelnote - postgame Bruno event, Sabrina rematch
	dw NoHS                        ; POKEMON_ACADEMY_1F2F
	dw NoHS                        ; POKEMON_ACADEMY_3F4F
	dw SilphCo1FHS                 ; SILPH_CO_1F
	dw SilphCo2FHS                 ; SILPH_CO_2F
	dw SilphCo3FHS                 ; SILPH_CO_3F
	dw SilphCo4FHS                 ; SILPH_CO_4F
	dw SilphCo5FHS                 ; SILPH_CO_5F
	dw SilphCo6FHS                 ; SILPH_CO_6F
	dw SilphCo7FHS                 ; SILPH_CO_7F
	dw SilphCo8FHS                 ; SILPH_CO_8F
	dw SilphCo9FHS                 ; SILPH_CO_9F
	dw SilphCo10FHS                ; SILPH_CO_10F
	dw SilphCo11FHS                ; SILPH_CO_11F
	dw NoHS                        ; SILPH_CO_ELEVATOR
	dw NoHS                        ; FUCHSIA_POKECENTER_MART ; marcelnote - merged Fuchsia Pokecenter and Mart
	dw NoHS                        ; FUCHSIA_BILLS_GRANDPAS_HOUSE
	dw WardensHouseHS              ; WARDENS_HOUSE
	dw NoHS                        ; FUCHSIA_MEETING_ROOM
	dw NoHS                        ; FUCHSIA_SUPER_ROD_HOUSE
	dw NoHS                        ; FUCHSIA_MOVE_DELETER_HOUSE
	dw FuchsiaGymHS                ; FUCHSIA_GYM
	dw NoHS                        ; SAFARI_ZONE_GATE
	dw SafariZoneEastHS            ; SAFARI_ZONE_EAST
	dw SafariZoneNorthHS           ; SAFARI_ZONE_NORTH
	dw SafariZoneWestHS            ; SAFARI_ZONE_WEST
	dw SafariZoneCenterHS          ; SAFARI_ZONE_CENTER
	dw NoHS                        ; SAFARI_ZONE_CENTER_REST_HOUSE
	dw NoHS                        ; SAFARI_ZONE_SECRET_HOUSE
	dw NoHS                        ; SAFARI_ZONE_WEST_REST_HOUSE
	dw NoHS                        ; SAFARI_ZONE_EAST_REST_HOUSE
	dw NoHS                        ; SAFARI_ZONE_NORTH_REST_HOUSE
	dw SeafoamIslands1FHS          ; SEAFOAM_ISLANDS_1F
	dw SeafoamIslandsB1FHS         ; SEAFOAM_ISLANDS_B1F
	dw SeafoamIslandsB2FHS         ; SEAFOAM_ISLANDS_B2F
	dw SeafoamIslandsB3FHS         ; SEAFOAM_ISLANDS_B3F
	dw SeafoamIslandsB4FHS         ; SEAFOAM_ISLANDS_B4F
	dw NoHS                        ; CINNABAR_POKECENTER_MART
	dw NoHS                        ; CINNABAR_LAB         ; marcelnote - merged Cinnabar Lab maps
	dw CinnabarGymHS               ; CINNABAR_GYM         ; marcelnote - Blaine rematch
	dw PokemonMansion1FHS          ; POKEMON_MANSION_1F
	dw PokemonMansion2FHS          ; POKEMON_MANSION_2F
	dw PokemonMansion3FHS          ; POKEMON_MANSION_3F
	dw PokemonMansionB1FHS         ; POKEMON_MANSION_B1F
	dw CinnabarVolcano1FB1FHS      ; CINNABAR_VOLCANO_1FB1F
	dw CinnabarVolcano2FHS         ; CINNABAR_VOLCANO_2F
	dw NoHS                        ; MANDARIN_POKECENTER_MART
	dw NoHS                        ; MANDARIN_SURF_SHOP
	dw MandarinHotelHS             ; MANDARIN_HOTEL
	dw MandarinSilphCoHS           ; MANDARIN_SILPH_CO
	dw NoHS                        ; DR_JABARAS_LAB
	dw MandarinDockHS              ; MANDARIN_DOCK
	dw NoHS                        ; CITRUS_FERRY_DECK
	dw NoHS                        ; CITRUS_FERRY_OUTSIDE
	dw CitrusFerryRoomsHS          ; CITRUS_FERRY_ROOMS   ; marcelnote - for fossil
	dw SilphFactory1FHS            ; SILPH_FACTORY_1F
	dw SilphFactory2FHS            ; SILPH_FACTORY_2F
	dw NoHS                        ; ROUTE_22_OLD_ROD_HOUSE
	dw NoHS                        ; ROUTE_22_GATE
	dw BattleHallHS                ; BATTLE_HALL          ; marcelnote - for battle hall opponent Red/Green
	dw MtSilver1FHS                ; MT_SILVER_1F         ; marcelnote - added for items
	dw MtSilver2FHS                ; MT_SILVER_2F         ; marcelnote - added for items
	dw MtSilver3FHS                ; MT_SILVER_3F         ; marcelnote - added for Yellow battle
	dw VictoryRoad1FHS             ; VICTORY_ROAD_1F
	dw VictoryRoad2FHS             ; VICTORY_ROAD_2F
	dw VictoryRoad3FHS             ; VICTORY_ROAD_3F
	dw IndigoPlateauLobbyHS        ; INDIGO_PLATEAU_LOBBY ; marcelnote - added for girl blocking E4 entrance
	dw LoreleisRoomHS              ; LORELEIS_ROOM        ; marcelnote - added for Lorelei rematch
	dw BrunosRoomHS                ; BRUNOS_ROOM          ; marcelnote - added for Bruno rematch
	dw AgathasRoomHS               ; AGATHAS_ROOM         ; marcelnote - added for Agatha rematch
	dw LancesRoomHS                ; LANCES_ROOM          ; marcelnote - added for Lance rematch
	dw ChampionsRoomHS             ; CHAMPIONS_ROOM
	dw HallOfFameHS                ; HALL_OF_FAME         ; marcelnote - added for Rival rematch
	dw NoHS                        ; TRADE_CENTER
	dw NoHS                        ; COLOSSEUM
	assert_table_length NUM_MAPS
	dw -1 ; end

NoHS:
	db $FF, $FF, $FF

MissableObjects:
; entries correspond to HS_* constants (see constants/hide_show_constants)
	table_width 3, MissableObjects
; format: map id, object id, HIDE/SHOW
; marcelnote - !!!WARNING!!!
; the maps with items to pick up OR overworld map Pokémon to fight
; MUST be in this first list! (basically all constants marked with X in hide_show_constants)

PalletTownHS:
	db PALLET_TOWN, PALLETTOWN_OAK, HIDE
ViridianCityHS:
	db VIRIDIAN_CITY, VIRIDIANCITY_OLD_MAN_SLEEPY, SHOW
	db VIRIDIAN_CITY, VIRIDIANCITY_OLD_MAN,        HIDE
PewterCityHS:
	db PEWTER_CITY, PEWTERCITY_SUPER_NERD1, SHOW
	db PEWTER_CITY, PEWTERCITY_YOUNGSTER,   SHOW
CeruleanCityHS:
	db CERULEAN_CITY, CERULEANCITY_RIVAL,       HIDE
	db CERULEAN_CITY, CERULEANCITY_ROCKET,      SHOW
	db CERULEAN_CITY, CERULEANCITY_GUARD1,      HIDE
	db CERULEAN_CITY, CERULEANCITY_SUPER_NERD3, SHOW
	db CERULEAN_CITY, CERULEANCITY_GUARD2,      SHOW
Route2HS:
	db ROUTE_2, ROUTE2_MOON_STONE, SHOW
	db ROUTE_2, ROUTE2_HP_UP,      SHOW
Route4HS:
	db ROUTE_4, ROUTE4_TM_WHIRLWIND, SHOW
Route9HS:
	db ROUTE_9, ROUTE9_TM_TELEPORT, SHOW
Route12HS:
	db ROUTE_12, ROUTE12_SNORLAX,    SHOW
	db ROUTE_12, ROUTE12_TM_PAY_DAY, SHOW
	db ROUTE_12, ROUTE12_IRON,       SHOW
Route15HS:
	db ROUTE_15, ROUTE15_TM_RAGE, SHOW
Route16HS:
	db ROUTE_16, ROUTE16_SNORLAX, SHOW
Route22HS:
	db ROUTE_22, ROUTE22_RIVAL1, HIDE
	db ROUTE_22, ROUTE22_RIVAL2, HIDE
Route24HS:
	db ROUTE_24, ROUTE24_COOLTRAINER_M1,  SHOW
	db ROUTE_24, ROUTE24_TM_THUNDER_WAVE, SHOW
Route25HS:
	db ROUTE_25, ROUTE25_TM_SEISMIC_TOSS, SHOW
BluesAidesHousesHS: ; marcelnote - merged Blue's house with new Aide's house
	db BLUES_AIDES_HOUSES, BLUESHOUSE_DAISY1,   SHOW
	db BLUES_AIDES_HOUSES, BLUESHOUSE_DAISY2,   HIDE
	db BLUES_AIDES_HOUSES, BLUESHOUSE_TOWN_MAP, SHOW
OaksLabHS:
	db OAKS_LAB, OAKSLAB_RIVAL,                SHOW
	db OAKS_LAB, OAKSLAB_CHARMANDER_POKE_BALL, SHOW
	db OAKS_LAB, OAKSLAB_SQUIRTLE_POKE_BALL,   SHOW
	db OAKS_LAB, OAKSLAB_BULBASAUR_POKE_BALL,  SHOW
	db OAKS_LAB, OAKSLAB_OAK,                  HIDE
	db OAKS_LAB, OAKSLAB_POKEDEX1,             SHOW
	db OAKS_LAB, OAKSLAB_POKEDEX2,             SHOW
	db OAKS_LAB, OAKSLAB_OAK_WALKING,          HIDE
ViridianGymHS:
	db VIRIDIAN_GYM, VIRIDIANGYM_GIOVANNI, SHOW
	db VIRIDIAN_GYM, VIRIDIANGYM_REVIVE,   SHOW
PewterMuseumHS:
	db PEWTER_MUSEUM, PEWTERMUSEUM1F_OLD_AMBER, SHOW
CeruleanCave1FHS:
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_FULL_RESTORE, SHOW
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_MAX_ELIXIR,   SHOW
	db CERULEAN_CAVE_1F, CERULEANCAVE1F_NUGGET,       SHOW
PokemonTower1FHS:
	db POKEMON_TOWER_1F, POKEMONTOWER1F_AGATHA, HIDE     ; marcelnote - postgame Agatha
	db POKEMON_TOWER_1F, POKEMONTOWER1F_GENTLEMAN, HIDE  ; marcelnote - postgame Agatha
PokemonTower2FHS:
	db POKEMON_TOWER_2F, POKEMONTOWER2F_RIVAL, SHOW
PokemonTower3FHS:
	db POKEMON_TOWER_3F, POKEMONTOWER3F_ESCAPE_ROPE, SHOW
PokemonTower4FHS:
	db POKEMON_TOWER_4F, POKEMONTOWER4F_ELIXIR,    SHOW
	db POKEMON_TOWER_4F, POKEMONTOWER4F_AWAKENING, SHOW
	db POKEMON_TOWER_4F, POKEMONTOWER4F_HP_UP,     SHOW
PokemonTower5FHS:
	db POKEMON_TOWER_5F, POKEMONTOWER5F_NUGGET, SHOW
PokemonTower6FHS:
	db POKEMON_TOWER_6F, POKEMONTOWER6F_AGATHA, HIDE ; marcelnote - postgame Agatha event
	db POKEMON_TOWER_6F, POKEMONTOWER6F_RARE_CANDY, SHOW
	db POKEMON_TOWER_6F, POKEMONTOWER6F_X_ACCURACY, SHOW
PokemonTower7FHS:
	db POKEMON_TOWER_7F, POKEMONTOWER7F_ROCKET1, SHOW
	db POKEMON_TOWER_7F, POKEMONTOWER7F_ROCKET2, SHOW
	db POKEMON_TOWER_7F, POKEMONTOWER7F_ROCKET3, SHOW
	db POKEMON_TOWER_7F, POKEMONTOWER7F_MR_FUJI, SHOW
	db POKEMON_TOWER_7F, POKEMONTOWER7F_CHANNELER, HIDE ; marcelnote - added 7FChanneler
MrFujisHouseHS:
	db MR_FUJIS_HOUSE, MRFUJISHOUSE_MR_FUJI, HIDE
CeladonMansionRoofHouseHS:
	db CELADON_MANSION_ROOF_HOUSE, CELADONMANSION_ROOF_HOUSE_EEVEE_POKEBALL, SHOW
GameCornerHS:
	db GAME_CORNER, GAMECORNER_ROCKET, SHOW
WardensHouseHS:
	db WARDENS_HOUSE, WARDENSHOUSE_RARE_CANDY, SHOW
PokemonMansion1FHS:
	db POKEMON_MANSION_1F, POKEMONMANSION1F_ESCAPE_ROPE, SHOW
	db POKEMON_MANSION_1F, POKEMONMANSION1F_CARBOS,      SHOW
FightingDojoHS:
	db FIGHTING_DOJO, FIGHTINGDOJO_BRUNO,                HIDE ; marcelnote - postgame Bruno
	db FIGHTING_DOJO, FIGHTINGDOJO_HITMONLEE_POKE_BALL,  SHOW
	db FIGHTING_DOJO, FIGHTINGDOJO_HITMONCHAN_POKE_BALL, SHOW
PowerPlantHS:
	db POWER_PLANT, POWERPLANT_VOLTORB1,      SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB2,      SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB3,      SHOW
	db POWER_PLANT, POWERPLANT_ELECTRODE1,    SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB4,      SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB5,      SHOW
	db POWER_PLANT, POWERPLANT_ELECTRODE2,    SHOW
	db POWER_PLANT, POWERPLANT_VOLTORB6,      SHOW
	db POWER_PLANT, POWERPLANT_ZAPDOS,        SHOW
	db POWER_PLANT, POWERPLANT_CARBOS,        SHOW
	db POWER_PLANT, POWERPLANT_HP_UP,         SHOW
	db POWER_PLANT, POWERPLANT_RARE_CANDY,    SHOW
	db POWER_PLANT, POWERPLANT_TM_THUNDER,    SHOW
	db POWER_PLANT, POWERPLANT_TM_REFLECT,    SHOW
	db POWER_PLANT, POWERPLANT_THUNDER_STONE, SHOW ; marcelnote - new
VictoryRoad2FHS:
	;db VICTORY_ROAD_2F, VICTORYROAD2F_MOLTRES,       SHOW  ; marcelnote - removed Moltres from Victory Road
	db VICTORY_ROAD_2F, VICTORYROAD2F_TM_SUBMISSION, SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_FULL_HEAL,     SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_TM_MEGA_KICK,  SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_GUARD_SPEC,    SHOW
	db VICTORY_ROAD_2F, VICTORYROAD2F_BOULDER3,      SHOW
BillsHouseHS:
	db BILLS_HOUSE, BILLSHOUSE_BILL_POKEMON, SHOW
	db BILLS_HOUSE, BILLSHOUSE_BILL1,        HIDE
	db BILLS_HOUSE, BILLSHOUSE_BILL2,        HIDE
ViridianForestHS:
	db VIRIDIAN_FOREST, VIRIDIANFOREST_ANTIDOTE,  SHOW
	db VIRIDIAN_FOREST, VIRIDIANFOREST_POTION,    SHOW
	db VIRIDIAN_FOREST, VIRIDIANFOREST_POKE_BALL, SHOW
MtMoon1FHS:
	db MT_MOON_1F, MTMOON1F_POTION1,      SHOW
	db MT_MOON_1F, MTMOON1F_MOON_STONE,   SHOW
	db MT_MOON_1F, MTMOON1F_RARE_CANDY,   SHOW
	db MT_MOON_1F, MTMOON1F_ESCAPE_ROPE,  SHOW
	db MT_MOON_1F, MTMOON1F_POTION2,      SHOW
	db MT_MOON_1F, MTMOON1F_TM_WATER_GUN, SHOW
MtMoonB2FHS:
	db MT_MOON_B2F, MTMOONB2F_DOME_FOSSIL,   SHOW
	db MT_MOON_B2F, MTMOONB2F_HELIX_FOSSIL,  SHOW
	db MT_MOON_B2F, MTMOONB2F_HP_UP,         SHOW
	db MT_MOON_B2F, MTMOONB2F_TM_MEGA_PUNCH, SHOW
SSAnne2FHS:
	db SS_ANNE_2F, SSANNE2F_RIVAL, HIDE
SSAnne1FRoomsHS:
	db SS_ANNE_1F_ROOMS, SSANNE1FROOMS_TM_BODY_SLAM, SHOW
SSAnne2FRoomsHS:
	db SS_ANNE_2F_ROOMS, SSANNE2FROOMS_MAX_ETHER,  SHOW
	db SS_ANNE_2F_ROOMS, SSANNE2FROOMS_RARE_CANDY, SHOW
SSAnneB1FHS: ; marcelnote - merged SS Anne B1F and B1FRooms
	db SS_ANNE_B1F, SSANNEB1FROOMS_ETHER,      SHOW
	db SS_ANNE_B1F, SSANNEB1FROOMS_TM_REST,    SHOW
	db SS_ANNE_B1F, SSANNEB1FROOMS_MAX_POTION, SHOW
VictoryRoad3FHS:
	db VICTORY_ROAD_3F, VICTORYROAD3F_MAX_REVIVE,   SHOW
	db VICTORY_ROAD_3F, VICTORYROAD3F_TM_EXPLOSION, SHOW
	db VICTORY_ROAD_3F, VICTORYROAD3F_BOULDER4,     SHOW
RocketHideoutB1FHS:
	db ROCKET_HIDEOUT_B1F, ROCKETHIDEOUTB1F_ESCAPE_ROPE,  SHOW
	db ROCKET_HIDEOUT_B1F, ROCKETHIDEOUTB1F_HYPER_POTION, SHOW
RocketHideoutB2FHS:
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_MOON_STONE,    SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_NUGGET,        SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_TM_HORN_DRILL, SHOW
	db ROCKET_HIDEOUT_B2F, ROCKETHIDEOUTB2F_SUPER_POTION,  SHOW
RocketHideoutB3FHS:
	db ROCKET_HIDEOUT_B3F, ROCKETHIDEOUTB3F_TM_DOUBLE_EDGE, SHOW
	db ROCKET_HIDEOUT_B3F, ROCKETHIDEOUTB3F_RARE_CANDY,     SHOW
RocketHideoutB4FHS:
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_GIOVANNI,      SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_HP_UP,         SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_TM_RAZOR_WIND, SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_IRON,          SHOW
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_SILPH_SCOPE,   HIDE
	db ROCKET_HIDEOUT_B4F, ROCKETHIDEOUTB4F_LIFT_KEY,      HIDE
SilphCo2FHS:
	;db SILPH_CO_2F, SILPHCO2F_SILPH_WORKER_F, SHOW ; marcelnote - not used (TM_SELFDESTRUCT woman)
	db SILPH_CO_2F, SILPHCO2F_SCIENTIST1,     SHOW
	db SILPH_CO_2F, SILPHCO2F_SCIENTIST2,     SHOW
	db SILPH_CO_2F, SILPHCO2F_ROCKET1,        SHOW
	db SILPH_CO_2F, SILPHCO2F_ROCKET2,        SHOW
SilphCo3FHS:
	db SILPH_CO_3F, SILPHCO3F_ROCKET,       SHOW
	db SILPH_CO_3F, SILPHCO3F_SCIENTIST,    SHOW
	db SILPH_CO_3F, SILPHCO3F_HYPER_POTION, SHOW
SilphCo4FHS:
	db SILPH_CO_4F, SILPHCO4F_ROCKET1,     SHOW
	db SILPH_CO_4F, SILPHCO4F_SCIENTIST,   SHOW
	db SILPH_CO_4F, SILPHCO4F_ROCKET2,     SHOW
	db SILPH_CO_4F, SILPHCO4F_FULL_HEAL,   SHOW
	db SILPH_CO_4F, SILPHCO4F_MAX_REVIVE,  SHOW
	db SILPH_CO_4F, SILPHCO4F_ESCAPE_ROPE, SHOW
SilphCo5FHS:
	db SILPH_CO_5F, SILPHCO5F_ROCKET1,      SHOW
	db SILPH_CO_5F, SILPHCO5F_SCIENTIST,    SHOW
	db SILPH_CO_5F, SILPHCO5F_ROCKER,       SHOW
	db SILPH_CO_5F, SILPHCO5F_ROCKET2,      SHOW
	db SILPH_CO_5F, SILPHCO5F_TM_TAKE_DOWN, SHOW
	db SILPH_CO_5F, SILPHCO5F_PROTEIN,      SHOW
	db SILPH_CO_5F, SILPHCO5F_CARD_KEY,     SHOW
SilphCo6FHS:
	db SILPH_CO_6F, SILPHCO6F_ROCKET1,    SHOW
	db SILPH_CO_6F, SILPHCO6F_SCIENTIST,  SHOW
	db SILPH_CO_6F, SILPHCO6F_ROCKET2,    SHOW
	db SILPH_CO_6F, SILPHCO6F_HP_UP,      SHOW
	db SILPH_CO_6F, SILPHCO6F_X_ACCURACY, SHOW
SilphCo7FHS:
	db SILPH_CO_7F, SILPHCO7F_ROCKET1,         SHOW
	db SILPH_CO_7F, SILPHCO7F_SCIENTIST,       SHOW
	db SILPH_CO_7F, SILPHCO7F_ROCKET2,         SHOW
	db SILPH_CO_7F, SILPHCO7F_ROCKET3,         SHOW
	db SILPH_CO_7F, SILPHCO7F_RIVAL,           SHOW
	db SILPH_CO_7F, SILPHCO7F_CALCIUM,         SHOW
	db SILPH_CO_7F, SILPHCO7F_TM_SWORDS_DANCE, SHOW
	;db SILPH_CO_7F, SILPHCO7F_UNUSED,          SHOW ; marcelnote - removed
SilphCo8FHS:
	db SILPH_CO_8F, SILPHCO8F_ROCKET1,   SHOW
	db SILPH_CO_8F, SILPHCO8F_SCIENTIST, SHOW
	db SILPH_CO_8F, SILPHCO8F_ROCKET2,   SHOW
SilphCo9FHS:
	db SILPH_CO_9F, SILPHCO9F_ROCKET1,   SHOW
	db SILPH_CO_9F, SILPHCO9F_SCIENTIST, SHOW
	db SILPH_CO_9F, SILPHCO9F_ROCKET2,   SHOW
SilphCo10FHS:
	db SILPH_CO_10F, SILPHCO10F_ROCKET,         SHOW
	db SILPH_CO_10F, SILPHCO10F_SCIENTIST,      SHOW
	;db SILPH_CO_10F, SILPHCO10F_SILPH_WORKER_F, SHOW ; marcelnote - removed
	db SILPH_CO_10F, SILPHCO10F_TM_EARTHQUAKE,  SHOW
	db SILPH_CO_10F, SILPHCO10F_RARE_CANDY,     SHOW
	db SILPH_CO_10F, SILPHCO10F_CARBOS,         SHOW
SilphCo11FHS:
	db SILPH_CO_11F, SILPHCO11F_GIOVANNI, SHOW
	db SILPH_CO_11F, SILPHCO11F_ROCKET1,  SHOW
	db SILPH_CO_11F, SILPHCO11F_ROCKET2,  SHOW
;UnusedMapF4HS:
;	db UNUSED_MAP_F4, $02, SHOW ; unused ; marcelnote - removed
PokemonMansion2FHS:
	db POKEMON_MANSION_2F, POKEMONMANSION2F_CALCIUM, SHOW
PokemonMansion3FHS:
	db POKEMON_MANSION_3F, POKEMONMANSION3F_MAX_POTION, SHOW
	db POKEMON_MANSION_3F, POKEMONMANSION3F_IRON,       SHOW
PokemonMansionB1FHS:
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_RARE_CANDY,   SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_FULL_RESTORE, SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_TM_BLIZZARD,  SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_TM_SOLARBEAM, SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_SECRET_KEY,   SHOW
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_FUJIS_NOTES,  SHOW ; marcelnote - new
	db POKEMON_MANSION_B1F, POKEMONMANSIONB1F_HP_UP,        SHOW ; marcelnote - new
SafariZoneEastHS:
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_FULL_RESTORE, SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_MAX_RESTORE,  SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_CARBOS,       SHOW
	db SAFARI_ZONE_EAST, SAFARIZONEEAST_TM_EGG_BOMB,  SHOW
SafariZoneNorthHS:
	db SAFARI_ZONE_NORTH, SAFARIZONENORTH_PROTEIN,       SHOW
	db SAFARI_ZONE_NORTH, SAFARIZONENORTH_TM_SKULL_BASH, SHOW
SafariZoneWestHS:
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_MAX_POTION,     SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_TM_DOUBLE_TEAM, SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_MAX_REVIVE,     SHOW
	db SAFARI_ZONE_WEST, SAFARIZONEWEST_GOLD_TEETH,     SHOW
SafariZoneCenterHS:
	db SAFARI_ZONE_CENTER, SAFARIZONECENTER_NUGGET, SHOW
CeruleanCave2FHS:
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_PP_UP,        SHOW
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_ULTRA_BALL,   SHOW
	db CERULEAN_CAVE_2F, CERULEANCAVE2F_FULL_RESTORE, SHOW
CeruleanCaveB1FHS:
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_MEWTWO,     SHOW
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_ULTRA_BALL, SHOW
	db CERULEAN_CAVE_B1F, CERULEANCAVEB1F_MAX_REVIVE, SHOW
VictoryRoad1FHS:
	db VICTORY_ROAD_1F, VICTORYROAD1F_TM_SKY_ATTACK, SHOW
	db VICTORY_ROAD_1F, VICTORYROAD1F_RARE_CANDY,    SHOW
SeafoamIslands1FHS:
	db SEAFOAM_ISLANDS_1F, SEAFOAMISLANDS1F_BOULDER1, SHOW
	db SEAFOAM_ISLANDS_1F, SEAFOAMISLANDS1F_BOULDER2, SHOW
SeafoamIslandsB1FHS:
	db SEAFOAM_ISLANDS_B1F, SEAFOAMISLANDSB1F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B1F, SEAFOAMISLANDSB1F_BOULDER2, HIDE
SeafoamIslandsB2FHS:
	db SEAFOAM_ISLANDS_B2F, SEAFOAMISLANDSB2F_WATER_STONE, SHOW ; marcelnote - new
	db SEAFOAM_ISLANDS_B2F, SEAFOAMISLANDSB2F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B2F, SEAFOAMISLANDSB2F_BOULDER2, HIDE
SeafoamIslandsB3FHS:
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER2, SHOW
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER3, SHOW
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER5, HIDE
	db SEAFOAM_ISLANDS_B3F, SEAFOAMISLANDSB3F_BOULDER6, HIDE
SeafoamIslandsB4FHS:
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_BOULDER1, HIDE
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_BOULDER2, HIDE
	db SEAFOAM_ISLANDS_B4F, SEAFOAMISLANDSB4F_ARTICUNO, SHOW
; marcelnote - new maps
MtMoonSquareHS:
	db MT_MOON_SQUARE, MTMOONSQUARE_CLEFAIRY, HIDE
	db MT_MOON_SQUARE, MTMOONSQUARE_MOON_STONE, HIDE
	db MT_MOON_SQUARE, MTMOONSQUARE_SUPER_POTION, SHOW
CinnabarVolcano1FB1FHS:
	db CINNABAR_VOLCANO_1FB1F, CINNABARVOLCANOB1F_CHARIZARD, HIDE
	db CINNABAR_VOLCANO_1FB1F, CINNABARVOLCANOB1F_LANCE, HIDE
	db CINNABAR_VOLCANO_1FB1F, CINNABARVOLCANOB1F_IRON, SHOW
	db CINNABAR_VOLCANO_1FB1F, CINNABARVOLCANOB1F_ICE_HEAL, SHOW
	db CINNABAR_VOLCANO_1FB1F, CINNABARVOLCANO1F_LANCE, HIDE
	db CINNABAR_VOLCANO_1FB1F, CINNABARVOLCANO1F_FULL_RESTORE, SHOW
CinnabarVolcano2FHS:
	db CINNABAR_VOLCANO_2F, CINNABARVOLCANO2F_MOLTRES, SHOW
	db CINNABAR_VOLCANO_2F, CINNABARVOLCANO2F_FIRE_STONE, SHOW
	db CINNABAR_VOLCANO_2F, CINNABARVOLCANO2F_ULTRA_BALL, SHOW
	db CINNABAR_VOLCANO_2F, CINNABARVOLCANO2F_NUGGET, SHOW
MandarinHotelHS:
	db MANDARIN_HOTEL, MANDARINHOTEL2F_MAX_ELIXIR, SHOW
CeladonGroveHS:
	db CELADON_GROVE, CELADONGROVE_MEW, HIDE
	db CELADON_GROVE, CELADONGROVE_LEAF_STONE, SHOW
	db CELADON_GROVE, CELADONGROVE_GREAT_BALL, SHOW
SilphFactory1FHS:
	db SILPH_FACTORY_1F, SILPHFACTORY1F_ROCKET1, SHOW
	db SILPH_FACTORY_1F, SILPHFACTORY1F_ROCKET2, SHOW
	db SILPH_FACTORY_1F, SILPHFACTORY1F_ROCKET3, SHOW
	db SILPH_FACTORY_1F, SILPHFACTORY1F_ROCKET4, SHOW
	db SILPH_FACTORY_1F, SILPHFACTORY1F_RARE_CANDY, SHOW
	db SILPH_FACTORY_1F, SILPHFACTORY1F_CARBOS, SHOW
MtSilver1FHS:
	db MT_SILVER_1F, MTSILVER1F_PROTEIN, SHOW
	db MT_SILVER_1F, MTSILVER1F_ESCAPE_ROPE, SHOW
	db MT_SILVER_1F, MTSILVER1F_ULTRA_BALL, SHOW
	db MT_SILVER_1F, MTSILVER1F_MAX_ELIXIR, SHOW
MtSilver2FHS:
	db MT_SILVER_2F, MTSILVER2F_PP_UP, SHOW
	db MT_SILVER_2F, MTSILVER2F_CALCIUM, SHOW
	db MT_SILVER_2F, MTSILVER2F_ULTRA_BALL, SHOW
	db MT_SILVER_2F, MTSILVER2F_MAX_REVIVE, SHOW
	db MT_SILVER_2F, MTSILVER2F_FULL_RESTORE, SHOW
	db $FF, $01, SHOW ; end
	assert_table_length NUM_HS_OBJECTS + 1


; marcelnote - the list continues here to allow for more than 256 HideShow objects
;              WARNING: this list cannot contain maps with objects to pick up!
MissableObjectsCont:
; entries correspond to HS_* constants (see constants/hide_show_constants)
	table_width 3, MissableObjectsCont
; format: map id, object id, HIDE/SHOW

RedsYellowsHousesHS:
	db REDS_YELLOWS_HOUSES, YELLOWSHOUSE1F_DAD1, SHOW    ; marcelnote - Dad unpacking
	db REDS_YELLOWS_HOUSES, YELLOWSHOUSE1F_DAD2, HIDE    ; marcelnote - Dad sitting
	db REDS_YELLOWS_HOUSES, YELLOWSHOUSE2F_ASLEEP, SHOW  ; marcelnote - Yellow asleep
Route1HS:
	db ROUTE_1, ROUTE1_OAK, HIDE  ; marcelnote - postgame Oak battle
PewterGymHS:
	db PEWTER_GYM, PEWTERGYM_BROCK, SHOW          ; marcelnote - default Brock
	db PEWTER_GYM, PEWTERGYM_BROCK_REMATCH, HIDE  ; marcelnote - rematch Brock
CeruleanGymHS:
	db CERULEAN_GYM, CERULEANGYM_MISTY, SHOW          ; marcelnote - default Misty
	db CERULEAN_GYM, CERULEANGYM_MISTY_REMATCH, HIDE  ; marcelnote - rematch Misty
VermilionCityHS:
	db VERMILION_CITY, VERMILIONCITY_SAILOR2, SHOW          ; marcelnote - SS Anne sailor who disappears
	db VERMILION_CITY, VERMILIONCITY_COOLTRAINER_F, HIDE    ; marcelnote - girl who mentions Mandarin
VermilionGymHS:
	db VERMILION_GYM, VERMILIONGYM_LT_SURGE, SHOW          ; marcelnote - default Lt.Surge
	db VERMILION_GYM, VERMILIONGYM_LT_SURGE_REMATCH, HIDE  ; marcelnote - rematch Lt.Surge
VermilionDockHS:
	db VERMILION_DOCK, VERMILIONDOCK_SAILOR, SHOW          ; marcelnote - sailor at Ferry entrance
CeladonGymHS:
	db CELADON_GYM, CELADONGYM_ERIKA, SHOW          ; marcelnote - default Erika
	db CELADON_GYM, CELADONGYM_ERIKA_REMATCH, HIDE  ; marcelnote - rematch Erika
CeladonGroveSouthGateHS:
	db CELADON_GROVE_SOUTH_GATE, CELADONGROVESOUTHGATE_ROCKET, SHOW  ; marcelnote - blocking the way
FuchsiaGymHS:
	db FUCHSIA_GYM, FUCHSIAGYM_KOGA, SHOW          ; marcelnote - default Koga
	db FUCHSIA_GYM, FUCHSIAGYM_KOGA_REMATCH, HIDE  ; marcelnote - rematch Koga
SaffronCityHS: ; marcelnote - moved from previous list
	db SAFFRON_CITY, SAFFRONCITY_ROCKET1,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET2,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET3,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET4,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET5,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET6,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_ROCKET7,        SHOW
	db SAFFRON_CITY, SAFFRONCITY_SCIENTIST,      HIDE
	db SAFFRON_CITY, SAFFRONCITY_SILPH_WORKER_M, HIDE
	db SAFFRON_CITY, SAFFRONCITY_SILPH_WORKER_F, HIDE
	db SAFFRON_CITY, SAFFRONCITY_GENTLEMAN,      HIDE
	db SAFFRON_CITY, SAFFRONCITY_PIDGEOT,        HIDE
	db SAFFRON_CITY, SAFFRONCITY_ROCKER,         HIDE
	db SAFFRON_CITY, SAFFRONCITY_ROCKET8,        SHOW ; Silph Co guard
	db SAFFRON_CITY, SAFFRONCITY_ROCKET9,        HIDE ; Silph Co guard asleep
SaffronGymHS:
	db SAFFRON_GYM, SAFFRONGYM_SABRINA, SHOW          ; marcelnote - default Sabrina
	db SAFFRON_GYM, SAFFRONGYM_SABRINA_REMATCH, HIDE  ; marcelnote - rematch Sabrina
	db SAFFRON_GYM, SAFFRONGYM_WILL, HIDE             ; marcelnote - postgame Bruno event
	db SAFFRON_GYM, SAFFRONGYM_BRUNO, HIDE            ; marcelnote - postgame Bruno event
SilphCo1FHS:
	db SILPH_CO_1F, SILPHCO1F_LINK_RECEPTIONIST, HIDE
CinnabarGymHS:
	db CINNABAR_GYM, CINNABARGYM_BLAINE, SHOW          ; marcelnote - default Blaine
	db CINNABAR_GYM, CINNABARGYM_BLAINE_REMATCH, HIDE  ; marcelnote - rematch Blaine
MandarinSilphCoHS:
	db MANDARIN_SILPH_CO, MANDARINSILPHCO_SCIENTIST, SHOW  ; marcelnote - worried Scientist
MandarinDockHS:
	db MANDARIN_DOCK, MANDARINDOCK_SAILOR, SHOW           ; marcelnote - sailor at Ferry entrance
CitrusFerryRoomsHS:
	db CITRUS_FERRY_ROOMS, CITRUSFERRYROOMS_FOSSIL, SHOW ; marcelnote - sailor at Ferry entrance
SilphFactory2FHS:
	db SILPH_FACTORY_2F, SILPHFACTORY2F_SCIENTIST1, SHOW  ; marcelnote - scientist blocking the way
	db SILPH_FACTORY_2F, SILPHFACTORY2F_LORELEI1, HIDE    ; marcelnote - Lorelei at entrance
	db SILPH_FACTORY_2F, SILPHFACTORY2F_ROCKET1, SHOW     ; marcelnote - Archer
	db SILPH_FACTORY_2F, SILPHFACTORY2F_LORELEI2, HIDE    ; marcelnote - Lorelei after beating Archer
BattleHallHS:
	db BATTLE_HALL, BATTLEHALL_RED, HIDE    ; marcelnote - battle hall Red
	db BATTLE_HALL, BATTLEHALL_GREEN, HIDE  ; marcelnote - battle hall Green
IndigoPlateauLobbyHS:
	db INDIGO_PLATEAU_LOBBY, INDIGOPLATEAULOBBY_COOLTRAINER_F, SHOW
	db INDIGO_PLATEAU_LOBBY, INDIGOPLATEAULOBBY_COOLTRAINER_F2, HIDE
	db INDIGO_PLATEAU_LOBBY, INDIGOPLATEAULOBBY_RIVAL, HIDE ; marcelnote - appears after E4 reopens
LoreleisRoomHS:
	db LORELEIS_ROOM, LORELEISROOM_LORELEI, SHOW
	db LORELEIS_ROOM, LORELEISROOM_LORELEI_REMATCH, HIDE
BrunosRoomHS:
	db BRUNOS_ROOM, BRUNOSROOM_BRUNO, SHOW
	db BRUNOS_ROOM, BRUNOSROOM_BRUNO_REMATCH, HIDE
AgathasRoomHS:
	db AGATHAS_ROOM, AGATHASROOM_AGATHA, SHOW
	db AGATHAS_ROOM, AGATHASROOM_AGATHA_REMATCH, HIDE
LancesRoomHS:
	db LANCES_ROOM, LANCESROOM_LANCE, SHOW
	db LANCES_ROOM, LANCESROOM_LANCE_REMATCH, HIDE
ChampionsRoomHS:
	db CHAMPIONS_ROOM, CHAMPIONSROOM_OAK, HIDE
	db CHAMPIONS_ROOM, CHAMPIONSROOM_RIVAL, SHOW ; marcelnote - added for Rival rematch
HallOfFameHS:
	db HALL_OF_FAME, HALLOFFAME_OAK, SHOW
	db HALL_OF_FAME, HALLOFFAME_RIVAL, HIDE
MtSilver3FHS:
	db MT_SILVER_3F, MTSILVER3F_YELLOW, SHOW ; marcelnote - Yellow battle
	db $FF, $01, SHOW ; end
	assert_table_length NUM_HS_OBJECTS_CONT + 1
