	db YAMPER ; 081

	db  59,  45,  50,  26,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 255 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/yamper/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, THUNDERBOLT, SNORE, PROTECT, ENDURE, THUNDER, DIG, SLEEP_TALK, SWIFT, CRUNCH, REST, ATTRACT, THUNDER_WAVE
	; end
