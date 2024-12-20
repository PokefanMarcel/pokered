; marcelnote - merged Route15Gate floors
Route15Gate_Script:
	jp EnableAutoTextBoxDrawing
	; marcelnote - Route15Gate2F_Script used to be just:
	; jp DisableAutoTextBoxDrawing ; to avoid text box from showing up when looking at binoculars from the side

Route15Gate_TextPointers:
	def_text_pointers
	dw_const Route15Gate1FGuardText,          TEXT_ROUTE15GATE1F_GUARD
	dw_const Route15Gate2FOaksAideText,       TEXT_ROUTE15GATE2F_OAKS_AIDE

Route15Gate1FGuardText:
	text_far _Route15Gate1FGuardText
	text_end

Route15Gate2FOaksAideText: ; marcelnote - simplified by using wNameBuffer in text
	text_asm
	CheckEvent EVENT_GOT_EXP_ALL
	jr nz, .got_item
	ld a, 50
	ldh [hOaksAideRequirement], a
	ld a, EXP_ALL
	ldh [hOaksAideRewardItem], a
	ld [wNamedObjectIndex], a
	call GetItemName ; stores name in wNameBuffer
	predef OaksAideScript
	ldh a, [hOaksAideResult]
	dec a ; OAKS_AIDE_GOT_ITEM?
	jr nz, .no_item
	SetEvent EVENT_GOT_EXP_ALL
.got_item
	ld hl, wStatusFlags1      ; marcelnote - ExpAll can be activated/deactivated
	set BIT_EXP_ALL_ACTIVE, [hl]
	ld hl, .ExpAllText
	call PrintText
.no_item
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

.ExpAllText:
	text_far _Route15Gate2FOaksAideExpAllText
	text_end
