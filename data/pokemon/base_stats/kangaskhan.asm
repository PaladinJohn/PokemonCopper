	db KANGASKHAN ; 115

	db 105,  95,  80,  90,  40,  80
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/kangaskhan/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROCK_TOMB, TOXIC, THUNDERBOLT, ROCK_SMASH, HIDDEN_POWER, FLAMETHROWER, SNORE, BLIZZARD, HYPER_BEAM, ICE_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, IRON_TAIL, THUNDER, EARTHQUAKE, RETURN, SHADOW_BALL, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, CRUNCH, THUNDERPUNCH, REST, ATTRACT, FIRE_PUNCH, FURY_CUTTER, SURF, STRENGTH
	; end
