	object_const_def
	const BLACKTHORNMART_CLERK
	const BLACKTHORNMART_COOLTRAINER_M
	const BLACKTHORNMART_BLACK_BELT
	const BLACKTHORNMART_MYSTERY_GIFT

BlackthornMart_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_BLACKTHORN
	closetext
	end

BlackthornMartCooltrainerMScript:
	jumptextfaceplayer BlackthornMartCooltrainerMText

BlackthornMartBlackBeltScript:
	jumptextfaceplayer BlackthornMartBlackBeltText

BlackthornMartMysteryGiftScript:
	opentext
	checkflag ENGINE_DAILY_MYSTERY_GIFT_3
	iftrue .NoGift
	writetext MysteryGiftText3
	yesorno
	iffalse .Decline
	checkcode ITEM_POCKET
	ifgreater 16, .ItemsNearlyFull
.AskSave
	setflag ENGINE_DAILY_MYSTERY_GIFT_3
	writetext MysteryGift_SaveGame3
	yesorno
	iffalse .Decline
	special TryQuickSave
	iffalse .Decline
	writetext MysteryGiftLinkUp3
	playsound SFX_MOVE_DELETED
	waitsfx
	scall FindMysteryGiftItem3
	iffalse .NoRoom
	writetext MysteryGiftReceivedText3
	waitbutton
	closetext
	end

.NoRoom
	writetext MysteryGiftNoRoom3
	waitbutton
	closetext
	end

.NoGift
	writetext NoMysteryGiftText3
	waitbutton
	closetext
	end
	
.Decline
	clearflag ENGINE_DAILY_MYSTERY_GIFT_3
	writetext DeclineMysteryGiftText3
	waitbutton
	closetext
	end

.ItemsNearlyFull
	writetext MysteryGiftItemPocketWarningText3
	waitbutton
	jump .AskContinueAnyway

.AskContinueAnyway
	writetext MysteryGiftAnywayText3
	yesorno
	iffalse .Decline
	jump .AskSave

FindMysteryGiftItem3:
	jumpstd MysteryGiftScript
	end

BlackthornMartCooltrainerMText:
	text "You can't buy MAX"
	line "REVIVE, but it"

	para "fully restores a"
	line "fainted #MON."

	para "Beware--it won't"
	line "restore PP, the"

	para "POWER POINTS"
	line "needed for moves."
	done

BlackthornMartBlackBeltText:
	text "MAX REPEL keeps"
	line "weak #MON away"
	cont "from you."

	para "It's the longest"
	line "lasting of the"
	cont "REPEL sprays."
	done
	
; Mystery Gift text from pokemon Peridot. Must be updated in the script.
	
MysteryGiftText3:
	text "MYSTERY GIFT!"
	line "MYSTERY GIFT!"
	
	para "Do you want to"
	line "share a MYSTERY"
	cont "GIFT?"
	done
	
MysteryGift_SaveGame3:
	text "You need to save"
	line "your game before"
	cont "we share, 'kay?"
	done
	
MysteryGiftLinkUp3:
	text "Okay! Let's link"
	line "up for a sec!"
	done

MysteryGiftNoRoom3:
	text "I guess too many"
	line "people shared with"
	cont "you! Hehe!"
	done
	
MysteryGiftItemPocketWarningText3:
	text "…You don't have"
	line "much space in your"
	cont "ITEM POCKET."
	done

MysteryGiftAnywayText3:
	text "Do you want to"
	line "use MYSTERY GIFT"
	cont "anyway?"
	done
	
MysteryGiftReceivedText3:
	text "Wow, I got really"
	line "cool items today!"
	cont "I hope you got"
	cont "something good!"
	
	para "Let's do this"
	line "again tomorrow!"
	done
	
NoMysteryGiftText3:
	text "We've already"
	line "shared today."
	
	para "But I'd be happy"
	line "to share again"
	cont "tomorrow."
	done
	
DeclineMysteryGiftText3:
	text "Oh..."
	
	para "Some other time,"
	line "okay?"
	done

BlackthornMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 4
	warp_event  3,  7, BLACKTHORN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartClerkScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornMartCooltrainerMScript, -1
	object_event  5,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornMartBlackBeltScript, -1
	object_event  3,  2, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornMartMysteryGiftScript, -1
