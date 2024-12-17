MACRO external_map
	dn \2, \1
	dw \3
ENDM

; the appearance of towns and routes in the town map
; marcelnote - many entries were adjusted for the new town map
ExternalMapEntries:
	table_width 3, ExternalMapEntries
	; x, y, name
	external_map  3, 11, PalletTownName
	external_map  3,  8, ViridianCityName
	external_map  3,  3, PewterCityName
	external_map 10,  2, CeruleanCityName
	external_map 14,  5, LavenderTownName
	external_map 10,  9, VermilionCityName
	external_map  7,  5, CeladonCityName
	external_map 10,  5, SaffronCityName
	external_map  9, 13, FuchsiaCityName
	external_map  3, 15, CinnabarIslandName
	external_map 15, 15, MandarinIslandName ; marcelnote - new map
	external_map  1,  2, IndigoPlateauName
	external_map  3, 10, Route1Name
	external_map  3,  6, Route2Name
	external_map  5,  3, Route3Name
	external_map  8,  2, Route4Name
	external_map 10,  3, Route5Name
	external_map 10,  7, Route6Name
	external_map  8,  5, Route7Name
	external_map 12,  5, Route8Name
	external_map 12,  2, Route9Name
	external_map 14,  2, Route10Name
	external_map 12,  9, Route11Name
	external_map 14,  9, Route12Name
	external_map 13, 11, Route13Name
	external_map 12, 12, Route14Name
	external_map 11, 13, Route15Name
	external_map  6,  5, Route16Name
	external_map  5,  8, Route17Name
	external_map  7, 13, Route18Name
	external_map  8, 15, Route19Name
	external_map  5, 15, Route20Name
	external_map  3, 13, Route21Name
	external_map  2,  8, Route22Name
	external_map  1,  6, Route23Name
	external_map 10,  1, Route24Name
	external_map 11,  0, Route25Name
	external_map  0,  7, Route28Name ; marcelnote - new location
	external_map 15, 15, MandarinIslandName ; OrangeRoute1 ; marcelnote - new location
	assert_table_length FIRST_INDOOR_MAP


MACRO internal_map
	db \1 + 1
	dn \3, \2
	dw \4
ENDM

