;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.8.0 #5117 (Jun 26 2008) (UNIX)
; This file was generated Tue May 19 16:57:15 2009
;--------------------------------------------------------
	.module main2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _KR
	.globl _itoa
	.globl _init
	.globl _printf
	.globl _putchar
	.globl _wczytaj
	.globl _getchar
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _KR_PARM_4
	.globl _KR_PARM_3
	.globl _KR_PARM_2
	.globl _i
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_i::
	.ds 2
_wczytaj_temp_1_1:
	.ds 3
_itoa_n_1_1:
	.ds 2
_itoa_buff_1_1:
	.ds 3
_itoa_sloc0_1_0:
	.ds 3
_KR_PARM_2:
	.ds 2
_KR_PARM_3:
	.ds 3
_KR_PARM_4:
	.ds 2
_KR_wzorzec_1_1:
	.ds 3
_KR_d_1_1:
	.ds 2
_KR_hx_1_1:
	.ds 2
_KR_hy_1_1:
	.ds 2
_KR_j_1_1:
	.ds 2
_KR_count_1_1:
	.ds 2
_main_x_1_1:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;znak                      Allocated to registers 
;------------------------------------------------------------
;	main2.c:8: char getchar()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	main2.c:11: while(RI==0);
00101$:
;	main2.c:12: RI=0;	
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	main2.c:13: znak = SBUF;
	mov	dpl,_SBUF
;	main2.c:14: return znak;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wczytaj'
;------------------------------------------------------------
;k                         Allocated to registers r7 r0 
;max                       Allocated to registers r2 r3 
;temp                      Allocated with name '_wczytaj_temp_1_1'
;------------------------------------------------------------
;	main2.c:17: char* wczytaj()
;	-----------------------------------------
;	 function wczytaj
;	-----------------------------------------
_wczytaj:
;	main2.c:20: int max=1024;
	mov	r2,#0x00
	mov	r3,#0x04
;	main2.c:21: char *temp=(char*)malloc(sizeof(char)*1024);
	mov	dptr,#0x0400
	push	ar2
	push	ar3
	lcall	_malloc
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
	mov	_wczytaj_temp_1_1,r4
	mov	(_wczytaj_temp_1_1 + 1),r5
	mov	(_wczytaj_temp_1_1 + 2),#0x00
;	main2.c:22: while((temp[k]=getchar())!='#')
	mov	r7,#0x00
	mov	r0,#0x00
00103$:
	mov	a,r7
	add	a,_wczytaj_temp_1_1
	mov	r1,a
	mov	a,r0
	addc	a,(_wczytaj_temp_1_1 + 1)
	mov	r4,a
	mov	r5,(_wczytaj_temp_1_1 + 2)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar7
	push	ar0
	push	ar1
	lcall	_getchar
	mov	r6,dpl
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r1
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	__gptrput
	cjne	r6,#0x23,00112$
	sjmp	00105$
00112$:
;	main2.c:24: ++k;
	inc	r7
	cjne	r7,#0x00,00113$
	inc	r0
00113$:
;	main2.c:25: if(k>=max)
	clr	c
	mov	a,r7
	subb	a,r2
	mov	a,r0
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00103$
;	main2.c:27: max*=2;
	mov	a,r3
	xch	a,r2
	add	a,acc
	xch	a,r2
	rlc	a
	mov	r3,a
;	main2.c:28: realloc(temp,max);
	mov	_realloc_PARM_2,r2
	mov	(_realloc_PARM_2 + 1),r3
	mov	dpl,_wczytaj_temp_1_1
	mov	dph,(_wczytaj_temp_1_1 + 1)
	mov	b,(_wczytaj_temp_1_1 + 2)
	push	ar2
	push	ar3
	push	ar7
	push	ar0
	lcall	_realloc
	pop	ar0
	pop	ar7
	pop	ar3
	pop	ar2
	sjmp	00103$
00105$:
;	main2.c:31: temp[k]='\0';
	mov	dpl,r1
	mov	dph,r4
	mov	b,r5
	clr	a
	lcall	__gptrput
;	main2.c:32: return temp;
	mov	dpl,_wczytaj_temp_1_1
	mov	dph,(_wczytaj_temp_1_1 + 1)
	mov	b,(_wczytaj_temp_1_1 + 2)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;znak                      Allocated to registers 
;------------------------------------------------------------
;	main2.c:35: void putchar(char znak)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	mov	_SBUF,dpl
;	main2.c:38: while(TI==0);	
00101$:
;	main2.c:39: TI = 0;	
	jbc	_TI,00108$
	sjmp	00101$
00108$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;temp                      Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main2.c:42: void printf(char *temp)
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
_printf:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	main2.c:44: while(temp[i]!=0)
	clr	a
	mov	_i,a
	mov	(_i + 1),a
;	main2.c:45: {
00101$:
	mov	a,_i
	add	a,r2
	mov	r5,a
	mov	a,(_i + 1)
	addc	a,r3
	mov	r6,a
	mov	ar7,r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	jz	00103$
;	main2.c:47: i++;
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_putchar
	pop	ar4
	pop	ar3
	pop	ar2
;	main2.c:48: }
	inc	_i
	clr	a
	cjne	a,_i,00101$
	inc	(_i + 1)
	sjmp	00101$
00103$:
;	main2.c:50: }
	mov	dpl,#0x0A
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'init'
;------------------------------------------------------------
;------------------------------------------------------------
;	main2.c:54: {
;	-----------------------------------------
;	 function init
;	-----------------------------------------
_init:
;	main2.c:56: TMOD &= 0x0f;
	mov	_SCON,#0x50
;	main2.c:57: TMOD |= 0x20;
	anl	_TMOD,#0x0F
;	main2.c:58: TH1=TL1=0xFD;	
	orl	_TMOD,#0x20
;	main2.c:59: PCON=0x80;
	mov	_TL1,#0xFD
	mov	_TH1,#0xFD
;	main2.c:60: TCON=0x40; 
	mov	_PCON,#0x80
;	main2.c:61: RI=0;
	mov	_TCON,#0x40
;	main2.c:62: SBUF=0x0;
	clr	_RI
;	main2.c:63: TI=0;
	mov	_SBUF,#0x00
;	main2.c:64: putchar(' ');
	clr	_TI
;	main2.c:65: 
	mov	dpl,#0x20
	ljmp	_putchar
;------------------------------------------------------------
;Allocation info for local variables in function 'itoa'
;------------------------------------------------------------
;n                         Allocated with name '_itoa_n_1_1'
;temp                      Allocated to registers r4 r5 
;k                         Allocated to registers r4 r5 
;buff                      Allocated with name '_itoa_buff_1_1'
;sloc0                     Allocated with name '_itoa_sloc0_1_0'
;------------------------------------------------------------
;	main2.c:69: {
;	-----------------------------------------
;	 function itoa
;	-----------------------------------------
_itoa:
	mov	_itoa_n_1_1,dpl
	mov	(_itoa_n_1_1 + 1),dph
;	main2.c:71: char *buff;
	mov	r4,_itoa_n_1_1
	mov	r5,(_itoa_n_1_1 + 1)
;	main2.c:73: {
	mov	a,_itoa_n_1_1
	orl	a,(_itoa_n_1_1 + 1)
	jnz	00115$
;	main2.c:75: buff[0]='0';
	mov	dptr,#0x0002
	lcall	_malloc
	mov	r6,dpl
	mov	r7,dph
	mov	_itoa_buff_1_1,r6
	mov	(_itoa_buff_1_1 + 1),r7
	mov	(_itoa_buff_1_1 + 2),#0x00
;	main2.c:76: buff[1]=0;
	mov	dpl,_itoa_buff_1_1
	mov	dph,(_itoa_buff_1_1 + 1)
	mov	b,(_itoa_buff_1_1 + 2)
	mov	a,#0x30
	lcall	__gptrput
;	main2.c:77: }
	mov	a,#0x01
	add	a,_itoa_buff_1_1
	mov	r1,a
	clr	a
	addc	a,(_itoa_buff_1_1 + 1)
	mov	r6,a
	mov	r7,(_itoa_buff_1_1 + 2)
	mov	dpl,r1
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
	ljmp	00106$
;	main2.c:81: {
00115$:
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00118$
;	main2.c:83: k++;
	mov	__divsint_PARM_2,#0x0A
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,r4
	mov	dph,r5
	push	ar6
	push	ar7
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar7
	pop	ar6
;	main2.c:84: }
	inc	r6
	cjne	r6,#0x00,00101$
	inc	r7
	sjmp	00101$
00118$:
	mov	ar4,r6
	mov	ar5,r7
;	main2.c:86: buff[k]=0;
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_malloc
	mov	r0,dpl
	mov	r1,dph
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	mov	_itoa_buff_1_1,r0
	mov	(_itoa_buff_1_1 + 1),r1
	mov	(_itoa_buff_1_1 + 2),#0x00
;	main2.c:87: for(k;k>0;--k)
	mov	a,r6
	add	a,_itoa_buff_1_1
	mov	r6,a
	mov	a,r7
	addc	a,(_itoa_buff_1_1 + 1)
	mov	r7,a
	mov	r0,(_itoa_buff_1_1 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	clr	a
	lcall	__gptrput
;	main2.c:88: {
00107$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	main2.c:90: n/=10;
	mov	a,r4
	add	a,#0xff
	mov	r6,a
	mov	a,r5
	addc	a,#0xff
	mov	r7,a
	mov	a,r6
	add	a,_itoa_buff_1_1
	mov	_itoa_sloc0_1_0,a
	mov	a,r7
	addc	a,(_itoa_buff_1_1 + 1)
	mov	(_itoa_sloc0_1_0 + 1),a
	mov	(_itoa_sloc0_1_0 + 2),(_itoa_buff_1_1 + 2)
	mov	__modsint_PARM_2,#0x0A
	clr	a
	mov	(__modsint_PARM_2 + 1),a
	mov	dpl,_itoa_n_1_1
	mov	dph,(_itoa_n_1_1 + 1)
	push	ar6
	push	ar7
	lcall	__modsint
	mov	r3,dpl
	mov	a,#0x30
	add	a,r3
	mov	dpl,_itoa_sloc0_1_0
	mov	dph,(_itoa_sloc0_1_0 + 1)
	mov	b,(_itoa_sloc0_1_0 + 2)
	lcall	__gptrput
;	main2.c:91: }
	mov	__divsint_PARM_2,#0x0A
	clr	a
	mov	(__divsint_PARM_2 + 1),a
	mov	dpl,_itoa_n_1_1
	mov	dph,(_itoa_n_1_1 + 1)
	lcall	__divsint
	mov	_itoa_n_1_1,dpl
	mov	(_itoa_n_1_1 + 1),dph
	pop	ar7
	pop	ar6
;	main2.c:88: {
	mov	ar4,r6
	mov	ar5,r7
	sjmp	00107$
00106$:
;	main2.c:94: }
	mov	dpl,_itoa_buff_1_1
	mov	dph,(_itoa_buff_1_1 + 1)
	mov	b,(_itoa_buff_1_1 + 2)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'KR'
;------------------------------------------------------------
;m                         Allocated with name '_KR_PARM_2'
;tekst                     Allocated with name '_KR_PARM_3'
;n                         Allocated with name '_KR_PARM_4'
;wzorzec                   Allocated with name '_KR_wzorzec_1_1'
;d                         Allocated with name '_KR_d_1_1'
;hx                        Allocated with name '_KR_hx_1_1'
;hy                        Allocated with name '_KR_hy_1_1'
;i                         Allocated to registers r7 r0 
;j                         Allocated with name '_KR_j_1_1'
;count                     Allocated with name '_KR_count_1_1'
;------------------------------------------------------------
;	main2.c:98: {
;	-----------------------------------------
;	 function KR
;	-----------------------------------------
_KR:
	mov	_KR_wzorzec_1_1,dpl
	mov	(_KR_wzorzec_1_1 + 1),dph
	mov	(_KR_wzorzec_1_1 + 2),b
;	main2.c:102: d = (d<<1);
	mov	_KR_d_1_1,#0x01
	clr	a
	mov	(_KR_d_1_1 + 1),a
	mov	r7,#0x01
	mov	r0,#0x00
00107$:
	clr	c
	mov	a,r7
	subb	a,_KR_PARM_2
	mov	a,r0
	xrl	a,#0x80
	mov	b,(_KR_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	main2.c:103: 
	mov	a,(_KR_d_1_1 + 1)
	xch	a,_KR_d_1_1
	add	a,acc
	xch	a,_KR_d_1_1
	rlc	a
	mov	(_KR_d_1_1 + 1),a
;	main2.c:102: d = (d<<1);
	inc	r7
	cjne	r7,#0x00,00107$
	inc	r0
	sjmp	00107$
00110$:
;	main2.c:105: {
	clr a
	mov _KR_hx_1_1,a
	mov (_KR_hx_1_1 + 1),a
	mov _KR_hy_1_1,a
	mov (_KR_hy_1_1 + 1),a
	mov r0,a
	mov r5,a
00111$:
	clr	c
	mov	a,r0
	subb	a,_KR_PARM_2
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_KR_PARM_2 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
;	main2.c:107: hy = ((hy<<1) + tekst[i]);
	mov	a,_KR_hx_1_1
	add	a,_KR_hx_1_1
	mov	r6,a
	mov	a,(_KR_hx_1_1 + 1)
	rlc	a
	mov	r2,a
	mov	a,r0
	add	a,_KR_wzorzec_1_1
	mov	r3,a
	mov	a,r5
	addc	a,(_KR_wzorzec_1_1 + 1)
	mov	r4,a
	mov	r7,(_KR_wzorzec_1_1 + 2)
	mov	dpl,r3
	mov	dph,r4
	mov	b,r7
	lcall	__gptrget
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,r6
	mov	_KR_hx_1_1,a
	mov	a,r4
	addc	a,r2
	mov	(_KR_hx_1_1 + 1),a
;	main2.c:108: }
	mov	a,_KR_hy_1_1
	add	a,_KR_hy_1_1
	mov	r2,a
	mov	a,(_KR_hy_1_1 + 1)
	rlc	a
	mov	r3,a
	mov	a,r0
	add	a,_KR_PARM_3
	mov	r4,a
	mov	a,r5
	addc	a,(_KR_PARM_3 + 1)
	mov	r6,a
	mov	r7,(_KR_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r4
	add	a,r2
	mov	_KR_hy_1_1,a
	mov	a,r6
	addc	a,r3
	mov	(_KR_hy_1_1 + 1),a
;	main2.c:105: {
	inc	r0
	cjne	r0,#0x00,00111$
	inc	r5
	sjmp	00111$
00114$:
;	main2.c:113: {
	mov	r2,_KR_PARM_2
	mov	r3,(_KR_PARM_2 + 1)
	mov	a,_KR_PARM_4
	clr	c
	subb	a,r2
	mov	r4,a
	mov	a,(_KR_PARM_4 + 1)
	subb	a,r3
	mov	r5,a
	clr	a
	mov	_KR_count_1_1,a
	mov	(_KR_count_1_1 + 1),a
	mov	_KR_j_1_1,a
	mov	(_KR_j_1_1 + 1),a
00104$:
	clr	c
	mov	a,r4
	subb	a,_KR_j_1_1
	mov	a,r5
	xrl	a,#0x80
	mov	b,(_KR_j_1_1 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00131$
	ljmp	00106$
00131$:
;	main2.c:115: {
	mov	a,_KR_hy_1_1
	cjne	a,_KR_hx_1_1,00102$
	mov	a,(_KR_hy_1_1 + 1)
	cjne	a,(_KR_hx_1_1 + 1),00102$
	mov	a,_KR_j_1_1
	add	a,_KR_PARM_3
	mov	_memcmp_PARM_2,a
	mov	a,(_KR_j_1_1 + 1)
	addc	a,(_KR_PARM_3 + 1)
	mov	(_memcmp_PARM_2 + 1),a
	mov	(_memcmp_PARM_2 + 2),(_KR_PARM_3 + 2)
	mov	_memcmp_PARM_3,r2
	mov	(_memcmp_PARM_3 + 1),r3
	mov	dpl,_KR_wzorzec_1_1
	mov	dph,(_KR_wzorzec_1_1 + 1)
	mov	b,(_KR_wzorzec_1_1 + 2)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_memcmp
	mov	a,dpl
	mov	b,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	orl	a,b
	jnz	00102$
;	main2.c:117: printf(itoa(count));
	inc	_KR_count_1_1
	clr	a
	cjne	a,_KR_count_1_1,00135$
	inc	(_KR_count_1_1 + 1)
00135$:
;	main2.c:118: }
	mov	dpl,_KR_count_1_1
	mov	dph,(_KR_count_1_1 + 1)
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_itoa
	lcall	_printf
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00102$:
;	main2.c:120: ++j;
	push	ar4
	push	ar5
	mov	a,_KR_j_1_1
	add	a,_KR_PARM_3
	mov	r6,a
	mov	a,(_KR_j_1_1 + 1)
	addc	a,(_KR_PARM_3 + 1)
	mov	r7,a
	mov	r0,(_KR_PARM_3 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	__mulint_PARM_2,_KR_d_1_1
	mov	(__mulint_PARM_2 + 1),(_KR_d_1_1 + 1)
	mov	dpl,r6
	mov	dph,r7
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_KR_hy_1_1
	clr	c
	subb	a,r6
	mov	r6,a
	mov	a,(_KR_hy_1_1 + 1)
	subb	a,r7
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	a,r2
	add	a,_KR_j_1_1
	mov	r0,a
	mov	a,r3
	addc	a,(_KR_j_1_1 + 1)
	mov	r1,a
	mov	a,r0
	add	a,_KR_PARM_3
	mov	r0,a
	mov	a,r1
	addc	a,(_KR_PARM_3 + 1)
	mov	r1,a
	mov	r4,(_KR_PARM_3 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r0
	add	a,r6
	mov	_KR_hy_1_1,a
	mov	a,r4
	addc	a,r7
	mov	(_KR_hy_1_1 + 1),a
;	main2.c:121: }
	inc	_KR_j_1_1
	clr	a
	cjne	a,_KR_j_1_1,00136$
	inc	(_KR_j_1_1 + 1)
00136$:
	pop	ar5
	pop	ar4
	ljmp	00104$
00106$:
;	main2.c:123: }
	mov	dpl,_KR_count_1_1
	mov	dph,(_KR_count_1_1 + 1)
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;x                         Allocated with name '_main_x_1_1'
;y                         Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	main2.c:126: {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main2.c:130: while(1)
	lcall	_init
;	main2.c:131: {
00102$:
;	main2.c:133: y=wczytaj();
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_printf
;	main2.c:134: printf(y);
	lcall	_wczytaj
;	main2.c:135: 
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	push	ar2
	push	ar3
	push	ar4
	lcall	_printf
;	main2.c:137: x=wczytaj();
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_printf
;	main2.c:138: printf(x);
	lcall	_wczytaj
;	main2.c:139: 
	mov	_main_x_1_1,dpl
	mov	(_main_x_1_1 + 1),dph
	mov	(_main_x_1_1 + 2),b
	lcall	_printf
;	main2.c:141: free(x);
	mov	dpl,_main_x_1_1
	mov	dph,(_main_x_1_1 + 1)
	mov	b,(_main_x_1_1 + 2)
	lcall	_strlen
	mov	r0,dpl
	mov	r1,dph
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	push	ar2
	push	ar3
	push	ar4
	push	ar0
	push	ar1
	lcall	_strlen
	mov	_KR_PARM_4,dpl
	mov	(_KR_PARM_4 + 1),dph
	pop	ar1
	pop	ar0
	pop	ar4
	pop	ar3
	pop	ar2
	mov	_KR_PARM_2,r0
	mov	(_KR_PARM_2 + 1),r1
	mov	_KR_PARM_3,r2
	mov	(_KR_PARM_3 + 1),r3
	mov	(_KR_PARM_3 + 2),r4
	mov	dpl,_main_x_1_1
	mov	dph,(_main_x_1_1 + 1)
	mov	b,(_main_x_1_1 + 2)
	push	ar2
	push	ar3
	push	ar4
	lcall	_KR
	lcall	_itoa
	lcall	_printf
;	main2.c:142: free(y);
	mov	dpl,_main_x_1_1
	mov	dph,(_main_x_1_1 + 1)
	mov	b,(_main_x_1_1 + 2)
	lcall	_free
	pop	ar4
	pop	ar3
	pop	ar2
;	main2.c:143: }
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_free
;	main2.c:145: }
	ljmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "Podaj tekst:"
	.db 0x00
__str_1:
	.ascii "Podaj wzorzec:"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
