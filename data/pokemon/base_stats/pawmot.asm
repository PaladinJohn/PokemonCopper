	db PAWMOT ; 015

	db  70, 115,  70, 105,  70,  60
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FIGHTING ; type
	db 45 ; catch rate
	db 245 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pawmot/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, THUNDER, DIG, ICE_PUNCH, SLEEP_TALK, SWIFT, CRUNCH, THUNDERPUNCH, REST, THIEF, FIRE_PUNCH, THUNDER_WAVE, THUNDERBOLT
	; end
