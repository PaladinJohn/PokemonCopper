	db CORVISQUIR ; 022

	db  68,  67,  55,  77,  43,  55
	;   hp  atk  def  spd  sat  sdf

	db FLYING, FLYING ; type
	db 120 ; catch rate
	db 128 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/corvisquir/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROCK_SMASH, SNORE, PROTECT, ENDURE, SWAGGER, SLEEP_TALK, SWIFT, REST, ATTRACT, THIEF, FLY
	; end
