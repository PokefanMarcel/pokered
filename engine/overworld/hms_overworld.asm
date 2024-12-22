CheckForSurf:: ; marcelnote - could be improved if there is a wram bit which checks if I am on the overworld/Pokemon menu
	ld a, [wObtainedBadges]
	bit BIT_SOULBADGE, a
	ret z
; we have the right badge
	ld a, [wWalkBikeSurfState]
	cp 2 ; is the player already surfing?
    ret z
; we are not already surfing
	callfar IsNextTileShoreOrWater
    ret c
; we have water in front of us
	call IsSurfingAllowedOverworld
	ld hl, wStatusFlags1
	bit BIT_SURF_ALLOWED, [hl]
	res BIT_SURF_ALLOWED, [hl]
	ret z
; surfing is allowed
	ld hl, TilePairCollisionsWater
	call CheckForTilePairCollisions
	ret z
; there is no blocking tile
	ld d, SURF
	call IsMoveInParty ; output: z flag = whether the move was found (z = not found; nz = found)
; marcelnote - the code below can be uncommented to use the SURFBOARD
;	jr nz, .canSurf
; we don't have a Pokemon with SURF in the party
;	ld b, SURFBOARD
;	call IsItemInBag
	jr z, .noSurfInParty
;; we have the Surfboard
;.canSurf
	call EnableAutoTextBoxDrawing
	tx_pre WantToSurfText
	ld a, [wCurrentMenuItem]
	and a ; if answered NO
	jp nz, OverworldLoop
	call LoadSurfingPlayerSpriteGraphics
	callfar ItemUseSurfboard.makePlayerMoveForward
	ld hl, wStatusFlags5
	set BIT_SCRIPTED_MOVEMENT_STATE, [hl]
	ld a, 2
	ld [wWalkBikeSurfState], a ; change player state to surfing
	call PlayDefaultMusic ; play surfing music
	jp OverworldLoop
.noSurfInParty
	call EnableAutoTextBoxDrawing
	tx_pre_jump MonCouldSurfText
	jp OverworldLoop

CheckForCut::
	predef GetTileAndCoordsInFrontOfPlayer ; load tile in front
	ld a, [wObtainedBadges]
	bit BIT_CASCADEBADGE, a
	ret z
; we have the right badge
	ld a, [wCurMapTileset] ; cut trees in OVERWORLD and GYM
	and a ; overworld
	jr z, .overworld
	cp GYM
	ret nz
	ld a, [wTileInFrontOfPlayer]
	cp $50 ; gym cut tree
	ret nz
	jr .cuttableTile
.overworld
	ld a, [wTileInFrontOfPlayer]
	cp $3d  ; overworld cut tree
	ret nz  ; we don't check for grass, differently from vanilla
.cuttableTile
	ld [wCutTile], a
; we are in front of a tree
	ld d, CUT
	call IsMoveInParty ; output: z flag = whether the move was found (z = not found; nz = found)
	jr z, .noCutInParty
; we have a Pokemon with CUT in the party
	call EnableAutoTextBoxDrawing
	tx_pre WantToCutText
	ld a, [wCurrentMenuItem]
	and a ; if answered NO
	jp nz, OverworldLoop
	ld a, 1
	ld [wActionResultOrTookBattleTurn], a ; used cut successfully
; actual cutting stuff
	ld a, $ff
	ld [wUpdateSpritesEnabled], a
	callfar InitCutAnimOAM
	ld de, CutTreeBlockSwaps
	callfar ReplaceTreeTileBlock
	callfar RedrawMapView
	farcall AnimCut
	ld a, $1
	ld [wUpdateSpritesEnabled], a
	ld a, SFX_CUT
	call PlaySound
	ld a, $90
	ldh [hWY], a
	call UpdateSprites
	callfar RedrawMapView ; should this be simply a jp RedrawMapView?
	jp OverworldLoop
.noCutInParty
	call EnableAutoTextBoxDrawing
	tx_pre_jump TreeCanBeCutText
	jp OverworldLoop

CheckForFlash::
	ld a, [wObtainedBadges]
	bit BIT_BOULDERBADGE, a
	ret z
; we have the right badge
	ld a, [wMapPalOffset]
	and a
	ret z
; the map pal offset is not zero
	ld d, FLASH
	call IsMoveInParty ; output: a is the party member with FLASH (0 to 5)
	ret z
; we have a Pokemon with FLASH in the party
	add LOW(wPartySpecies) ; this is an efficient way to get hl = n16 + a
	ld l, a
	adc HIGH(wPartySpecies)
	sub l
	ld h, a
	push hl
; stores address wPartySpecies + a on stack
	call EnableAutoTextBoxDrawing
	tx_pre UsedFlashText
	pop hl
	ld a, [hl]
	call PlayCry ; plays cry of Pokémon a
	call WaitForSoundToFinish
	xor a
	ld [wMapPalOffset], a
	jp OverworldLoop

CheckForStrength:: ; marcelnote - this function is different from the others because it is called inside text_asm
	ld a, [wObtainedBadges]
	bit BIT_RAINBOWBADGE, a
	jr z, .fail
; we have the right badge
	ld a, [wStatusFlags1]
	bit BIT_STRENGTH_ACTIVE, a ; is Strength already activated?
	jr nz, .fail
; Strength not activated yet
	ld d, STRENGTH
	call IsMoveInParty ; output: a is the party member with STRENGTH (0 to 5)
	jr z, .fail
