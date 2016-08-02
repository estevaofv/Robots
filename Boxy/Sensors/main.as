opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 201502162209"

opt pagewidth 120

	opt lm

	processor	16F628A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 51 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PORTA equ 05h ;# 
# 223 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PORTB equ 06h ;# 
# 284 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCLATH equ 0Ah ;# 
# 303 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
INTCON equ 0Bh ;# 
# 380 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PIR1 equ 0Ch ;# 
# 436 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1 equ 0Eh ;# 
# 442 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1L equ 0Eh ;# 
# 448 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1H equ 0Fh ;# 
# 454 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
T1CON equ 010h ;# 
# 512 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR2 equ 011h ;# 
# 518 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
T2CON equ 012h ;# 
# 588 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1 equ 015h ;# 
# 594 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1L equ 015h ;# 
# 600 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1H equ 016h ;# 
# 606 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCP1CON equ 017h ;# 
# 663 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
RCSTA equ 018h ;# 
# 733 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TXREG equ 019h ;# 
# 739 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
RCREG equ 01Ah ;# 
# 745 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CMCON equ 01Fh ;# 
# 814 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
OPTION_REG equ 081h ;# 
# 883 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TRISA equ 085h ;# 
# 944 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TRISB equ 086h ;# 
# 1005 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1061 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCON equ 08Eh ;# 
# 1109 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PR2 equ 092h ;# 
# 1115 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TXSTA equ 098h ;# 
# 1171 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
SPBRG equ 099h ;# 
# 1177 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1183 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EEADR equ 09Bh ;# 
# 1189 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1226 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1232 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
VRCON equ 09Fh ;# 
	FNCALL	_main,_configurar_IO
	FNCALL	_main,_configurar_pwm
	FNCALL	_main,_configurar_timer0
	FNCALL	_main,_configurar_timer1
	FNCALL	_main,_init
	FNCALL	_main,_sensores
	FNCALL	_sensores,_read
	FNROOT	_main
	FNCALL	intlevel1,_t0_int
	global	intlevel1
	FNROOT	intlevel1
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	46

;initializer for _valores
	retlw	01h
	retlw	02h
	retlw	06h
	retlw	08h
	retlw	0Ch
	global	_cnt
	global	_actual
	global	_ciclos
	global	_contador
	global	_estado
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1H
_CCPR1H	set	0x16
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_CMCON
_CMCON	set	0x1F
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTAbits
_PORTAbits	set	0x5
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_T1CONbits
_T1CONbits	set	0x10
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_TMR1H
_TMR1H	set	0xF
	global	_TMR1L
_TMR1L	set	0xE
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_PR2
_PR2	set	0x92
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TRISA0
_TRISA0	set	0x428
	global	_TRISA1
_TRISA1	set	0x429
	global	_TRISA2
_TRISA2	set	0x42A
	global	_TRISA3
_TRISA3	set	0x42B
	global	_TRISA4
_TRISA4	set	0x42C
	global	_TRISA7
_TRISA7	set	0x42F
	global	_TRISB0
_TRISB0	set	0x430
	global	_TRISB3
_TRISB3	set	0x433
	global	_TRISB4
_TRISB4	set	0x434
	global	_TRISB5
_TRISB5	set	0x435
	global	_TRISB6
_TRISB6	set	0x436
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$INTOSCIO
__CFG_FOSC$INTOSCIO equ 0x0
	file	"main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_cnt:
       ds      2

_actual:
       ds      1

_ciclos:
       ds      1

_contador:
       ds      1

_estado:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_sensor:
       ds      5

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	46
_valores:
       ds      5

	file	"main.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init:	; 0 bytes @ 0x0
?_configurar_IO:	; 0 bytes @ 0x0
?_configurar_pwm:	; 0 bytes @ 0x0
?_configurar_timer1:	; 0 bytes @ 0x0
?_configurar_timer0:	; 0 bytes @ 0x0
?_sensores:	; 0 bytes @ 0x0
?_read:	; 0 bytes @ 0x0
?_t0_int:	; 0 bytes @ 0x0
??_t0_int:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_init:	; 0 bytes @ 0x0
??_configurar_IO:	; 0 bytes @ 0x0
??_configurar_pwm:	; 0 bytes @ 0x0
??_configurar_timer1:	; 0 bytes @ 0x0
??_configurar_timer0:	; 0 bytes @ 0x0
??_sensores:	; 0 bytes @ 0x0
??_read:	; 0 bytes @ 0x0
	ds	1
?_main:	; 2 bytes @ 0x1
main@argc:	; 2 bytes @ 0x1
	ds	2
