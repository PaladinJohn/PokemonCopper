BattleTowerTrainers:
; The trainer class is not used in Crystal 1.0 due to a bug.
; Instead, the sixth character in the trainer's name is used.
; See BattleTowerText in engine/events/battle_tower/trainer_text.asm.
	table_width (NAME_LENGTH - 1) + 1, BattleTowerTrainers
	; name, class
	db "Hanson@@@@", FISHER
	db "Sawyer@@@@", POKEMANIAC
	db "Masuda@@@@", GUITARIST
	db "Nickel@@@@", SCIENTIST
	db "Olson@@@@@", POKEFANM
	db "Zaborowski", LASS
	db "Wright@@@@", YOUNGSTER
	db "Alexander@", HIKER
	db "Kawakami@@", TEACHER
	db "Bickett@@@", POKEFANM
	db "Saito@@@@@", KIMONO_GIRL
	db "Crawford@@", BOARDER
	db "Diaz@@@@@@", PICNICKER
	db "Erickson@@", BIKER
	db "Fairfield@", JUGGLER
	db "Hunter@@@@", POKEFANF
	db "Hill@@@@@@", FIREBREATHER
	db "Javier@@@@", SWIMMERF
	db "Kaufman@@@", SWIMMERM
	db "Lancaster@", SKIER
	db "McMahill@@", CAMPER
	assert_table_length BATTLETOWER_NUM_UNIQUE_MON
; The following can only be sampled in Crystal 1.1.
	db "OBrien@@@@", GENTLEMAN
	db "Frost@@@@@", BEAUTY
	db "Morse@@@@@", SUPER_NERD
	db "Yufune@@@@", BLACKBELT_T
	db "Rajan@@@@@", COOLTRAINERF
	db "Rodriguez@", OFFICER
	db "Santiago@@", PSYCHIC_T
	db "Stock@@@@@", POKEFANM
	db "Thurman@@@", SCIENTIST
	db "Valentino@", BEAUTY
	db "Wagner@@@@", CAMPER
	db "Yates@@@@@", BIRD_KEEPER
	db "Andrews@@@", PICNICKER
	db "Bahn@@@@@@", POKEMANIAC
	db "Mori@@@@@@", SCIENTIST
	db "Buckman@@@", SAGE
	db "Cobb@@@@@@", SCHOOLBOY
	db "Hughes@@@@", FISHER
	db "Arita@@@@@", KIMONO_GIRL
	db "Easton@@@@", PSYCHIC_T
	db "Freeman@@@", CAMPER
	db "Giese@@@@@", LASS
	db "Hatcher@@@", GENTLEMAN
	db "Jacksom@@@", POKEFANF
	db "Kahn@@@@@@", POKEMANIAC
	db "Leong@@@@@", YOUNGSTER
	db "Marino@@@@", TEACHER
	db "Newman@@@@", SAILOR
	db "Nguyen@@@@", BLACKBELT_T
	db "Ogden@@@@@", SUPER_NERD
	db "Park@@@@@@", COOLTRAINERF
	db "Raine@@@@@", SWIMMERM
	db "Sells@@@@@", BIRD_KEEPER
	db "Rockwell@@", BOARDER
	db "Thornton@@", LASS
	db "Turner@@@@", OFFICER
	db "Van Dyke@@", SKIER
	db "Walker@@@@", SCHOOLBOY
	db "Meyer@@@@@", SWIMMERF
	db "Johnson@@@", YOUNGSTER
	db "Adams@@@@@", GUITARIST
	db "Smith@@@@@", BUG_CATCHER
	db "Tajiri@@@@", BUG_CATCHER
	db "Baker@@@@@", POKEMANIAC
	db "Collins@@@", SCIENTIST
	db "Smart@@@@@", SUPER_NERD
	db "Dykstra@@@", SWIMMERF
	db "Eaton@@@@@", BIKER
	db "Wong@@@@@@", FIREBREATHER
	assert_table_length BATTLETOWER_NUM_UNIQUE_TRAINERS
