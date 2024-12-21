_CableClubNPCPleaseComeAgainText::
	text "Please come again!"
	done

_CableClubNPCMakingPreparationsText::
	text "We're making"
	line "preparations."
	cont "Please wait."
	done

_CableClubNPCNewMovesNotAllowedText:: ; marcelnote - ban new moves from Cable Club
	text "I'm sorry, #MON"
	line "with the moves"
	cont "HEX, ELECRO BALL"
	cont "or WILL-O-WISP"
	cont "are not allowed."
	prompt

_UsedStrengthText::
	text_ram wNameBuffer
	text " used"
	line "STRENGTH.@"
	text_end

_CanMoveBouldersText::
	text_ram wNameBuffer
	text " can"
	line "move boulders."
	prompt

_CurrentTooFastText::
	text "The current is"
	line "much too fast!"
	prompt

_CurrentTooFastOverworldText:: ; marcelnote - HM overworld use
	text "The current is"
	line "too fast to SURF!"
	done

_CyclingIsFunText::
	text "Cycling is fun!"
	line "Forget SURFing!"
	prompt

_CyclingIsFunOverworldText:: ; marcelnote - HM overworld use
	text "Cycling is fun!"
	line "Forget SURFing!"
	done

_FlashLightsAreaText::
	text "A blinding FLASH"
	line "lights the area!"
	prompt

_WarpToLastPokemonCenterText::
	text "Warp to the last"
	line "#MON CENTER."
	done

_CannotUseTeleportNowText::
	text_ram wNameBuffer
	text " can't"
	line "use TELEPORT now."
	prompt

_CannotFlyHereText::
	text_ram wNameBuffer
	text " can't"
	line "FLY here."
	prompt

_NotHealthyEnoughText::
	text "Not healthy"
	line "enough."
	prompt

_NewBadgeRequiredText::
	text "No! A new BADGE"
	line "is required."
	prompt

_CannotUseItemsHereText::
	text "You can't use items"
	line "here."
	prompt

_CannotGetOffHereText::
	text "You can't get off"
	line "here."
	prompt

_GotMonText::
	text "<PLAYER> got"
	line "@"
	text_ram wNameBuffer
	text "!@"
	text_end

_SentToBoxText::
	text "There's no more"
	line "room for #MON!"
	cont "@"
	text_ram wBoxMonNicks
	text " was"
	cont "sent to #MON"
	cont "BOX @"
	text_ram wStringBuffer
	text " on PC!"
	done

_BoxIsFullText::
	text "There's no more"
	line "room for #MON!"

	para "The #MON BOX"
	line "is full and can't"
	cont "accept any more!"

	para "Change the BOX at"
	line "a #MON CENTER!"
	done
