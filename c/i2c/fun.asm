;--------------------------------------------------------
; File Created by SN-SDCC : ANSI-C Compiler
; Version 0.0.3 (Jul 18 2013) (MINGW32)
; This file was generated Fri Aug 02 17:27:04 2013
;--------------------------------------------------------
; MC3X port for the RISC core
;--------------------------------------------------------
	.file	"fun.c"
	list	p=30p011
	radix dec
	include "mc30p011.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_STATUSbits
	extern	_P0bits
	extern	_P1bits
	extern	_MCRbits
	extern	_KBIMbits
	extern	_PDCONbits
	extern	_ODCONbits
	extern	_PUCONbits
	extern	_INTECONbits
	extern	_INTFLAGbits
	extern	_T0CRbits
	extern	_DDR0bits
	extern	_DDR1bits
	extern	_TMCRbits
	extern	_T1CRbits
	extern	_INDF
	extern	_T0CNT
	extern	_PCL
	extern	_STATUS
	extern	_FSR
	extern	_P0
	extern	_P1
	extern	_MCR
	extern	_KBIM
	extern	_PCLATH
	extern	_PDCON
	extern	_ODCON
	extern	_PUCON
	extern	_INTECON
	extern	_INTFLAG
	extern	_T0CR
	extern	_DDR0
	extern	_DDR1
	extern	_TMCR
	extern	_T1CR
	extern	_T1CNT
	extern	_T1LOAD
	extern	_T1DATA

	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_i2cint
	global	_i2cout
	global	_i
	global	_j
	global	_n
	global	_table

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
UD_fun_0	udata
_i	res	1

UD_fun_1	udata
_j	res	1

UD_fun_2	udata
_n	res	1

;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------

ID_fun_0	code
_table
	retai 0x80
	retai 0x86
	retai 0x8d
	retai 0x93
	retai 0x99
	retai 0x9f
	retai 0xa5
	retai 0xab
	retai 0xb1
	retai 0xb7
	retai 0xbc
	retai 0xc2
	retai 0xc7
	retai 0xcc
	retai 0xd1
	retai 0xd6
	retai 0xda
	retai 0xdf
	retai 0xe3
	retai 0xe7
	retai 0xea
	retai 0xee
	retai 0xf1
	retai 0xf4
	retai 0xf6
	retai 0xf8
	retai 0xfa
	retai 0xfc
	retai 0xfd
	retai 0xff
	retai 0xff
	retai 0xff
	retai 0xff
	retai 0xff
	retai 0xff
	retai 0xfe
	retai 0xfd
	retai 0xfb
	retai 0xf9
	retai 0xf7
	retai 0xf5
	retai 0xf2
	retai 0xef
	retai 0xec
	retai 0xe9
	retai 0xe5
	retai 0xe1
	retai 0xdd
	retai 0xd8
	retai 0xd4
	retai 0xcf
	retai 0xca
	retai 0xc5
	retai 0xbf
	retai 0xba
	retai 0xb4
	retai 0xae
	retai 0xa8
	retai 0xa2
	retai 0x9c
	retai 0x96
	retai 0x90
	retai 0x89
	retai 0x83
	retai 0x80
	retai 0x79
	retai 0x72
	retai 0x6c
	retai 0x66
	retai 0x60
	retai 0x5a
	retai 0x55
	retai 0x4e
	retai 0x48
	retai 0x43
	retai 0x3d
	retai 0x38
	retai 0x33
	retai 0x2e
	retai 0x29
	retai 0x25
	retai 0x20
	retai 0x1c
	retai 0x18
	retai 0x15
	retai 0x11
	retai 0x0e
	retai 0x0b
	retai 0x09
	retai 0x07
	retai 0x05
	retai 0x03
	retai 0x02
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x00
	retai 0x01
	retai 0x02
	retai 0x04
	retai 0x06
	retai 0x08
	retai 0x0a
	retai 0x0d
	retai 0x10
	retai 0x13
	retai 0x16
	retai 0x1a
	retai 0x1e
	retai 0x22
	retai 0x27
	retai 0x2b
	retai 0x30
	retai 0x35
	retai 0x3a
	retai 0x40
	retai 0x45
	retai 0x4c
	retai 0x51
	retai 0x57
	retai 0x5d
	retai 0x63
	retai 0x69
	retai 0x6f
	retai 0x76
	retai 0x7c

