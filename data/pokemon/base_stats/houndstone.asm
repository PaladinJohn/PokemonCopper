	db HOUNDSTONE ; 057

	db  72, 101, 100,  68,  50,  97
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 60 ; catch rate
	db 171 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/houndstone/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, DIG, SHADOW_BALL, SLEEP_TALK, SANDSTORM, CRUNCH, REST, THIEF
	; end
