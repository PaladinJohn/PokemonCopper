	db CUBONE ; 104

	db  50,  50,  95,  35,  40,  50
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp
	db NO_ITEM, THICK_CLUB ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/cubone/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROCK_TOMB, TOXIC, ROCK_SMASH, HIDDEN_POWER, FLAMETHROWER, SNORE, BLIZZARD, ICE_BEAM, PROTECT, ENDURE, FRUSTRATION, IRON_TAIL, EARTHQUAKE, RETURN, DIG, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, THUNDERPUNCH, DETECT, REST, ATTRACT, THIEF, FIRE_PUNCH, STRENGTH
	; end
