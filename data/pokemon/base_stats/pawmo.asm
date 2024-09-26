	db PAWMI ; 084

	db  60,  75,  40,  85,  50,  40
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FIGHTING ; type
	db 80 ; catch rate
	db 123 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pawmo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, SUNNY_DAY, PROTECT, RAIN_DANCE, ENDURE, THUNDER, DIG, SLEEP_TALK, SWIFT, THUNDERPUNCH, REST, THIEF, THUNDER_WAVE, THUNDERBOLT
	; end
