MACRO bookshelf_tile
	db \1, \2
	db_tx_pre \3
ENDM

BookshelfTileIDs:
	; tileset id, bookshelf tile id, text id
	bookshelf_tile PLATEAU,      $30, IndigoPlateauStatues
	bookshelf_tile HOUSE,        $3D, TownMapText
	bookshelf_tile HOUSE,        $1E, BookOrSculptureText
	bookshelf_tile MANSION,      $32, BookOrSculptureText
	bookshelf_tile BIG_HOUSE,    $32, BookOrSculptureText ; marcelnote - merged REDS_HOUSE tilesets
	bookshelf_tile LAB,          $28, BookOrSculptureText
	bookshelf_tile LOBBY,        $16, ElevatorText
	bookshelf_tile GYM,          $1D, BookOrSculptureText
	bookshelf_tile GATE,         $22, BookOrSculptureText
	bookshelf_tile MART,         $54, PokemonStuffText
	bookshelf_tile MART,         $55, PokemonStuffText
	bookshelf_tile POKECENTER,   $54, PokemonStuffText
	bookshelf_tile POKECENTER,   $55, PokemonStuffText
	bookshelf_tile LOBBY,        $50, PokemonStuffText
	bookshelf_tile LOBBY,        $52, PokemonStuffText
	bookshelf_tile SHIP,         $36, BookOrSculptureText
	bookshelf_tile ACADEMY,      $32, BookOrSculptureText ; marcelnote - new tileset
	bookshelf_tile ACADEMY,      $3A, BookOrSculptureText ; marcelnote - new tileset
	bookshelf_tile ACADEMY,      $3C, BookOrSculptureText ; marcelnote - new tileset
	bookshelf_tile ACADEMY,      $22, BookOrSculptureText ; marcelnote - new tileset
	db -1 ; end
