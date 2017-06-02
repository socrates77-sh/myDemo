pcode dump


	New pBlock

internal pblock, dbName =M
;; Starting pCode block
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2339:genFunction *{*
;; ***	genFunction  2341 curr label offset=0previous max_key=0 
_main	;Function start
; 2 exit points
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2085:genCall *{*
;; ***	genCall  2087
;;; gen.c:1800:saveRegisters *{*
;; ***	saveRegisters  1802
;; >>> gen.c:2174:genCall
	.line	9; "main.c"	i2cint();     
	CALL	_i2cint
;;; gen.c:1844:unsaveRegisters *{*
;; ***	unsaveRegisters  1846
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6910:genAssign *{*
;; ***	genAssign  6911
;; ***	aopForSym 315
;;	327 sym->rname = _i, size = 1
;; 	line = 6920 result AOP_DIR=_i, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7006
;; >>> gen.c:7018:genAssign
;;	1009
;;	1028  _i   offset=0
_00106_DS_
	.line	12; "main.c"	for(i=0x00;i<=127;++i)
	CLRR	_i
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:3546:genCmpGt *{*
;; ***	genCmpGt  3547
;; ***	aopForSym 315
;;	327 sym->rname = _i, size = 1
;;; gen.c:3293:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/3)
;;unsigned compare: left >= lit(0x80=128), size=1
;; >>> gen.c:3264:pic14_mov2w_regOrLit
_00108_DS_
	MOVAI	0x80
;; >>> gen.c:3431:genCmp
;;	1009
;;	1028  _i   offset=0
	RSUBAR	_i
;;; gen.c:3236:genSkipc *{*
;; >>> gen.c:3241:genSkipc
	JBCLR	STATUS,0
;; >>> gen.c:3245:genSkipc
;; ***	popGetLabel  key=2, label offset 4
	GOTO	_00106_DS_
;;genSkipc:3246: created from rifx:0022608C
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2315:resultRemat *{*
;; ***	genPlus  576
;;; genarith.c:577:genPlus *{*
;;	613
;;	aopForRemat 392
;;	418: rname _table, val 0, const = 0
;; ***	aopForSym 315
;;	327 sym->rname = _i, size = 1
;;	694 register type nRegs=2
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_table
;; 	line = 583 result AOP_REG=r0x1002, size=2, left AOP_PCODE=_table, size=2, right AOP_DIR=_i, size=1
;;; genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_REG, left AOP_PCODE, right AOP_DIR
;; ***	genPlus  682
;;	833: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_table
;; >>> genarith.c:691:genPlus
;;	1009
;;	1028  _i   offset=0
	.line	14; "main.c"	j=table[i]; 
	MOVAR	_i
;; >>> genarith.c:700:genPlus
	ADDAI	(_table + 0)
;; >>> genarith.c:701:genPlus
;;	1108 rIdx = r0x1002 
	MOVRA	r0x1002
;; >>> genarith.c:764:genPlus
	MOVAI	high (_table + 0)
;; >>> genarith.c:765:genPlus
	JBCLR	STATUS,0
;; >>> genarith.c:766:genPlus
	ADDAI	0x01
;; >>> genarith.c:767:genPlus
;;	1108 rIdx = r0x1003 
	MOVRA	r0x1003
;;; gen.c:2315:resultRemat *{*
;;; gen.c:6127:genPointerGet *{*
;; ***	genPointerGet  6128
;;; gen.c:6074:genConstPointerGet *{*
;; ***	genConstPointerGet  6075
;;	694 register type nRegs=2
;; ***	aopForSym 315
;;	327 sym->rname = _j, size = 1
;; 	line = 6079 result AOP_DIR=_j, size=1, left AOP_REG=r0x1002, size=2, right -=-, size=0
;; 	 6081 getting const pointer
;;; gen.c:1342:mov2w_op *{*
;; ***	mov2w  1380  offset=0
;; >>> gen.c:1385:mov2w
;;	1108 rIdx = r0x1002 
	MOVAR	r0x1002
;; >>> gen.c:6097:genConstPointerGet
;; ***	popRegFromIdx,1042  , rIdx=0x1e
	MOVRA	STK01
;;; gen.c:1342:mov2w_op *{*
;; ***	mov2w  1380  offset=1
;; >>> gen.c:1385:mov2w
;;	1108 rIdx = r0x1003 
	MOVAR	r0x1003
;; >>> gen.c:6099:genConstPointerGet
;; ***	popRegFromIdx,1042  , rIdx=0x1f
	MOVRA	STK00
;; >>> gen.c:6100:genConstPointerGet
	MOVAI	0x80
;; >>> gen.c:1434:call_libraryfunc
	CALL	__gptrget1
;; >>> gen.c:1392:movwf
;;	1009
;;	1028  _j   offset=0
	MOVRA	_j
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2085:genCall *{*
;; ***	genCall  2087
;;; gen.c:1800:saveRegisters *{*
;; ***	saveRegisters  1802
;; >>> gen.c:2174:genCall
	.line	15; "main.c"	i2cout(); 
	CALL	_i2cout
;;; gen.c:1844:unsaveRegisters *{*
;; ***	unsaveRegisters  1846
;;; gen.c:2315:resultRemat *{*
;; ***	genPlus  576
;;; genarith.c:577:genPlus *{*
;; ***	aopForSym 315
;;	327 sym->rname = _i, size = 1
;; 	line = 583 result AOP_DIR=_i, size=1, left AOP_DIR=_i, size=1, right AOP_LIT=0x01, size=1
;;; genarith.c:142:genPlusIncr *{*
;; ***	genPlusIncr  144
;; 	result AOP_DIR, left AOP_DIR, right AOP_LIT
;; 	genPlusIncr  156
;; >>> genarith.c:168:genPlusIncr
;;	1009
;;	1028  _i   offset=0
	.line	12; "main.c"	for(i=0x00;i<=127;++i)
	INCR	_i
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2777:genGoto *{*
;; >>> gen.c:2779:genGoto
;; ***	popGetLabel  key=4, label offset 4
	GOTO	_00108_DS_
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2759:genLabel *{*
;; ***	genLabel  2762
;;; gen.c:2315:resultRemat *{*
;;; gen.c:2523:genEndFunction *{*
;; ***	genEndFunction  2525
	RETURN	
; exit point of _main
