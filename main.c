//#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <8051.h>

#define W1 0xDF
#define W2 0xEF
#define W3 0x7F
#define W4 0xBF
#define SEG_A 0x02
#define SEG_B 0x04
#define SEG_C 0x40
#define SEG_D 0x10
#define SEG_E 0x08
#define SEG_F 0x01
#define SEG_G 0x20
#define SEG_H 0x80

#define PUSTY 0x00
#define C_1 SEG_B|SEG_C
#define C_2 SEG_A|SEG_B|SEG_G|SEG_E|SEG_D
#define C_3 SEG_A|SEG_B|SEG_G|SEG_C|SEG_D
#define C_4 SEG_F|SEG_B|SEG_G|SEG_C
#define C_5 SEG_A|SEG_F|SEG_G|SEG_C|SEG_D
#define C_6 SEG_A|SEG_F|SEG_E|SEG_D|SEG_C|SEG_G
#define C_7 SEG_A|SEG_B|SEG_C
#define C_8 SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F|SEG_G
#define C_9 SEG_A|SEG_B|SEG_C|SEG_D|SEG_F|SEG_G
#define C_0 SEG_A|SEG_B|SEG_C|SEG_D|SEG_E|SEG_F
#define L_A SEG_E|SEG_F|SEG_A|SEG_B|SEG_C|SEG_G
#define L_B SEG_F|SEG_E|SEG_D|SEG_C|SEG_G
#define L_C SEG_A|SEG_F|SEG_E|SEG_D
#define L_D SEG_B|SEG_C|SEG_D|SEG_E|SEG_G
#define L_E SEG_A|SEG_F|SEG_E|SEG_D|SEG_G
#define L_F SEG_A|SEG_G|SEG_F|SEG_E

#define REHASH(a, b, h) ((((h) - (a)*d) << 1) + (b))
unsigned char cyfry[10]={C_0,C_1,C_2,C_3,C_4,C_5,C_6,C_7,C_8,C_9};
int i, done = 0;
int iter=0;
int count=0;
int t2=0;

xdata at 0x8000 unsigned char U15;
xdata at 0xFFFF unsigned char U10;


char getchar()
{
	char znak;		
	while(RI==0);
	RI=0;	
	znak = SBUF;
	return znak;
}

char* wczytaj()
{
	int k=0;
	int max=1024;
	char *temp=(char*)malloc(sizeof(char)*1024);
	while((temp[k]=getchar())!='#')
	{
		++k;
		if(k>=max)
		{
			max*=2;
			realloc(temp,max);
		}
	}
	temp[k]='\0';
	return temp;
}

void putchar(char znak)
{	
	SBUF = znak;
	while(TI==0);	
	TI = 0;	
}

void printf(char *temp)
{	i=0;
	while(temp[i]!=0)
	{
		putchar(temp[i]);
		i++;
	}
	putchar('\n');
}

char* itoa(int n)
{
	int temp=n, k=0;
	char *buff;
	if(n==0)
	{
		buff=(char*)malloc(sizeof(char)*2);
		buff[0]='0';
		buff[1]=0;
	}
	else
	{
		while(temp>0)
		{
			temp/=10;
			k++;
		}
		buff=(char*)malloc(sizeof(char)*k+1);
		buff[k]=0;
		for(k;k>0;--k)
		{
			buff[k-1]=n%10+48;
			n/=10;
		}
	}
	return buff;
}

void init_inout()
{
	SCON=0x50;
	TMOD &= 0x0f;
	TMOD |= 0x20;
	TH1=TL1=0xFD;	
	PCON=0x80;
	TCON=0x40; 
	RI=0;
	SBUF=0xf0;
	TI=0;
	putchar(' ');

}

void init_led()
{
	TH0=TL0=0;
	TMOD=0x02;
	TCON=0x10;
	IE=0x82;
}

int KR(char *wzorzec, int m, char *tekst, int n)
{
   int d, hx, hy, i, j, count=0;;

   for (d = i = 1; i < m; ++i)
      d = (d<<1);

   for (hy = hx = i = 0; i < m; ++i)
   {
      hx = ((hx<<1) + wzorzec[i]);
      hy = ((hy<<1) + tekst[i]);
   }

   /* Searching */
   j = 0;
   while (j <= n-m)
   {
      if (hx == hy && memcmp(wzorzec, tekst + j, m) == 0)
        count++;
         //printf("%d ",j);
      hy = REHASH(tekst[j], tekst[j + m], hy);
      ++j;
   }
   return count;
}


void przerwanie1(void) interrupt 1
{
	U10 = 0;
	switch(iter)
	{
	case 0: U15=W1;
		U10=cyfry[(int)count/1000];
		break;
	case 1: U15=W2;
		U10=cyfry[(count/100)%10];
		break;
	case 2: U15=W3;
		U10=cyfry[(count/10)%10];
		break;
	case 3: U15=W4;
		U10=cyfry[count%10];
		break;		
	}
	iter++;
	if(iter>3)
	{
		iter=0;
	}
}

void czekaj(int t)
{
	int w;
	for(w=0;w<t;w++)
	{
	_asm
		nop
	_endasm;
	}
}

int main()
{
    char *x;	
    char *y;
    
    while(1)
    {
	    init_inout();
	    printf('a');
//    	printf(itoa(count));
    	/*count = 1;
		while(count%10!=0)
		{
			init_led();
					
		printf("Podaj tekst:");
		y=wczytaj();
		printf(y);
	
		printf("Podaj wzorzec:");
    	x=wczytaj();
    	printf(x);

    	count=KR(x,strlen(x),y, strlen(y));
    	printf(itoa(KR(x,strlen(x),y, strlen(y))));
    	free(x);
    	free(y);
    	}
    	*/
	}
    printf("koniec");
    return 0;
}
