	db CHANSEY ; 113

	db 250,  05,  05,  50,  35, 105
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp
	db NO_ITEM, LUCKY_EGG ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/chansey/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, ROCK_TOMB, TOXIC, THUNDERBOLT, ROCK_SMASH, HIDDEN_POWER, FLAMETHROWER, SNORE, BLIZZARD, HYPER_BEAM, ICE_BEAM, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, DREAM_EATER, REST, ATTRACT, STRENGTH, THUNDER_WAVE
	; end
