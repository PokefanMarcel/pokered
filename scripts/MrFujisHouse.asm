MrFujisHouse_Script:
	call EnableAutoTextBoxDrawing
	ret

MrFujisHouse_TextPointers:
	def_text_pointers
	dw_const MrFujisHouseSuperNerdText,     TEXT_MRFUJISHOUSE_SUPER_NERD
	dw_const MrFujisHouseLittleGirlText,    TEXT_MRFUJISHOUSE_LITTLE_GIRL
	dw_const MrFujisHousePsyduckText,       TEXT_MRFUJISHOUSE_PSYDUCK
	dw_const MrFujisHouseNidorinoText,      TEXT_MRFUJISHOUSE_NIDORINO
	dw_const MrFujisHouseMrFujiText,        TEXT_MRFUJISHOUSE_MR_FUJI
	dw_const MrFujisHouseMrFujiPokedexText, TEXT_MRFUJISHOUSE_POKEDEX

MrFujisHouseSuperNerdText: ; marcelnote - optimized
	text_asm
	CheckEvent EVENT_RESCUED_MR_FUJI
	ld hl, .MrFujiHadBeenPrayingText
	jr nz, .rescued_mr_fuji
	ld hl, .MrFujiIsntHereText
.rescued_mr_fuji
	call PrintText
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

.MrFujiIsntHereText:
	text_far _MrFujisHouseSuperNerdMrFujiIsntHereText
	text_end

.MrFujiHadBeenPrayingText:
	text_far _MrFujisHouseSuperNerdMrFujiHadBeenPrayingText
	text_end

MrFujisHouseLittleGirlText: ; marcelnote - optimized
	text_asm
	CheckEvent EVENT_RESCUED_MR_FUJI
	ld hl, .PokemonAreNiceToHugText
	jr nz, .rescued_mr_fuji
	ld hl, .ThisIsMrFujisHouseText
.rescued_mr_fuji
	call PrintText
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

.ThisIsMrFujisHouseText:
	text_far _MrFujisHouseLittleGirlThisIsMrFujisHouseText
	text_end

.PokemonAreNiceToHugText:
	text_far _MrFujisHouseLittleGirlPokemonAreNiceToHugText
	text_end

MrFujisHousePsyduckText:
	text_far _MrFujisHousePsyduckText
	text_asm
	ld a, PSYDUCK
	call PlayCry
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

MrFujisHouseNidorinoText:
	text_far _MrFujisHouseNidorinoText
	text_asm
	ld a, NIDORINO
	call PlayCry
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

MrFujisHouseMrFujiText: ; marcelnote - optimized and added Citrus pass dialogue
	text_asm
	CheckEvent EVENT_GOT_CITRUS_PASS
	ld hl, .BeCarefulText
	jr nz, .print_text
	CheckEvent EVENT_GAVE_FUJIS_NOTES
	ld hl, .TakeThisText
	jr nz, .gaveFujisNotes ; this jump should never happen because giving the Notes frees up one spot in the bag
	ld b, FUJIS_NOTES
	call IsItemInBag
	jr z, .no_fujis_notes
	ld a, FUJIS_NOTES
	ldh [hItemToRemoveID], a
	farcall RemoveItemByID
	SetEvent EVENT_GAVE_FUJIS_NOTES
	ld hl, .PlayerGaveNotesText
.gaveFujisNotes
	call PrintText
	lb bc, CITRUS_PASS, 1
	call GiveItem
	ld hl, .MakeRoomText
	jr nc, .print_text ; should never happen either
	SetEvent EVENT_GOT_CITRUS_PASS
	ld hl, .ReceivedCitrusPassText
	jr .print_text
.no_fujis_notes
	CheckEvent EVENT_GOT_POKE_FLUTE
	ld hl, .HasMyFluteHelpedYouText
	jr nz, .print_text
	ld hl, .IThinkThisMayHelpYourQuestText
	call PrintText
	lb bc, POKE_FLUTE, 1
	call GiveItem
	ld hl, .MakeRoomText
	jr nc, .print_text
	ld a, HS_POKEMON_TOWER_7F_CHANNELER ; marcelnote - added 7FChanneler
	ld [wMissableObjectIndex], a
	predef ShowObject
	SetEvent EVENT_GOT_POKE_FLUTE
	ld hl, .ReceivedPokeFluteText
.print_text
	call PrintText
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

.IThinkThisMayHelpYourQuestText:
	text_far _MrFujisHouseMrFujiIThinkThisMayHelpYourQuestText
	text_end

.ReceivedPokeFluteText:
	text_far _MrFujisHouseMrFujiReceivedPokeFluteText
	sound_get_key_item
	text_far _MrFujisHouseMrFujiPokeFluteExplanationText
	text_end

.MakeRoomText:
	text_far _MrFujisHouseMrFujiMakeRoomText
	text_end

.HasMyFluteHelpedYouText:
	text_far _MrFujisHouseMrFujiHasMyFluteHelpedYouText
	text_end

.PlayerGaveNotesText: ; marcelnote - new
	text_far _MrFujisHouseMrFujiPlayerGaveNotesText
	sound_get_item_1
	text_far _MrFujisHouseMrFujiThankYouText
	text_end

.TakeThisText: ; marcelnote - new
	text_far _MrFujisHouseMrFujiTakeThisText
	text_end

.ReceivedCitrusPassText: ; marcelnote - new
	text_far _MrFujisHouseMrFujiReceivedCitrusPassText
	sound_get_key_item
	text_far _MrFujisHouseMrFujiCitrusPassExplanationText
	text_end

.BeCarefulText: ; marcelnote - new
	text_far _MrFujisHouseMrFujiBeCarefulText
	text_end

MrFujisHouseMrFujiPokedexText:
	text_far _MrFujisHouseMrFujiPokedexText
	text_end
