; marcelnote - new location
CeladonGroveNorthGate_Script:
	jp EnableAutoTextBoxDrawing

CeladonGroveNorthGate_TextPointers:
	def_text_pointers
	dw_const CeladonGroveNorthGateHikerText, TEXT_CELADONGROVENORTHGATE_HIKER

CeladonGroveNorthGateHikerText:
	text_far _CeladonGroveNorthGateHikerText
	text_end
