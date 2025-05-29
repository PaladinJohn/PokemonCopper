	object_const_def
	const GOLDENRODDEPTSTOREROOF_CLERK
	const GOLDENRODDEPTSTOREROOF_POKEFAN_F
	const GOLDENRODDEPTSTOREROOF_FISHER
	const GOLDENRODDEPTSTOREROOF_TWIN
	const GOLDENRODDEPTSTOREROOF_SUPER_NERD
	const GOLDENRODDEPTSTOREROOF_POKEFAN_M
	const GOLDENRODDEPTSTOREROOF_TEACHER
	const GOLDENRODDEPTSTOREROOF_BUG_CATCHER
	const GOLDENRODDEPTSTOREROOF_MYSTERY_GIFT

GoldenrodDeptStoreRoof_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, GoldenrodDeptStoreRoofCheckSaleChangeBlockCallback
	callback MAPCALLBACK_OBJECTS, GoldenrodDeptStoreRoofCheckSaleChangeClerkCallback

GoldenrodDeptStoreRoofCheckSaleChangeBlockCallback:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .SaleIsOn
	endcallback

.SaleIsOn:
	changeblock 0, 2, $3f ; cardboard boxes
	changeblock 0, 4, $0f ; vendor booth
	endcallback

GoldenrodDeptStoreRoofCheckSaleChangeClerkCallback:
	checkflag ENGINE_GOLDENROD_DEPT_STORE_SALE_IS_ON
	iftrue .ChangeClerk
	setevent EVENT_GOLDENROD_SALE_OFF
	clearevent EVENT_GOLDENROD_SALE_ON
	endcallback

.ChangeClerk:
	clearevent EVENT_GOLDENROD_SALE_OFF
	setevent EVENT_GOLDENROD_SALE_ON
	endcallback

GoldenrodDeptStoreRoofClerkScript:
	opentext
	pokemart MARTTYPE_ROOFTOP, 0
	closetext
	end

GoldenrodDeptStoreRoofPokefanFScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanFText

GoldenrodDeptStoreRoofFisherScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStoreRoofFisherText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_FISHER, UP
	end

GoldenrodDeptStoreRoofTwinScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTwinText

GoldenrodDeptStoreRoofSuperNerdScript:
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdOhWowText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_SUPER_NERD, UP
	opentext
	writetext GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTOREROOF_SUPER_NERD, RIGHT
	end

GoldenrodDeptStoreRoofPokefanMScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofPokefanMText

GoldenrodDeptStoreRoofTeacherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofTeacherText

GoldenrodDeptStoreRoofBugCatcherScript:
	jumptextfaceplayer GoldenrodDeptStoreRoofBugCatcherText

Binoculars1:
	jumptext Binoculars1Text

Binoculars2:
	jumptext Binoculars2Text

Binoculars3:
	jumptext Binoculars3Text

;Pokedoll script from Polished Crystal
PokeDollVendingMachine:
	;jumptext PokeDollVendingMachineText
	opentext
	writetext PokeDollVendingMachineText
	special PlaceMoneyTopRight
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequal $1, .JigglypuffDoll
	ifequal $2, .EeveeDoll
	ifequal $3, .SprigatitoDoll
	closetext

.JigglypuffDoll:
	checkmoney YOUR_MONEY, 2400
	ifequal HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_JIGGLYPUFF_DOLL
	iftrue .AlreadyBought
	takemoney YOUR_MONEY, 2400
	setevent EVENT_DECO_JIGGLYPUFF_DOLL
	writetext BoughtJigglypuffDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext JigglypuffDollSentText
	waitbutton
	sjump .Start

.EeveeDoll:
	checkmoney YOUR_MONEY, 2400
	ifequal HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_EEVEE_DOLL
	iftrue .AlreadyBought
	takemoney YOUR_MONEY, 2400
	setevent EVENT_DECO_EEVEE_DOLL
	writetext BoughtEeveeDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext EeveeDollSentText
	waitbutton
	sjump .Start

