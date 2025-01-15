	db SNOM ; 048

	db  30,  25,  35,  20,  45,  30
	;   hp  atk  def  spd  sat  sdf

	db ICE, BUG ; type
	db 190 ; catch rate
	db 37 ; base exp
	db NO_ITEM, BERRY ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/snom/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, SNORE, ICY_WIND, PROTECT, ENDURE, SLEEP_TALK, REST, ATTRACT
	; end
