SeafoamIslands1F_Script:
	call EnableAutoTextBoxDrawing
	SetEvent EVENT_IN_SEAFOAM_ISLANDS
	ld hl, wFlags_0xcd60
	bit 7, [hl]
	res 7, [hl]
	jr z, .noBoulderWasPushed
	ld hl, Seafoam1HolesCoords
	call CheckBoulderCoords
	ret nc
	EventFlagAddress hl, EVENT_SEAFOAM1_BOULDER1_DOWN_HOLE
	ld a, [wCoordIndex]
	cp $1
	jr nz, .boulder2FellDownHole
	SetEventReuseHL EVENT_SEAFOAM1_BOULDER1_DOWN_HOLE
	ld a, HS_SEAFOAM_ISLANDS_1F_BOULDER_1
	ld [wObjectToHide], a
	ld a, HS_SEAFOAM_ISLANDS_B1F_BOULDER_1
	ld [wObjectToShow], a
	jr .hideAndShowBoulderObjects
.boulder2FellDownHole
	SetEventAfterBranchReuseHL EVENT_SEAFOAM1_BOULDER2_DOWN_HOLE, EVENT_SEAFOAM1_BOULDER1_DOWN_HOLE
	ld a, HS_SEAFOAM_ISLANDS_1F_BOULDER_2
	ld [wObjectToHide], a
	ld a, HS_SEAFOAM_ISLANDS_B1F_BOULDER_2
	ld [wObjectToShow], a
.hideAndShowBoulderObjects
	ld a, [wObjectToHide]
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, [wObjectToShow]
	ld [wMissableObjectIndex], a
	predef_jump ShowObject
.noBoulderWasPushed
	ld a, SEAFOAM_ISLANDS_B1F
	ld [wDungeonWarpDestinationMap], a
	ld hl, Seafoam1HolesCoords
	jp IsPlayerOnDungeonWarp

Seafoam1HolesCoords:
	dbmapcoord 17,  6
	dbmapcoord 24,  6
	db -1 ; end

SeafoamIslands1F_TextPointers:
	def_text_pointers
	dw_const SeafoamIslands1FLoreleiText, TEXT_SEAFOAMISLANDS1F_LORELEI ; marcelnote - postgame Lorelei
	dw_const BoulderText, TEXT_SEAFOAMISLANDS1F_BOULDER1
	dw_const BoulderText, TEXT_SEAFOAMISLANDS1F_BOULDER2

SeafoamIslands1FLoreleiText: ; marcelnote - postgame Lorelei
	text_asm
	ld hl, .text
	call PrintText
	call GBFadeOutToBlack
	ld a, HS_SEAFOAM_ISLANDS_1F_LORELEI
	ld [wMissableObjectIndex], a
	predef HideObject
	call UpdateSprites
	call Delay3
	SetEvent EVENT_POSTGAME_LORELEI
	CheckBothEventsSet EVENT_POSTGAME_BRUNO, EVENT_POSTGAME_AGATHA ; sets Z flag when events are set
	jr nz, .end
	CheckBothEventsSet EVENT_POSTGAME_LANCE, EVENT_POSTGAME_RIVAL
	jr nz, .end
	ld a, HS_INDIGO_PLATEAU_LOBBY_GIRL1 ; marcelnote - remove girl from E4 entrance
	ld [wMissableObjectIndex], a
	predef ShowObjectCont
	ld a, HS_INDIGO_PLATEAU_LOBBY_GIRL2 ; marcelnote - remove girl from E4 entrance
	ld [wMissableObjectIndex], a
	predef HideObjectCont
	ld a, HS_INDIGO_PLATEAU_LOBBY_RIVAL ; marcelnote - show Rival
	ld [wMissableObjectIndex], a
	predef ShowObjectCont
.end
	call GBFadeInFromBlack
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd
.text
	text_far _PokemonTower1FAgathaText
	text_end