; the appearance of buildings and dungeons in the town map
InternalMapEntries:
	; maximum map id subject to this rule, x, y, name
	internal_map OAKS_LAB,                       3, 11, PalletTownName
	internal_map VIRIDIAN_GYM,                   3,  8, ViridianCityName
	internal_map ROUTE_2_GATE,                   3,  6, Route2Name
	internal_map VIRIDIAN_FOREST,                3,  5, ViridianForestName
	internal_map ROUTE_2_TRADE_HOUSE,            3,  4, Route2Name
	internal_map DIGLETTS_CAVE_ROUTE_2,          4,  4, DiglettsCaveName
	internal_map PEWTER_GYM,                     3,  3, PewterCityName
	internal_map CELADON_GROVE_NORTH_GATE,       6,  3, Route3Name ; marcelnote - new location
	internal_map MT_MOON_POKECENTER,             6,  2, Route4Name
	internal_map MT_MOON_B2F,                    7,  2, MountMoonName
	internal_map MT_MOON_SQUARE,                 7,  2, MtMoonSquareName ; marcelnote - new location
	internal_map CERULEAN_GYM,                  10,  2, CeruleanCityName
	internal_map CERULEAN_CAVE_B1F,              9,  1, CeruleanCaveName
	internal_map BILLS_HOUSE,                   12,  0, SeaCottageName
	internal_map DAYCARE,                       10,  4, Route5Name
	internal_map UNDERGROUND_PATH_ROUTE_6,      10,  7, Route6Name
	internal_map UNDERGROUND_PATH_ROUTE_7,       8,  5, Route7Name
	internal_map UNDERGROUND_PATH_ROUTE_8,      12,  5, Route8Name
	internal_map UNDERGROUND_PATH_WEST_EAST,    10,  5, UndergroundPathName
	internal_map VERMILION_DOCK,                10,  9, VermilionCityName
	internal_map SS_ANNE_2F_ROOMS,               9, 10, SSAnneName
	internal_map DIGLETTS_CAVE_ROUTE_11,        11,  8, DiglettsCaveName
	internal_map ROUTE_11_GATE,                 13,  9, Route11Name ; marcelnote - merged ROUTE_11_GATE floors
	internal_map ROCK_TUNNEL_POKECENTER,        14,  2, Route10Name
	internal_map ROCK_TUNNEL_B1F,               14,  3, RockTunnelName
	internal_map POWER_PLANT,                   15,  3, PowerPlantName
	internal_map LAVENDER_CUBONE_HOUSE,         14,  5, LavenderTownName
	internal_map POKEMON_TOWER_7F,              15,  5, PokemonTowerName
	internal_map ROUTE_12_GATE,                 14,  7, Route12Name ; marcelnote - merged ROUTE_12_GATE floors
	internal_map ROUTE_12_FISHING_GUIDE_HOUSE,  14, 10, Route12Name ; marcelnote - from Super Rod to Fishing Guide
	internal_map CELADON_GYM,                    7,  5, CeladonCityName
	internal_map ROCKET_HIDEOUT_ELEVATOR,        7,  5, RocketHQName     ; marcelnote - adjusted
	internal_map CELADON_GROVE,                  7,  4, CeladonGroveName ; marcelnote - new location
	internal_map ROUTE_15_GATE,                 10, 13, Route15Name      ; marcelnote - merged Route15Gate floors
	internal_map ROUTE_16_GATE,                  6,  5, Route16Name
	internal_map ROUTE_16_FLY_HOUSE,             5,  5, Route16Name
	internal_map ROUTE_18_GATE,                  7, 13, Route18Name ; marcelnote - merged Route18Gate floors
	internal_map SAFFRON_GYM,                   10,  5, SaffronCityName
	internal_map POKEMON_ACADEMY_3F4F,          10,  5, PokemonAcademyName  ; marcelnote - new location
	internal_map SILPH_CO_ELEVATOR,             10,  5, SilphCoName
	internal_map FUCHSIA_GYM,                    9, 13, FuchsiaCityName
	internal_map SAFARI_ZONE_NORTH_REST_HOUSE,   9, 12, SafariZoneName
	internal_map SEAFOAM_ISLANDS_B4F,            6, 15, SeafoamIslandsName
	internal_map CINNABAR_GYM,                   3, 15, CinnabarIslandName
	internal_map POKEMON_MANSION_B1F,            3, 15, PokemonMansionName
	internal_map CINNABAR_VOLCANO_2F,            2, 15, CinnabarVolcanoName ; marcelnote - new location
	internal_map MANDARIN_DOCK,                 15, 15, MandarinIslandName  ; marcelnote - new location
	internal_map CITRUS_FERRY_ROOMS,            12, 15, CitrusFerryName     ; marcelnote - new location
	internal_map SILPH_FACTORY_2F,              15, 15, SilphFactoryName    ; marcelnote - new location
	internal_map ROUTE_22_OLD_ROD_HOUSE,         2,  8, Route22Name         ; marcelnote - new location
	internal_map BATTLE_HALL,                    1,  7, Route22Name         ; marcelnote - new location
	internal_map MT_SILVER_3F,                   0,  7, MtSilverName        ; marcelnote - new location
	internal_map VICTORY_ROAD_3F,                1,  4, VictoryRoadName
	internal_map INDIGO_PLATEAU_LOBBY,           1,  2, IndigoPlateauName
	internal_map HALL_OF_FAME,                   1,  2, PokemonLeagueName
	internal_map COLOSSEUM,                      0,  0, PokemonLeagueName   ; marcelnote - not supposed to see this
	db -1 ; end
