	db MEOWSCARAD ; 154

	db  76, 110,  70, 123,  81,  70
	;   hp  atk  def  spd  sat  sdf

	db GRASS, DARK ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/meowscarad/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, BULLET_SEED, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, SHADOW_BALL, DOUBLE_TEAM, SLEEP_TALK, SWIFT, THUNDERPUNCH, REST, THIEF
	; end
