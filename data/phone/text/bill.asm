BillPhoneMornGreetingText:
	text "Good morning!"

	para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneDayGreetingText:
	text "Good day!"

	para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneNiteGreetingText:
	text "Good evening!"

	para "This is the #-"
	line "MON STORAGE SYSTEM"

	para "ADMINISTRATION"
	line "SERVICE."
	done

BillPhoneGenericText:
	text "Who's calling?"

	para "<PLAY_G>, is it?"
	line "Hang on a sec…"

	para "<……>"
	line "<……>"
	done

BillPhoneNotFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAY_G>, your BOX"
	line "has room for @"
	text_ram wStringBuffer3
	text_start
	cont "more #MON."

	para "Get out there and"
	line "fill it up!"
	done

BillPhoneNearlyFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAY_G>, your BOX"
	line "has room for only"
	cont "@"
	text_ram wStringBuffer3
	text " more #MON."

	para "Maybe you should"
	line "switch your BOX."
	done

BillPhoneFullText:
	text "Thanks for"
	line "waiting!"

	para "<PLAY_G>, your BOX"
	line "is full!"

	para "You'll have to"
	line "switch BOXES if"

	para "you want to catch"
	line "more #MON."
	prompt

BillPhoneNewlyFullText:
	text "Hi, <PLAY_G>?"
	line "It's me, BILL!"

	para "Thanks for using"
	line "my STORAGE SYSTEM."

	para "That last #MON"
	line "you sent filled"
	cont "your BOX up."

	para "You'll have to"
	line "switch BOXES if"

	para "you want to catch"
	line "more #MON."
	prompt

BillWholePCFullText:
	text "Wow, you filled"
	line "a whole server."

	para "You'll have to"
	line "release #mon"
	cont "to make space."
	done
	
BillWantNextBox:
	text "I'll swap to the"
	line "next Box with"
	cont "space for you."

	para "However…"
	prompt

BillThankYouText:
	text "Thank you for"
	line "using the PC"
	cont "Storage System!"
	done

BillCallMeToSwitch:
	text "Okay, I'll leave"
	line "it alone."

	para "Call me back if"
	line "you change your"
	cont "mind."

	para "You can also"
	line "change boxes your-"
	cont "self via PC."
	prompt