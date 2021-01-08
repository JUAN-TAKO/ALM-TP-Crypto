#include <stdio.h>
#include <stdlib.h>
#include<math.h>

/* Utilisation: donnez l'entier � chiffrer m puis la cl� (exp,n)*/
/* attention m doit �tre inf�rieur � n */
/* le r�sultat est dans code */

/* Exemples de cl�s: (565, 283189) , (140313, 283189) */
/*                   (13,77), (37 77) */

typedef long int l_int;

l_int chiffrement(l_int m, l_int exp, l_int n){
	l_int code=1;
	while (exp>0)
	{
		if ((exp&1)>0) 
		{
			code= (code * m)%n;
		}	
		exp=exp>>1;
		m= (m*m)%n;
	}
	return code;
}
l_int chiffrementUAL(l_int m, l_int exp, l_int n){
	l_int code=1;
	while (exp > 0)
	{
		printf("code: %ld\n", code);
		printf("m: %ld\n", m);
		printf("exp: %ld\n", exp);
		printf("mod: %ld\n", n);

		if ((exp&1)>0)
		{
			code = (code * m);
			while (code-n > 0)
				code = code-n;
		}
		
		exp=exp>>1;
		m= (m*m);
		while(m-n > 0)
			m = m-n;
		
	}
	printf("code: %ld\n", code);
	printf("m: %ld\n", m);
	printf("exp: %ld\n", exp);
	printf("mod: %ld\n", n);
	return code;
}
int main(int argc, char * argv[])
{
    unsigned long int m,exp,n;
    unsigned long int code;

    if (argc != 4) exit(0);
    sscanf(argv[1], "%ld", &m);
    sscanf(argv[2], "%ld", &exp);
    sscanf(argv[3], "%ld", &n);
    
	code = chiffrementUAL(m, exp, n);
	printf("Resultat chiffrement %ld\n",  code);
	return 0;
}
