	db KINGLER ; 099

	db  55, 130, 125,  65,  50,  50
	;   hp  atk  def  spd  sat  sdf

	db WATER, STEEL ; type
	db 60 ; catch rate
	db 206 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kingler/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_3, EGG_WATER_3 ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROCK_TOMB, TOXIC, ROCK_SMASH, METAL_CLAW, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICE_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, REST, ATTRACT, THIEF, FURY_CUTTER, CUT, SURF, STRENGTH, WHIRLPOOL
	; end
