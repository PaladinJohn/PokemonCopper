	db BOMBIRDIER ; 198

	db  70, 103,  85,  82,  60,  85
	;   hp  atk  def  spd  sat  sdf

	db DARK, FLYING ; type
	db 25 ; catch rate
	db 243 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 35 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/bombirdier/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROCK_TOMB, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, SLEEP_TALK, SANDSTORM, REST, THIEF, FLY
	; end
