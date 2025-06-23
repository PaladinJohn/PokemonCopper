MACRO momitem
; money to trigger, cost, kind, item
	dt \1
	dt \2
	db \3, \4
ENDM

MomItems_1:
	momitem      0,   600, MOM_ITEM, SUPER_POTION
	momitem      0,    90, MOM_ITEM, ANTIDOTE
	momitem      0,   180, MOM_ITEM, POKE_BALL
	momitem      0,   450, MOM_ITEM, ESCAPE_ROPE
	momitem      0,   500, MOM_ITEM, GREAT_BALL
.End

MomItems_2:
	momitem    900,   600, MOM_ITEM, SUPER_POTION
	momitem   3000,  1000, MOM_DOLL, DECO_STARYU_DOLL ; Mystery Gift
	momitem   4000,   270, MOM_ITEM, REPEL
	momitem   6000,  1000, MOM_DOLL, DECO_MAGIKARP_DOLL ; Mystery Gift
	momitem   7000,   600, MOM_ITEM, SUPER_POTION
	momitem   8000,  1000, MOM_DOLL, DECO_ODDISH_DOLL ; Mystery Gift
	momitem   9000,  1000, MOM_DOLL, DECO_GENGAR_DOLL ; Mystery Gift
	momitem  10000,  1800, MOM_DOLL, DECO_CHARMANDER_DOLL
	momitem  12000,  2000, MOM_DOLL, DECO_SHELLDER_DOLL ; Mystery Gift
	momitem  14000,  2000, MOM_DOLL, DECO_GRIMER_DOLL ; Mystery Gift
	momitem  15000,  3000, MOM_ITEM, MOON_STONE
	momitem  18000,  2000, MOM_DOLL, DECO_HOOTHOOT_DOLL ; Mystery Gift
	momitem  19000,   600, MOM_ITEM, SUPER_POTION
	momitem  24000,  2000, MOM_DOLL, DECO_CLEFAIRY_POSTER ; Mystery Gift
	momitem  27000,  3000, MOM_DOLL, DECO_JIGGLYPUFF_POSTER ; Mystery Gift
	momitem  30000,  4800, MOM_DOLL, DECO_CLEFAIRY_DOLL
	momitem  34000,  4800, MOM_DOLL, DECO_SNES ; Mystery Gift
	momitem  38000,  4800, MOM_DOLL, DECO_CYNDAQUIL_DOLL ; Mystery Gift
	momitem  40000,   900, MOM_ITEM, HYPER_POTION
	momitem  48000,  4800, MOM_DOLL, DECO_GEODUDE_DOLL ; Mystery Gift
	momitem  50000,  8000, MOM_DOLL, DECO_TOTODILE_DOLL
	momitem  60000,  8000, MOM_DOLL, DECO_HOUNDOUR_DOLL ; Mystery Gift
	momitem  67000,  8000, MOM_DOLL, DECO_MAGNAPLANT ; Mystery Gift
	momitem  75000,  8000, MOM_DOLL, DECO_TROPICPLANT ; Mystery Gift
	momitem  83000,  8000, MOM_DOLL, DECO_FAMICOM ; Mystery Gift
	momitem  92000,  9000, MOM_DOLL, DECO_N64 ; Mystery Gift
	momitem 100000, 22800, MOM_DOLL, DECO_BIG_SNORLAX_DOLL
	momitem 105000,  9000, MOM_DOLL, DECO_BULBASAUR_DOLL ; Mystery Gift
	momitem 106000,  9000, MOM_DOLL, DECO_SQUIRTLE_DOLL ; Mystery Gift
	momitem 112000,  9000, MOM_DOLL, DECO_PINK_BED ; Mystery Gift
	momitem 118000, 10000, MOM_DOLL, DECO_POLKADOT_BED ; Mystery Gift
	momitem 125000, 10000, MOM_DOLL, DECO_RED_CARPET ; Mystery Gift
	momitem 132000, 10000, MOM_DOLL, DECO_BLUE_CARPET ; Mystery Gift
	momitem 139000, 10000, MOM_DOLL, DECO_YELLOW_CARPET ; Mystery Gift
	momitem 146000, 12000, MOM_DOLL, DECO_GREEN_CARPET ; Mystery Gift
	momitem 154000, 12000, MOM_DOLL, DECO_JUMBOPLANT ; Mystery Gift
	momitem 162000, 12000, MOM_DOLL, DECO_VIRTUAL_BOY ; Mystery Gift
	momitem 170000, 22800, MOM_DOLL, DECO_BIG_ONIX_DOLL ; Mystery Gift
	momitem 178000, 12000, MOM_DOLL, DECO_BULBASAUR_POSTER ; Mystery Gift
	momitem 187000, 22800, MOM_DOLL, DECO_BIG_LAPRAS_DOLL ; Mystery Gift
	momitem 196000, 14000, MOM_DOLL, DECO_SURF_PIKACHU_DOLL ; Mystery Gift
	momitem 205000, 14000, MOM_DOLL, DECO_FLAREON_BED ; Mystery Gift
	momitem 214000, 14000, MOM_DOLL, DECO_UNOWN_DOLL ; Mystery Gift
	momitem 224000, 14000, MOM_DOLL, DECO_TENTACOOL_DOLL ; Mystery Gift
.End

	dt 0 ; unused
