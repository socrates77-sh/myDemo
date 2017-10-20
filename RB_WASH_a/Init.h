#ifndef _Init_h_
#define _Init_h_


#ifdef	Init_Global
#define	Init_EXT
#else
#define Init_EXT extern
#endif 

void init(void);

void ClrrRAM(void);
#endif