main@argv:	; 2 bytes @ 0x3
	ds	2
??_main:	; 0 bytes @ 0x5
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        5
;!    BSS         11
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      11
;!    BANK0            80      5      15
;!    BANK1            80      0       0
;!    BANK2            48      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _t0_int in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sensores
;!
;!Critical Paths under _t0_int in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _t0_int in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _t0_int in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     0      4       0
;!                                              1 BANK0      4     0      4
;!                      _configurar_IO
;!                     _configurar_pwm
;!                  _configurar_timer0
;!                  _configurar_timer1
;!                               _init
;!                           _sensores
;! ---------------------------------------------------------------------------------
;! (1) _sensores                                             1     1      0       0
;!                                              0 BANK0      1     1      0
;!                               _read
;! ---------------------------------------------------------------------------------
;! (2) _read                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _configurar_timer1                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _configurar_timer0                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _configurar_pwm                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _configurar_IO                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _t0_int                                               5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _configurar_IO
;!   _configurar_pwm
;!   _configurar_timer0
;!   _configurar_timer1
;!   _init
;!   _sensores
;!     _read
;!
;! _t0_int (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               30      0       0       9        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      5       F       3       18.8%
;!BITBANK0            50      0       0       5        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      5       B       1       78.6%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      1A      10        0.0%
;!ABS                  0      0      1A       4        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              80      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 60 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2    1[BANK0 ] int 
;;  argv            2    3[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    1[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_configurar_IO
;;		_configurar_pwm
;;		_configurar_timer0
;;		_configurar_timer1
;;		_init
;;		_sensores
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	60
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	60
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	62
	
l855:	
	fcall	_init
	line	63
	
l857:	
	fcall	_configurar_IO
	line	64
	
l859:	
	fcall	_configurar_pwm
	line	65
	
l861:	
	fcall	_configurar_timer1
	line	66
	
l863:	
	fcall	_configurar_timer0
	goto	l865
	line	67
	
l85:	
	line	68
	
l865:	
	fcall	_sensores
	goto	l865
	line	69
	
l86:	
	line	67
	goto	l865
	
l87:	
	line	70
	
l88:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_sensores

;; *************** function _sensores *****************
;; Defined at:
;;		line 136 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       1       0       0
;;      Totals:         0       1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	136
global __ptext1
__ptext1:	;psect for function _sensores
psect	text1
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	136
	global	__size_of_sensores
	__size_of_sensores	equ	__end_of_sensores-_sensores
	
_sensores:	
;incstack = 0
	opt	stack 5
; Regs used in _sensores: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	137
	
l813:	
	goto	l849
	line	138
	
l110:	
	line	139
	
l815:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	141
	
l817:	
	bsf	(16),0	;volatile
	line	142
	
l819:	
	clrf	(_estado)
	incf	(_estado),f
	line	143
	
l821:	
	clrf	(_cnt)
	clrf	(_cnt+1)
	line	144
	
l823:	
	clrf	(_contador)
	line	145
	goto	l117
	line	146
	
l112:	
	line	149
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(12),0	;volatile
	goto	u231
	goto	u230
u231:
	goto	l117
u230:
	line	150
	
l825:	
	bcf	(12),0	;volatile
	line	151
	bcf	(16),0	;volatile
	line	152
	
l827:	
	movlw	low(0FCh)
	movwf	(15)	;volatile
	line	153
	movlw	low(017h)
	movwf	(14)	;volatile
	line	154
	movlw	low(02h)
	movwf	(??_sensores+0)+0
	movf	(??_sensores+0)+0,w
	movwf	(_estado)
	goto	l117
	line	155
	
l113:	
	line	156
	goto	l117
	line	157
	
l114:	
	line	158
	
l829:	
	fcall	_read
	line	159
	
l831:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),0	;volatile
	line	160
	
l833:	
	bcf	(16),0	;volatile
	line	161
	
l835:	
	clrf	(_contador)
	line	162
	
l837:	
	clrf	(21)	;volatile
	line	163
	
l839:	
	movlw	low(03h)
	movwf	(??_sensores+0)+0
	movf	(??_sensores+0)+0,w
	movwf	(_estado)
	line	164
	
l841:	
	clrf	(_cnt)
	clrf	(_cnt+1)
	line	165
	goto	l117
	line	166
	
l115:	
	line	167
	
l843:	
	movlw	low(05h)
	subwf	(_contador),w
	skipc
	goto	u241
	goto	u240
u241:
	goto	l117
u240:
	line	168
	
l845:	
	clrf	(_estado)
	goto	l117
	line	169
	
l116:	
	line	170
	goto	l117
	line	171
	
l847:	
	goto	l117
	line	137
	
l109:	
	
l849:	
	movf	(_estado),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; direct_byte           10     6 (fixed)
; simple_byte           13     7 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is direct_byte

	movwf fsr
	movlw	4
	subwf	fsr,w
skipnc
goto l117
movlw high(S887)
movwf pclath
	movlw low(S887)
	addwf fsr,w
	movwf pc
psect	swtext1,local,class=CONST,delta=2
global __pswtext1
__pswtext1:
S887:
	ljmp	l815
	ljmp	l112
	ljmp	l829
	ljmp	l843
psect	text1

	line	171
	
l111:	
	line	172
	
l117:	
	return
	opt stack 0
GLOBAL	__end_of_sensores
	__end_of_sensores:
	signat	_sensores,88
	global	_read

;; *************** function _read *****************
;; Defined at:
;;		line 173 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sensores
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	173
global __ptext2
__ptext2:	;psect for function _read
psect	text2
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	173
	global	__size_of_read
	__size_of_read	equ	__end_of_read-_read
	
_read:	
;incstack = 0
	opt	stack 5
; Regs used in _read: []
	line	174
	
l757:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(5),0	;volatile
	goto	u131
	goto	u130
	
u131:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),0	;volatile
	goto	u144
u130:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),0	;volatile
u144:
	line	175
	btfsc	(5),1	;volatile
	goto	u151
	goto	u150
	
