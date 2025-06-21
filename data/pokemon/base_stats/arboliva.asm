	db ARBOLIVA ; 189

	db  78,  69,  90,  39, 125, 109
	;   hp  atk  def  spd  sat  sdf

	db GRASS, NORMAL ; type
	db 45 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/arboliva/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, BULLET_SEED, HYPER_BEAM, PROTECT, GIGA_DRAIN, ENDURE, SOLARBEAM, SLEEP_TALK, SWIFT, REST
	; end
