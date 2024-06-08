CeladonMart2F_Script:
	jp EnableAutoTextBoxDrawing

CeladonMart2F_TextPointers:
	def_text_pointers
	dw_const CeladonMart2FClerk1Text,           TEXT_CELADONMART2F_CLERK1
	dw_const CeladonMart2FClerk2Text,           TEXT_CELADONMART2F_CLERK2
	dw_const CeladonMart2FMiddleAgedManText,    TEXT_CELADONMART2F_MIDDLE_AGED_MAN
	dw_const CeladonMart2FGirlText,             TEXT_CELADONMART2F_GIRL
	dw_const CeladonMart2FBrunetteGirlText,     TEXT_CELADONMART2F_BRUNETTE_GIRL ; marcelnote - new NPC
	dw_const CeladonMart2FCurrentFloorSignText, TEXT_CELADONMART2F_CURRENT_FLOOR_SIGN

CeladonMart2FMiddleAgedManText:
	text_far _CeladonMart2FMiddleAgedManText
	text_end

CeladonMart2FGirlText:
	text_far _CeladonMart2FGirlText
	text_end

CeladonMart2FBrunetteGirlText: ; marcelnote - new NPC
	text_far _CeladonMart2FBrunetteGirlText
	text_end

CeladonMart2FCurrentFloorSignText:
	text_far _CeladonMart2FCurrentFloorSignText
	text_end

CeladonMart2FClerk2Text: ; marcelnote - new text for dynamic list
	text_asm
	call MartTMClerkDialogue
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

MartTMClerkDialogue: ; marcelnote - this fills the TM seller list dynamically
	ld a, 1
	ld [wUpdateSpritesEnabled], a
	ld de, wItemList
	inc de ; 1st entry = total number of items in the list, so we skip it for now
; start checking TMs one by one
	; TM01
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM02
	ld a, TM_MEGA_PUNCH
	ld [de], a
	inc de
.checkTM02
	; TM02
	CheckEvent EVENT_BEAT_KOGA
	jr z, .checkTM03
	ld a, TM_RAZOR_WIND
	ld [de], a
	inc de
.checkTM03
	; TM03
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM04
	ld a, TM_SWORDS_DANCE
	ld [de], a
	inc de
.checkTM04
	; TM04
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM05
	ld a, TM_WHIRLWIND
	ld [de], a
	inc de
.checkTM05
	; TM05
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM06
	ld a, TM_MEGA_KICK
	ld [de], a
	inc de
.checkTM06
	; TM06
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTM07
	ld a, TM_TOXIC
	ld [de], a
	inc de
.checkTM07
	; TM07
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM08
	ld a, TM_HORN_DRILL
	ld [de], a
	inc de
.checkTM08
	; TM08
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .checkTM09
	ld a, TM_BODY_SLAM
	ld [de], a
	inc de
.checkTM09
	; TM09
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM10
	ld a, TM_TAKE_DOWN
	ld [de], a
	inc de
.checkTM10
	; TM10
	CheckEvent EVENT_BEAT_SABRINA
	jr z, .checkTM11
	ld a, TM_DOUBLE_EDGE
	ld [de], a
	inc de
.checkTM11
	; TM11
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .checkTM12
	ld a, TM_BUBBLEBEAM
	ld [de], a
	inc de
.checkTM12
	; TM12
	CheckEvent EVENT_BEAT_MISTY
	jr z, .checkTM13
	ld a, TM_WATER_GUN
	ld [de], a
	inc de
.checkTM13
	; TM13
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI
	jr z, .checkTM14
	ld a, TM_ICE_BEAM
	ld [de], a
	inc de
.checkTM14
	; TM14
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM15
	ld a, TM_BLIZZARD
	ld [de], a
	inc de
.checkTM15
	; TM15
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM16
	ld a, TM_HYPER_BEAM
	ld [de], a
	inc de
.checkTM16
	; TM16
	CheckEvent EVENT_BEAT_SABRINA
	jr z, .checkTM17
	ld a, TM_PAY_DAY
	ld [de], a
	inc de
.checkTM17
	; TM17
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM18
	ld a, TM_SUBMISSION
	ld [de], a
	inc de
.checkTM18
	; TM18
	CheckEvent EVENT_BEAT_SABRINA
	jr z, .checkTM19
	ld a, TM_COUNTER
	ld [de], a
	inc de
.checkTM19
	; TM19
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .checkTM20
	ld a, TM_SEISMIC_TOSS
	ld [de], a
	inc de
.checkTM20
	; TM20
	CheckEvent EVENT_BEAT_KOGA
	jr z, .checkTM21
	ld a, TM_RAGE
	ld [de], a
	inc de
.checkTM21
	; TM21
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTM22
	ld a, TM_MEGA_DRAIN
	ld [de], a
	inc de
.checkTM22
	; TM22
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM23
	ld a, TM_SOLARBEAM
	ld [de], a
	inc de
.checkTM23
	; TM23
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .checkTM24
	ld a, TM_DRAGON_RAGE
	ld [de], a
	inc de
.checkTM24
	; TM24
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTM25
	ld a, TM_THUNDERBOLT
	ld [de], a
	inc de
.checkTM25
	; TM25
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM26
	ld a, TM_THUNDER
	ld [de], a
	inc de
.checkTM26
	; TM26
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM27
	ld a, TM_EARTHQUAKE
	ld [de], a
	inc de
.checkTM27
	; TM27
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM28
	ld a, TM_FISSURE
	ld [de], a
	inc de
.checkTM28
	; TM28
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .checkTM29
	ld a, TM_DIG
	ld [de], a
	inc de
.checkTM29
	; TM29
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI
	jr z, .checkTM30
	ld a, TM_PSYCHIC_M
	ld [de], a
	inc de
.checkTM30
	; TM30
	CheckEvent EVENT_BEAT_LT_SURGE
	jr z, .checkTM31
	ld a, TM_TELEPORT
	ld [de], a
	inc de
.checkTM31
	; TM31
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTM32
	ld a, TM_MIMIC
	ld [de], a
	inc de
.checkTM32
	; TM32
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM33
	ld a, TM_DOUBLE_TEAM
	ld [de], a
	inc de
.checkTM33
	; TM33
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM34
	ld a, TM_REFLECT
	ld [de], a
	inc de
.checkTM34
	; TM34
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .checkTM35
	ld a, TM_BIDE
	ld [de], a
	inc de
.checkTM35
	; TM35
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTM36
	ld a, TM_METRONOME
	ld [de], a
	inc de
.checkTM36
	; TM36
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTM37
	ld a, TM_SELFDESTRUCT
	ld [de], a
	inc de
.checkTM37
	; TM37
	;CheckEvent EVENT_BEAT_MISTY ; obtainable by default
	;jr z, .checkTM38
	ld a, TM_EGG_BOMB
	ld [de], a
	inc de
.checkTM38
	; TM38
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM39
	ld a, TM_FIRE_BLAST
	ld [de], a
	inc de
.checkTM39
	; TM39
	CheckEvent EVENT_BEAT_KOGA
	jr z, .checkTM40
	ld a, TM_SWIFT
	ld [de], a
	inc de
.checkTM40
	; TM40
	CheckEvent EVENT_BEAT_SABRINA
	jr z, .checkTM41
	ld a, TM_SKULL_BASH
	ld [de], a
	inc de
.checkTM41
	; TM41
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTM42
	ld a, TM_SOFTBOILED
	ld [de], a
	inc de
.checkTM42
	; TM42
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .checkTM43
	ld a, TM_DREAM_EATER
	ld [de], a
	inc de
.checkTM43
	; TM43
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM44
	ld a, TM_SKY_ATTACK
	ld [de], a
	inc de
.checkTM44
	; TM44
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI
	jr z, .checkTM45
	ld a, TM_REST
	ld [de], a
	inc de
.checkTM45
	; TM45
	CheckEvent EVENT_BEAT_LT_SURGE
	jr z, .checkTM46
	ld a, TM_THUNDER_WAVE
	ld [de], a
	inc de
.checkTM46
	; TM46
	CheckEvent EVENT_BEAT_VIRIDIAN_GYM_GIOVANNI
	jr z, .checkTM47
	ld a, TM_PSYWAVE
	ld [de], a
	inc de
.checkTM47
	; TM47
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM48
	ld a, TM_EXPLOSION
	ld [de], a
	inc de
.checkTM48
	; TM48
	CheckEvent EVENT_BEAT_SABRINA
	jr z, .checkTM49
	ld a, TM_ROCK_SLIDE
	ld [de], a
	inc de
.checkTM49
	; TM49
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTM50
	ld a, TM_TRI_ATTACK
	ld [de], a
	inc de
.checkTM50
	; TM50
	CheckEvent EVENT_BECAME_CHAMPION
	jr z, .checkTM51
	ld a, TM_SUBSTITUTE
	ld [de], a
	inc de
.checkTM51
	; TM51
	CheckEvent EVENT_BEAT_BLAINE
	jr z, .checkTMDONE
	ld a, TM_HEX
	ld [de], a
	inc de
.checkTMDONE
	ld a, -1 ; ends the list
	ld [de], a
; recovering the total number of TMs in the list
	dec de
	ld a, e ; the following code subtracts wItemList from de
    sub LOW(wItemList)
    ;ld e, a ; actually no need to bother with HIGH byte since ItemList length is < 1 byte?
    ;ld a, d
    ;sbc HIGH(wItemList)
    ;ld d, a
    ;ld a, e ; the number is less than 1 byte so must be in the lower byte
	ld de, wItemList ; put this number at address wItemList
	ld [de], a
; loading text
	ld hl, PokemartGreetingText
	call PrintText
	ld a, PRICEDITEMLISTMENU
	ld [wListMenuID], a
	callfar DisplayPokemartDialogue_
	ret

    ; marcelnote - current allocation of TMs
    ; for now based on badges obtained but could also put other events as conditions
	; TM_MEGA_PUNCH   ; TM01 ; badge 2 (default)
	; TM_RAZOR_WIND   ; TM02 ; badge 5
	; TM_SWORDS_DANCE ; TM03 ; elite 4
	; TM_WHIRLWIND    ; TM04 ; badge 2
	; TM_MEGA_KICK    ; TM05 ; badge 2 (default)
	; TM_TOXIC        ; TM06 ; badge 7
	; TM_HORN_DRILL   ; TM07 ; badge 2 (default)
	; TM_BODY_SLAM    ; TM08 ; badge 4
	; TM_TAKE_DOWN    ; TM09 ; badge 2 (default)
	; TM_DOUBLE_EDGE  ; TM10 ; badge 6
	; TM_BUBBLEBEAM   ; TM11 ; badge 4
	; TM_WATER_GUN    ; TM12 ; badge 2
	; TM_ICE_BEAM     ; TM13 ; badge 8
	; TM_BLIZZARD     ; TM14 ; elite 4
	; TM_HYPER_BEAM   ; TM15 ; elite 4
	; TM_PAY_DAY      ; TM16 ; badge 6
	; TM_SUBMISSION   ; TM17 ; badge 2 (default)
	; TM_COUNTER      ; TM18 ; badge 6
	; TM_SEISMIC_TOSS ; TM19 ; badge 4
	; TM_RAGE         ; TM20 ; badge 5
	; TM_MEGA_DRAIN   ; TM21 ; badge 8
	; TM_SOLARBEAM    ; TM22 ; elite 4
	; TM_DRAGON_RAGE  ; TM23 ; badge 4
	; TM_THUNDERBOLT  ; TM24 ; badge 7
	; TM_THUNDER      ; TM25 ; elite 4
	; TM_EARTHQUAKE   ; TM26 ; elite 4
	; TM_FISSURE      ; TM27 ; elite 4
	; TM_DIG          ; TM28 ; badge 4
	; TM_PSYCHIC_M    ; TM29 ; badge 8
	; TM_TELEPORT     ; TM30 ; badge 3
	; TM_MIMIC        ; TM31 ; badge 7
	; TM_DOUBLE_TEAM  ; TM32 ; badge 2 (default)
	; TM_REFLECT      ; TM33 ; badge 2 (default)
	; TM_BIDE         ; TM34 ; badge 4
	; TM_METRONOME    ; TM35 ; badge 7
	; TM_SELFDESTRUCT ; TM36 ; badge 7
	; TM_EGG_BOMB     ; TM37 ; badge 2 (default)
	; TM_FIRE_BLAST   ; TM38 ; elite 4
	; TM_SWIFT        ; TM39 ; badge 5
	; TM_SKULL_BASH   ; TM40 ; badge 6
	; TM_SOFTBOILED   ; TM41 ; badge 7
	; TM_DREAM_EATER  ; TM42 ; badge 4
	; TM_SKY_ATTACK   ; TM43 ; elite 4
	; TM_REST         ; TM44 ; badge 8
	; TM_THUNDER_WAVE ; TM45 ; badge 3
	; TM_PSYWAVE      ; TM46 ; badge 8
	; TM_EXPLOSION    ; TM47 ; elite 4
	; TM_ROCK_SLIDE   ; TM48 ; badge 6
	; TM_TRI_ATTACK   ; TM49 ; badge 7
	; TM_SUBSTITUTE   ; TM50 ; elite 4
	; TM_HEX          ; TM51 ; badge 7
