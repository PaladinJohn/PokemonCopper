	db FLORAGATO ; 153

	db  61,  80,  63,  83,  60,  63
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/floragato/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, BULLET_SEED, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, SLEEP_TALK, SWIFT, THUNDERPUNCH, REST
	; end
