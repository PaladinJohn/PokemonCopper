	db PAWMI ; 172

	db  45,  50,  20,  60,  40,  25
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ELECTRIC ; type
	db 190 ; catch rate
	db 48 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pawmi/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, METAL_CLAW, SUNNY_DAY, PROTECT, RAIN_DANCE, ENDURE, THUNDER, DIG, SLEEP_TALK, SWIFT, CRUNCH, REST, THIEF, THUNDER_WAVE, THUNDERBOLT
	; end
