MovePlayerPicRight:
	hlcoord 6, 4
	ld de, 1
	jr MovePlayerPic

MovePlayerPicLeft:
	hlcoord 13, 4
	ld de, -1
	; fallthrough

MovePlayerPic:
; Move player pic at hl by de * 7 tiles.
	ld c, $8
.loop
	push bc
	push hl
	push de
	xor a
	ldh [hBGMapMode], a
	lb bc, 7, 7
	predef PlaceGraphic
	xor a
	ldh [hBGMapThird], a
	call WaitBGMap
	call DelayFrame
	pop de
	pop hl
	add hl, de
	pop bc
	dec c
	ret z
	push hl
	push bc
	ld a, l
	sub e
	ld l, a
	ld a, h
	sbc d
	ld h, a
	lb bc, 7, 7
	call ClearBox
	pop bc
	pop hl
	jr .loop

ShowPlayerNamingChoices:
	ld hl, ChrisNameMenuHeader
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .got_header
	ld hl, KrisNameMenuHeader
	dec a ; FEMALE
	jr z, .got_header
	ld hl, AshNameMenuHeader
	dec a ; MALE2
	jr z, .got_header
	ld hl, MayNameMenuHeader
.got_header
	call LoadMenuHeader
	call VerticalMenu
	ld a, [wMenuCursorY]
	dec a
	call CopyNameFromMenu
	call CloseWindow
	ret

INCLUDE "data/player_names.asm"

GetPlayerIcon:
	ld de, ChrisSpriteGFX
	ld b, BANK(ChrisSpriteGFX)
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .got_gfx
	ld de, KrisSpriteGFX
	ld b, BANK(KrisSpriteGFX)
	dec a ; FEMALE
	jr z, .got_gfx
	ld de, AshSpriteGFX
	ld b, BANK(AshSpriteGFX)
	dec a ; MALE2
	jr z, .got_gfx
	ld de, MaySpriteGFX
	ld b, BANK(MaySpriteGFX)
.got_gfx
	ret

GetCardPic:
	ld hl, ChrisCardPic
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .got_pic
	ld hl, KrisCardPic
	dec a ; FEMALE
	jr z, .got_pic
	ld hl, AshCardPic
	dec a ; MALE2
	jr z, .got_pic
	ld hl, MayCardPic
.got_pic
	ld de, vTiles2 tile $00
	ld bc, $23 tiles
	ld a, BANK(ChrisCardPic) ; aka BANK(KrisCardPic)
	call FarCopyBytes
	ld hl, TrainerCardGFX
	ld de, vTiles2 tile $23
	ld bc, 6 tiles
	ld a, BANK(TrainerCardGFX)
	call FarCopyBytes
	ret

ChrisCardPic:
INCBIN "gfx/trainer_card/chris_card.2bpp"

KrisCardPic:
INCBIN "gfx/trainer_card/kris_card.2bpp"

AshCardPic:
INCBIN "gfx/trainer_card/ash_card.2bpp"

MayCardPic:
INCBIN "gfx/trainer_card/may_card.2bpp"

TrainerCardGFX:
INCBIN "gfx/trainer_card/trainer_card.2bpp"

GetPlayerBackpic:
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, GetChrisBackpic
	dec a ; FEMALE
	jp z, GetKrisBackpic
	dec a ; MALE2
	jp z, GetAshBackpic
	call GetMayBackpic
	ret

GetChrisBackpic:
	ld hl, ChrisBackpic
	ld b, BANK(ChrisBackpic)
	ld de, vTiles2 tile $31
	ld c, 7 * 7
	predef DecompressGet2bpp
	ret

HOF_LoadTrainerFrontpic:
	call WaitBGMap
	xor a
	ldh [hBGMapMode], a

; Get class
	ld e, CHRIS
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .got_class
	ld e, KRIS
	dec a ; FEMALE
	jr z, .got_class
	ld e, ASH
	dec a ; MALE2
	jr z, .got_class
	ld e, MAY
.got_class
	ld a, e
	ld [wTrainerClass], a

; Load pic
	ld de, ChrisPic
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .got_pic
	ld de, KrisPic
	dec a ; FEMALE
	jr z, .got_pic
	ld de, AshPic
	dec a ; MALE2
	jr z, .got_pic
	ld de, MayPic
.got_pic
	ld hl, vTiles2
	ld b, BANK(ChrisPic) ; aka BANK(KrisPic)
	ld c, 7 * 7
	call Get2bpp

	call WaitBGMap
	ld a, $1
	ldh [hBGMapMode], a
	ret

DrawIntroPlayerPic:
; Draw the player pic at (6,4).

; Get class
	ld e, CHRIS
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .got_class
	ld e, KRIS
	dec a ; FEMALE
	jr z, .got_class
	ld e, ASH
	dec a ; MALE2
	jr z, .got_class
	ld e, MAY
.got_class
	ld a, e
	ld [wTrainerClass], a

; Load pic
	ld de, ChrisPic
	ld a, [wPlayerGender]
	and a ; MALE
	jr z, .got_pic
	ld de, KrisPic
	dec a ; FEMALE
	jr z, .got_pic
	ld de, AshPic
	dec a ; FEMALE
	jr z, .got_pic
	ld de, MayPic
.got_pic
	ld hl, vTiles2
	ld b, BANK(ChrisPic) ; aka BANK(KrisPic)
	ld c, 7 * 7 ; dimensions
	call Get2bpp

; Draw
	xor a
	ldh [hGraphicStartTile], a
	hlcoord 6, 4
	lb bc, 7, 7
	predef PlaceGraphic
	ret

ChrisPic:
INCBIN "gfx/player/chris.2bpp"

KrisPic:
INCBIN "gfx/player/kris.2bpp"

AshPic:
INCBIN "gfx/player/ash.2bpp"

MayPic:
INCBIN "gfx/player/may.2bpp"

GetKrisBackpic:
; Kris's backpic is uncompressed.
	ld de, KrisBackpic
	ld hl, vTiles2 tile $31
	lb bc, BANK(KrisBackpic), 7 * 7 ; dimensions
	call Get2bpp
	ret

KrisBackpic:
INCBIN "gfx/player/kris_back.2bpp"

GetAshBackpic:
; Ash's backpic is uncompressed.
	ld de, AshBackpic
	ld hl, vTiles2 tile $31
	lb bc, BANK(AshBackpic), 7 * 7 ; dimensions
	call Get2bpp
	ret

AshBackpic:
INCBIN "gfx/player/ash_back.2bpp"

GetMayBackpic:
; May's backpic is uncompressed.
	ld de, MayBackpic
	ld hl, vTiles2 tile $31
	lb bc, BANK(AshBackpic), 7 * 7 ; dimensions
	call Get2bpp
	ret

MayBackpic:
INCBIN "gfx/player/may_back.2bpp"
