BillPhoneCalleeScript:
	checktime DAY
	iftrue .daygreet
	checktime NITE
	iftrue .nitegreet
	farwritetext BillPhoneMornGreetingText
	promptbutton
	sjump .main

.daygreet
	farwritetext BillPhoneDayGreetingText
	promptbutton
	sjump .main

.nitegreet
	farwritetext BillPhoneNiteGreetingText
	promptbutton
	sjump .main

.main
	farwritetext BillPhoneGenericText
	promptbutton
	readvar VAR_BOXSPACE
	getnum STRING_BUFFER_3
	ifequal 0, .full
	ifless PARTY_LENGTH, .nearlyfull
	farwritetext BillPhoneNotFullText
	end

.nearlyfull
	farwritetext BillPhoneNearlyFullText
	end

.full
	farwritetext BillPhoneFullText
	jump BillPhoneScriptCheckForBoxes

BillPhoneCallerScript:
	farwritetext BillPhoneNewlyFullText
	
BillPhoneScriptCheckForBoxes:
	special BillBoxSwitchCheck
	if_equal 0, BillPhoneWholePCFull
	farwritetext BillWantNextBox
	farwritetext _ChangeBoxSaveText
	yesorno
	iffalse .refused
	special BillBoxSwitch
	jump .hang_up

.refused
	farwritetext BillCallMeToSwitch
.hang_up
	farwritetext BillThankYouText
	end

BillPhoneWholePCFull:
	farwritetext BillWholePCFullText
	waitbutton
	end
