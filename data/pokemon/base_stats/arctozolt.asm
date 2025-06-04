	db ARCTOZOLT ; 167

	db  90, 100,  90,  55,  90,  80
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, ICE ; type
	db 45 ; catch rate
	db 177 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/arctozolt/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CURSE, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, IRON_TAIL, THUNDER, SLEEP_TALK, THUNDERPUNCH, REST, SURF, THUNDER_WAVE, ICE_BEAM, THUNDERBOLT
	; end
