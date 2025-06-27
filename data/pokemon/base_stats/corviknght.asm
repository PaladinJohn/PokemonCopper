	db CORVISQUIR ; 124

	db  98,  87, 105,  67,  53,  85
	;   hp  atk  def  spd  sat  sdf

	db FLYING, STEEL ; type
	db 45 ; catch rate
	db 248 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/corviknght/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROCK_SMASH, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, STEEL_WING, FLY
	; end
