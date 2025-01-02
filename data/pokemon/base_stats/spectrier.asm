	db SPECTRIER ; 244

	db 100,  65,  60, 130, 145,  80
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GHOST ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 80 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/spectrier/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm CURSE, SNORE, HYPER_BEAM, PROTECT, ENDURE, PSYCHIC_M, SHADOW_BALL, SLEEP_TALK, SWIFT, REST
	; end