u151:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),4	;volatile
	goto	u164
u150:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),4	;volatile
u164:
	line	176
	btfsc	(5),2	;volatile
	goto	u171
	goto	u170
	
u171:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),5	;volatile
	goto	u184
u170:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),5	;volatile
u184:
	line	177
	btfsc	(5),3	;volatile
	goto	u191
	goto	u190
	
u191:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),6	;volatile
	goto	u204
u190:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),6	;volatile
u204:
	line	178
	btfsc	(5),4	;volatile
	goto	u211
	goto	u210
	
u211:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(6),7	;volatile
	goto	u224
u210:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(6),7	;volatile
u224:
	line	179
	
l120:	
	return
	opt stack 0
GLOBAL	__end_of_read
	__end_of_read:
	signat	_read,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 73 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	73
global __ptext3
__ptext3:	;psect for function _init
psect	text3
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	73
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 6
; Regs used in _init: [wreg+status,2]
	line	74
	
l759:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	75
	
l761:	
	clrf	(_contador)
	line	76
	
l763:	
	clrf	(_estado)
	line	77
	
l765:	
	clrf	(_ciclos)
	line	78
	
l767:	
	clrf	(_actual)
	line	79
	movlw	low(03h)
	movwf	(21)	;volatile
	line	80
	
l769:	
	clrf	(22)	;volatile
	line	83
	
l91:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_configurar_timer1

;; *************** function _configurar_timer1 *****************
;; Defined at:
;;		line 93 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	93
global __ptext4
__ptext4:	;psect for function _configurar_timer1
psect	text4
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	93
	global	__size_of_configurar_timer1
	__size_of_configurar_timer1	equ	__end_of_configurar_timer1-_configurar_timer1
	
_configurar_timer1:	
;incstack = 0
	opt	stack 6
; Regs used in _configurar_timer1: [wreg+status,2+status,0]
	line	94
	
l785:	
	movlw	low(0FCh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	95
	movlw	low(018h)
	movwf	(14)	;volatile
	line	97
	
l787:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(140)^080h,0	;volatile
	line	98
	
l789:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),0	;volatile
	line	100
	
l791:	
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(16),f	;volatile
	line	102
	
l793:	
	bsf	(16),2	;volatile
	line	103
	
l795:	
	bcf	(16),3	;volatile
	line	104
	
l797:	
	bcf	(16),1	;volatile
	line	105
	
l799:	
	bcf	(16),0	;volatile
	line	106
	
l801:	
	bsf	(16),0	;volatile
	line	107
	
l97:	
	return
	opt stack 0
GLOBAL	__end_of_configurar_timer1
	__end_of_configurar_timer1:
	signat	_configurar_timer1,88
	global	_configurar_timer0

;; *************** function _configurar_timer0 *****************
;; Defined at:
;;		line 108 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	108
global __ptext5
__ptext5:	;psect for function _configurar_timer0
psect	text5
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	108
	global	__size_of_configurar_timer0
	__size_of_configurar_timer0	equ	__end_of_configurar_timer0-_configurar_timer0
	
