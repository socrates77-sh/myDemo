	nolist
;/****************************************************************
;	Function : Define const
;*****************************************************************/
#ifndef _TM1628_H_
#define _TM1628_H_

;/*******************************************************************************
;数码管段定义
;*******************************************************************************/
#define	SegA				0x40 	;// 
#define	SegB				0x10	;//  
#define	SegC				0x04 	;// 
#define	SegD				0x01 	;// 
#define	SegE				0x80 	;// 
#define	SegF				0x20 	;// 
#define	SegG				0x08 	;// 
#define	SegDp				0x02 	;// 
;/*******************************************************************************
;数码管段定义
;*******************************************************************************/
#define	DZero		(SegA|SegB|SegC|SegD|SegE|SegF)
#define	DOne		(SegB|SegC)
#define	DTwo		(SegA|SegB|SegD|SegE|SegG)
#define	DThree		(SegA|SegB|SegC|SegD|SegG)
#define	DFour		(SegB|SegC|SegF|SegG)
#define	DFive		(SegA|SegC|SegD|SegF|SegG)
#define	DSix		(SegA|SegC|SegD|SegE|SegF|SegG)
#define	DSeven		(SegA|SegB|SegC)
#define	DEight		(SegA|SegB|SegC|SegD|SegE|SegF|SegG)
#define	DNine		(SegA|SegB|SegC|SegD|SegF|SegG)
#define	DLetterA	(SegA|SegB|SegC|SegE|SegF|SegG)
#define	DLetterb	(SegC|SegD|SegE|SegF|SegG)
#define	DLetterC	(SegA|SegD|SegE|SegF)
#define	DLetterd	(SegB|SegC|SegD|SegE|SegG)
#define	DLetterE	(SegA|SegD|SegE|SegF|SegG)
#define	DLetterF	(SegA|SegE|SegF|SegG)
#define	DLetterP	(SegA|SegB|SegE|SegF|SegG)
#define	DLettert	(SegD|SegE|SegF|SegG)
#define	DLetterV	(SegC|SegD|SegE)


#define	pDIO		IOP1,5
#define	pCLK		IOP1,4
#define	pSTB		IOP0,4
#define	cDIO		OEP1,5
#define	cCLK		OEP1,4
#define	cSTB		OEP0,4
#define	CLIGHT0		0x88
#define	CLIGHT1		0x89
#define	CLIGHT2		0x8a
#define	CLIGHT3		0x8b
#define	CLIGHT4		0x8c
#define	CLIGHT5		0x8d
#define	CLIGHT6		0x8e
#define	CLIGHT7		0x8f
#define	CLIGHTOFF	0x80
;/*******************************************************************************
;数码管段定义
;*******************************************************************************/
#define	CKEY1		0x02
#define	CKEY2		0x20
#define	CKEY3		0x04
#define	CKEY4		0x08
#define	CKEY5		0x01

#define	DIGH	0
#define	DIGMH	1
#define	DIGML	2
#define	DIGL	3

#endif
LIST

