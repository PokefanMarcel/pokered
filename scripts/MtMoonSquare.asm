; marcelnote - new location
MtMoonSquare_Script:
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	bit 5, [hl]
	res 5, [hl]
	ret z
	call Random
	cp 25 ; prob_spawning = (n+1)/256
	ret nc
	ld a, HS_MT_MOON_SQUARE_CLEFAIRY
	ld [wMissableObjectIndex], a
	predef_jump ShowObject

MtMoonSquare_TextPointers:
	def_text_pointers
	dw_const MtMoonSquareCooltrainerFText,  TEXT_MTMOONSQUARE_COOLTRAINER_F
	dw_const MtMoonSquareHikerText,         TEXT_MTMOONSQUARE_HIKER
	dw_const MtMoonSquareGolemText,         TEXT_MTMOONSQUARE_GOLEM
	dw_const MtMoonSquareClefairyText,      TEXT_MTMOONSQUARE_CLEFAIRY
	dw_const PickUpItemText,                TEXT_MTMOONSQUARE_MOON_STONE
	dw_const PickUpItemText,                TEXT_MTMOONSQUARE_SUPER_POTION
	dw_const MtMoonSquareSignText,          TEXT_MTMOONSQUARE_SIGN
	dw_const MtMoonSquareEvolutionRockText, TEXT_MTMOONSQUARE_EVOLUTION_ROCK

MtMoonSquareCooltrainerFText:
	text_far _MtMoonSquareCooltrainerFText
	text_end

MtMoonSquareClefairyText:
	text_asm
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	ld hl, .text
	call PrintText
	ld a, CLEFAIRY
	call PlayCry
	call GBFadeOutToWhite
	;ld a, SFX_TELEPORT_EXIT_1
	;call PlaySound
	ld a, HS_MT_MOON_SQUARE_CLEFAIRY    ; hide Clefairy
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_MT_MOON_SQUARE_ITEM_1  ; show Moon Stone
	ld [wMissableObjectIndex], a
	predef ShowObject
	call UpdateSprites
	call Delay3
	call GBFadeInFromWhite
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd
.text
	text_far _MtMoonSquareClefairyText
	text_end

MtMoonSquareHikerText:
	text_far _MtMoonSquareHikerText
	text_end

MtMoonSquareGolemText:
	text_far _MtMoonSquareGolemText
	text_asm
	ld a, GOLEM
	call PlayCry
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

MtMoonSquareSignText:
	text_far _MtMoonSquareSignText
	text_end

MtMoonSquareEvolutionRockText:
	text_asm
	call SaveScreenTilesToBuffer2
	ld hl, .MtMoonSquareThisRockVibratesText
	call PrintText
	ld d, GRAVELER
	callfar IsMonInParty ; outputs [wWhichPokemon] = index of Graveler in party (0 to 5)
	jr z, .done
	ld hl, TextScriptPromptButton
	call TextCommandProcessor
	ld hl, .MtMoonSquareShouldGravelerStrikeText
	call PrintText
	ld a, $01
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .done
	ld hl, .MtMoonSquareGravelerGivesPunchText
	call PrintText
	;ld a, GRAVELER
	;call PlayCry
	;call WaitForSoundToFinish
	ld a, SFX_PUSH_BOULDER
	call PlaySound
	call WaitForSoundToFinish
	ld hl, .MtMoonSquareGravelerDotsText
	call PrintText
	callfar EvolveMonInteraction    ; actual evolution and map reloading
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

.MtMoonSquareThisRockVibratesText
	text_far _MtMoonSquareThisRockVibratesText
	text_end

.MtMoonSquareShouldGravelerStrikeText:
	text_far _MtMoonSquareShouldGravelerStrikeText
	text_end

.MtMoonSquareGravelerGivesPunchText:
	text_far _MtMoonSquareGravelerGivesPunchText
	text_end

.MtMoonSquareGravelerDotsText:
	text_far _MtMoonSquareGravelerDotsText
	text_end

.done
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd
