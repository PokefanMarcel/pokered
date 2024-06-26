Route19_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route19TrainerHeaders
	ld de, Route19_ScriptPointers
	ld a, [wRoute19CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute19CurScript], a
	ret

Route19_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE19_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE19_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE19_END_BATTLE

Route19_TextPointers:
	def_text_pointers
	dw_const Route19CooltrainerM1Text, TEXT_ROUTE19_COOLTRAINER_M1
	dw_const Route19CooltrainerM2Text, TEXT_ROUTE19_COOLTRAINER_M2
	dw_const Route19Swimmer1Text,      TEXT_ROUTE19_SWIMMER1
	dw_const Route19Swimmer2Text,      TEXT_ROUTE19_SWIMMER2
	dw_const Route19Swimmer3Text,      TEXT_ROUTE19_SWIMMER3
	dw_const Route19Swimmer4Text,      TEXT_ROUTE19_SWIMMER4
	dw_const Route19Swimmer5Text,      TEXT_ROUTE19_SWIMMER5
	dw_const Route19Swimmer6Text,      TEXT_ROUTE19_SWIMMER6
	dw_const Route19Swimmer7Text,      TEXT_ROUTE19_SWIMMER7
	dw_const Route19Swimmer8Text,      TEXT_ROUTE19_SWIMMER8
	dw_const Route19Swimmer9Text,      TEXT_ROUTE19_SWIMMER9   ; marcelnote - new trainer
	dw_const Route19Blackbelt1Text,    TEXT_ROUTE19_BLACKBELT1 ; marcelnote - new trainer
	dw_const Route19Blackbelt2Text,    TEXT_ROUTE19_BLACKBELT2 ; marcelnote - new trainer
	dw_const Route19Fisher1Text,       TEXT_ROUTE19_FISHER1    ; marcelnote - new trainer
	dw_const Route19SignText,          TEXT_ROUTE19_SIGN
	dw_const Route19BeachHouseSignText, TEXT_ROUTE19_BEACH_HOUSE_SIGN ; marcelnote - new sign

Route19TrainerHeaders:
	def_trainers
Route19TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_0, 4, Route19CooltrainerM1BattleText, Route19CooltrainerM1EndBattleText, Route19CooltrainerM1AfterBattleText
Route19TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_1, 3, Route19CooltrainerM2BattleText, Route19CooltrainerM2EndBattleText, Route19CooltrainerM2AfterBattleText
Route19TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_2, 3, Route19Swimmer1BattleText, Route19Swimmer1EndBattleText, Route19Swimmer1AfterBattleText
Route19TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_3, 4, Route19Swimmer2BattleText, Route19Swimmer2EndBattleText, Route19Swimmer2AfterBattleText
Route19TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_4, 4, Route19Swimmer3BattleText, Route19Swimmer3EndBattleText, Route19Swimmer3AfterBattleText
Route19TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_5, 4, Route19Swimmer4BattleText, Route19Swimmer4EndBattleText, Route19Swimmer4AfterBattleText
Route19TrainerHeader6:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_6, 3, Route19Swimmer5BattleText, Route19Swimmer5EndBattleText, Route19Swimmer5AfterBattleText
Route19TrainerHeader7:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_7, 4, Route19Swimmer6BattleText, Route19Swimmer6EndBattleText, Route19Swimmer6AfterBattleText
Route19TrainerHeader8:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_8, 4, Route19Swimmer7BattleText, Route19Swimmer7EndBattleText, Route19Swimmer7AfterBattleText
Route19TrainerHeader9:
	trainer EVENT_BEAT_ROUTE_19_TRAINER_9, 4, Route19Swimmer8BattleText, Route19Swimmer8EndBattleText, Route19Swimmer8AfterBattleText
Route19TrainerHeader10: ; marcelnote - new trainer
	trainer EVENT_BEAT_ROUTE_19_TRAINER_10, 4, Route19Swimmer9BattleText, Route19Swimmer9EndBattleText, Route19Swimmer9AfterBattleText
Route19TrainerHeader11: ; marcelnote - new trainer
	trainer EVENT_BEAT_ROUTE_19_TRAINER_11, 3, Route19Blackbelt1BattleText, Route19Blackbelt1EndBattleText, Route19Blackbelt1AfterBattleText
Route19TrainerHeader12: ; marcelnote - new trainer
	trainer EVENT_BEAT_ROUTE_19_TRAINER_12, 4, Route19Blackbelt2BattleText, Route19Blackbelt2EndBattleText, Route19Blackbelt2AfterBattleText
Route19TrainerHeader13: ; marcelnote - new trainer
	trainer EVENT_BEAT_ROUTE_19_TRAINER_13, 1, Route19Fisher1BattleText, Route19Fisher1EndBattleText, Route19Fisher1AfterBattleText
	db -1 ; end

Route19CooltrainerM1Text:
	text_asm
	ld hl, Route19TrainerHeader0
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19CooltrainerM2Text:
	text_asm
	ld hl, Route19TrainerHeader1
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer1Text:
	text_asm
	ld hl, Route19TrainerHeader2
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer2Text:
	text_asm
	ld hl, Route19TrainerHeader3
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer3Text:
	text_asm
	ld hl, Route19TrainerHeader4
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer4Text:
	text_asm
	ld hl, Route19TrainerHeader5
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer5Text:
	text_asm
	ld hl, Route19TrainerHeader6
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer6Text:
	text_asm
	ld hl, Route19TrainerHeader7
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer7Text:
	text_asm
	ld hl, Route19TrainerHeader8
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer8Text:
	text_asm
	ld hl, Route19TrainerHeader9
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Swimmer9Text: ; marcelnote - new trainer
	text_asm
	ld hl, Route19TrainerHeader10
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Blackbelt1Text: ; marcelnote - new trainer
	text_asm
	ld hl, Route19TrainerHeader11
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Blackbelt2Text: ; marcelnote - new trainer
	text_asm
	ld hl, Route19TrainerHeader12
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19Fisher1Text: ; marcelnote - new trainer
	text_asm
	ld hl, Route19TrainerHeader13
	call TalkToTrainer
	rst TextScriptEnd ; PureRGB - rst TextScriptEnd

Route19CooltrainerM1BattleText:
	text_far _Route19CooltrainerM1BattleText
	text_end

Route19CooltrainerM1EndBattleText:
	text_far _Route19CooltrainerM1EndBattleText
	text_end

Route19CooltrainerM1AfterBattleText:
	text_far _Route19CooltrainerM1AfterBattleText
	text_end

Route19CooltrainerM2BattleText:
	text_far _Route19CooltrainerM2BattleText
	text_end

Route19CooltrainerM2EndBattleText:
	text_far _Route19CooltrainerM2EndBattleText
	text_end

Route19CooltrainerM2AfterBattleText:
	text_far _Route19CooltrainerM2AfterBattleText
	text_end

Route19Swimmer1BattleText:
	text_far _Route19Swimmer1BattleText
	text_end

Route19Swimmer1EndBattleText:
	text_far _Route19Swimmer1EndBattleText
	text_end

Route19Swimmer1AfterBattleText:
	text_far _Route19Swimmer1AfterBattleText
	text_end

Route19Swimmer2BattleText:
	text_far _Route19Swimmer2BattleText
	text_end

Route19Swimmer2EndBattleText:
	text_far _Route19Swimmer2EndBattleText
	text_end

Route19Swimmer2AfterBattleText:
	text_far _Route19Swimmer2AfterBattleText
	text_end

Route19Swimmer3BattleText:
	text_far _Route19Swimmer3BattleText
	text_end

Route19Swimmer3EndBattleText:
	text_far _Route19Swimmer3EndBattleText
	text_end

Route19Swimmer3AfterBattleText:
	text_far _Route19Swimmer3AfterBattleText
	text_end

Route19Swimmer4BattleText:
	text_far _Route19Swimmer4BattleText
	text_end

Route19Swimmer4EndBattleText:
	text_far _Route19Swimmer4EndBattleText
	text_end

Route19Swimmer4AfterBattleText:
	text_far _Route19Swimmer4AfterBattleText
	text_end

Route19Swimmer5BattleText:
	text_far _Route19Swimmer5BattleText
	text_end

Route19Swimmer5EndBattleText:
	text_far _Route19Swimmer5EndBattleText
	text_end

Route19Swimmer5AfterBattleText:
	text_far _Route19Swimmer5AfterBattleText
	text_end

Route19Swimmer6BattleText:
	text_far _Route19Swimmer6BattleText
	text_end

Route19Swimmer6EndBattleText:
	text_far _Route19Swimmer6EndBattleText
	text_end

Route19Swimmer6AfterBattleText:
	text_far _Route19Swimmer6AfterBattleText
	text_end

Route19Swimmer7BattleText:
	text_far _Route19Swimmer7BattleText
	text_end

Route19Swimmer7EndBattleText:
	text_far _Route19Swimmer7EndBattleText
	text_end

Route19Swimmer7AfterBattleText:
	text_far _Route19Swimmer7AfterBattleText
	text_end

Route19Swimmer8BattleText:
	text_far _Route19Swimmer8BattleText
	text_end

Route19Swimmer8EndBattleText:
	text_far _Route19Swimmer8EndBattleText
	text_end

Route19Swimmer8AfterBattleText:
	text_far _Route19Swimmer8AfterBattleText
	text_end

Route19Swimmer9BattleText: ; marcelnote - new trainer, Swimmer9
	text_far _Route19Swimmer9BattleText
	text_end

Route19Swimmer9EndBattleText: ; marcelnote - new trainer, Swimmer9
	text_far _Route19Swimmer9EndBattleText
	text_end

Route19Swimmer9AfterBattleText: ; marcelnote - new trainer, Swimmer9
	text_far _Route19Swimmer9AfterBattleText
	text_end

Route19Blackbelt1BattleText: ; marcelnote - new trainer, Blackbelt1
	text_far _Route19Blackbelt1BattleText
	text_end

Route19Blackbelt1EndBattleText: ; marcelnote - new trainer, Blackbelt1
	text_far _Route19Blackbelt1EndBattleText
	text_end

Route19Blackbelt1AfterBattleText: ; marcelnote - new trainer, Blackbelt1
	text_far _Route19Blackbelt1AfterBattleText
	text_end

Route19Blackbelt2BattleText: ; marcelnote - new trainer, Blackbelt2
	text_far _Route19Blackbelt2BattleText
	text_end

Route19Blackbelt2EndBattleText: ; marcelnote - new trainer, Blackbelt2
	text_far _Route19Blackbelt2EndBattleText
	text_end

Route19Blackbelt2AfterBattleText: ; marcelnote - new trainer, Blackbelt2
	text_far _Route19Blackbelt2AfterBattleText
	text_end

Route19Fisher1BattleText: ; marcelnote - new trainer, Fisher1
	text_far _Route19Fisher1BattleText
	text_end

Route19Fisher1EndBattleText: ; marcelnote - new trainer, Fisher1
	text_far _Route19Fisher1EndBattleText
	text_end

Route19Fisher1AfterBattleText: ; marcelnote - new trainer, Fisher1
	text_far _Route19Fisher1AfterBattleText
	text_end

Route19SignText:
	text_far _Route19SignText
	text_end

Route19BeachHouseSignText:
	text_far _Route19BeachHouseSignText
	text_end
