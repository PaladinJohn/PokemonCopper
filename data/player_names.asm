ChrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .MaleNames
	db 1 ; default option
	db 0 ; ???

.MaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
MalePlayerNameArray:
	db "CHRIS@"
	db "MAT@"
	db "ALLAN@"
	db "JON@"
	db 2 ; title indent
	db " NAME @" ; title

KrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .FemaleNames
	db 1 ; default option
	db 0 ; ???

.FemaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
FemalePlayerNameArray:
	db "KRIS@"
	db "AMANDA@"
	db "JUANA@"
	db "JODI@"
	db 2 ; title indent
	db " NAME @" ; title
	
AshNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .Male2Names
	db 1 ; default option
	db 0 ; ???

.Male2Names:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
Male2PlayerNameArray:
	db "ASH@"
	db "JACK@"
	db "GARY@"
	db "JOHN@"
	db 2 ; title indent
	db " NAME @" ; title
	
MayNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .Female2Names
	db 1 ; default option
	db 0 ; ???

.Female2Names:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "NEW NAME@"
Female2PlayerNameArray:
	db "MAY@"
	db "TERRA@"
	db "KIMMY@"
	db "NICOLA@"
	db 2 ; title indent
	db " NAME @" ; title
