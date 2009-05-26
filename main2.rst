                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jun 26 2008) (UNIX)
                              4 ; This file was generated Tue May 19 16:57:15 2009
                              5 ;--------------------------------------------------------
                              6 	.module main2
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _KR
                             14 	.globl _itoa
                             15 	.globl _init
                             16 	.globl _printf
                             17 	.globl _putchar
                             18 	.globl _wczytaj
                             19 	.globl _getchar
                             20 	.globl _CY
                             21 	.globl _AC
                             22 	.globl _F0
                             23 	.globl _RS1
                             24 	.globl _RS0
                             25 	.globl _OV
                             26 	.globl _F1
                             27 	.globl _P
                             28 	.globl _PS
                             29 	.globl _PT1
                             30 	.globl _PX1
                             31 	.globl _PT0
                             32 	.globl _PX0
                             33 	.globl _RD
                             34 	.globl _WR
                             35 	.globl _T1
                             36 	.globl _T0
                             37 	.globl _INT1
                             38 	.globl _INT0
                             39 	.globl _TXD
                             40 	.globl _RXD
                             41 	.globl _P3_7
                             42 	.globl _P3_6
                             43 	.globl _P3_5
                             44 	.globl _P3_4
                             45 	.globl _P3_3
                             46 	.globl _P3_2
                             47 	.globl _P3_1
                             48 	.globl _P3_0
                             49 	.globl _EA
                             50 	.globl _ES
                             51 	.globl _ET1
                             52 	.globl _EX1
                             53 	.globl _ET0
                             54 	.globl _EX0
                             55 	.globl _P2_7
                             56 	.globl _P2_6
                             57 	.globl _P2_5
                             58 	.globl _P2_4
                             59 	.globl _P2_3
                             60 	.globl _P2_2
                             61 	.globl _P2_1
                             62 	.globl _P2_0
                             63 	.globl _SM0
                             64 	.globl _SM1
                             65 	.globl _SM2
                             66 	.globl _REN
                             67 	.globl _TB8
                             68 	.globl _RB8
                             69 	.globl _TI
                             70 	.globl _RI
                             71 	.globl _P1_7
                             72 	.globl _P1_6
                             73 	.globl _P1_5
                             74 	.globl _P1_4
                             75 	.globl _P1_3
                             76 	.globl _P1_2
                             77 	.globl _P1_1
                             78 	.globl _P1_0
                             79 	.globl _TF1
                             80 	.globl _TR1
                             81 	.globl _TF0
                             82 	.globl _TR0
                             83 	.globl _IE1
                             84 	.globl _IT1
                             85 	.globl _IE0
                             86 	.globl _IT0
                             87 	.globl _P0_7
                             88 	.globl _P0_6
                             89 	.globl _P0_5
                             90 	.globl _P0_4
                             91 	.globl _P0_3
                             92 	.globl _P0_2
                             93 	.globl _P0_1
                             94 	.globl _P0_0
                             95 	.globl _B
                             96 	.globl _ACC
                             97 	.globl _PSW
                             98 	.globl _IP
                             99 	.globl _P3
                            100 	.globl _IE
                            101 	.globl _P2
                            102 	.globl _SBUF
                            103 	.globl _SCON
                            104 	.globl _P1
                            105 	.globl _TH1
                            106 	.globl _TH0
                            107 	.globl _TL1
                            108 	.globl _TL0
                            109 	.globl _TMOD
                            110 	.globl _TCON
                            111 	.globl _PCON
                            112 	.globl _DPH
                            113 	.globl _DPL
                            114 	.globl _SP
                            115 	.globl _P0
                            116 	.globl _KR_PARM_4
                            117 	.globl _KR_PARM_3
                            118 	.globl _KR_PARM_2
                            119 	.globl _i
                            120 ;--------------------------------------------------------
                            121 ; special function registers
                            122 ;--------------------------------------------------------
                            123 	.area RSEG    (DATA)
                    0080    124 _P0	=	0x0080
                    0081    125 _SP	=	0x0081
                    0082    126 _DPL	=	0x0082
                    0083    127 _DPH	=	0x0083
                    0087    128 _PCON	=	0x0087
                    0088    129 _TCON	=	0x0088
                    0089    130 _TMOD	=	0x0089
                    008A    131 _TL0	=	0x008a
                    008B    132 _TL1	=	0x008b
                    008C    133 _TH0	=	0x008c
                    008D    134 _TH1	=	0x008d
                    0090    135 _P1	=	0x0090
                    0098    136 _SCON	=	0x0098
                    0099    137 _SBUF	=	0x0099
                    00A0    138 _P2	=	0x00a0
                    00A8    139 _IE	=	0x00a8
                    00B0    140 _P3	=	0x00b0
                    00B8    141 _IP	=	0x00b8
                    00D0    142 _PSW	=	0x00d0
                    00E0    143 _ACC	=	0x00e0
                    00F0    144 _B	=	0x00f0
                            145 ;--------------------------------------------------------
                            146 ; special function bits
                            147 ;--------------------------------------------------------
                            148 	.area RSEG    (DATA)
                    0080    149 _P0_0	=	0x0080
                    0081    150 _P0_1	=	0x0081
                    0082    151 _P0_2	=	0x0082
                    0083    152 _P0_3	=	0x0083
                    0084    153 _P0_4	=	0x0084
                    0085    154 _P0_5	=	0x0085
                    0086    155 _P0_6	=	0x0086
                    0087    156 _P0_7	=	0x0087
                    0088    157 _IT0	=	0x0088
                    0089    158 _IE0	=	0x0089
                    008A    159 _IT1	=	0x008a
                    008B    160 _IE1	=	0x008b
                    008C    161 _TR0	=	0x008c
                    008D    162 _TF0	=	0x008d
                    008E    163 _TR1	=	0x008e
                    008F    164 _TF1	=	0x008f
                    0090    165 _P1_0	=	0x0090
                    0091    166 _P1_1	=	0x0091
                    0092    167 _P1_2	=	0x0092
                    0093    168 _P1_3	=	0x0093
                    0094    169 _P1_4	=	0x0094
                    0095    170 _P1_5	=	0x0095
                    0096    171 _P1_6	=	0x0096
                    0097    172 _P1_7	=	0x0097
                    0098    173 _RI	=	0x0098
                    0099    174 _TI	=	0x0099
                    009A    175 _RB8	=	0x009a
                    009B    176 _TB8	=	0x009b
                    009C    177 _REN	=	0x009c
                    009D    178 _SM2	=	0x009d
                    009E    179 _SM1	=	0x009e
                    009F    180 _SM0	=	0x009f
                    00A0    181 _P2_0	=	0x00a0
                    00A1    182 _P2_1	=	0x00a1
                    00A2    183 _P2_2	=	0x00a2
                    00A3    184 _P2_3	=	0x00a3
                    00A4    185 _P2_4	=	0x00a4
                    00A5    186 _P2_5	=	0x00a5
                    00A6    187 _P2_6	=	0x00a6
                    00A7    188 _P2_7	=	0x00a7
                    00A8    189 _EX0	=	0x00a8
                    00A9    190 _ET0	=	0x00a9
                    00AA    191 _EX1	=	0x00aa
                    00AB    192 _ET1	=	0x00ab
                    00AC    193 _ES	=	0x00ac
                    00AF    194 _EA	=	0x00af
                    00B0    195 _P3_0	=	0x00b0
                    00B1    196 _P3_1	=	0x00b1
                    00B2    197 _P3_2	=	0x00b2
                    00B3    198 _P3_3	=	0x00b3
                    00B4    199 _P3_4	=	0x00b4
                    00B5    200 _P3_5	=	0x00b5
                    00B6    201 _P3_6	=	0x00b6
                    00B7    202 _P3_7	=	0x00b7
                    00B0    203 _RXD	=	0x00b0
                    00B1    204 _TXD	=	0x00b1
                    00B2    205 _INT0	=	0x00b2
                    00B3    206 _INT1	=	0x00b3
                    00B4    207 _T0	=	0x00b4
                    00B5    208 _T1	=	0x00b5
                    00B6    209 _WR	=	0x00b6
                    00B7    210 _RD	=	0x00b7
                    00B8    211 _PX0	=	0x00b8
                    00B9    212 _PT0	=	0x00b9
                    00BA    213 _PX1	=	0x00ba
                    00BB    214 _PT1	=	0x00bb
                    00BC    215 _PS	=	0x00bc
                    00D0    216 _P	=	0x00d0
                    00D1    217 _F1	=	0x00d1
                    00D2    218 _OV	=	0x00d2
                    00D3    219 _RS0	=	0x00d3
                    00D4    220 _RS1	=	0x00d4
                    00D5    221 _F0	=	0x00d5
                    00D6    222 _AC	=	0x00d6
                    00D7    223 _CY	=	0x00d7
                            224 ;--------------------------------------------------------
                            225 ; overlayable register banks
                            226 ;--------------------------------------------------------
                            227 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     228 	.ds 8
                            229 ;--------------------------------------------------------
                            230 ; internal ram data
                            231 ;--------------------------------------------------------
                            232 	.area DSEG    (DATA)
   0008                     233 _i::
   0008                     234 	.ds 2
   000A                     235 _wczytaj_temp_1_1:
   000A                     236 	.ds 3
   000D                     237 _itoa_n_1_1:
   000D                     238 	.ds 2
   000F                     239 _itoa_buff_1_1:
   000F                     240 	.ds 3
   0012                     241 _itoa_sloc0_1_0:
   0012                     242 	.ds 3
   0015                     243 _KR_PARM_2:
   0015                     244 	.ds 2
   0017                     245 _KR_PARM_3:
   0017                     246 	.ds 3
   001A                     247 _KR_PARM_4:
   001A                     248 	.ds 2
   001C                     249 _KR_wzorzec_1_1:
   001C                     250 	.ds 3
   001F                     251 _KR_d_1_1:
   001F                     252 	.ds 2
   0021                     253 _KR_hx_1_1:
   0021                     254 	.ds 2
   0023                     255 _KR_hy_1_1:
   0023                     256 	.ds 2
   0025                     257 _KR_j_1_1:
   0025                     258 	.ds 2
   0027                     259 _KR_count_1_1:
   0027                     260 	.ds 2
   0029                     261 _main_x_1_1:
   0029                     262 	.ds 3
                            263 ;--------------------------------------------------------
                            264 ; overlayable items in internal ram 
                            265 ;--------------------------------------------------------
                            266 	.area	OSEG    (OVR,DATA)
                            267 	.area	OSEG    (OVR,DATA)
                            268 ;--------------------------------------------------------
                            269 ; Stack segment in internal ram 
                            270 ;--------------------------------------------------------
                            271 	.area	SSEG	(DATA)
   004C                     272 __start__stack:
   004C                     273 	.ds	1
                            274 
                            275 ;--------------------------------------------------------
                            276 ; indirectly addressable internal ram data
                            277 ;--------------------------------------------------------
                            278 	.area ISEG    (DATA)
                            279 ;--------------------------------------------------------
                            280 ; absolute internal ram data
                            281 ;--------------------------------------------------------
                            282 	.area IABS    (ABS,DATA)
                            283 	.area IABS    (ABS,DATA)
                            284 ;--------------------------------------------------------
                            285 ; bit data
                            286 ;--------------------------------------------------------
                            287 	.area BSEG    (BIT)
                            288 ;--------------------------------------------------------
                            289 ; paged external ram data
                            290 ;--------------------------------------------------------
                            291 	.area PSEG    (PAG,XDATA)
                            292 ;--------------------------------------------------------
                            293 ; external ram data
                            294 ;--------------------------------------------------------
                            295 	.area XSEG    (XDATA)
                            296 ;--------------------------------------------------------
                            297 ; absolute external ram data
                            298 ;--------------------------------------------------------
                            299 	.area XABS    (ABS,XDATA)
                            300 ;--------------------------------------------------------
                            301 ; external initialized ram data
                            302 ;--------------------------------------------------------
                            303 	.area XISEG   (XDATA)
                            304 	.area HOME    (CODE)
                            305 	.area GSINIT0 (CODE)
                            306 	.area GSINIT1 (CODE)
                            307 	.area GSINIT2 (CODE)
                            308 	.area GSINIT3 (CODE)
                            309 	.area GSINIT4 (CODE)
                            310 	.area GSINIT5 (CODE)
                            311 	.area GSINIT  (CODE)
                            312 	.area GSFINAL (CODE)
                            313 	.area CSEG    (CODE)
                            314 ;--------------------------------------------------------
                            315 ; interrupt vector 
                            316 ;--------------------------------------------------------
                            317 	.area HOME    (CODE)
   4000                     318 __interrupt_vect:
   4000 02 40 08            319 	ljmp	__sdcc_gsinit_startup
                            320 ;--------------------------------------------------------
                            321 ; global & static initialisations
                            322 ;--------------------------------------------------------
                            323 	.area HOME    (CODE)
                            324 	.area GSINIT  (CODE)
                            325 	.area GSFINAL (CODE)
                            326 	.area GSINIT  (CODE)
                            327 	.globl __sdcc_gsinit_startup
                            328 	.globl __sdcc_program_startup
                            329 	.globl __start__stack
                            330 	.globl __mcs51_genXINIT
                            331 	.globl __mcs51_genXRAMCLEAR
                            332 	.globl __mcs51_genRAMCLEAR
                            333 	.area GSFINAL (CODE)
   4066 02 40 03            334 	ljmp	__sdcc_program_startup
                            335 ;--------------------------------------------------------
                            336 ; Home
                            337 ;--------------------------------------------------------
                            338 	.area HOME    (CODE)
                            339 	.area HOME    (CODE)
   4003                     340 __sdcc_program_startup:
   4003 12 44 75            341 	lcall	_main
                            342 ;	return from main will lock up
   4006 80 FE               343 	sjmp .
                            344 ;--------------------------------------------------------
                            345 ; code
                            346 ;--------------------------------------------------------
                            347 	.area CSEG    (CODE)
                            348 ;------------------------------------------------------------
                            349 ;Allocation info for local variables in function 'getchar'
                            350 ;------------------------------------------------------------
                            351 ;znak                      Allocated to registers 
                            352 ;------------------------------------------------------------
                            353 ;	main2.c:8: char getchar()
                            354 ;	-----------------------------------------
                            355 ;	 function getchar
                            356 ;	-----------------------------------------
   4069                     357 _getchar:
                    0002    358 	ar2 = 0x02
                    0003    359 	ar3 = 0x03
                    0004    360 	ar4 = 0x04
                    0005    361 	ar5 = 0x05
                    0006    362 	ar6 = 0x06
                    0007    363 	ar7 = 0x07
                    0000    364 	ar0 = 0x00
                    0001    365 	ar1 = 0x01
                            366 ;	main2.c:11: while(RI==0);
   4069                     367 00101$:
                            368 ;	main2.c:12: RI=0;	
   4069 10 98 02            369 	jbc	_RI,00108$
   406C 80 FB               370 	sjmp	00101$
   406E                     371 00108$:
                            372 ;	main2.c:13: znak = SBUF;
   406E 85 99 82            373 	mov	dpl,_SBUF
                            374 ;	main2.c:14: return znak;
   4071 22                  375 	ret
                            376 ;------------------------------------------------------------
                            377 ;Allocation info for local variables in function 'wczytaj'
                            378 ;------------------------------------------------------------
                            379 ;k                         Allocated to registers r7 r0 
                            380 ;max                       Allocated to registers r2 r3 
                            381 ;temp                      Allocated with name '_wczytaj_temp_1_1'
                            382 ;------------------------------------------------------------
                            383 ;	main2.c:17: char* wczytaj()
                            384 ;	-----------------------------------------
                            385 ;	 function wczytaj
                            386 ;	-----------------------------------------
   4072                     387 _wczytaj:
                            388 ;	main2.c:20: int max=1024;
   4072 7A 00               389 	mov	r2,#0x00
   4074 7B 04               390 	mov	r3,#0x04
                            391 ;	main2.c:21: char *temp=(char*)malloc(sizeof(char)*1024);
   4076 90 04 00            392 	mov	dptr,#0x0400
   4079 C0 02               393 	push	ar2
   407B C0 03               394 	push	ar3
   407D 12 48 E2            395 	lcall	_malloc
   4080 AC 82               396 	mov	r4,dpl
   4082 AD 83               397 	mov	r5,dph
   4084 D0 03               398 	pop	ar3
   4086 D0 02               399 	pop	ar2
   4088 8C 0A               400 	mov	_wczytaj_temp_1_1,r4
   408A 8D 0B               401 	mov	(_wczytaj_temp_1_1 + 1),r5
   408C 75 0C 00            402 	mov	(_wczytaj_temp_1_1 + 2),#0x00
                            403 ;	main2.c:22: while((temp[k]=getchar())!='#')
   408F 7F 00               404 	mov	r7,#0x00
   4091 78 00               405 	mov	r0,#0x00
   4093                     406 00103$:
   4093 EF                  407 	mov	a,r7
   4094 25 0A               408 	add	a,_wczytaj_temp_1_1
   4096 F9                  409 	mov	r1,a
   4097 E8                  410 	mov	a,r0
   4098 35 0B               411 	addc	a,(_wczytaj_temp_1_1 + 1)
   409A FC                  412 	mov	r4,a
   409B AD 0C               413 	mov	r5,(_wczytaj_temp_1_1 + 2)
   409D C0 02               414 	push	ar2
   409F C0 03               415 	push	ar3
   40A1 C0 04               416 	push	ar4
   40A3 C0 05               417 	push	ar5
   40A5 C0 07               418 	push	ar7
   40A7 C0 00               419 	push	ar0
   40A9 C0 01               420 	push	ar1
   40AB 12 40 69            421 	lcall	_getchar
   40AE AE 82               422 	mov	r6,dpl
   40B0 D0 01               423 	pop	ar1
   40B2 D0 00               424 	pop	ar0
   40B4 D0 07               425 	pop	ar7
   40B6 D0 05               426 	pop	ar5
   40B8 D0 04               427 	pop	ar4
   40BA D0 03               428 	pop	ar3
   40BC D0 02               429 	pop	ar2
   40BE 89 82               430 	mov	dpl,r1
   40C0 8C 83               431 	mov	dph,r4
   40C2 8D F0               432 	mov	b,r5
   40C4 EE                  433 	mov	a,r6
   40C5 12 47 78            434 	lcall	__gptrput
   40C8 BE 23 02            435 	cjne	r6,#0x23,00112$
   40CB 80 3D               436 	sjmp	00105$
   40CD                     437 00112$:
                            438 ;	main2.c:24: ++k;
   40CD 0F                  439 	inc	r7
   40CE BF 00 01            440 	cjne	r7,#0x00,00113$
   40D1 08                  441 	inc	r0
   40D2                     442 00113$:
                            443 ;	main2.c:25: if(k>=max)
   40D2 C3                  444 	clr	c
   40D3 EF                  445 	mov	a,r7
   40D4 9A                  446 	subb	a,r2
   40D5 E8                  447 	mov	a,r0
   40D6 64 80               448 	xrl	a,#0x80
   40D8 8B F0               449 	mov	b,r3
   40DA 63 F0 80            450 	xrl	b,#0x80
   40DD 95 F0               451 	subb	a,b
   40DF 40 B2               452 	jc	00103$
                            453 ;	main2.c:27: max*=2;
   40E1 EB                  454 	mov	a,r3
   40E2 CA                  455 	xch	a,r2
   40E3 25 E0               456 	add	a,acc
   40E5 CA                  457 	xch	a,r2
   40E6 33                  458 	rlc	a
   40E7 FB                  459 	mov	r3,a
                            460 ;	main2.c:28: realloc(temp,max);
   40E8 8A 2C               461 	mov	_realloc_PARM_2,r2
   40EA 8B 2D               462 	mov	(_realloc_PARM_2 + 1),r3
   40EC 85 0A 82            463 	mov	dpl,_wczytaj_temp_1_1
   40EF 85 0B 83            464 	mov	dph,(_wczytaj_temp_1_1 + 1)
   40F2 85 0C F0            465 	mov	b,(_wczytaj_temp_1_1 + 2)
   40F5 C0 02               466 	push	ar2
   40F7 C0 03               467 	push	ar3
   40F9 C0 07               468 	push	ar7
   40FB C0 00               469 	push	ar0
   40FD 12 45 24            470 	lcall	_realloc
   4100 D0 00               471 	pop	ar0
   4102 D0 07               472 	pop	ar7
   4104 D0 03               473 	pop	ar3
   4106 D0 02               474 	pop	ar2
   4108 80 89               475 	sjmp	00103$
   410A                     476 00105$:
                            477 ;	main2.c:31: temp[k]='\0';
   410A 89 82               478 	mov	dpl,r1
   410C 8C 83               479 	mov	dph,r4
   410E 8D F0               480 	mov	b,r5
   4110 E4                  481 	clr	a
   4111 12 47 78            482 	lcall	__gptrput
                            483 ;	main2.c:32: return temp;
   4114 85 0A 82            484 	mov	dpl,_wczytaj_temp_1_1
   4117 85 0B 83            485 	mov	dph,(_wczytaj_temp_1_1 + 1)
   411A 85 0C F0            486 	mov	b,(_wczytaj_temp_1_1 + 2)
   411D 22                  487 	ret
                            488 ;------------------------------------------------------------
                            489 ;Allocation info for local variables in function 'putchar'
                            490 ;------------------------------------------------------------
                            491 ;znak                      Allocated to registers 
                            492 ;------------------------------------------------------------
                            493 ;	main2.c:35: void putchar(char znak)
                            494 ;	-----------------------------------------
                            495 ;	 function putchar
                            496 ;	-----------------------------------------
   411E                     497 _putchar:
   411E 85 82 99            498 	mov	_SBUF,dpl
                            499 ;	main2.c:38: while(TI==0);	
   4121                     500 00101$:
                            501 ;	main2.c:39: TI = 0;	
   4121 10 99 02            502 	jbc	_TI,00108$
   4124 80 FB               503 	sjmp	00101$
   4126                     504 00108$:
   4126 22                  505 	ret
                            506 ;------------------------------------------------------------
                            507 ;Allocation info for local variables in function 'printf'
                            508 ;------------------------------------------------------------
                            509 ;temp                      Allocated to registers r2 r3 r4 
                            510 ;------------------------------------------------------------
                            511 ;	main2.c:42: void printf(char *temp)
                            512 ;	-----------------------------------------
                            513 ;	 function printf
                            514 ;	-----------------------------------------
   4127                     515 _printf:
   4127 AA 82               516 	mov	r2,dpl
   4129 AB 83               517 	mov	r3,dph
   412B AC F0               518 	mov	r4,b
                            519 ;	main2.c:44: while(temp[i]!=0)
   412D E4                  520 	clr	a
   412E F5 08               521 	mov	_i,a
   4130 F5 09               522 	mov	(_i + 1),a
                            523 ;	main2.c:45: {
   4132                     524 00101$:
   4132 E5 08               525 	mov	a,_i
   4134 2A                  526 	add	a,r2
   4135 FD                  527 	mov	r5,a
   4136 E5 09               528 	mov	a,(_i + 1)
   4138 3B                  529 	addc	a,r3
   4139 FE                  530 	mov	r6,a
   413A 8C 07               531 	mov	ar7,r4
   413C 8D 82               532 	mov	dpl,r5
   413E 8E 83               533 	mov	dph,r6
   4140 8F F0               534 	mov	b,r7
   4142 12 4A E7            535 	lcall	__gptrget
   4145 FD                  536 	mov	r5,a
   4146 60 1B               537 	jz	00103$
                            538 ;	main2.c:47: i++;
   4148 8D 82               539 	mov	dpl,r5
   414A C0 02               540 	push	ar2
   414C C0 03               541 	push	ar3
   414E C0 04               542 	push	ar4
   4150 12 41 1E            543 	lcall	_putchar
   4153 D0 04               544 	pop	ar4
   4155 D0 03               545 	pop	ar3
   4157 D0 02               546 	pop	ar2
                            547 ;	main2.c:48: }
   4159 05 08               548 	inc	_i
   415B E4                  549 	clr	a
   415C B5 08 D3            550 	cjne	a,_i,00101$
   415F 05 09               551 	inc	(_i + 1)
   4161 80 CF               552 	sjmp	00101$
   4163                     553 00103$:
                            554 ;	main2.c:50: }
   4163 75 82 0A            555 	mov	dpl,#0x0A
   4166 02 41 1E            556 	ljmp	_putchar
                            557 ;------------------------------------------------------------
                            558 ;Allocation info for local variables in function 'init'
                            559 ;------------------------------------------------------------
                            560 ;------------------------------------------------------------
                            561 ;	main2.c:54: {
                            562 ;	-----------------------------------------
                            563 ;	 function init
                            564 ;	-----------------------------------------
   4169                     565 _init:
                            566 ;	main2.c:56: TMOD &= 0x0f;
   4169 75 98 50            567 	mov	_SCON,#0x50
                            568 ;	main2.c:57: TMOD |= 0x20;
   416C 53 89 0F            569 	anl	_TMOD,#0x0F
                            570 ;	main2.c:58: TH1=TL1=0xFD;	
   416F 43 89 20            571 	orl	_TMOD,#0x20
                            572 ;	main2.c:59: PCON=0x80;
   4172 75 8B FD            573 	mov	_TL1,#0xFD
   4175 75 8D FD            574 	mov	_TH1,#0xFD
                            575 ;	main2.c:60: TCON=0x40; 
   4178 75 87 80            576 	mov	_PCON,#0x80
                            577 ;	main2.c:61: RI=0;
   417B 75 88 40            578 	mov	_TCON,#0x40
                            579 ;	main2.c:62: SBUF=0x0;
   417E C2 98               580 	clr	_RI
                            581 ;	main2.c:63: TI=0;
   4180 75 99 00            582 	mov	_SBUF,#0x00
                            583 ;	main2.c:64: putchar(' ');
   4183 C2 99               584 	clr	_TI
                            585 ;	main2.c:65: 
   4185 75 82 20            586 	mov	dpl,#0x20
   4188 02 41 1E            587 	ljmp	_putchar
                            588 ;------------------------------------------------------------
                            589 ;Allocation info for local variables in function 'itoa'
                            590 ;------------------------------------------------------------
                            591 ;n                         Allocated with name '_itoa_n_1_1'
                            592 ;temp                      Allocated to registers r4 r5 
                            593 ;k                         Allocated to registers r4 r5 
                            594 ;buff                      Allocated with name '_itoa_buff_1_1'
                            595 ;sloc0                     Allocated with name '_itoa_sloc0_1_0'
                            596 ;------------------------------------------------------------
                            597 ;	main2.c:69: {
                            598 ;	-----------------------------------------
                            599 ;	 function itoa
                            600 ;	-----------------------------------------
   418B                     601 _itoa:
   418B 85 82 0D            602 	mov	_itoa_n_1_1,dpl
   418E 85 83 0E            603 	mov	(_itoa_n_1_1 + 1),dph
                            604 ;	main2.c:71: char *buff;
   4191 AC 0D               605 	mov	r4,_itoa_n_1_1
   4193 AD 0E               606 	mov	r5,(_itoa_n_1_1 + 1)
                            607 ;	main2.c:73: {
   4195 E5 0D               608 	mov	a,_itoa_n_1_1
   4197 45 0E               609 	orl	a,(_itoa_n_1_1 + 1)
   4199 70 37               610 	jnz	00115$
                            611 ;	main2.c:75: buff[0]='0';
   419B 90 00 02            612 	mov	dptr,#0x0002
   419E 12 48 E2            613 	lcall	_malloc
   41A1 AE 82               614 	mov	r6,dpl
   41A3 AF 83               615 	mov	r7,dph
   41A5 8E 0F               616 	mov	_itoa_buff_1_1,r6
   41A7 8F 10               617 	mov	(_itoa_buff_1_1 + 1),r7
   41A9 75 11 00            618 	mov	(_itoa_buff_1_1 + 2),#0x00
                            619 ;	main2.c:76: buff[1]=0;
   41AC 85 0F 82            620 	mov	dpl,_itoa_buff_1_1
   41AF 85 10 83            621 	mov	dph,(_itoa_buff_1_1 + 1)
   41B2 85 11 F0            622 	mov	b,(_itoa_buff_1_1 + 2)
   41B5 74 30               623 	mov	a,#0x30
   41B7 12 47 78            624 	lcall	__gptrput
                            625 ;	main2.c:77: }
   41BA 74 01               626 	mov	a,#0x01
   41BC 25 0F               627 	add	a,_itoa_buff_1_1
   41BE F9                  628 	mov	r1,a
   41BF E4                  629 	clr	a
   41C0 35 10               630 	addc	a,(_itoa_buff_1_1 + 1)
   41C2 FE                  631 	mov	r6,a
   41C3 AF 11               632 	mov	r7,(_itoa_buff_1_1 + 2)
   41C5 89 82               633 	mov	dpl,r1
   41C7 8E 83               634 	mov	dph,r6
   41C9 8F F0               635 	mov	b,r7
   41CB E4                  636 	clr	a
   41CC 12 47 78            637 	lcall	__gptrput
   41CF 02 42 A5            638 	ljmp	00106$
                            639 ;	main2.c:81: {
   41D2                     640 00115$:
   41D2 7E 00               641 	mov	r6,#0x00
   41D4 7F 00               642 	mov	r7,#0x00
   41D6                     643 00101$:
   41D6 C3                  644 	clr	c
   41D7 E4                  645 	clr	a
   41D8 9C                  646 	subb	a,r4
   41D9 74 80               647 	mov	a,#(0x00 ^ 0x80)
   41DB 8D F0               648 	mov	b,r5
   41DD 63 F0 80            649 	xrl	b,#0x80
   41E0 95 F0               650 	subb	a,b
   41E2 50 20               651 	jnc	00118$
                            652 ;	main2.c:83: k++;
   41E4 75 39 0A            653 	mov	__divsint_PARM_2,#0x0A
   41E7 E4                  654 	clr	a
   41E8 F5 3A               655 	mov	(__divsint_PARM_2 + 1),a
   41EA 8C 82               656 	mov	dpl,r4
   41EC 8D 83               657 	mov	dph,r5
   41EE C0 06               658 	push	ar6
   41F0 C0 07               659 	push	ar7
   41F2 12 4B 39            660 	lcall	__divsint
   41F5 AC 82               661 	mov	r4,dpl
   41F7 AD 83               662 	mov	r5,dph
   41F9 D0 07               663 	pop	ar7
   41FB D0 06               664 	pop	ar6
                            665 ;	main2.c:84: }
   41FD 0E                  666 	inc	r6
   41FE BE 00 D5            667 	cjne	r6,#0x00,00101$
   4201 0F                  668 	inc	r7
   4202 80 D2               669 	sjmp	00101$
   4204                     670 00118$:
   4204 8E 04               671 	mov	ar4,r6
   4206 8F 05               672 	mov	ar5,r7
                            673 ;	main2.c:86: buff[k]=0;
   4208 8E 82               674 	mov	dpl,r6
   420A 8F 83               675 	mov	dph,r7
   420C A3                  676 	inc	dptr
   420D C0 04               677 	push	ar4
   420F C0 05               678 	push	ar5
   4211 C0 06               679 	push	ar6
   4213 C0 07               680 	push	ar7
   4215 12 48 E2            681 	lcall	_malloc
   4218 A8 82               682 	mov	r0,dpl
   421A A9 83               683 	mov	r1,dph
   421C D0 07               684 	pop	ar7
   421E D0 06               685 	pop	ar6
   4220 D0 05               686 	pop	ar5
   4222 D0 04               687 	pop	ar4
   4224 88 0F               688 	mov	_itoa_buff_1_1,r0
   4226 89 10               689 	mov	(_itoa_buff_1_1 + 1),r1
   4228 75 11 00            690 	mov	(_itoa_buff_1_1 + 2),#0x00
                            691 ;	main2.c:87: for(k;k>0;--k)
   422B EE                  692 	mov	a,r6
   422C 25 0F               693 	add	a,_itoa_buff_1_1
   422E FE                  694 	mov	r6,a
   422F EF                  695 	mov	a,r7
   4230 35 10               696 	addc	a,(_itoa_buff_1_1 + 1)
   4232 FF                  697 	mov	r7,a
   4233 A8 11               698 	mov	r0,(_itoa_buff_1_1 + 2)
   4235 8E 82               699 	mov	dpl,r6
   4237 8F 83               700 	mov	dph,r7
   4239 88 F0               701 	mov	b,r0
   423B E4                  702 	clr	a
   423C 12 47 78            703 	lcall	__gptrput
                            704 ;	main2.c:88: {
   423F                     705 00107$:
   423F C3                  706 	clr	c
   4240 E4                  707 	clr	a
   4241 9C                  708 	subb	a,r4
   4242 74 80               709 	mov	a,#(0x00 ^ 0x80)
   4244 8D F0               710 	mov	b,r5
   4246 63 F0 80            711 	xrl	b,#0x80
   4249 95 F0               712 	subb	a,b
   424B 50 58               713 	jnc	00106$
                            714 ;	main2.c:90: n/=10;
   424D EC                  715 	mov	a,r4
   424E 24 FF               716 	add	a,#0xff
   4250 FE                  717 	mov	r6,a
   4251 ED                  718 	mov	a,r5
   4252 34 FF               719 	addc	a,#0xff
   4254 FF                  720 	mov	r7,a
   4255 EE                  721 	mov	a,r6
   4256 25 0F               722 	add	a,_itoa_buff_1_1
   4258 F5 12               723 	mov	_itoa_sloc0_1_0,a
   425A EF                  724 	mov	a,r7
   425B 35 10               725 	addc	a,(_itoa_buff_1_1 + 1)
   425D F5 13               726 	mov	(_itoa_sloc0_1_0 + 1),a
   425F 85 11 14            727 	mov	(_itoa_sloc0_1_0 + 2),(_itoa_buff_1_1 + 2)
   4262 75 39 0A            728 	mov	__modsint_PARM_2,#0x0A
   4265 E4                  729 	clr	a
   4266 F5 3A               730 	mov	(__modsint_PARM_2 + 1),a
   4268 85 0D 82            731 	mov	dpl,_itoa_n_1_1
   426B 85 0E 83            732 	mov	dph,(_itoa_n_1_1 + 1)
   426E C0 06               733 	push	ar6
   4270 C0 07               734 	push	ar7
   4272 12 4B 03            735 	lcall	__modsint
   4275 AB 82               736 	mov	r3,dpl
   4277 74 30               737 	mov	a,#0x30
   4279 2B                  738 	add	a,r3
   427A 85 12 82            739 	mov	dpl,_itoa_sloc0_1_0
   427D 85 13 83            740 	mov	dph,(_itoa_sloc0_1_0 + 1)
   4280 85 14 F0            741 	mov	b,(_itoa_sloc0_1_0 + 2)
   4283 12 47 78            742 	lcall	__gptrput
                            743 ;	main2.c:91: }
   4286 75 39 0A            744 	mov	__divsint_PARM_2,#0x0A
   4289 E4                  745 	clr	a
   428A F5 3A               746 	mov	(__divsint_PARM_2 + 1),a
   428C 85 0D 82            747 	mov	dpl,_itoa_n_1_1
   428F 85 0E 83            748 	mov	dph,(_itoa_n_1_1 + 1)
   4292 12 4B 39            749 	lcall	__divsint
   4295 85 82 0D            750 	mov	_itoa_n_1_1,dpl
   4298 85 83 0E            751 	mov	(_itoa_n_1_1 + 1),dph
   429B D0 07               752 	pop	ar7
   429D D0 06               753 	pop	ar6
                            754 ;	main2.c:88: {
   429F 8E 04               755 	mov	ar4,r6
   42A1 8F 05               756 	mov	ar5,r7
   42A3 80 9A               757 	sjmp	00107$
   42A5                     758 00106$:
                            759 ;	main2.c:94: }
   42A5 85 0F 82            760 	mov	dpl,_itoa_buff_1_1
   42A8 85 10 83            761 	mov	dph,(_itoa_buff_1_1 + 1)
   42AB 85 11 F0            762 	mov	b,(_itoa_buff_1_1 + 2)
   42AE 22                  763 	ret
                            764 ;------------------------------------------------------------
                            765 ;Allocation info for local variables in function 'KR'
                            766 ;------------------------------------------------------------
                            767 ;m                         Allocated with name '_KR_PARM_2'
                            768 ;tekst                     Allocated with name '_KR_PARM_3'
                            769 ;n                         Allocated with name '_KR_PARM_4'
                            770 ;wzorzec                   Allocated with name '_KR_wzorzec_1_1'
                            771 ;d                         Allocated with name '_KR_d_1_1'
                            772 ;hx                        Allocated with name '_KR_hx_1_1'
                            773 ;hy                        Allocated with name '_KR_hy_1_1'
                            774 ;i                         Allocated to registers r7 r0 
                            775 ;j                         Allocated with name '_KR_j_1_1'
                            776 ;count                     Allocated with name '_KR_count_1_1'
                            777 ;------------------------------------------------------------
                            778 ;	main2.c:98: {
                            779 ;	-----------------------------------------
                            780 ;	 function KR
                            781 ;	-----------------------------------------
   42AF                     782 _KR:
   42AF 85 82 1C            783 	mov	_KR_wzorzec_1_1,dpl
   42B2 85 83 1D            784 	mov	(_KR_wzorzec_1_1 + 1),dph
   42B5 85 F0 1E            785 	mov	(_KR_wzorzec_1_1 + 2),b
                            786 ;	main2.c:102: d = (d<<1);
   42B8 75 1F 01            787 	mov	_KR_d_1_1,#0x01
   42BB E4                  788 	clr	a
   42BC F5 20               789 	mov	(_KR_d_1_1 + 1),a
   42BE 7F 01               790 	mov	r7,#0x01
   42C0 78 00               791 	mov	r0,#0x00
   42C2                     792 00107$:
   42C2 C3                  793 	clr	c
   42C3 EF                  794 	mov	a,r7
   42C4 95 15               795 	subb	a,_KR_PARM_2
   42C6 E8                  796 	mov	a,r0
   42C7 64 80               797 	xrl	a,#0x80
   42C9 85 16 F0            798 	mov	b,(_KR_PARM_2 + 1)
   42CC 63 F0 80            799 	xrl	b,#0x80
   42CF 95 F0               800 	subb	a,b
   42D1 50 12               801 	jnc	00110$
                            802 ;	main2.c:103: 
   42D3 E5 20               803 	mov	a,(_KR_d_1_1 + 1)
   42D5 C5 1F               804 	xch	a,_KR_d_1_1
   42D7 25 E0               805 	add	a,acc
   42D9 C5 1F               806 	xch	a,_KR_d_1_1
   42DB 33                  807 	rlc	a
   42DC F5 20               808 	mov	(_KR_d_1_1 + 1),a
                            809 ;	main2.c:102: d = (d<<1);
   42DE 0F                  810 	inc	r7
   42DF BF 00 E0            811 	cjne	r7,#0x00,00107$
   42E2 08                  812 	inc	r0
   42E3 80 DD               813 	sjmp	00107$
   42E5                     814 00110$:
                            815 ;	main2.c:105: {
   42E5 E4                  816 	clr a
   42E6 F5 21               817 	mov _KR_hx_1_1,a
   42E8 F5 22               818 	mov (_KR_hx_1_1 + 1),a
   42EA F5 23               819 	mov _KR_hy_1_1,a
   42EC F5 24               820 	mov (_KR_hy_1_1 + 1),a
   42EE F8                  821 	mov r0,a
   42EF FD                  822 	mov r5,a
   42F0                     823 00111$:
   42F0 C3                  824 	clr	c
   42F1 E8                  825 	mov	a,r0
   42F2 95 15               826 	subb	a,_KR_PARM_2
   42F4 ED                  827 	mov	a,r5
   42F5 64 80               828 	xrl	a,#0x80
   42F7 85 16 F0            829 	mov	b,(_KR_PARM_2 + 1)
   42FA 63 F0 80            830 	xrl	b,#0x80
   42FD 95 F0               831 	subb	a,b
   42FF 50 59               832 	jnc	00114$
                            833 ;	main2.c:107: hy = ((hy<<1) + tekst[i]);
   4301 E5 21               834 	mov	a,_KR_hx_1_1
   4303 25 21               835 	add	a,_KR_hx_1_1
   4305 FE                  836 	mov	r6,a
   4306 E5 22               837 	mov	a,(_KR_hx_1_1 + 1)
   4308 33                  838 	rlc	a
   4309 FA                  839 	mov	r2,a
   430A E8                  840 	mov	a,r0
   430B 25 1C               841 	add	a,_KR_wzorzec_1_1
   430D FB                  842 	mov	r3,a
   430E ED                  843 	mov	a,r5
   430F 35 1D               844 	addc	a,(_KR_wzorzec_1_1 + 1)
   4311 FC                  845 	mov	r4,a
   4312 AF 1E               846 	mov	r7,(_KR_wzorzec_1_1 + 2)
   4314 8B 82               847 	mov	dpl,r3
   4316 8C 83               848 	mov	dph,r4
   4318 8F F0               849 	mov	b,r7
   431A 12 4A E7            850 	lcall	__gptrget
   431D FB                  851 	mov	r3,a
   431E 33                  852 	rlc	a
   431F 95 E0               853 	subb	a,acc
   4321 FC                  854 	mov	r4,a
   4322 EB                  855 	mov	a,r3
   4323 2E                  856 	add	a,r6
   4324 F5 21               857 	mov	_KR_hx_1_1,a
   4326 EC                  858 	mov	a,r4
   4327 3A                  859 	addc	a,r2
   4328 F5 22               860 	mov	(_KR_hx_1_1 + 1),a
                            861 ;	main2.c:108: }
   432A E5 23               862 	mov	a,_KR_hy_1_1
   432C 25 23               863 	add	a,_KR_hy_1_1
   432E FA                  864 	mov	r2,a
   432F E5 24               865 	mov	a,(_KR_hy_1_1 + 1)
   4331 33                  866 	rlc	a
   4332 FB                  867 	mov	r3,a
   4333 E8                  868 	mov	a,r0
   4334 25 17               869 	add	a,_KR_PARM_3
   4336 FC                  870 	mov	r4,a
   4337 ED                  871 	mov	a,r5
   4338 35 18               872 	addc	a,(_KR_PARM_3 + 1)
   433A FE                  873 	mov	r6,a
   433B AF 19               874 	mov	r7,(_KR_PARM_3 + 2)
   433D 8C 82               875 	mov	dpl,r4
   433F 8E 83               876 	mov	dph,r6
   4341 8F F0               877 	mov	b,r7
   4343 12 4A E7            878 	lcall	__gptrget
   4346 FC                  879 	mov	r4,a
   4347 33                  880 	rlc	a
   4348 95 E0               881 	subb	a,acc
   434A FE                  882 	mov	r6,a
   434B EC                  883 	mov	a,r4
   434C 2A                  884 	add	a,r2
   434D F5 23               885 	mov	_KR_hy_1_1,a
   434F EE                  886 	mov	a,r6
   4350 3B                  887 	addc	a,r3
   4351 F5 24               888 	mov	(_KR_hy_1_1 + 1),a
                            889 ;	main2.c:105: {
   4353 08                  890 	inc	r0
   4354 B8 00 99            891 	cjne	r0,#0x00,00111$
   4357 0D                  892 	inc	r5
   4358 80 96               893 	sjmp	00111$
   435A                     894 00114$:
                            895 ;	main2.c:113: {
   435A AA 15               896 	mov	r2,_KR_PARM_2
   435C AB 16               897 	mov	r3,(_KR_PARM_2 + 1)
   435E E5 1A               898 	mov	a,_KR_PARM_4
   4360 C3                  899 	clr	c
   4361 9A                  900 	subb	a,r2
   4362 FC                  901 	mov	r4,a
   4363 E5 1B               902 	mov	a,(_KR_PARM_4 + 1)
   4365 9B                  903 	subb	a,r3
   4366 FD                  904 	mov	r5,a
   4367 E4                  905 	clr	a
   4368 F5 27               906 	mov	_KR_count_1_1,a
   436A F5 28               907 	mov	(_KR_count_1_1 + 1),a
   436C F5 25               908 	mov	_KR_j_1_1,a
   436E F5 26               909 	mov	(_KR_j_1_1 + 1),a
   4370                     910 00104$:
   4370 C3                  911 	clr	c
   4371 EC                  912 	mov	a,r4
   4372 95 25               913 	subb	a,_KR_j_1_1
   4374 ED                  914 	mov	a,r5
   4375 64 80               915 	xrl	a,#0x80
   4377 85 26 F0            916 	mov	b,(_KR_j_1_1 + 1)
   437A 63 F0 80            917 	xrl	b,#0x80
   437D 95 F0               918 	subb	a,b
   437F 50 03               919 	jnc	00131$
   4381 02 44 6E            920 	ljmp	00106$
   4384                     921 00131$:
                            922 ;	main2.c:115: {
   4384 E5 23               923 	mov	a,_KR_hy_1_1
   4386 B5 21 61            924 	cjne	a,_KR_hx_1_1,00102$
   4389 E5 24               925 	mov	a,(_KR_hy_1_1 + 1)
   438B B5 22 5C            926 	cjne	a,(_KR_hx_1_1 + 1),00102$
   438E E5 25               927 	mov	a,_KR_j_1_1
   4390 25 17               928 	add	a,_KR_PARM_3
   4392 F5 39               929 	mov	_memcmp_PARM_2,a
   4394 E5 26               930 	mov	a,(_KR_j_1_1 + 1)
   4396 35 18               931 	addc	a,(_KR_PARM_3 + 1)
   4398 F5 3A               932 	mov	(_memcmp_PARM_2 + 1),a
   439A 85 19 3B            933 	mov	(_memcmp_PARM_2 + 2),(_KR_PARM_3 + 2)
   439D 8A 3C               934 	mov	_memcmp_PARM_3,r2
   439F 8B 3D               935 	mov	(_memcmp_PARM_3 + 1),r3
   43A1 85 1C 82            936 	mov	dpl,_KR_wzorzec_1_1
   43A4 85 1D 83            937 	mov	dph,(_KR_wzorzec_1_1 + 1)
   43A7 85 1E F0            938 	mov	b,(_KR_wzorzec_1_1 + 2)
   43AA C0 02               939 	push	ar2
   43AC C0 03               940 	push	ar3
   43AE C0 04               941 	push	ar4
   43B0 C0 05               942 	push	ar5
   43B2 12 4A 25            943 	lcall	_memcmp
   43B5 E5 82               944 	mov	a,dpl
   43B7 85 83 F0            945 	mov	b,dph
   43BA D0 05               946 	pop	ar5
   43BC D0 04               947 	pop	ar4
   43BE D0 03               948 	pop	ar3
   43C0 D0 02               949 	pop	ar2
   43C2 45 F0               950 	orl	a,b
   43C4 70 24               951 	jnz	00102$
                            952 ;	main2.c:117: printf(itoa(count));
   43C6 05 27               953 	inc	_KR_count_1_1
   43C8 E4                  954 	clr	a
   43C9 B5 27 02            955 	cjne	a,_KR_count_1_1,00135$
   43CC 05 28               956 	inc	(_KR_count_1_1 + 1)
   43CE                     957 00135$:
                            958 ;	main2.c:118: }
   43CE 85 27 82            959 	mov	dpl,_KR_count_1_1
   43D1 85 28 83            960 	mov	dph,(_KR_count_1_1 + 1)
   43D4 C0 02               961 	push	ar2
   43D6 C0 03               962 	push	ar3
   43D8 C0 04               963 	push	ar4
   43DA C0 05               964 	push	ar5
   43DC 12 41 8B            965 	lcall	_itoa
   43DF 12 41 27            966 	lcall	_printf
   43E2 D0 05               967 	pop	ar5
   43E4 D0 04               968 	pop	ar4
   43E6 D0 03               969 	pop	ar3
   43E8 D0 02               970 	pop	ar2
   43EA                     971 00102$:
                            972 ;	main2.c:120: ++j;
   43EA C0 04               973 	push	ar4
   43EC C0 05               974 	push	ar5
   43EE E5 25               975 	mov	a,_KR_j_1_1
   43F0 25 17               976 	add	a,_KR_PARM_3
   43F2 FE                  977 	mov	r6,a
   43F3 E5 26               978 	mov	a,(_KR_j_1_1 + 1)
   43F5 35 18               979 	addc	a,(_KR_PARM_3 + 1)
   43F7 FF                  980 	mov	r7,a
   43F8 A8 19               981 	mov	r0,(_KR_PARM_3 + 2)
   43FA 8E 82               982 	mov	dpl,r6
   43FC 8F 83               983 	mov	dph,r7
   43FE 88 F0               984 	mov	b,r0
   4400 12 4A E7            985 	lcall	__gptrget
   4403 FE                  986 	mov	r6,a
   4404 33                  987 	rlc	a
   4405 95 E0               988 	subb	a,acc
   4407 FF                  989 	mov	r7,a
   4408 85 1F 39            990 	mov	__mulint_PARM_2,_KR_d_1_1
   440B 85 20 3A            991 	mov	(__mulint_PARM_2 + 1),(_KR_d_1_1 + 1)
   440E 8E 82               992 	mov	dpl,r6
   4410 8F 83               993 	mov	dph,r7
   4412 C0 02               994 	push	ar2
   4414 C0 03               995 	push	ar3
   4416 C0 04               996 	push	ar4
   4418 C0 05               997 	push	ar5
   441A 12 49 BB            998 	lcall	__mulint
   441D AE 82               999 	mov	r6,dpl
   441F AF 83              1000 	mov	r7,dph
   4421 D0 05              1001 	pop	ar5
   4423 D0 04              1002 	pop	ar4
   4425 D0 03              1003 	pop	ar3
   4427 D0 02              1004 	pop	ar2
   4429 E5 23              1005 	mov	a,_KR_hy_1_1
   442B C3                 1006 	clr	c
   442C 9E                 1007 	subb	a,r6
   442D FE                 1008 	mov	r6,a
   442E E5 24              1009 	mov	a,(_KR_hy_1_1 + 1)
   4430 9F                 1010 	subb	a,r7
   4431 CE                 1011 	xch	a,r6
   4432 25 E0              1012 	add	a,acc
   4434 CE                 1013 	xch	a,r6
   4435 33                 1014 	rlc	a
   4436 FF                 1015 	mov	r7,a
   4437 EA                 1016 	mov	a,r2
   4438 25 25              1017 	add	a,_KR_j_1_1
   443A F8                 1018 	mov	r0,a
   443B EB                 1019 	mov	a,r3
   443C 35 26              1020 	addc	a,(_KR_j_1_1 + 1)
   443E F9                 1021 	mov	r1,a
   443F E8                 1022 	mov	a,r0
   4440 25 17              1023 	add	a,_KR_PARM_3
   4442 F8                 1024 	mov	r0,a
   4443 E9                 1025 	mov	a,r1
   4444 35 18              1026 	addc	a,(_KR_PARM_3 + 1)
   4446 F9                 1027 	mov	r1,a
   4447 AC 19              1028 	mov	r4,(_KR_PARM_3 + 2)
   4449 88 82              1029 	mov	dpl,r0
   444B 89 83              1030 	mov	dph,r1
   444D 8C F0              1031 	mov	b,r4
   444F 12 4A E7           1032 	lcall	__gptrget
   4452 F8                 1033 	mov	r0,a
   4453 33                 1034 	rlc	a
   4454 95 E0              1035 	subb	a,acc
   4456 FC                 1036 	mov	r4,a
   4457 E8                 1037 	mov	a,r0
   4458 2E                 1038 	add	a,r6
   4459 F5 23              1039 	mov	_KR_hy_1_1,a
   445B EC                 1040 	mov	a,r4
   445C 3F                 1041 	addc	a,r7
   445D F5 24              1042 	mov	(_KR_hy_1_1 + 1),a
                           1043 ;	main2.c:121: }
   445F 05 25              1044 	inc	_KR_j_1_1
   4461 E4                 1045 	clr	a
   4462 B5 25 02           1046 	cjne	a,_KR_j_1_1,00136$
   4465 05 26              1047 	inc	(_KR_j_1_1 + 1)
   4467                    1048 00136$:
   4467 D0 05              1049 	pop	ar5
   4469 D0 04              1050 	pop	ar4
   446B 02 43 70           1051 	ljmp	00104$
   446E                    1052 00106$:
                           1053 ;	main2.c:123: }
   446E 85 27 82           1054 	mov	dpl,_KR_count_1_1
   4471 85 28 83           1055 	mov	dph,(_KR_count_1_1 + 1)
   4474 22                 1056 	ret
                           1057 ;------------------------------------------------------------
                           1058 ;Allocation info for local variables in function 'main'
                           1059 ;------------------------------------------------------------
                           1060 ;x                         Allocated with name '_main_x_1_1'
                           1061 ;y                         Allocated to registers r2 r3 r4 
                           1062 ;------------------------------------------------------------
                           1063 ;	main2.c:126: {
                           1064 ;	-----------------------------------------
                           1065 ;	 function main
                           1066 ;	-----------------------------------------
   4475                    1067 _main:
                           1068 ;	main2.c:130: while(1)
   4475 12 41 69           1069 	lcall	_init
                           1070 ;	main2.c:131: {
   4478                    1071 00102$:
                           1072 ;	main2.c:133: y=wczytaj();
   4478 90 4B 75           1073 	mov	dptr,#__str_0
   447B 75 F0 80           1074 	mov	b,#0x80
   447E 12 41 27           1075 	lcall	_printf
                           1076 ;	main2.c:134: printf(y);
   4481 12 40 72           1077 	lcall	_wczytaj
                           1078 ;	main2.c:135: 
   4484 AA 82              1079 	mov	r2,dpl
   4486 AB 83              1080 	mov	r3,dph
   4488 AC F0              1081 	mov	r4,b
   448A C0 02              1082 	push	ar2
   448C C0 03              1083 	push	ar3
   448E C0 04              1084 	push	ar4
   4490 12 41 27           1085 	lcall	_printf
                           1086 ;	main2.c:137: x=wczytaj();
   4493 90 4B 82           1087 	mov	dptr,#__str_1
   4496 75 F0 80           1088 	mov	b,#0x80
   4499 12 41 27           1089 	lcall	_printf
                           1090 ;	main2.c:138: printf(x);
   449C 12 40 72           1091 	lcall	_wczytaj
                           1092 ;	main2.c:139: 
   449F 85 82 29           1093 	mov	_main_x_1_1,dpl
   44A2 85 83 2A           1094 	mov	(_main_x_1_1 + 1),dph
   44A5 85 F0 2B           1095 	mov	(_main_x_1_1 + 2),b
   44A8 12 41 27           1096 	lcall	_printf
                           1097 ;	main2.c:141: free(x);
   44AB 85 29 82           1098 	mov	dpl,_main_x_1_1
   44AE 85 2A 83           1099 	mov	dph,(_main_x_1_1 + 1)
   44B1 85 2B F0           1100 	mov	b,(_main_x_1_1 + 2)
   44B4 12 4A CF           1101 	lcall	_strlen
   44B7 A8 82              1102 	mov	r0,dpl
   44B9 A9 83              1103 	mov	r1,dph
   44BB D0 04              1104 	pop	ar4
   44BD D0 03              1105 	pop	ar3
   44BF D0 02              1106 	pop	ar2
   44C1 8A 82              1107 	mov	dpl,r2
   44C3 8B 83              1108 	mov	dph,r3
   44C5 8C F0              1109 	mov	b,r4
   44C7 C0 02              1110 	push	ar2
   44C9 C0 03              1111 	push	ar3
   44CB C0 04              1112 	push	ar4
   44CD C0 00              1113 	push	ar0
   44CF C0 01              1114 	push	ar1
   44D1 12 4A CF           1115 	lcall	_strlen
   44D4 85 82 1A           1116 	mov	_KR_PARM_4,dpl
   44D7 85 83 1B           1117 	mov	(_KR_PARM_4 + 1),dph
   44DA D0 01              1118 	pop	ar1
   44DC D0 00              1119 	pop	ar0
   44DE D0 04              1120 	pop	ar4
   44E0 D0 03              1121 	pop	ar3
   44E2 D0 02              1122 	pop	ar2
   44E4 88 15              1123 	mov	_KR_PARM_2,r0
   44E6 89 16              1124 	mov	(_KR_PARM_2 + 1),r1
   44E8 8A 17              1125 	mov	_KR_PARM_3,r2
   44EA 8B 18              1126 	mov	(_KR_PARM_3 + 1),r3
   44EC 8C 19              1127 	mov	(_KR_PARM_3 + 2),r4
   44EE 85 29 82           1128 	mov	dpl,_main_x_1_1
   44F1 85 2A 83           1129 	mov	dph,(_main_x_1_1 + 1)
   44F4 85 2B F0           1130 	mov	b,(_main_x_1_1 + 2)
   44F7 C0 02              1131 	push	ar2
   44F9 C0 03              1132 	push	ar3
   44FB C0 04              1133 	push	ar4
   44FD 12 42 AF           1134 	lcall	_KR
   4500 12 41 8B           1135 	lcall	_itoa
   4503 12 41 27           1136 	lcall	_printf
                           1137 ;	main2.c:142: free(y);
   4506 85 29 82           1138 	mov	dpl,_main_x_1_1
   4509 85 2A 83           1139 	mov	dph,(_main_x_1_1 + 1)
   450C 85 2B F0           1140 	mov	b,(_main_x_1_1 + 2)
   450F 12 46 E5           1141 	lcall	_free
   4512 D0 04              1142 	pop	ar4
   4514 D0 03              1143 	pop	ar3
   4516 D0 02              1144 	pop	ar2
                           1145 ;	main2.c:143: }
   4518 8A 82              1146 	mov	dpl,r2
   451A 8B 83              1147 	mov	dph,r3
   451C 8C F0              1148 	mov	b,r4
   451E 12 46 E5           1149 	lcall	_free
                           1150 ;	main2.c:145: }
   4521 02 44 78           1151 	ljmp	00102$
                           1152 	.area CSEG    (CODE)
                           1153 	.area CONST   (CODE)
   4B75                    1154 __str_0:
   4B75 50 6F 64 61 6A 20  1155 	.ascii "Podaj tekst:"
        74 65 6B 73 74 3A
   4B81 00                 1156 	.db 0x00
   4B82                    1157 __str_1:
   4B82 50 6F 64 61 6A 20  1158 	.ascii "Podaj wzorzec:"
        77 7A 6F 72 7A 65
        63 3A
   4B90 00                 1159 	.db 0x00
                           1160 	.area XINIT   (CODE)
                           1161 	.area CABS    (ABS,CODE)