;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_fun	code
;***
;  pBlock Stats: dbName = C
;***
;entry:  _i2cout	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2339:genFunction *{*
;; ***	genFunction  2341 curr label offset=4previous max_key=0 
_i2cout	;Function start
; 2 exit points
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _INTECONbits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTECONbits
;; 	line = 6506 result AOP_PCODE=_INTECONbits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_INTECONbits
;; >>> gen.c:6240:genPackBits
	.line	34; "fun.c"	GIE = 1;
	BSET	_INTECONbits,7
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6910:genAssign *{*
;; ***	genAssign  6911
;; ***	aopForSym 315
;;	327 sym->rname = _n, size = 1
;; 	line = 6920 result AOP_DIR=_n, size=1, left -=-, size=0, right AOP_LIT=0x02, size=1
;; ***	genAssign  7006
;; >>> gen.c:7013:genAssign
	.line	35; "fun.c"	for(n=0x02;--n;) continue;
	MOVAI	0x02
;; >>> gen.c:7015:genAssign
;;	1009
;;	1028  _n   offset=0
	MOVRA	_n
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:7300:genDjnz *{*
;; ***	genDjnz  7301
;;; genarith.c:861:genMinus *{*
;; ***	genMinus  862
;; ***	aopForSym 315
;;	327 sym->rname = _n, size = 1
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;;; genarith.c:269:genAddLit *{*
;; ***	genAddLit  270
;;; genarith.c:233:genAddLit2byte *{*
;; >>> genarith.c:242:genAddLit2byte
;;	1009
;;	1028  _n   offset=0
_00109_DS_
	DECR	_n
;; ***	addSign  826
;;; genarith.c:827:addSign *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6742:genIfx *{*
;; ***	genIfx  6743
;; ***	aopForSym 315
;;	327 sym->rname = _n, size = 1
;; ***	pic14_toBoolean  1514
;; >>> gen.c:1521:pic14_toBoolean
	MOVAI	0x00
;; >>> gen.c:1532:pic14_toBoolean
;;	1009
;;	1028  _n   offset=0
	ORAR	_n
;; >>> gen.c:6791:genIfx
	JBSET	STATUS,2
;; >>> gen.c:6792:genIfx
;; ***	popGetLabel  key=1, label offset 8
	GOTO	_00109_DS_
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
_00112_DS_
	.line	38; "fun.c"	P00=1; 
	BSET	_P0bits,0
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6127:genPointerGet *{*
;; ***	genPointerGet  6128
;;; gen.c:5909:genNearPointerGet *{*
;; ***	genNearPointerGet  5910
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerGet  5926
;;	694 register type nRegs=1
;;; gen.c:5743:genUnpackBits *{*
;; ***	genUnpackBits  5744
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:5766:genUnpackBits
	.line	39; "fun.c"	}while(P01==0);  
	JBSET	_P0bits,1
;; >>> gen.c:5767:genUnpackBits
;; ***	popGetLabel  key=4, label offset 8
	GOTO	_00112_DS_
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	40; "fun.c"	P00=0;
	BCLR	_P0bits,0
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x58, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	41; "fun.c"	P02=0X58;
	BSET	_P0bits,2
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6127:genPointerGet *{*
;; ***	genPointerGet  6128
;;; gen.c:5909:genNearPointerGet *{*
;; ***	genNearPointerGet  5910
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerGet  5926
;;	694 register type nRegs=1
;;; gen.c:5743:genUnpackBits *{*
;; ***	genUnpackBits  5744
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:5766:genUnpackBits
_00115_DS_
	.line	45; "fun.c"	}while(P01==0);
	JBSET	_P0bits,1
;; >>> gen.c:5767:genUnpackBits
;; ***	popGetLabel  key=7, label offset 8
	GOTO	_00115_DS_
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	46; "fun.c"	P01=0; 
	BCLR	_P0bits,1
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	47; "fun.c"	P02=0X01;
	BSET	_P0bits,2
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6127:genPointerGet *{*
;; ***	genPointerGet  6128
;;; gen.c:5909:genNearPointerGet *{*
;; ***	genNearPointerGet  5910
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerGet  5926
;;	694 register type nRegs=1
;;; gen.c:5743:genUnpackBits *{*
;; ***	genUnpackBits  5744
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:5766:genUnpackBits
_00117_DS_
	.line	51; "fun.c"	}while(P01==0); 
	JBSET	_P0bits,1
;; >>> gen.c:5767:genUnpackBits
;; ***	popGetLabel  key=9, label offset 8
	GOTO	_00117_DS_
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	52; "fun.c"	P01=0;  
	BCLR	_P0bits,1
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;; ***	aopForSym 315
;;	327 sym->rname = _j, size = 1
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_DIR=_j, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;; >>> gen.c:6319:genPackBits
;;	1009
;;	1024  _j   offset=0 - had to alloc by reg name
	.line	53; "fun.c"	P02=j;   
	RRAR	_j
;; >>> gen.c:6320:genPackBits
	JBSET	STATUS,0
;; >>> gen.c:6321:genPackBits
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
	BCLR	_P0bits,2
;; >>> gen.c:6322:genPackBits
	JBCLR	STATUS,0
;; >>> gen.c:6323:genPackBits
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
	BSET	_P0bits,2
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6127:genPointerGet *{*
;; ***	genPointerGet  6128
;;; gen.c:5909:genNearPointerGet *{*
;; ***	genNearPointerGet  5910
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerGet  5926
;;	694 register type nRegs=1
;;; gen.c:5743:genUnpackBits *{*
;; ***	genUnpackBits  5744
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:5766:genUnpackBits
_00119_DS_
	.line	57; "fun.c"	}while(P01==0);
	JBSET	_P0bits,1
;; >>> gen.c:5767:genUnpackBits
;; ***	popGetLabel  key=11, label offset 8
	GOTO	_00119_DS_
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	58; "fun.c"	P01=0;   
	BCLR	_P0bits,1
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	59; "fun.c"	P00=1;    
	BSET	_P0bits,0
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6127:genPointerGet *{*
;; ***	genPointerGet  6128
;;; gen.c:5909:genNearPointerGet *{*
;; ***	genNearPointerGet  5910
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerGet  5926
;;	694 register type nRegs=1
;;; gen.c:5743:genUnpackBits *{*
;; ***	genUnpackBits  5744
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:5766:genUnpackBits
_00121_DS_
	.line	63; "fun.c"	}while(P01==0); 
	JBSET	_P0bits,1
;; >>> gen.c:5767:genUnpackBits
;; ***	popGetLabel  key=13, label offset 8
	GOTO	_00121_DS_
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	64; "fun.c"	P01=0;    
	BCLR	_P0bits,1
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2523:genEndFunction *{*
;; ***	genEndFunction  2525
	RETURN	
; exit point of _i2cout

;***
;  pBlock Stats: dbName = C
;***
;entry:  _i2cint	;Function start
; 2 exit points
;has an exit
;; Starting pCode block
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2339:genFunction *{*
;; ***	genFunction  2341 curr label offset=0previous max_key=0 
_i2cint	;Function start
; 2 exit points
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6910:genAssign *{*
;; ***	genAssign  6911
;; ***	aopForSym 315
;;	327 sym->rname = _DDR0, size = 1
;; 	line = 6920 result AOP_DIR=_DDR0, size=1, left -=-, size=0, right AOP_LIT=0x08, size=1
;; ***	genAssign  7006
;; >>> gen.c:7013:genAssign
	.line	27; "fun.c"	DDR0 = 0X08;
	MOVAI	0x08
;; >>> gen.c:7015:genAssign
;;	1009
;;	1028  _DDR0   offset=0
	MOVRA	_DDR0
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	28; "fun.c"	P00 = 1;
	BSET	_P0bits,0
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6669:genPointerSet *{*
;; ***	genPointerSet  6670
;;; gen.c:6488:genNearPointerSet *{*
;; ***	genNearPointerSet  6489
;;	613
;;	aopForRemat 392
;;	418: rname _P0bits, val 0, const = 0
;; ***	genNearPointerSet  6504
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; 	line = 6506 result AOP_PCODE=_P0bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;;; gen.c:6214:genPackBits *{*
;; ***	genPackBits  6215
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_P0bits
;; >>> gen.c:6240:genPackBits
	.line	29; "fun.c"	P00 = 0;
	BCLR	_P0bits,0
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2523:genEndFunction *{*
;; ***	genEndFunction  2525
	RETURN	
; exit point of _i2cint
;;; gen.c:7409:genpic14Code *{*


;	code size estimation:
;	   38+    0 =    38 instructions (   76 byte)

	end
