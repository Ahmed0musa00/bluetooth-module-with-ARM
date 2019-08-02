_DrawScr:
;e,33 :: 		
SUB	SP, SP, #4
STR	LR, [SP, #0]
;e,34 :: 		
MOVW	R0, #65535
BL	_TFT_Fill_Screen+0
;e,35 :: 		
MOVS	R1, #1
MOVW	R0, #0
BL	_TFT_Set_Pen+0
;e,36 :: 		
MOVS	R3, #220
SXTH	R3, R3
MOVW	R2, #300
SXTH	R2, R2
MOVS	R1, #220
SXTH	R1, R1
MOVS	R0, #20
SXTH	R0, R0
BL	_TFT_Line+0
;e,37 :: 		
MOVS	R3, #46
SXTH	R3, R3
MOVW	R2, #300
SXTH	R2, R2
MOVS	R1, #46
SXTH	R1, R1
MOVS	R0, #20
SXTH	R0, R0
BL	_TFT_Line+0
;e,38 :: 		
MOVS	R2, #0
MOVW	R1, #63488
MOVW	R0, #lo_addr(_HandelGothic_BT21x22_Regular+0)
MOVT	R0, #hi_addr(_HandelGothic_BT21x22_Regular+0)
BL	_TFT_Set_Font+0
;e,39 :: 		
MOVW	R0, #lo_addr(?lstr1_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr1_Bluetooth_click+0)
MOVS	R2, #14
MOVS	R1, #75
BL	_TFT_Write_Text+0
;e,40 :: 		
MOVS	R2, #0
MOVW	R1, #0
MOVW	R0, #lo_addr(_Verdana12x13_Regular+0)
MOVT	R0, #hi_addr(_Verdana12x13_Regular+0)
BL	_TFT_Set_Font+0
;e,41 :: 		
MOVW	R0, #lo_addr(?lstr2_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr2_Bluetooth_click+0)
MOVS	R2, #223
MOVS	R1, #19
BL	_TFT_Write_Text+0
;e,42 :: 		
MOVS	R2, #0
MOVW	R1, #63488
MOVW	R0, #lo_addr(_Verdana12x13_Regular+0)
MOVT	R0, #hi_addr(_Verdana12x13_Regular+0)
BL	_TFT_Set_Font+0
;e,43 :: 		
MOVW	R0, #lo_addr(?lstr3_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr3_Bluetooth_click+0)
MOVS	R2, #223
MOVS	R1, #200
BL	_TFT_Write_Text+0
;e,44 :: 		
MOVS	R2, #0
MOVW	R1, #0
MOVW	R0, #lo_addr(_TFT_defaultFont+0)
MOVT	R0, #hi_addr(_TFT_defaultFont+0)
BL	_TFT_Set_Font+0
;e,45 :: 		
L_end_DrawScr:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _DrawScr
_interrupt:
;e,50 :: 		
SUB	SP, SP, #4
STR	LR, [SP, #0]
;e,51 :: 		
BL	_UART3_Read+0
MOVW	R1, #lo_addr(_tmp+0)
MOVT	R1, #hi_addr(_tmp+0)
STRB	R0, [R1, #0]
;e,53 :: 		
MOVW	R0, #lo_addr(_CMD_mode+0)
MOVT	R0, #hi_addr(_CMD_mode+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_interrupt0
;e,70 :: 		
IT	AL
BAL	L_interrupt1
;e,71 :: 		
L_interrupt3:
;e,72 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_response+0)
MOVT	R0, #hi_addr(_response+0)
STRB	R1, [R0, #0]
;e,73 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #67
IT	NE
BNE	L_interrupt4
;e,74 :: 		
MOVS	R1, #1
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt4:
;e,75 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #65
IT	NE
BNE	L_interrupt5
;e,76 :: 		
MOVS	R1, #11
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt5:
;e,77 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #69
IT	NE
BNE	L_interrupt6
;e,78 :: 		
MOVS	R1, #31
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt6:
;e,79 :: 		
IT	AL
BAL	L_interrupt2
;e,82 :: 		
L_interrupt7:
;e,83 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #77
IT	NE
BNE	L_interrupt8
;e,84 :: 		
MOVS	R1, #2
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
IT	AL
BAL	L_interrupt9
L_interrupt8:
;e,85 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #79
IT	NE
BNE	L_interrupt10
;e,86 :: 		
MOVS	R1, #22
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
IT	AL
BAL	L_interrupt11
L_interrupt10:
;e,88 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt11:
L_interrupt9:
;e,89 :: 		
IT	AL
BAL	L_interrupt2
;e,92 :: 		
L_interrupt12:
;e,93 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #68
IT	NE
BNE	L_interrupt13
;e,94 :: 		
MOVS	R1, #1
MOVW	R0, #lo_addr(_response+0)
MOVT	R0, #hi_addr(_response+0)
STRB	R1, [R0, #0]
;e,95 :: 		
MOVS	R1, #40
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
;e,96 :: 		
IT	AL
BAL	L_interrupt14
L_interrupt13:
;e,98 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt14:
;e,99 :: 		
IT	AL
BAL	L_interrupt2
;e,102 :: 		
L_interrupt15:
;e,103 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #79
IT	NE
BNE	L_interrupt16
;e,104 :: 		
MOVS	R1, #12
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
IT	AL
BAL	L_interrupt17
L_interrupt16:
;e,106 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt17:
;e,107 :: 		
IT	AL
BAL	L_interrupt2
;e,110 :: 		
L_interrupt18:
;e,111 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #75
IT	NE
BNE	L_interrupt19
;e,112 :: 		
MOVS	R1, #2
MOVW	R0, #lo_addr(_response+0)
MOVT	R0, #hi_addr(_response+0)
STRB	R1, [R0, #0]
;e,113 :: 		
MOVS	R1, #40
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
;e,114 :: 		
IT	AL
BAL	L_interrupt20
L_interrupt19:
;e,116 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt20:
;e,117 :: 		
IT	AL
BAL	L_interrupt2
;e,120 :: 		
L_interrupt21:
;e,121 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #78
IT	NE
BNE	L_interrupt22
;e,122 :: 		
MOVS	R1, #23
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
IT	AL
BAL	L_interrupt23
L_interrupt22:
;e,124 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt23:
;e,125 :: 		
IT	AL
BAL	L_interrupt2
;e,128 :: 		
L_interrupt24:
;e,129 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #78
IT	NE
BNE	L_interrupt25
;e,130 :: 		
MOVS	R1, #3
MOVW	R0, #lo_addr(_response+0)
MOVT	R0, #hi_addr(_response+0)
STRB	R1, [R0, #0]
;e,131 :: 		
MOVS	R1, #1
MOVW	R0, #lo_addr(_response_rcvd+0)
MOVT	R0, #hi_addr(_response_rcvd+0)
STRB	R1, [R0, #0]
;e,132 :: 		
MOVS	R1, #3
MOVW	R0, #lo_addr(_responseID+0)
MOVT	R0, #hi_addr(_responseID+0)
STRB	R1, [R0, #0]
;e,133 :: 		
L_interrupt25:
;e,134 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
;e,135 :: 		
IT	AL
BAL	L_interrupt2
;e,138 :: 		
L_interrupt26:
;e,139 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #78
IT	NE
BNE	L_interrupt27
;e,140 :: 		
MOVS	R1, #32
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
IT	AL
BAL	L_interrupt28
L_interrupt27:
;e,142 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt28:
;e,143 :: 		
IT	AL
BAL	L_interrupt2
;e,146 :: 		
L_interrupt29:
;e,147 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #68
IT	NE
BNE	L_interrupt30
;e,148 :: 		
MOVS	R1, #4
MOVW	R0, #lo_addr(_response+0)
MOVT	R0, #hi_addr(_response+0)
STRB	R1, [R0, #0]
;e,149 :: 		
MOVS	R1, #40
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
;e,150 :: 		
IT	AL
BAL	L_interrupt31
L_interrupt30:
;e,152 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt31:
;e,153 :: 		
IT	AL
BAL	L_interrupt2
;e,156 :: 		
L_interrupt32:
;e,157 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #13
IT	NE
BNE	L_interrupt33
;e,158 :: 		
MOVS	R1, #41
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
IT	AL
BAL	L_interrupt34
L_interrupt33:
;e,160 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
L_interrupt34:
;e,161 :: 		
IT	AL
BAL	L_interrupt2
;e,164 :: 		
L_interrupt35:
;e,165 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #10
IT	NE
BNE	L_interrupt36
;e,166 :: 		
MOVS	R1, #1
MOVW	R0, #lo_addr(_response_rcvd+0)
MOVT	R0, #hi_addr(_response_rcvd+0)
STRB	R1, [R0, #0]
;e,167 :: 		
MOVW	R0, #lo_addr(_response+0)
MOVT	R0, #hi_addr(_response+0)
LDRB	R1, [R0, #0]
MOVW	R0, #lo_addr(_responseID+0)
MOVT	R0, #hi_addr(_responseID+0)
STRB	R1, [R0, #0]
;e,168 :: 		
L_interrupt36:
;e,169 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
;e,170 :: 		
IT	AL
BAL	L_interrupt2
;e,173 :: 		
L_interrupt37:
;e,174 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
;e,175 :: 		
IT	AL
BAL	L_interrupt2
;e,177 :: 		
L_interrupt1:
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_interrupt3
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #1
IT	EQ
BEQ	L_interrupt7
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #2
IT	EQ
BEQ	L_interrupt12
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #11
IT	EQ
BEQ	L_interrupt15
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #12
IT	EQ
BEQ	L_interrupt18
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #22
IT	EQ
BEQ	L_interrupt21
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #23
IT	EQ
BEQ	L_interrupt24
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #31
IT	EQ
BEQ	L_interrupt26
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #32
IT	EQ
BEQ	L_interrupt29
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #40
IT	EQ
BEQ	L_interrupt32
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
LDRB	R0, [R0, #0]
CMP	R0, #41
IT	EQ
BEQ	L_interrupt35
IT	AL
BAL	L_interrupt37
L_interrupt2:
;e,178 :: 		
IT	AL
BAL	L_interrupt38
L_interrupt0:
;e,180 :: 		
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
CMP	R0, #13
IT	NE
BNE	L_interrupt39
;e,181 :: 		
MOVW	R0, #lo_addr(_i+0)
MOVT	R0, #hi_addr(_i+0)
LDRB	R1, [R0, #0]
MOVW	R0, #lo_addr(_txt+0)
MOVT	R0, #hi_addr(_txt+0)
ADDS	R1, R0, R1
MOVS	R0, #0
STRB	R0, [R1, #0]
;e,182 :: 		
MOVS	R1, #1
MOVW	R0, #lo_addr(_DataReady+0)
MOVT	R0, #hi_addr(_DataReady+0)
STRB	R1, [R0, #0]
;e,183 :: 		
IT	AL
BAL	L_interrupt40
L_interrupt39:
;e,185 :: 		
MOVW	R2, #lo_addr(_i+0)
MOVT	R2, #hi_addr(_i+0)
LDRB	R1, [R2, #0]
MOVW	R0, #lo_addr(_txt+0)
MOVT	R0, #hi_addr(_txt+0)
ADDS	R1, R0, R1
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
LDRB	R0, [R0, #0]
STRB	R0, [R1, #0]
;e,186 :: 		
MOV	R0, R2
LDRB	R0, [R0, #0]
ADDS	R0, R0, #1
STRB	R0, [R2, #0]
;e,187 :: 		
L_interrupt40:
;e,188 :: 		
L_interrupt38:
;e,189 :: 		
L_end_interrupt:
LDR	LR, [SP, #0]
ADD	SP, SP, #4
BX	LR
; end of _interrupt
_BT_Get_Response:
;e,192 :: 		
;e,193 :: 		
MOVW	R0, #lo_addr(_response_rcvd+0)
MOVT	R0, #hi_addr(_response_rcvd+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	EQ
BEQ	L_BT_Get_Response41
;e,194 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_response_rcvd+0)
MOVT	R0, #hi_addr(_response_rcvd+0)
STRB	R1, [R0, #0]
;e,195 :: 		
MOVW	R0, #lo_addr(_responseID+0)
MOVT	R0, #hi_addr(_responseID+0)
LDRB	R0, [R0, #0]
IT	AL
BAL	L_end_BT_Get_Response
;e,196 :: 		
L_BT_Get_Response41:
;e,198 :: 		
MOVS	R0, #0
;e,199 :: 		
L_end_BT_Get_Response:
BX	LR
; end of _BT_Get_Response
_main:
;e,201 :: 		
;e,202 :: 		
MOVS	R1, #240
MOVW	R0, #320
BL	_TFT_Init_ILI9341_8bit+0
;e,203 :: 		
BL	_DrawScr+0
;e,206 :: 		
MOVS	R0, #1
MOVW	R2, #lo_addr(_CMD_mode+0)
MOVT	R2, #hi_addr(_CMD_mode+0)
STRB	R0, [R2, #0]
;e,207 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_BT_state+0)
MOVT	R0, #hi_addr(_BT_state+0)
STRB	R1, [R0, #0]
;e,208 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_response_rcvd+0)
MOVT	R0, #hi_addr(_response_rcvd+0)
STRB	R1, [R0, #0]
;e,209 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_responseID+0)
MOVT	R0, #hi_addr(_responseID+0)
STRB	R1, [R0, #0]
;e,210 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_response+0)
MOVT	R0, #hi_addr(_response+0)
STRB	R1, [R0, #0]
;e,211 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_tmp+0)
MOVT	R0, #hi_addr(_tmp+0)
STRB	R1, [R0, #0]
;e,212 :: 		
MOVS	R0, #1
STRB	R0, [R2, #0]
;e,213 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_DataReady+0)
MOVT	R0, #hi_addr(_DataReady+0)
STRB	R1, [R0, #0]
;e,215 :: 		
MOVW	R0, #lo_addr(__GPIO_MODULE_USART3_PD89+0)
MOVT	R0, #hi_addr(__GPIO_MODULE_USART3_PD89+0)
PUSH	(R0)
MOVW	R3, #0
MOVW	R2, #0
MOVW	R1, #0
MOV	R0, #115200
BL	_UART3_Init_Advanced+0
ADD	SP, SP, #4
;e,216 :: 		
MOVW	R7, #9043
MOVT	R7, #8
NOP
NOP
L_main43:
SUBS	R7, R7, #1
BNE	L_main43
NOP
NOP
NOP
NOP
;e,218 :: 		
MOVS	R1, #1
SXTB	R1, R1
MOVW	R0, #lo_addr(USART3_CR1bits+0)
MOVT	R0, #hi_addr(USART3_CR1bits+0)
_SX	[R0, ByteOffset(USART3_CR1bits+0)]
;e,219 :: 		
MOVW	R0, #55
BL	_NVIC_IntEnable+0
;e,220 :: 		
BL	_EnableInterrupts+0
;e,222 :: 		
MOVW	R0, #lo_addr(?lstr4_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr4_Bluetooth_click+0)
MOVS	R2, #50
MOVS	R1, #50
BL	_TFT_Write_Text+0
;e,223 :: 		
MOVW	R0, #lo_addr(?lstr5_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr5_Bluetooth_click+0)
MOVS	R2, #70
MOVS	R1, #50
BL	_TFT_Write_Text+0
;e,225 :: 		
MOVW	R0, #lo_addr(?lstr6_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr6_Bluetooth_click+0)
MOVS	R2, #90
MOVS	R1, #50
BL	_TFT_Write_Text+0
;e,226 :: 		
MOVW	R0, #lo_addr(?lstr7_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr7_Bluetooth_click+0)
MOVS	R2, #110
MOVS	R1, #50
BL	_TFT_Write_Text+0
;e,227 :: 		
MOVW	R7, #45225
MOVT	R7, #40
NOP
NOP
L_main45:
SUBS	R7, R7, #1
BNE	L_main45
NOP
NOP
;e,230 :: 		
BL	_BT_Configure+0
;e,233 :: 		
L_main47:
BL	_BT_Get_Response+0
CMP	R0, #3
IT	EQ
BEQ	L_main48
IT	AL
BAL	L_main47
L_main48:
;e,235 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_CMD_mode+0)
MOVT	R0, #hi_addr(_CMD_mode+0)
STRB	R1, [R0, #0]
;e,237 :: 		
BL	_DisableInterrupts+0
;e,238 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_DataReady+0)
MOVT	R0, #hi_addr(_DataReady+0)
STRB	R1, [R0, #0]
;e,240 :: 		
MOVS	R2, #0
MOVW	R1, #65535
MOVW	R0, #lo_addr(_TFT_defaultFont+0)
MOVT	R0, #hi_addr(_TFT_defaultFont+0)
BL	_TFT_Set_Font+0
;e,241 :: 		
MOVW	R0, #lo_addr(?lstr8_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr8_Bluetooth_click+0)
MOVS	R2, #90
MOVS	R1, #50
BL	_TFT_Write_Text+0
;e,242 :: 		
MOVW	R0, #lo_addr(?lstr9_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr9_Bluetooth_click+0)
MOVS	R2, #110
MOVS	R1, #50
BL	_TFT_Write_Text+0
;e,243 :: 		
MOVS	R2, #0
MOVW	R1, #0
MOVW	R0, #lo_addr(_TFT_defaultFont+0)
MOVT	R0, #hi_addr(_TFT_defaultFont+0)
BL	_TFT_Set_Font+0
;e,244 :: 		
MOVW	R0, #lo_addr(?lstr10_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr10_Bluetooth_click+0)
MOVS	R2, #90
MOVS	R1, #50
BL	_TFT_Write_Text+0
;e,246 :: 		
MOVW	R0, #lo_addr(?lstr11_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr11_Bluetooth_click+0)
BL	_UART3_Write_Text+0
;e,247 :: 		
MOVS	R0, #13
BL	_UART3_Write+0
;e,249 :: 		
MOVS	R1, #1
MOVW	R0, #65535
BL	_TFT_Set_Pen+0
;e,250 :: 		
MOVS	R1, #0
MOVS	R0, #0
PUSH	(R1)
PUSH	(R0)
MOVS	R3, #0
MOVS	R2, #0
MOVW	R1, #65535
MOVS	R0, #1
BL	_TFT_Set_Brush+0
ADD	SP, SP, #8
;e,251 :: 		
MOVS	R3, #110
SXTH	R3, R3
MOVS	R2, #250
SXTH	R2, R2
MOVS	R1, #48
SXTH	R1, R1
MOVS	R0, #40
SXTH	R0, R0
BL	_TFT_Rectangle+0
;e,252 :: 		
MOVW	R0, #lo_addr(?lstr12_Bluetooth_click+0)
MOVT	R0, #hi_addr(?lstr12_Bluetooth_click+0)
MOVS	R2, #70
MOVS	R1, #50
BL	_TFT_Write_Text+0
;e,254 :: 		
L_main49:
;e,255 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_i+0)
MOVT	R0, #hi_addr(_i+0)
STRB	R1, [R0, #0]
;e,257 :: 		
MOVS	R2, #16
SXTH	R2, R2
MOVS	R1, #0
MOVW	R0, #lo_addr(_txt+0)
MOVT	R0, #hi_addr(_txt+0)
BL	_memset+0
;e,258 :: 		
BL	_EnableInterrupts+0
;e,260 :: 		
L_main51:
MOVW	R0, #lo_addr(_DataReady+0)
MOVT	R0, #hi_addr(_DataReady+0)
LDRB	R0, [R0, #0]
CMP	R0, #0
IT	NE
BNE	L_main52
IT	AL
BAL	L_main51
L_main52:
;e,263 :: 		
BL	_DisableInterrupts+0
;e,264 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_DataReady+0)
MOVT	R0, #hi_addr(_DataReady+0)
STRB	R1, [R0, #0]
;e,266 :: 		
MOVS	R1, #0
MOVW	R0, #lo_addr(_i+0)
MOVT	R0, #hi_addr(_i+0)
STRB	R1, [R0, #0]
;e,268 :: 		
MOVS	R3, #180
SXTH	R3, R3
MOVW	R2, #320
SXTH	R2, R2
MOVS	R1, #90
SXTH	R1, R1
MOVS	R0, #0
SXTH	R0, R0
BL	_TFT_Rectangle+0
;e,269 :: 		
MOVS	R2, #150
MOVS	R1, #50
MOVW	R0, #lo_addr(_txt+0)
MOVT	R0, #hi_addr(_txt+0)
BL	_TFT_Write_Text+0
;e,270 :: 		
IT	AL
BAL	L_main49
;e,272 :: 		
L_end_main:
L__main_end_loop:
B	L__main_end_loop
; end of _main
