BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyKipp
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw CORVISQUIR, 300
	dbw SPEWPA,     285
	dbw SCATTERBUG, 226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, ED
	dbw VIVILLON,   286
	dbw VIVILLON,   251
	dbw SCATTERBUG, 237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, NICK
	dbw SCYTHER,    357
	dbw VIVILLON,   349
	dbw DURANT,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, WILLIAM
	dbw DURANT,     332
	dbw VIVILLON,   324
	dbw SNOM,       321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, BUG_CATCHER_BENNY
	dbw VIVILLON,   318
	dbw ROOKIDEE,   295
	dbw SCATTERBUG, 285

BugContestant_CamperBarry:
	db CAMPER, BARRY
	dbw DURANT,     366
	dbw SNOM,       329
	dbw CORVISQUIR, 314

BugContestant_PicnickerCindy:
	db PICNICKER, CINDY
	dbw VIVILLON,   341
	dbw SPEWPA,     301
	dbw SCATTERBUG, 264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, JOSH
	dbw SCYTHER,    326
	dbw VIVILLON,   292
	dbw SPEWPA,     282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, SAMUEL
	dbw ROOKIDEE,   270
	dbw DURANT,     282
	dbw SCATTERBUG, 251

BugContestant_SchoolboyKipp:
	db SCHOOLBOY, KIPP
	dbw SNOM,       267
	dbw PARAS,      254
	dbw CORVISQUIR, 259