.SprigatitoDoll:
	checkmoney YOUR_MONEY, 2400
	ifequal HAVE_LESS, .NotEnoughMoney
	checkevent EVENT_DECO_SPRIGATITO_DOLL
	iftrue .AlreadyBought
	takemoney YOUR_MONEY, 2400
	setevent EVENT_DECO_SPRIGATITO_DOLL
	writetext BoughtSprigatitoDollText
	playsound SFX_TRANSACTION
	special PlaceMoneyTopRight
	waitbutton
	writetext SprigatitoDollSentText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext PokeDollVendingMachineNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext PokeDollVendingMachineAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 19, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Jigglypuff  ¥2400@"
	db "Eevee       ¥2400@"
	db "Sprigatito  ¥2400@"
	db "Cancel@"
	
GoldenrodDeptStoreRoofMysteryGiftScript:
	opentext
	checkflag ENGINE_DAILY_MYSTERY_GIFT_1
	iftrue .NoGift
	writetext MysteryGiftText
	yesorno
	iffalse .Decline
	checkcode ITEM_POCKET
	ifgreater 16, .ItemsNearlyFull
.AskSave
	setflag ENGINE_DAILY_MYSTERY_GIFT_1
	writetext MysteryGift_SaveGame
	yesorno
	iffalse .Decline
	special TryQuickSave
	iffalse .Decline
	writetext MysteryGiftLinkUp
	playsound SFX_MOVE_DELETED
	waitsfx
	scall FindMysteryGiftItem
	iffalse .NoRoom
	writetext MysteryGiftReceivedText
	waitbutton
	closetext
	end

.NoRoom
	writetext MysteryGiftNoRoom
	waitbutton
	closetext
	end

.NoGift
	writetext NoMysteryGiftText
	waitbutton
	closetext
	end
	
.Decline
	clearflag ENGINE_DAILY_MYSTERY_GIFT_1
	writetext DeclineMysteryGiftText
	waitbutton
	closetext
	end

.ItemsNearlyFull
	writetext MysteryGiftItemPocketWarningText
	waitbutton
	jump .AskContinueAnyway

.AskContinueAnyway
	writetext MysteryGiftAnywayText
	yesorno
	iffalse .Decline
	jump .AskSave

FindMysteryGiftItem:
	jumpstd MysteryGiftScript
	end

GoldenrodDeptStoreRoofPokefanFText:
	text "Whew, I'm tired."

	para "I sometimes come"
	line "up to the rooftop"

	para "to take a break"
	line "from shopping."
	done

GoldenrodDeptStoreRoofFisherText:
	text "Pardon? Who says"
	line "an adult can't get"
	cont "into this?"

	para "I'm going to be"
	line "back every day to"

	para "collect all the"
	line "dolls!"
	done

GoldenrodDeptStoreRoofTwinText:
	text "They have bargain"
	line "sales here every"
	cont "so often."
	done

GoldenrodDeptStoreRoofSuperNerdOhWowText:
	text "Oh, wow!"
	done

GoldenrodDeptStoreRoofSuperNerdQuitBotheringMeText:
	text "Will you quit"
	line "bothering me?"
	done

GoldenrodDeptStoreRoofPokefanMText:
	text "There's something"
	line "I really want, but"

	para "I don't have the"
	line "necessary cash…"

	para "Maybe I'll sell"
	line "off the BERRIES"
	cont "I've collected…"
	done

GoldenrodDeptStoreRoofTeacherText:
	text "Oh, everything is"
	line "so cheap!"

	para "I bought so much,"
	line "my PACK's crammed!"
	done

GoldenrodDeptStoreRoofBugCatcherText:
	text "My #MON always"
	line "get paralyzed or"

	para "poisoned when the"
	line "chips are down…"

	para "So I came to buy"
	line "some FULL HEAL."

	para "I wonder if"
	line "there's any left?"
	done

Binoculars1Text:
	text "These binoculars"
	line "let me see far"

	para "away. Maybe I can"
	line "see my own house."

	para "Is it the one with"
	line "the green roof?"
	done

