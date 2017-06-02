pcode dump


	New pBlock

code, dbName =C
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

	New pBlock

code, dbName =C
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
