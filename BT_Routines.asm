_BT_Configure:
;E,9 :: 		
SUB	SP, SP, #4
STR	LR, [SP, #0]
;E,11 :: 		
L_BT_Configure0:
;E,12 :: 		
MOVW	R0, #lo_addr(?lstr1_BT_Routines+0)
MOVT	R0, #hi_addr(?lstr1_BT_Routines+0)
BL	_UART3_Write_Text+0
;E,13 :: 		
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_BT_Configure3:
SUBS	R7, R7, #1
BNE	L_BT_Configure3
NOP
NOP
;E,14 :: 		
BL	_BT_Get_Response+0
MOVW	R1, _BT_CMD
MOVT	R1, _BT_CMD+2
CMP	R0, R1
IT	NE
BNE	L_BT_Configure0
;E,16 :: 		
L_BT_Configure5:
;E,17 :: 		
MOVW	R0, #lo_addr(?lstr2_BT_Routines+0)
MOVT	R0, #hi_addr(?lstr2_BT_Routines+0)
BL	_UART3_Write_Text+0
;E,18 :: 		
MOVS	R0, #13
BL	_UART3_Write+0
;E,19 :: 		
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_BT_Configure8:
SUBS	R7, R7, #1
BNE	L_BT_Configure8
NOP
NOP
;E,20 :: 		
BL	_BT_Get_Response+0
MOVW	R1, _BT_AOK
MOVT	R1, _BT_AOK+2
CMP	R0, R1
IT	NE
BNE	L_BT_Configure5
;E,22 :: 		
L_BT_Configure10:
;E,23 :: 		
MOVW	R0, #lo_addr(?lstr3_BT_Routines+0)
MOVT	R0, #hi_addr(?lstr3_BT_Routines+0)
BL	_UART3_Write_Text+0
;E,24 :: 		
MOVS	R0, #13
BL	_UART3_Write+0
;E,25 :: 		
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_BT_Configure13:
SUBS	R7, R7, #1
BNE	L_BT_Configure13
NOP
NOP
;E,26 :: 		
BL	_BT_Get_Response+0
MOVW	R1, _BT_AOK
MOVT	R1, _BT_AOK+2
CMP	R0, R1
IT	NE
BNE	L_BT_Configure10
;E,28 :: 		
L_BT_Configure15:
;E,29 :: 		
MOVW	R0, #lo_addr(?lstr4_BT_Routines+0)
MOVT	R0, #hi_addr(?lstr4_BT_Routines+0)
BL	_UART3_Write_Text+0
;E,30 :: 		
MOVS	R0, #13
BL	_UART3_Write+0
;E,31 :: 		
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_BT_Configure18:
SUBS	R7, R7, #1
BNE	L_BT_Configure18
NOP
NOP
;E,32 :: 		
BL	_BT_Get_Response+0
MOVW	R1, _BT_AOK
MOVT	R1, _BT_AOK+2
CMP	R0, R1
IT	NE
BNE	L_BT_Configure15
;E,34 :: 		
L_BT_Configure20:
;E,35 :: 		
MOVW	R0, #lo_addr(?lstr5_BT_Routines+0)
MOVT	R0, #hi_addr(?lstr5_BT_Routines+0)
BL	_UART3_Write_Text+0
;E,36 :: 		
MOVS	R0, #13
BL	_UART3_Write+0
;E,37 :: 		
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_BT_Configure23:
SUBS	R7, R7, #1
BNE	L_BT_Configure23
NOP
NOP
;E,38 :: 		
BL	_BT_Get_Response+0
MOVW	R1, _BT_AOK
MOVT	R1, _BT_AOK+2
CMP	R0, R1
IT	NE
BNE	L_BT_Configure20
;E,40 :: 		
L_BT_Configure25:
;E,41 :: 		
MOVW	R0, #lo_addr(?lstr6_BT_Routines+0)
MOVT	R0, #hi_addr(?lstr6_BT_Routines+0)
BL	_UART3_Write_Text+0
;E,42 :: 		
MOVS	R0, #13
BL	_UART3_Write+0
;E,43 :: 		
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_BT_Configure28:
SUBS	R7, R7, #1
BNE	L_BT_Configure28
NOP
NOP
;E,44 :: 		
BL	_BT_Get_Response+0
MOVW	R1, _BT_AOK
MOVT	R1, _BT_AOK+2
CMP	R0, R1
IT	NE
BNE	L_BT_Configure25
;E,46 :: 		
L_BT_Configure30:
;E,47 :: 		
MOVW	R0, #lo_addr(?lstr7_BT_Routines+0)
MOVT	R0, #hi_addr(?lstr7_BT_Routines+0)
BL	_UART3_Write_Text+0
;E,48 :: 		
MOVS	R0, #13
BL	_UART3_Write+0
;E,49 :: 		
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_BT_Configure33:
SUBS	R7, R7, #1
BNE	L_BT_Configure33
NOP
NOP
;E,50 :: 		
BL	_BT_Get_Response+0
MOVW	R1, _BT_END
MOVT	R1, _BT_END+2
CMP	R0, R1
IT	NE
BNE	L_BT_Configure30
;E,51 :: 		
L_end_BT_Configure:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _BT_Configure
