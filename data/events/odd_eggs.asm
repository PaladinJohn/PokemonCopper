DEF NUM_ODD_EGGS EQU 14

MACRO prob
	DEF prob_total += \1
	dw prob_total * $ffff / 100
ENDM

OddEggProbabilities:
; entries correspond to OddEggs (below)
	table_width 2, OddEggProbabilities
DEF prob_total = 0
; Cyndaquil
	prob 8
	prob 1
; Hoothoot
	prob 14
	prob 3
; Houndour
	prob 14
	prob 3
; Blitzle
	prob 13
	prob 2
; Totodile
	prob 8
	prob 1
; Eevee
	prob 13
	prob 2
; Sprigatito
	prob 8
	prob 1
; Minccino
	prob 8
	prob 1
	assert_table_length NUM_ODD_EGGS
	assert prob_total == 100, "OddEggProbabilities do not sum to 100%!"

OddEggs:
	table_width NICKNAMED_MON_STRUCT_LENGTH, OddEggs

	db CYNDAQUIL
	db NO_ITEM
	db TACKLE, LEER, DOUBLE_EDGE, 0
	dw 02048 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 12, 10, 7, 9 ; DVs
	db 35, 30, 15, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db CYNDAQUIL
	db NO_ITEM
	db TACKLE, LEER, 0, 0
	dw 00256 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 30, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db HOOTHOOT
	db NO_ITEM
	db PECK, GROWL, NIGHT_SHADE, 0
	dw 04096 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 13, 3, 10, 6 ; DVs
	db 35, 40, 15, 0 ; PP
	db 15 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db HOOTHOOT
	db NO_ITEM
	db PECK, GROWL, 0, 0
	dw 00768 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 40, 0, 0 ; PP
	db 15 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db HOUNDOUR
	db NO_ITEM
	db LEER, EMBER, BODY_SLAM, 0
	dw 04096 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 12, 15, 11, 13 ; DVs
	db 30, 25, 15, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db HOUNDOUR
	db NO_ITEM
	db LEER, EMBER, 0, 0
	dw 00768 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 30, 25, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db BLITZLE
	db NO_ITEM
	db QUICK_ATTACK, LIGHT_SCREEN, 0, 0
	dw 03584 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 11, 8, 9, 8 ; DVs
	db 30, 30, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db BLITZLE
	db NO_ITEM
	db QUICK_ATTACK, 0, 0, 0
	dw 00512 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 30, 0, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db TOTODILE
	db NO_ITEM
	db SCRATCH, LEER, SUBMISSION, 0
	dw 02560 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 15, 13, 15 ; DVs
	db 35, 30, 25, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db TOTODILE
	db NO_ITEM
	db SCRATCH, LEER, 0, 0
	dw 00512 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 30, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db EEVEE
	db NO_ITEM
	db TACKLE, TAIL_WHIP, GROWL, GROWTH
	dw 03072 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 6, 12, 9, 9 ; DVs
	db 35, 30, 40, 40 ; PP
	db 35 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db EEVEE
	db NO_ITEM
	db TACKLE, TAIL_WHIP, GROWL, 0
	dw 00512 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 30, 40, 0 ; PP
	db 35 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db SPRIGATITO
	db NO_ITEM
	db SCRATCH, TAIL_WHIP, AGILITY, 0
	dw 02560 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 8, 5, 12, 5 ; DVs
	db 35, 30, 30, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db SPRIGATITO
	db NO_ITEM
	db SCRATCH, TAIL_WHIP, 0, 0
	dw 00256 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 30, 0, 0 ; PP
	db 20 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db MINCCINO
	db NO_ITEM
	db POUND, GROWL, SAFEGUARD, 0
	dw 02560 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 4, 5, 14, 5 ; DVs
	db 35, 40, 25, 0 ; PP
	db 15 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"

	db MINCCINO
	db NO_ITEM
	db POUND, GROWL, 0, 0
	dw 02560 ; OT ID
	dt 0 ; Exp
	; Stat exp
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	bigdw 0
	dn 15, 10, 10, 10 ; DVs
	db 35, 40, 0, 0 ; PP
	db 15 ; Step cycles to hatch
	db 0, 0, 0 ; Pokerus, Caught data
	db EGG_LEVEL ; Level
	db 0, 0 ; Status
	bigdw 0 ; HP
	bigdw 10 ; Max HP
	bigdw 6 ; Atk
	bigdw 6 ; Def
	bigdw 6 ; Spd
	bigdw 6 ; SAtk
	bigdw 6 ; SDef
	db "Egg@@@@@@@@"
	
	assert_table_length NUM_ODD_EGGS