; we have a Pokemon with STRENGTH in the party
	add LOW(wPartySpecies) ; this is an efficient way to get hl = n16 + a
	ld l, a
	adc HIGH(wPartySpecies)
	sub l
	ld h, a
	push hl
; stores address wPartySpecies + a on stack
	ld hl, WantToStrengthText
	call PrintText
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .saidNo
	ld hl, CanMoveBouldersText
	call PrintText
	pop hl
	ld a, [hl]
	call PlayCry ; plays cry of Pokémon a
	call WaitForSoundToFinish
	ld hl, wStatusFlags1
	set BIT_STRENGTH_ACTIVE, [hl]
	ret
.fail
	ld hl, ThisRequiresStrengthText
	call PrintText
	ret
.saidNo
	pop hl ; remove address wPartyMon{1+a}Species from the stack to use rst TextScriptEnd
	ret


IsSurfingAllowedOverworld:
; marcelnote - this is essentially a copy of IsSurfingAllowed which
;              uses call EnableAutoTextBoxDrawing, tx_pre_jump, ret
;              instead of jp PrintText ; there's probably a way to merge both
; Returns whether surfing is allowed in bit 1 of wStatusFlags1.
; Surfing isn't allowed on the Cycling Road or in the lowest level of the
; Seafoam Islands before the current has been slowed with boulders.
	ld hl, wStatusFlags1
	set BIT_SURF_ALLOWED, [hl]
	ld a, [wStatusFlags6]
	bit BIT_ALWAYS_ON_BIKE, a
	jr nz, .forcedToRideBike
	ld a, [wCurMap]
	cp SEAFOAM_ISLANDS_B4F
	ret nz
	CheckBothEventsSet EVENT_SEAFOAM4_BOULDER1_DOWN_HOLE, EVENT_SEAFOAM4_BOULDER2_DOWN_HOLE
	ret z
	ld hl, SeafoamIslandsB4FStairsOverworldCoords
	call ArePlayerCoordsInArray
	ret nc
	ld hl, wStatusFlags1
	res BIT_SURF_ALLOWED, [hl]
	call EnableAutoTextBoxDrawing
	tx_pre_jump CurrentTooFastOverworldText
	ret
.forcedToRideBike
	ld hl, wStatusFlags1
	res BIT_SURF_ALLOWED, [hl]
	call EnableAutoTextBoxDrawing
	tx_pre_jump CyclingIsFunOverworldText
	ret


SeafoamIslandsB4FStairsOverworldCoords:
	dbmapcoord  7, 11
	db -1 ; end


WantToSurfText::
	text_far _WantToSurfText
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .saidNo
;	ld a, SURF ; marcelnote - code here can be uncommented for SURFBOARD
;	call IsMoveInParty ; probably a better way to do this since we already checked
	ld hl, SurfingGotOnText
;	jr nz, .print_text
;	ld hl, GotOnSurfboardText
;.print_text
	call PrintText
.saidNo
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

;GotOnSurfboardText: ; marcelnote - for SURFBOARD
;	text_far _GotOnBicycleText1
;	text_low
;	text_far _GotOnSurfboardText
;	text_end

WantToCutText::
	text_far _WantToCutText
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .saidNo
	ld hl, UsedCutText
	call PrintText
.saidNo
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

UsedFlashText::
	text_far _UsedFlashText
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
 	rst TextScriptEnd ; PureRGB - rst TextScriptEnd


; marcelnote - adapted from shinpokered function
; Searches for a specific move in the party and stores nickname of corresponding Pokémon in wNameBuffer
; input:  d = which move ID to look for (SURF, CUT...)
; output: z flag = whether the move was found (z = not found; nz = found)
;         a = location of the Pokémon with the move (0 = first mon, 1 = second mon..., 5 = sixth mon)
;         [wNameBuffer] = nickname of Pokémon who has the move
IsMoveInParty::
	ld a, [wPartyCount]
	and a
	ret z	; treat as not finding a move if the party count is 0
; party count is not 0
	push de
	push hl
	push bc
	ld e, a ; 'e' = which pokemon we're on, starts from last i.e. [wPartyCount]
.nextPoke
	dec e
	ld a, e
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2Moves - wPartyMon1Moves
	call AddNTimes ; brings hl to the address wPartyMon{1+a}Moves
	ld b, NUM_MOVES
.nextMove
	ld a, [hli]
	cp d ; is it the specified move?
	jr z, .foundMove
	dec b
	jr nz, .nextMove
	ld a, e
	or a ; if e = 0 then results in 0
	jr z, .checkFieldMoves
	jr .nextPoke
.checkFieldMoves ; here e = 0, we will reincrease it up to PARTY_LENGTH
	ld hl, wTempFieldMoves
.nextFieldMoveSlot
	ld a, [hli]
	cp d ; is it the specified move?
	jr z, .foundMove
	inc e
	ld a, e
	cp PARTY_LENGTH	; stop if e = PARTY_LENGTH
	jr z, .done
	jr .nextFieldMoveSlot
.foundMove
	ld a, e
    ld hl, wPartyMon1Nick
    ld bc, wPartyMon2Nick - wPartyMon1Nick
    push af
    call AddNTimes ; brings hl to the address wPartyMon{1+a}Nick
    ld de, wNameBuffer
    call CopyData ; copy bc bytes from hl to de
    pop af
    inc b ; sets nz since b=0 after CopyData
.done
	pop bc
	pop hl
	pop de
	ret
