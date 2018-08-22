#include"mc30p6080_1.h"

void func(int t)
{
	int i;
	i = t;
	for(i = 0; i<10; i++)
		T1CR = T1CR+1;
}

void main()
{   
 		func(1);
}







