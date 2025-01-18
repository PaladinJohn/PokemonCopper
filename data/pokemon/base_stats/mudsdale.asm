	db MUDSDALE ; 051

	db 100, 125, 100,  35,  55,  85
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 60 ; catch rate
	db 175 ; base exp
	db NO_ITEM, BRIGHTPOWDER ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mudsdale/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, ROCK_SMASH, HIDDEN_POWER, SNORE, PROTECT, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, MAGNITUDE, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, REST, ATTRACT, STRENGTH
	; end
