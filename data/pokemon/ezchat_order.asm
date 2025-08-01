; Every Pokémon sorted by their Japanese names in gojūon order.
; Notably, Rhydon is missing (it should be before Rhyhorn).

EZChat_SortedPokemon:
	dw .a
	dw .i
	dw .u
	dw .e
	dw .o
	dw .ka_ga
	dw .ki_gi
	dw .ku_gu
	dw .ke_ge
	dw .ko_go
	dw .sa_za
	dw .shi_ji
	dw .su_zu
	dw .se_ze
	dw .so_zo
	dw .ta_da
	dw .chi_dhi
	dw .tsu_du
	dw .te_de
	dw .to_do
	dw .na
	dw .ni
	dw .nu
	dw .ne
	dw .no
	dw .ha_ba_pa
	dw .hi_bi_pi
	dw .fu_bu_pu
	dw .he_be_pe
	dw .ho_bo_po
	dw .ma
	dw .mi
	dw .mu
	dw .me
	dw .mo
	dw .ya
	dw .yu
	dw .yo
	dw .ra
	dw .ri
	dw .ru
	dw .re
	dw .ro
	dw .wa
	dw .end

.a:        db SCOLIPEDE, ZOROARK, TOXAPEX, ARIADOS, CROCONAW, UNOWN, -1
.i:        db EEVEE, GEODUDE, ARCTOZOLT, PILOSWINE, ONIX, -1
.u:        db ARCANINE, SUDOWOODO, WEEPINBELL, VICTREEBEL, WOOPER, SWINUB, -1
.e:        db SKARMORY, AIPOM, ESPEON, SIGILYPH, VENIPEDE, WHIRLIPEDE, SPECTRIER, -1
.o:        db FERALIGATR, FURRET, OCTILLERY, PRIMEAPE, SENTRET, STANTLER, SPEAROW, FEAROW, CARRACOSTA, TIRTOUGA, -1
.ka_ga:    db GROWLITHE, MACHAMP, DRAGONITE, DURANT, SNORLAX, KABUTO, KABUTOPS, SPIRITOMB, WARTORTLE, BLASTOISE, FARFETCH_D, CUBONE, MAROWAK, KANGASKHAN, -1
.ki_gi:    db SUNFLORA, SCATTERBUG, GYARADOS, RAPIDASH, NINETALES, GIRAFARIG, BELLOSSOM, KINGDRA, KINGLER, -1
.ku_gu:    db GLOOM, STUFFUL, GLIGAR, KRABBY, CINCCINO, CROBAT, -1
.ke_ge:    db ABRA, GENGAR, TAUROS, -1
.ko_go:    db MAGIKARP, YAMPER, GASTLY, HAUNTER, MACHOKE, CORVISQUIR, PSYDUCK, PHANPY, RATTATA, GOLDUCK, GOLBAT, GOLEM, GRAVELER, SNOM, -1
.sa_za:    db RHYHORN, PUPITAR, ZORUA, GULPIN, ZAPDOS, JOLTEON, SANDSHREW, SANDSLASH, -1 ; RHYDON should lead this list
.shi_ji:   db SEADRA, SHELLDER, VAPOREON, DEWGONG, -1
.su_zu:    db SUICUNE, STARMIE, SCYTHER, ZUBAT, PAWMOT, HYPNO, DROWZEE, -1
.se_ze:    db SQUIRTLE, CELEBI, -1
.so_zo:    db WOBBUFFET, -1
.ta_da:    db MUDSDALE, HORSEA, RIOLU, -1
.chi_dhi:  db SPRIGATITO, CHINCHOU, -1
.tsu_du:   db SHUCKLE, -1
.te_de:    db MUDBRAY, REMORAID, DELIBIRD, HOUNDOUR, AMPHAROS, -1
.to_do:    db PAWMI, PAWMO, SMEARGLE, KOFFING, TENTACRUEL, TOGETIC, TOGEPI, MAREANIE, SPEWPA, DONPHAN, -1
.na:       db ODDISH, LUCARIO, -1
.ni:       db NIDOKING, NIDOQUEEN, NIDORAN_M, NIDORAN_F, NIDORINA, NIDORINO, MEOWTH, SNEASEL, LYCANROC, POLITOED, LEAFEON, ROCKRUFF, -1
.nu:       db QUAGSIRE, -1
.ne:       db NATU, XATU, -1
.no:       db DUNSPARCE, -1
.ha_ba_pa: db SEEL, STEELIX, TYPHLOSION, DRAGONAIR, VIVILLON, SCIZOR, SMOLIV, BLISSEY, PARAS, PARASECT, QWILFISH, CAPSAKID, NOIBAT, CLOYSTER, TYRANITAR, -1
.hi_bi_pi: db CLEFFA, ROOKIDEE, LUXIO, CLEFABLE, TALONFLAME, FLETCHINDR, SHINX, CLEFAIRY, CHARMANDER, STARYU, CYNDAQUIL, SUNKERN, TEDDIURSA, BLITZLE, -1
.fu_bu_pu: db MOLTRES, FLAREON, ALAKAZAM, MAGMAR, BEWEAR, WIGGLYTUFF, IVYSAUR, BULBASAUR, VENUSAUR, AERODACTYL, MAGBY, IGGLYBUFF, UMBREON, ARTICUNO, JIGGLYPUFF, MINCCINO, -1
.he_be_pe: db FLORAGATO, GRIMER, MUK, HERACROSS, HOUNDOOM, PERRSERKER, LICKITUNG, -1
.ho_bo_po: db HO_OH, HOOTHOOT, FLETCHLING, PONYTA, DOLLIV, PORYGON, PORYGON2, -1
.ma:       db MAGCARGO, SLUGMA, QUILAVA, BELLSPROUT, WEEZING, MARILL, AZUMARILL, ZEBSTRIKA, GREAVARD, MANTINE, -1
.mi:       db DRATINI, MEW, MEWTWO, MILTANK, -1
.mu:       db MISDREAVUS, SMOOCHUM, -1
.me:       db MEOWSCARAD, DITTO, TENTACOOL, MAREEP, -1
.mo:       db FLAAFFY, FROSMOTH, TANGELA, -1
.ya:       db SLOWKING, SLOWBRO, SLOWPOKE, BOMBIRDIER, ABSOL, -1
.yu:       db KADABRA, -1
.yo:       db LARVITAR, NOCTOWL, -1
.ra:       db REGIROCK, LUXRAY, CHANSEY, RATICATE, LAPRAS, VILEPLUME, LANTURN, -1
.ri:       db CHARMELEON, CHARIZARD, URSARING, -1
.ru:       db CORVIKNGHT, LUGIA, -1
.re:       db BOLTUND, LEDIAN, LEDYBA, -1
.ro:       db VULPIX, -1
.wa:       db ARBOLIVA, TOTODILE, TIMBURR ;, -1
.end:      db -1