Binoculars2Text:
	text "Hey! Some trainers"
	line "are battling on"
	cont "the road!"

	para "A #MON fired a"
	line "flurry of leaves!"

	para "That makes me feel"
	line "like battling"
	cont "right now!"
	done

Binoculars3Text:
	text "A FISHER caught a"
	line "lot of MAGIKARP…"

	para "They're SPLASHing"
	line "at the same time!"

	para "Look at the water"
	line "going everywhere!"
	done

PokeDollVendingMachineText:
	text "A vending machine"
	line "for #mon dolls!"
	done

PokeDollVendingMachineNoMoneyText:
	text "It costs too much!"
	done

PokeDollVendingMachineAlreadyBoughtText:
	text "It's a duplicate!"
	done

BoughtJigglypuffDollText:
	text "<PLAYER> bought"
	line "Jigglypuff Doll."
	done

JigglypuffDollSentText:
	text "Jigglypuff Doll"
	line "was sent home."
	done

BoughtEeveeDollText:
	text "<PLAYER> bought"
	line "Eevee Doll."
	done

EeveeDollSentText:
	text "Eevee Doll"
	line "was sent home."
	done

BoughtSprigatitoDollText:
	text "<PLAYER> bought"
	line "Sprigatito Doll."
	done

SprigatitoDollSentText:
	text "Sprigatito Doll"
	line "was sent home."
	done

; Mystery Gift text from pokemon Peridot. Must be updated in the script.
	
MysteryGiftText:
	text "MYSTERY GIFT!"
	line "MYSTERY GIFT!"
	
	para "Do you want to"
	line "share a MYSTERY"
	cont "GIFT?"
	done
	
MysteryGift_SaveGame:
	text "You need to save"
	line "your game before"
	cont "we share, 'kay?"
	done
	
MysteryGiftLinkUp:
	text "Okay! Let's link"
	line "up for a sec!"
	done

MysteryGiftNoRoom:
	text "I guess too many"
	line "people shared with"
	cont "you! Hehe!"
	done
	
MysteryGiftItemPocketWarningText:
	text "…You don't have"
	line "much space in your"
	cont "ITEM POCKET."
	done

MysteryGiftAnywayText:
	text "Do you want to"
	line "use MYSTERY GIFT"
	cont "anyway?"
	done
	
MysteryGiftReceivedText:
	text "Wow, I got really"
	line "cool items today!"
	cont "I hope you got"
	cont "something good!"
	
	para "Let's do this"
	line "again tomorrow!"
	done
	
NoMysteryGiftText:
	text "We've already"
	line "shared today."
	
	para "But I'd be happy"
	line "to share again"
	cont "tomorrow."
	done
	
DeclineMysteryGiftText:
	text "Oh..."
	
	para "Some other time,"
	line "okay?"
	done
	
GoldenrodDeptStoreRoof_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  1, GOLDENROD_DEPT_STORE_6F, 3

	def_coord_events

	def_bg_events
	bg_event 15,  3, BGEVENT_RIGHT, Binoculars1
	bg_event 15,  5, BGEVENT_RIGHT, Binoculars2
	bg_event 15,  6, BGEVENT_RIGHT, Binoculars3
	bg_event  3,  0, BGEVENT_UP, PokeDollVendingMachine

	def_object_events
	object_event  1,  4, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofClerkScript, EVENT_GOLDENROD_SALE_OFF
	object_event 10,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanFScript, -1
	object_event  2,  1, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofFisherScript, -1
	object_event  3,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTwinScript, EVENT_GOLDENROD_SALE_ON
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofSuperNerdScript, EVENT_GOLDENROD_SALE_ON
	object_event  7,  0, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofPokefanMScript, EVENT_GOLDENROD_SALE_OFF
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofTeacherScript, EVENT_GOLDENROD_SALE_OFF
	object_event  1,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofBugCatcherScript, EVENT_GOLDENROD_SALE_OFF
	object_event  4,  0, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStoreRoofMysteryGiftScript, -1
