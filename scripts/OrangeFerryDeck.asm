; marcelnote - new location
OrangeFerryDeck_Script:
	call EnableAutoTextBoxDrawing
	ld a, [wOrangeFerryDeckCurScript]
	ld hl, OrangeFerryDeck_ScriptPointers
	jp CallFunctionInTable

OrangeFerryDeck_ScriptPointers:
	def_script_pointers
	dw_const OrangeFerryDeckDefaultScript,           SCRIPT_ORANGEFERRYDECK_DEFAULT
	dw_const OrangeFerryDeckPlayerMovingDownScript,  SCRIPT_ORANGEFERRYDECK_PLAYER_MOVING_DOWN
	dw_const OrangeFerryDeckEntranceScript,          SCRIPT_ORANGEFERRYDECK_ENTRANCE

OrangeFerryDeckDefaultScript:
	CheckEvent EVENT_FERRY_ARRIVED
	ret nz
	ld a, [wYCoord]
	and a
	jr nz, .checkSailor
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	ld [wSimulatedJoypadStatesEnd + 1], a
	ld a, 2
	ld [wSimulatedJoypadStatesIndex], a
	ld a, SCRIPT_ORANGEFERRYDECK_ENTRANCE
	ld [wOrangeFerryDeckCurScript], a
	jr .startMovement
.checkSailor
	cp 1
	ret nz
	xor a
	ldh [hJoyHeld], a
	ld a, ORANGEFERRYDECK_SAILOR1
	ldh [hSpriteIndex], a
	ld a, SPRITE_FACING_LEFT
	ldh [hSpriteFacingDirection], a
	call SetSpriteFacingDirectionAndDelay
	ld a, TEXT_ORANGEFERRYDECK_SAILOR_SORRY
	ldh [hTextID], a
	call DisplayTextID
	ld a, D_DOWN
	ld [wSimulatedJoypadStatesEnd], a
	ld a, $1
	ld [wSimulatedJoypadStatesIndex], a
	ld a, SCRIPT_ORANGEFERRYDECK_PLAYER_MOVING_DOWN
	ld [wOrangeFerryDeckCurScript], a
.startMovement
	call StartSimulatingJoypadStates
	ret

OrangeFerryDeckPlayerMovingDownScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld c, 10
	call DelayFrames
	ld a, SCRIPT_ORANGEFERRYDECK_DEFAULT
	ld [wOrangeFerryDeckCurScript], a
	ret

OrangeFerryDeckEntranceScript:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	ret nz
	ld c, 10
	call DelayFrames
	farcall ShakeElevator
	ld a, TEXT_ORANGEFERRYROOMS_SPEAKER_LEFT
	ldh [hTextID], a
	call DisplayTextID
	ld a, SCRIPT_ORANGEFERRYDECK_DEFAULT
	ld [wOrangeFerryDeckCurScript], a
	ret

OrangeFerryDeck_TextPointers:
	def_text_pointers
	dw_const OrangeFerryDeckSailor1Text,        TEXT_ORANGEFERRYDECK_SAILOR1
	dw_const OrangeFerryDeckSailor2Text,        TEXT_ORANGEFERRYDECK_SAILOR2
	dw_const OrangeFerryDeckVendingMachineText, TEXT_ORANGEFERRYDECK_VENDING_MACHINE
	dw_const OrangeFerryDeckSailorSorryText,    TEXT_ORANGEFERRYDECK_SAILOR_SORRY
	dw_const OrangeFerryDeckSpeakerWelcomeText, TEXT_ORANGEFERRYROOMS_SPEAKER_LEFT

OrangeFerryDeckSailor1Text:
	text_asm
	CheckEvent EVENT_FERRY_ARRIVED
	ld hl, .EnjoyYourTripText
	jr z, .print_text
	ld a, [wLastMap]
	cp VERMILION_DOCK
	ld hl, .EndOfTheLineVermilionText
	jr z, .print_text
	ld hl, .EndOfTheLineMandarinText
.print_text
	call PrintText
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

.EnjoyYourTripText:
	text_far _OrangeFerryDeckSailorEnjoyYourTripText
	text_end

.EndOfTheLineVermilionText:
	text_far _OrangeFerryDeckSailorEndOfTheLineVermilionText
	text_end

.EndOfTheLineMandarinText:
	text_far _OrangeFerryDeckSailorEndOfTheLineMandarinText
	text_end

OrangeFerryDeckSailor2Text:
	text_far _OrangeFerryDeckSailor2Text
	text_end

OrangeFerryDeckSailorSorryText:
	text_far _OrangeFerryDeckSailorSorryText
	text_end

OrangeFerryDeckSpeakerWelcomeText:
	text_far _OrangeFerryDeckSpeakerWelcomeText
	text_end

OrangeFerryDeckVendingMachineText:
	script_vending_machine
