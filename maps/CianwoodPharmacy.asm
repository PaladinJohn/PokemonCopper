	object_const_def
	const CIANWOODPHARMACY_PHARMACIST
	const CIANWOODPHARMACY_MYSTERY_GIFT

CianwoodPharmacy_MapScripts:
	def_scene_scripts
	scene_script CianwoodPharmacyNoopScene ; unusable

	def_callbacks

CianwoodPharmacyNoopScene:
	end

CianwoodPharmacist:
	faceplayer
	opentext
	checkevent EVENT_GOT_SECRETPOTION_FROM_PHARMACY
	iftrue .Mart
	checkevent EVENT_JASMINE_EXPLAINED_AMPHYS_SICKNESS
	iffalse .Mart
	writetext PharmacistGiveSecretpotionText
	promptbutton
	giveitem SECRETPOTION
	writetext ReceivedSecretpotionText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_SECRETPOTION_FROM_PHARMACY
	writetext PharmacistDescribeSecretpotionText
	waitbutton
	closetext
	end

.Mart:
	pokemart MARTTYPE_PHARMACY, MART_CIANWOOD
	closetext
	end

CianwoodPharmacyBookshelf:
	jumpstd DifficultBookshelfScript
	
CianwoodPharmacyMysteryGiftScript:
	opentext
	checkflag ENGINE_DAILY_MYSTERY_GIFT_2
	iftrue .NoGift
	writetext MysteryGiftText2
	yesorno
	iffalse .Decline
	checkcode ITEM_POCKET
	ifgreater 16, .ItemsNearlyFull
.AskSave
	setflag ENGINE_DAILY_MYSTERY_GIFT_2
	writetext MysteryGift_SaveGame2
	yesorno
	iffalse .Decline
	special TryQuickSave
	iffalse .Decline
	writetext MysteryGiftLinkUp2
	playsound SFX_MOVE_DELETED
	waitsfx
	scall FindMysteryGiftItem2
	iffalse .NoRoom
	writetext MysteryGiftReceivedText2
	waitbutton
	closetext
	end

.NoRoom
	writetext MysteryGiftNoRoom2
	waitbutton
	closetext
	end

.NoGift
	writetext NoMysteryGiftText2
	waitbutton
	closetext
	end
	
.Decline
	clearflag ENGINE_DAILY_MYSTERY_GIFT_2
	writetext DeclineMysteryGiftText2
	waitbutton
	closetext
	end

.ItemsNearlyFull
	writetext MysteryGiftItemPocketWarningText2
	waitbutton
	jump .AskContinueAnyway

.AskContinueAnyway
	writetext MysteryGiftAnywayText2
	yesorno
	iffalse .Decline
	jump .AskSave

FindMysteryGiftItem2:
	jumpstd MysteryGiftScript
	end

PharmacistGiveSecretpotionText:
	text "Your #MON ap-"
	line "pear to be fine."

	para "Is something wor- "
	line "rying you?"

	para "…"

	para "The LIGHTHOUSE"
	line "#MON is in"
	cont "trouble?"

	para "I got it!"

	para "This ought to do"
	line "the trick."
	done

ReceivedSecretpotionText:
	text "<PLAYER> received"
	line "SECRETPOTION."
	done

PharmacistDescribeSecretpotionText:
	text "My SECRETPOTION is"
	line "a tad too strong."

	para "I only offer it in"
	line "an emergency."
	done

; Mystery Gift text from pokemon Peridot. Must be updated in the script.
	
MysteryGiftText2:
	text "MYSTERY GIFT!"
	line "MYSTERY GIFT!"
	
	para "Do you want to"
	line "share a MYSTERY"
	cont "GIFT?"
	done
	
MysteryGift_SaveGame2:
	text "You need to save"
	line "your game before"
	cont "we share, 'kay?"
	done
	
MysteryGiftLinkUp2:
	text "Okay! Let's link"
	line "up for a sec!"
	done

MysteryGiftNoRoom2:
	text "I guess too many"
	line "people shared with"
	cont "you! Hehe!"
	done
	
MysteryGiftItemPocketWarningText2:
	text "…You don't have"
	line "much space in your"
	cont "ITEM POCKET."
	done

MysteryGiftAnywayText2:
	text "Do you want to"
	line "use MYSTERY GIFT"
	cont "anyway?"
	done
	
MysteryGiftReceivedText2:
	text "Wow, I got really"
	line "cool items today!"
	cont "I hope you got"
	cont "something good!"
	
	para "Let's do this"
	line "again tomorrow!"
	done
	
NoMysteryGiftText2:
	text "We've already"
	line "shared today."
	
	para "But I'd be happy"
	line "to share again"
	cont "tomorrow."
	done
	
DeclineMysteryGiftText2:
	text "Oh..."
	
	para "Some other time,"
	line "okay?"
	done
	
CianwoodPharmacy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 4
	warp_event  3,  7, CIANWOOD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodPharmacyBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodPharmacyBookshelf

	def_object_events
	object_event  2,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodPharmacist, -1
	object_event  3,  1, SPRITE_OLD_LINK_RECEPTIONIST, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodPharmacyMysteryGiftScript, -1
