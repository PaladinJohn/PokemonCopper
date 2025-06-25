BattleCommand_Yawn:
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVarAddr
	and a
	jr nz, .failed

	ld hl, wEnemySubStatus5
	bit SUBSTATUS_YAWN, [hl]
	jr nz, .failed
	
	set SUBSTATUS_YAWN, [hl]
	ld a, 2
	ld [wEnemyYawnCount], a

	call AnimateCurrentMove
	ld hl, YawnText
	jp StdBattleTextbox

.failed
	call AnimateFailedMove
	jp PrintButItFailed