BattleCommand_Thief:
; The enemy can't steal items.
	ldh a, [hBattleTurn]
	and a
	ret nz

; The player needs to be able to steal an item.

	call .playeritem
	ld a, [hl]
	and a
	ret nz

; The enemy needs to have an item to steal.

	call .enemyitem
	ld a, [hl]
	and a
	ret z

; Can't steal mail.

	ld [wNamedObjectIndex], a
	ld d, a
	farcall ItemIsMail
	ret c

	ld a, [wEffectFailed]
	and a
	ret nz

	ld a, [wLinkMode]
	and a
	jr z, .stealenemyitem

	ld a, [wBattleMode]
	dec a
	ret z

.stealenemyitem
	call .enemyitem
	xor a
	ld [hl], a
	ld [de], a

	call .playeritem
	ld a, [wNamedObjectIndex]
	ld [hl], a
	ld [de], a

.stole
	call GetItemName
	ld hl, StoleText
	jp StdBattleTextbox

.playeritem
	ld a, MON_ITEM
	call BattlePartyAttr
	ld d, h
	ld e, l
	ld hl, wBattleMonItem
	ret

.enemyitem
	ld a, MON_ITEM
	call OTPartyAttr
	ld d, h
	ld e, l
	ld hl, wEnemyMonItem
	ret
