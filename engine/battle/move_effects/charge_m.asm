BattleCommand_Charge_M:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	bit SUBSTATUS_CHARGE, [hl]
	jr nz, .already_charged
	set SUBSTATUS_CHARGE, [hl]
	call AnimateCurrentMove
	ld hl, ChargeText
	jp StdBattleTextbox

.already_charged
	call AnimateFailedMove
	jp PrintButItFailed