_configurar_timer0:	
;incstack = 0
	opt	stack 6
; Regs used in _configurar_timer0: [wreg+status,2+status,0]
	line	109
	
l803:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(129)^080h,5	;volatile
	line	110
	bcf	(129)^080h,3	;volatile
	line	111
	
l805:	
	movf	(129)^080h,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(01h & ((1<<3)-1))<<0
	movwf	(129)^080h	;volatile
	line	113
	
l807:	
	bcf	(11),2	;volatile
	line	114
	
l809:	
	bsf	(11),5	;volatile
	line	115
	
l811:	
	bsf	(11),7	;volatile
	line	116
	
l100:	
	return
	opt stack 0
GLOBAL	__end_of_configurar_timer0
	__end_of_configurar_timer0:
	signat	_configurar_timer0,88
	global	_configurar_pwm

;; *************** function _configurar_pwm *****************
;; Defined at:
;;		line 84 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	84
global __ptext6
__ptext6:	;psect for function _configurar_pwm
psect	text6
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	84
	global	__size_of_configurar_pwm
	__size_of_configurar_pwm	equ	__end_of_configurar_pwm-_configurar_pwm
	
_configurar_pwm:	
;incstack = 0
	opt	stack 6
; Regs used in _configurar_pwm: [wreg+status,2+status,0]
	line	85
	
l773:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(18),2	;volatile
	line	86
	
l775:	
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	andwf	(18),f	;volatile
	line	87
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(18),f	;volatile
	line	88
	
l777:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h,3	;volatile
	line	89
	
l779:	
	movlw	low(011h)
	movwf	(146)^080h	;volatile
	line	90
	
l781:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(21)	;volatile
	line	91
	
l783:	
	movlw	low(0Ch)
	movwf	(23)	;volatile
	line	92
	
l94:	
	return
	opt stack 0
GLOBAL	__end_of_configurar_pwm
	__end_of_configurar_pwm:
	signat	_configurar_pwm,88
	global	_configurar_IO

;; *************** function _configurar_IO *****************
;; Defined at:
;;		line 117 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	line	117
global __ptext7
__ptext7:	;psect for function _configurar_IO
psect	text7
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	117
	global	__size_of_configurar_IO
	__size_of_configurar_IO	equ	__end_of_configurar_IO-_configurar_IO
	
_configurar_IO:	
;incstack = 0
	opt	stack 6
; Regs used in _configurar_IO: []
	line	118
	
l771:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	120
	bsf	(1064/8)^080h,(1064)&7	;volatile
	line	121
	bsf	(1065/8)^080h,(1065)&7	;volatile
	line	122
	bsf	(1066/8)^080h,(1066)&7	;volatile
	line	123
	bsf	(1067/8)^080h,(1067)&7	;volatile
	line	124
	bsf	(1068/8)^080h,(1068)&7	;volatile
	line	126
	bcf	(1072/8)^080h,(1072)&7	;volatile
	line	127
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	128
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	129
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	130
	bcf	(1071/8)^080h,(1071)&7	;volatile
	line	131
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of_configurar_IO
	__end_of_configurar_IO:
	signat	_configurar_IO,88
	global	_t0_int

;; *************** function _t0_int *****************
;; Defined at:
;;		line 132 in file "/home/newtonis/Robots/Boxy/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          5       0       0       0
;;      Totals:         5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	132
global __ptext8
__ptext8:	;psect for function _t0_int
psect	text8
	file	"/home/newtonis/Robots/Boxy/Sensors/main.c"
	line	132
	global	__size_of_t0_int
	__size_of_t0_int	equ	__end_of_t0_int-_t0_int
	
_t0_int:	
;incstack = 0
	opt	stack 5
; Regs used in _t0_int: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_t0_int+1)
	movf	fsr0,w
	movwf	(??_t0_int+2)
	movf	pclath,w
	movwf	(??_t0_int+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_t0_int+4)
	ljmp	_t0_int
psect	text8
	line	133
	
i1l697:	
	bcf	(11),2	;volatile
	line	134
	
i1l699:	
	movlw	low(01h)
	movwf	(??_t0_int+0)+0
	movf	(??_t0_int+0)+0,w
	addwf	(_contador),f
	line	135
	
i1l106:	
	movf	(??_t0_int+4),w
	movwf	btemp+1
	movf	(??_t0_int+3),w
	movwf	pclath
	movf	(??_t0_int+2),w
	movwf	fsr0
	swapf	(??_t0_int+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_t0_int
	__end_of_t0_int:
	signat	_t0_int,88
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end