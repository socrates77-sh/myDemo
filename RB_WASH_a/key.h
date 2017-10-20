#ifndef _key_h_
#define _key_h_


#ifdef	key_Global
#define	key_EXT
#else
#define key_EXT extern
#endif


extern volatile bitn	Flag2;
#define	fKeyT		Flag2.bit0
#define	fWorkON		Flag2.bit1
#define	fWorkONInit		Flag2.bit2

void KeyScan(void);
#endif 

