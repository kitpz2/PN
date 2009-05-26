//#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <8051.h>

#define REHASH(a, b, h) ((((h) - (a)*d) << 1) + (b))
int i;
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


void init()
{
	SCON=0x50;
	TMOD &= 0x0f;
	TMOD |= 0x20;
	TH1=TL1=0xFD;	
	PCON=0x80;
	TCON=0x40; 
	RI=0;
	SBUF=0x0;
	TI=0;
	putchar(' ');
	
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
      {
        count++;
        printf(itoa(count));
      }
      hy = REHASH(tekst[j], tekst[j + m], hy);
      ++j;
   }
   return count;
}

int main()
{
    char *x;	
    char *y;
    init();
	while(1)
	{
		printf("Podaj tekst:");
		y=wczytaj();
		printf(y);
	
		printf("Podaj wzorzec:");
    	x=wczytaj();
    	printf(x);

    	printf(itoa(KR(x,strlen(x),y, strlen(y))));
    	free(x);
    	free(y);
    }
    return 0;
}
