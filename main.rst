                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.8.0 #5117 (Jun 26 2008) (UNIX)
                              4 ; This file was generated Tue May 19 16:47:38 2009
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _czekaj
                             14 	.globl _przerwanie1
                             15 	.globl _KR
                             16 	.globl _init_led
                             17 	.globl _init_inout
                             18 	.globl _itoa
                             19 	.globl _printf
                             20 	.globl _putchar
                             21 	.globl _wczytaj
                             22 	.globl _getchar
                             23 	.globl _CY
                             24 	.globl _AC
                             25 	.globl _F0
                             26 	.globl _RS1
                             27 	.globl _RS0
                             28 	.globl _OV
                             29 	.globl _F1
                             30 	.globl _P
                             31 	.globl _PS
                             32 	.globl _PT1
                             33 	.globl _PX1
                             34 	.globl _PT0
                             35 	.globl _PX0
                             36 	.globl _RD
                             37 	.globl _WR
                             38 	.globl _T1
                             39 	.globl _T0
                             40 	.globl _INT1
                             41 	.globl _INT0
                             42 	.globl _TXD
                             43 	.globl _RXD
                             44 	.globl _P3_7
                             45 	.globl _P3_6
                             46 	.globl _P3_5
                             47 	.globl _P3_4
                             48 	.globl _P3_3
                             49 	.globl _P3_2
                             50 	.globl _P3_1
                             51 	.globl _P3_0
                             52 	.globl _EA
                             53 	.globl _ES
                             54 	.globl _ET1
                             55 	.globl _EX1
                             56 	.globl _ET0
                             57 	.globl _EX0
                             58 	.globl _P2_7
                             59 	.globl _P2_6
                             60 	.globl _P2_5
                             61 	.globl _P2_4
                             62 	.globl _P2_3
                             63 	.globl _P2_2
                             64 	.globl _P2_1
                             65 	.globl _P2_0
                             66 	.globl _SM0
                             67 	.globl _SM1
                             68 	.globl _SM2
                             69 	.globl _REN
                             70 	.globl _TB8
                             71 	.globl _RB8
                             72 	.globl _TI
                             73 	.globl _RI
                             74 	.globl _P1_7
                             75 	.globl _P1_6
                             76 	.globl _P1_5
                             77 	.globl _P1_4
                             78 	.globl _P1_3
                             79 	.globl _P1_2
                             80 	.globl _P1_1
                             81 	.globl _P1_0
                             82 	.globl _TF1
                             83 	.globl _TR1
                             84 	.globl _TF0
                             85 	.globl _TR0
                             86 	.globl _IE1
                             87 	.globl _IT1
                             88 	.globl _IE0
                             89 	.globl _IT0
                             90 	.globl _P0_7
                             91 	.globl _P0_6
                             92 	.globl _P0_5
                             93 	.globl _P0_4
                             94 	.globl _P0_3
                             95 	.globl _P0_2
                             96 	.globl _P0_1
                             97 	.globl _P0_0
                             98 	.globl _B
                             99 	.globl _ACC
                            100 	.globl _PSW
                            101 	.globl _IP
                            102 	.globl _P3
                            103 	.globl _IE
                            104 	.globl _P2
                            105 	.globl _SBUF
                            106 	.globl _SCON
                            107 	.globl _P1
                            108 	.globl _TH1
                            109 	.globl _TH0
                            110 	.globl _TL1
                            111 	.globl _TL0
                            112 	.globl _TMOD
                            113 	.globl _TCON
                            114 	.globl _PCON
                            115 	.globl _DPH
                            116 	.globl _DPL
                            117 	.globl _SP
                            118 	.globl _P0
                            119 	.globl _U10
                            120 	.globl _U15
                            121 	.globl _KR_PARM_4
                            122 	.globl _KR_PARM_3
                            123 	.globl _KR_PARM_2
                            124 	.globl _t2
                            125 	.globl _count
                            126 	.globl _iter
                            127 	.globl _done
                            128 	.globl _i
                            129 	.globl _cyfry
                            130 ;--------------------------------------------------------
                            131 ; special function registers
                            132 ;--------------------------------------------------------
                            133 	.area RSEG    (DATA)
                    0080    134 _P0	=	0x0080
                    0081    135 _SP	=	0x0081
                    0082    136 _DPL	=	0x0082
                    0083    137 _DPH	=	0x0083
                    0087    138 _PCON	=	0x0087
                    0088    139 _TCON	=	0x0088
                    0089    140 _TMOD	=	0x0089
                    008A    141 _TL0	=	0x008a
                    008B    142 _TL1	=	0x008b
                    008C    143 _TH0	=	0x008c
                    008D    144 _TH1	=	0x008d
                    0090    145 _P1	=	0x0090
                    0098    146 _SCON	=	0x0098
                    0099    147 _SBUF	=	0x0099
                    00A0    148 _P2	=	0x00a0
                    00A8    149 _IE	=	0x00a8
                    00B0    150 _P3	=	0x00b0
                    00B8    151 _IP	=	0x00b8
                    00D0    152 _PSW	=	0x00d0
                    00E0    153 _ACC	=	0x00e0
                    00F0    154 _B	=	0x00f0
                            155 ;--------------------------------------------------------
                            156 ; special function bits
                            157 ;--------------------------------------------------------
                            158 	.area RSEG    (DATA)
                    0080    159 _P0_0	=	0x0080
                    0081    160 _P0_1	=	0x0081
                    0082    161 _P0_2	=	0x0082
                    0083    162 _P0_3	=	0x0083
                    0084    163 _P0_4	=	0x0084
                    0085    164 _P0_5	=	0x0085
                    0086    165 _P0_6	=	0x0086
                    0087    166 _P0_7	=	0x0087
                    0088    167 _IT0	=	0x0088
                    0089    168 _IE0	=	0x0089
                    008A    169 _IT1	=	0x008a
                    008B    170 _IE1	=	0x008b
                    008C    171 _TR0	=	0x008c
                    008D    172 _TF0	=	0x008d
                    008E    173 _TR1	=	0x008e
                    008F    174 _TF1	=	0x008f
                    0090    175 _P1_0	=	0x0090
                    0091    176 _P1_1	=	0x0091
                    0092    177 _P1_2	=	0x0092
                    0093    178 _P1_3	=	0x0093
                    0094    179 _P1_4	=	0x0094
                    0095    180 _P1_5	=	0x0095
                    0096    181 _P1_6	=	0x0096
                    0097    182 _P1_7	=	0x0097
                    0098    183 _RI	=	0x0098
                    0099    184 _TI	=	0x0099
                    009A    185 _RB8	=	0x009a
                    009B    186 _TB8	=	0x009b
                    009C    187 _REN	=	0x009c
                    009D    188 _SM2	=	0x009d
                    009E    189 _SM1	=	0x009e
                    009F    190 _SM0	=	0x009f
                    00A0    191 _P2_0	=	0x00a0
                    00A1    192 _P2_1	=	0x00a1
                    00A2    193 _P2_2	=	0x00a2
                    00A3    194 _P2_3	=	0x00a3
                    00A4    195 _P2_4	=	0x00a4
                    00A5    196 _P2_5	=	0x00a5
                    00A6    197 _P2_6	=	0x00a6
                    00A7    198 _P2_7	=	0x00a7
                    00A8    199 _EX0	=	0x00a8
                    00A9    200 _ET0	=	0x00a9
                    00AA    201 _EX1	=	0x00aa
                    00AB    202 _ET1	=	0x00ab
                    00AC    203 _ES	=	0x00ac
                    00AF    204 _EA	=	0x00af
                    00B0    205 _P3_0	=	0x00b0
                    00B1    206 _P3_1	=	0x00b1
                    00B2    207 _P3_2	=	0x00b2
                    00B3    208 _P3_3	=	0x00b3
                    00B4    209 _P3_4	=	0x00b4
                    00B5    210 _P3_5	=	0x00b5
                    00B6    211 _P3_6	=	0x00b6
                    00B7    212 _P3_7	=	0x00b7
                    00B0    213 _RXD	=	0x00b0
                    00B1    214 _TXD	=	0x00b1
                    00B2    215 _INT0	=	0x00b2
                    00B3    216 _INT1	=	0x00b3
                    00B4    217 _T0	=	0x00b4
                    00B5    218 _T1	=	0x00b5
                    00B6    219 _WR	=	0x00b6
                    00B7    220 _RD	=	0x00b7
                    00B8    221 _PX0	=	0x00b8
                    00B9    222 _PT0	=	0x00b9
                    00BA    223 _PX1	=	0x00ba
                    00BB    224 _PT1	=	0x00bb
                    00BC    225 _PS	=	0x00bc
                    00D0    226 _P	=	0x00d0
                    00D1    227 _F1	=	0x00d1
                    00D2    228 _OV	=	0x00d2
                    00D3    229 _RS0	=	0x00d3
                    00D4    230 _RS1	=	0x00d4
                    00D5    231 _F0	=	0x00d5
                    00D6    232 _AC	=	0x00d6
                    00D7    233 _CY	=	0x00d7
                            234 ;--------------------------------------------------------
                            235 ; overlayable register banks
                            236 ;--------------------------------------------------------
                            237 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     238 	.ds 8
                            239 ;--------------------------------------------------------
                            240 ; overlayable bit register bank
                            241 ;--------------------------------------------------------
                            242 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     243 bits:
   0020                     244 	.ds 1
                    8000    245 	b0 = bits[0]
                    8100    246 	b1 = bits[1]
                    8200    247 	b2 = bits[2]
                    8300    248 	b3 = bits[3]
                    8400    249 	b4 = bits[4]
                    8500    250 	b5 = bits[5]
                    8600    251 	b6 = bits[6]
                    8700    252 	b7 = bits[7]
                            253 ;--------------------------------------------------------
                            254 ; internal ram data
                            255 ;--------------------------------------------------------
                            256 	.area DSEG    (DATA)
   0021                     257 _cyfry::
   0021                     258 	.ds 10
   002B                     259 _i::
   002B                     260 	.ds 2
   002D                     261 _done::
   002D                     262 	.ds 2
   002F                     263 _iter::
   002F                     264 	.ds 2
   0031                     265 _count::
   0031                     266 	.ds 2
   0033                     267 _t2::
   0033                     268 	.ds 2
   0035                     269 _wczytaj_temp_1_1:
   0035                     270 	.ds 3
   0038                     271 _itoa_n_1_1:
   0038                     272 	.ds 2
   003A                     273 _itoa_buff_1_1:
   003A                     274 	.ds 3
   003D                     275 _itoa_sloc0_1_0:
   003D                     276 	.ds 3
   0040                     277 _KR_PARM_2:
   0040                     278 	.ds 2
   0042                     279 _KR_PARM_3:
   0042                     280 	.ds 3
   0045                     281 _KR_PARM_4:
   0045                     282 	.ds 2
   0047                     283 _KR_wzorzec_1_1:
   0047                     284 	.ds 3
   004A                     285 _KR_d_1_1:
   004A                     286 	.ds 2
   004C                     287 _KR_hx_1_1:
   004C                     288 	.ds 2
   004E                     289 _KR_hy_1_1:
   004E                     290 	.ds 2
   0050                     291 _KR_j_1_1:
   0050                     292 	.ds 2
   0052                     293 _KR_count_1_1:
   0052                     294 	.ds 2
                            295 ;--------------------------------------------------------
                            296 ; overlayable items in internal ram 
                            297 ;--------------------------------------------------------
                            298 	.area	OSEG    (OVR,DATA)
                            299 	.area	OSEG    (OVR,DATA)
                            300 	.area	OSEG    (OVR,DATA)
                            301 ;--------------------------------------------------------
                            302 ; Stack segment in internal ram 
                            303 ;--------------------------------------------------------
                            304 	.area	SSEG	(DATA)
   0067                     305 __start__stack:
   0067                     306 	.ds	1
                            307 
                            308 ;--------------------------------------------------------
                            309 ; indirectly addressable internal ram data
                            310 ;--------------------------------------------------------
                            311 	.area ISEG    (DATA)
                            312 ;--------------------------------------------------------
                            313 ; absolute internal ram data
                            314 ;--------------------------------------------------------
                            315 	.area IABS    (ABS,DATA)
                            316 	.area IABS    (ABS,DATA)
                            317 ;--------------------------------------------------------
                            318 ; bit data
                            319 ;--------------------------------------------------------
                            320 	.area BSEG    (BIT)
                            321 ;--------------------------------------------------------
                            322 ; paged external ram data
                            323 ;--------------------------------------------------------
                            324 	.area PSEG    (PAG,XDATA)
                            325 ;--------------------------------------------------------
                            326 ; external ram data
                            327 ;--------------------------------------------------------
                            328 	.area XSEG    (XDATA)
                    8000    329 _U15	=	0x8000
                    FFFF    330 _U10	=	0xffff
                            331 ;--------------------------------------------------------
                            332 ; absolute external ram data
                            333 ;--------------------------------------------------------
                            334 	.area XABS    (ABS,XDATA)
                            335 ;--------------------------------------------------------
                            336 ; external initialized ram data
                            337 ;--------------------------------------------------------
                            338 	.area XISEG   (XDATA)
                            339 	.area HOME    (CODE)
                            340 	.area GSINIT0 (CODE)
                            341 	.area GSINIT1 (CODE)
                            342 	.area GSINIT2 (CODE)
                            343 	.area GSINIT3 (CODE)
                            344 	.area GSINIT4 (CODE)
                            345 	.area GSINIT5 (CODE)
                            346 	.area GSINIT  (CODE)
                            347 	.area GSFINAL (CODE)
                            348 	.area CSEG    (CODE)
                            349 ;--------------------------------------------------------
                            350 ; interrupt vector 
                            351 ;--------------------------------------------------------
                            352 	.area HOME    (CODE)
   4000                     353 __interrupt_vect:
   4000 02 40 13            354 	ljmp	__sdcc_gsinit_startup
   4003 32                  355 	reti
   4004                     356 	.ds	7
   400B 02 44 A6            357 	ljmp	_przerwanie1
                            358 ;--------------------------------------------------------
                            359 ; global & static initialisations
                            360 ;--------------------------------------------------------
                            361 	.area HOME    (CODE)
                            362 	.area GSINIT  (CODE)
                            363 	.area GSFINAL (CODE)
                            364 	.area GSINIT  (CODE)
                            365 	.globl __sdcc_gsinit_startup
                            366 	.globl __sdcc_program_startup
                            367 	.globl __start__stack
                            368 	.globl __mcs51_genXINIT
                            369 	.globl __mcs51_genXRAMCLEAR
                            370 	.globl __mcs51_genRAMCLEAR
                            371 ;	main.c:38: unsigned char cyfry[10]={C_0,C_1,C_2,C_3,C_4,C_5,C_6,C_7,C_8,C_9};
   406C 75 21 5F            372 	mov	_cyfry,#0x5F
   406F 75 22 44            373 	mov	(_cyfry + 0x0001),#0x44
   4072 75 23 3E            374 	mov	(_cyfry + 0x0002),#0x3E
   4075 75 24 76            375 	mov	(_cyfry + 0x0003),#0x76
   4078 75 25 65            376 	mov	(_cyfry + 0x0004),#0x65
   407B 75 26 73            377 	mov	(_cyfry + 0x0005),#0x73
   407E 75 27 7B            378 	mov	(_cyfry + 0x0006),#0x7B
   4081 75 28 46            379 	mov	(_cyfry + 0x0007),#0x46
   4084 75 29 7F            380 	mov	(_cyfry + 0x0008),#0x7F
   4087 75 2A 77            381 	mov	(_cyfry + 0x0009),#0x77
                            382 ;	main.c:39: int i, done = 0;
   408A E4                  383 	clr	a
   408B F5 2D               384 	mov	_done,a
   408D F5 2E               385 	mov	(_done + 1),a
                            386 ;	main.c:40: int iter=0;
   408F E4                  387 	clr	a
   4090 F5 2F               388 	mov	_iter,a
   4092 F5 30               389 	mov	(_iter + 1),a
                            390 ;	main.c:41: int count=0;
   4094 E4                  391 	clr	a
   4095 F5 31               392 	mov	_count,a
   4097 F5 32               393 	mov	(_count + 1),a
                            394 ;	main.c:42: int t2=0;
   4099 E4                  395 	clr	a
   409A F5 33               396 	mov	_t2,a
   409C F5 34               397 	mov	(_t2 + 1),a
                            398 	.area GSFINAL (CODE)
   40A3 02 40 0E            399 	ljmp	__sdcc_program_startup
                            400 ;--------------------------------------------------------
                            401 ; Home
                            402 ;--------------------------------------------------------
                            403 	.area HOME    (CODE)
                            404 	.area HOME    (CODE)
   400E                     405 __sdcc_program_startup:
   400E 12 46 06            406 	lcall	_main
                            407 ;	return from main will lock up
   4011 80 FE               408 	sjmp .
                            409 ;--------------------------------------------------------
                            410 ; code
                            411 ;--------------------------------------------------------
                            412 	.area CSEG    (CODE)
                            413 ;------------------------------------------------------------
                            414 ;Allocation info for local variables in function 'getchar'
                            415 ;------------------------------------------------------------
                            416 ;znak                      Allocated to registers 
                            417 ;------------------------------------------------------------
                            418 ;	main.c:48: char getchar()
                            419 ;	-----------------------------------------
                            420 ;	 function getchar
                            421 ;	-----------------------------------------
   40A6                     422 _getchar:
                    0002    423 	ar2 = 0x02
                    0003    424 	ar3 = 0x03
                    0004    425 	ar4 = 0x04
                    0005    426 	ar5 = 0x05
                    0006    427 	ar6 = 0x06
                    0007    428 	ar7 = 0x07
                    0000    429 	ar0 = 0x00
                    0001    430 	ar1 = 0x01
                            431 ;	main.c:51: while(RI==0);
   40A6                     432 00101$:
                            433 ;	main.c:52: RI=0;	
   40A6 10 98 02            434 	jbc	_RI,00108$
   40A9 80 FB               435 	sjmp	00101$
   40AB                     436 00108$:
                            437 ;	main.c:53: znak = SBUF;
   40AB 85 99 82            438 	mov	dpl,_SBUF
                            439 ;	main.c:54: return znak;
   40AE 22                  440 	ret
                            441 ;------------------------------------------------------------
                            442 ;Allocation info for local variables in function 'wczytaj'
                            443 ;------------------------------------------------------------
                            444 ;k                         Allocated to registers r7 r0 
                            445 ;max                       Allocated to registers r2 r3 
                            446 ;temp                      Allocated with name '_wczytaj_temp_1_1'
                            447 ;------------------------------------------------------------
                            448 ;	main.c:57: char* wczytaj()
                            449 ;	-----------------------------------------
                            450 ;	 function wczytaj
                            451 ;	-----------------------------------------
   40AF                     452 _wczytaj:
                            453 ;	main.c:60: int max=1024;
   40AF 7A 00               454 	mov	r2,#0x00
   40B1 7B 04               455 	mov	r3,#0x04
                            456 ;	main.c:61: char *temp=(char*)malloc(sizeof(char)*1024);
   40B3 90 04 00            457 	mov	dptr,#0x0400
   40B6 C0 02               458 	push	ar2
   40B8 C0 03               459 	push	ar3
   40BA 12 49 5B            460 	lcall	_malloc
   40BD AC 82               461 	mov	r4,dpl
   40BF AD 83               462 	mov	r5,dph
   40C1 D0 03               463 	pop	ar3
   40C3 D0 02               464 	pop	ar2
   40C5 8C 35               465 	mov	_wczytaj_temp_1_1,r4
   40C7 8D 36               466 	mov	(_wczytaj_temp_1_1 + 1),r5
   40C9 75 37 00            467 	mov	(_wczytaj_temp_1_1 + 2),#0x00
                            468 ;	main.c:62: while((temp[k]=getchar())!='#')
   40CC 7F 00               469 	mov	r7,#0x00
   40CE 78 00               470 	mov	r0,#0x00
   40D0                     471 00103$:
   40D0 EF                  472 	mov	a,r7
   40D1 25 35               473 	add	a,_wczytaj_temp_1_1
   40D3 F9                  474 	mov	r1,a
   40D4 E8                  475 	mov	a,r0
   40D5 35 36               476 	addc	a,(_wczytaj_temp_1_1 + 1)
   40D7 FC                  477 	mov	r4,a
   40D8 AD 37               478 	mov	r5,(_wczytaj_temp_1_1 + 2)
   40DA C0 02               479 	push	ar2
   40DC C0 03               480 	push	ar3
   40DE C0 04               481 	push	ar4
   40E0 C0 05               482 	push	ar5
   40E2 C0 07               483 	push	ar7
   40E4 C0 00               484 	push	ar0
   40E6 C0 01               485 	push	ar1
   40E8 12 40 A6            486 	lcall	_getchar
   40EB AE 82               487 	mov	r6,dpl
   40ED D0 01               488 	pop	ar1
   40EF D0 00               489 	pop	ar0
   40F1 D0 07               490 	pop	ar7
   40F3 D0 05               491 	pop	ar5
   40F5 D0 04               492 	pop	ar4
   40F7 D0 03               493 	pop	ar3
   40F9 D0 02               494 	pop	ar2
   40FB 89 82               495 	mov	dpl,r1
   40FD 8C 83               496 	mov	dph,r4
   40FF 8D F0               497 	mov	b,r5
   4101 EE                  498 	mov	a,r6
   4102 12 47 F1            499 	lcall	__gptrput
   4105 BE 23 02            500 	cjne	r6,#0x23,00112$
   4108 80 3D               501 	sjmp	00105$
   410A                     502 00112$:
                            503 ;	main.c:64: ++k;
   410A 0F                  504 	inc	r7
   410B BF 00 01            505 	cjne	r7,#0x00,00113$
   410E 08                  506 	inc	r0
   410F                     507 00113$:
                            508 ;	main.c:65: if(k>=max)
   410F C3                  509 	clr	c
   4110 EF                  510 	mov	a,r7
   4111 9A                  511 	subb	a,r2
   4112 E8                  512 	mov	a,r0
   4113 64 80               513 	xrl	a,#0x80
   4115 8B F0               514 	mov	b,r3
   4117 63 F0 80            515 	xrl	b,#0x80
   411A 95 F0               516 	subb	a,b
   411C 40 B2               517 	jc	00103$
                            518 ;	main.c:67: max*=2;
   411E EB                  519 	mov	a,r3
   411F CA                  520 	xch	a,r2
   4120 25 E0               521 	add	a,acc
   4122 CA                  522 	xch	a,r2
   4123 33                  523 	rlc	a
   4124 FB                  524 	mov	r3,a
                            525 ;	main.c:68: realloc(temp,max);
   4125 8A 08               526 	mov	_realloc_PARM_2,r2
   4127 8B 09               527 	mov	(_realloc_PARM_2 + 1),r3
   4129 85 35 82            528 	mov	dpl,_wczytaj_temp_1_1
   412C 85 36 83            529 	mov	dph,(_wczytaj_temp_1_1 + 1)
   412F 85 37 F0            530 	mov	b,(_wczytaj_temp_1_1 + 2)
   4132 C0 02               531 	push	ar2
   4134 C0 03               532 	push	ar3
   4136 C0 07               533 	push	ar7
   4138 C0 00               534 	push	ar0
   413A 12 46 17            535 	lcall	_realloc
   413D D0 00               536 	pop	ar0
   413F D0 07               537 	pop	ar7
   4141 D0 03               538 	pop	ar3
   4143 D0 02               539 	pop	ar2
   4145 80 89               540 	sjmp	00103$
   4147                     541 00105$:
                            542 ;	main.c:71: temp[k]='\0';
   4147 89 82               543 	mov	dpl,r1
   4149 8C 83               544 	mov	dph,r4
   414B 8D F0               545 	mov	b,r5
   414D E4                  546 	clr	a
   414E 12 47 F1            547 	lcall	__gptrput
                            548 ;	main.c:72: return temp;
   4151 85 35 82            549 	mov	dpl,_wczytaj_temp_1_1
   4154 85 36 83            550 	mov	dph,(_wczytaj_temp_1_1 + 1)
   4157 85 37 F0            551 	mov	b,(_wczytaj_temp_1_1 + 2)
   415A 22                  552 	ret
                            553 ;------------------------------------------------------------
                            554 ;Allocation info for local variables in function 'putchar'
                            555 ;------------------------------------------------------------
                            556 ;znak                      Allocated to registers 
                            557 ;------------------------------------------------------------
                            558 ;	main.c:75: void putchar(char znak)
                            559 ;	-----------------------------------------
                            560 ;	 function putchar
                            561 ;	-----------------------------------------
   415B                     562 _putchar:
   415B 85 82 99            563 	mov	_SBUF,dpl
                            564 ;	main.c:78: while(TI==0);	
   415E                     565 00101$:
                            566 ;	main.c:79: TI = 0;	
   415E 10 99 02            567 	jbc	_TI,00108$
   4161 80 FB               568 	sjmp	00101$
   4163                     569 00108$:
   4163 22                  570 	ret
                            571 ;------------------------------------------------------------
                            572 ;Allocation info for local variables in function 'printf'
                            573 ;------------------------------------------------------------
                            574 ;temp                      Allocated to registers r2 r3 r4 
                            575 ;------------------------------------------------------------
                            576 ;	main.c:82: void printf(char *temp)
                            577 ;	-----------------------------------------
                            578 ;	 function printf
                            579 ;	-----------------------------------------
   4164                     580 _printf:
   4164 AA 82               581 	mov	r2,dpl
   4166 AB 83               582 	mov	r3,dph
   4168 AC F0               583 	mov	r4,b
                            584 ;	main.c:84: while(temp[i]!=0)
   416A E4                  585 	clr	a
   416B F5 2B               586 	mov	_i,a
   416D F5 2C               587 	mov	(_i + 1),a
                            588 ;	main.c:85: {
   416F                     589 00101$:
   416F E5 2B               590 	mov	a,_i
   4171 2A                  591 	add	a,r2
   4172 FD                  592 	mov	r5,a
   4173 E5 2C               593 	mov	a,(_i + 1)
   4175 3B                  594 	addc	a,r3
   4176 FE                  595 	mov	r6,a
   4177 8C 07               596 	mov	ar7,r4
   4179 8D 82               597 	mov	dpl,r5
   417B 8E 83               598 	mov	dph,r6
   417D 8F F0               599 	mov	b,r7
   417F 12 4B C2            600 	lcall	__gptrget
   4182 FD                  601 	mov	r5,a
   4183 60 1B               602 	jz	00103$
                            603 ;	main.c:87: i++;
   4185 8D 82               604 	mov	dpl,r5
   4187 C0 02               605 	push	ar2
   4189 C0 03               606 	push	ar3
   418B C0 04               607 	push	ar4
   418D 12 41 5B            608 	lcall	_putchar
   4190 D0 04               609 	pop	ar4
   4192 D0 03               610 	pop	ar3
   4194 D0 02               611 	pop	ar2
                            612 ;	main.c:88: }
   4196 05 2B               613 	inc	_i
   4198 E4                  614 	clr	a
   4199 B5 2B D3            615 	cjne	a,_i,00101$
   419C 05 2C               616 	inc	(_i + 1)
   419E 80 CF               617 	sjmp	00101$
   41A0                     618 00103$:
                            619 ;	main.c:90: }
   41A0 75 82 0A            620 	mov	dpl,#0x0A
   41A3 02 41 5B            621 	ljmp	_putchar
                            622 ;------------------------------------------------------------
                            623 ;Allocation info for local variables in function 'itoa'
                            624 ;------------------------------------------------------------
                            625 ;n                         Allocated with name '_itoa_n_1_1'
                            626 ;temp                      Allocated to registers r4 r5 
                            627 ;k                         Allocated to registers r4 r5 
                            628 ;buff                      Allocated with name '_itoa_buff_1_1'
                            629 ;sloc0                     Allocated with name '_itoa_sloc0_1_0'
                            630 ;------------------------------------------------------------
                            631 ;	main.c:93: {
                            632 ;	-----------------------------------------
                            633 ;	 function itoa
                            634 ;	-----------------------------------------
   41A6                     635 _itoa:
   41A6 85 82 38            636 	mov	_itoa_n_1_1,dpl
   41A9 85 83 39            637 	mov	(_itoa_n_1_1 + 1),dph
                            638 ;	main.c:95: char *buff;
   41AC AC 38               639 	mov	r4,_itoa_n_1_1
   41AE AD 39               640 	mov	r5,(_itoa_n_1_1 + 1)
                            641 ;	main.c:97: {
   41B0 E5 38               642 	mov	a,_itoa_n_1_1
   41B2 45 39               643 	orl	a,(_itoa_n_1_1 + 1)
   41B4 70 37               644 	jnz	00115$
                            645 ;	main.c:99: buff[0]='0';
   41B6 90 00 02            646 	mov	dptr,#0x0002
   41B9 12 49 5B            647 	lcall	_malloc
   41BC AE 82               648 	mov	r6,dpl
   41BE AF 83               649 	mov	r7,dph
   41C0 8E 3A               650 	mov	_itoa_buff_1_1,r6
   41C2 8F 3B               651 	mov	(_itoa_buff_1_1 + 1),r7
   41C4 75 3C 00            652 	mov	(_itoa_buff_1_1 + 2),#0x00
                            653 ;	main.c:100: buff[1]=0;
   41C7 85 3A 82            654 	mov	dpl,_itoa_buff_1_1
   41CA 85 3B 83            655 	mov	dph,(_itoa_buff_1_1 + 1)
   41CD 85 3C F0            656 	mov	b,(_itoa_buff_1_1 + 2)
   41D0 74 30               657 	mov	a,#0x30
   41D2 12 47 F1            658 	lcall	__gptrput
                            659 ;	main.c:101: }
   41D5 74 01               660 	mov	a,#0x01
   41D7 25 3A               661 	add	a,_itoa_buff_1_1
   41D9 F9                  662 	mov	r1,a
   41DA E4                  663 	clr	a
   41DB 35 3B               664 	addc	a,(_itoa_buff_1_1 + 1)
   41DD FE                  665 	mov	r6,a
   41DE AF 3C               666 	mov	r7,(_itoa_buff_1_1 + 2)
   41E0 89 82               667 	mov	dpl,r1
   41E2 8E 83               668 	mov	dph,r6
   41E4 8F F0               669 	mov	b,r7
   41E6 E4                  670 	clr	a
   41E7 12 47 F1            671 	lcall	__gptrput
   41EA 02 42 C0            672 	ljmp	00106$
                            673 ;	main.c:105: {
   41ED                     674 00115$:
   41ED 7E 00               675 	mov	r6,#0x00
   41EF 7F 00               676 	mov	r7,#0x00
   41F1                     677 00101$:
   41F1 C3                  678 	clr	c
   41F2 E4                  679 	clr	a
   41F3 9C                  680 	subb	a,r4
   41F4 74 80               681 	mov	a,#(0x00 ^ 0x80)
   41F6 8D F0               682 	mov	b,r5
   41F8 63 F0 80            683 	xrl	b,#0x80
   41FB 95 F0               684 	subb	a,b
   41FD 50 20               685 	jnc	00118$
                            686 ;	main.c:107: k++;
   41FF 75 54 0A            687 	mov	__divsint_PARM_2,#0x0A
   4202 E4                  688 	clr	a
   4203 F5 55               689 	mov	(__divsint_PARM_2 + 1),a
   4205 8C 82               690 	mov	dpl,r4
   4207 8D 83               691 	mov	dph,r5
   4209 C0 06               692 	push	ar6
   420B C0 07               693 	push	ar7
   420D 12 4C 14            694 	lcall	__divsint
   4210 AC 82               695 	mov	r4,dpl
   4212 AD 83               696 	mov	r5,dph
   4214 D0 07               697 	pop	ar7
   4216 D0 06               698 	pop	ar6
                            699 ;	main.c:108: }
   4218 0E                  700 	inc	r6
   4219 BE 00 D5            701 	cjne	r6,#0x00,00101$
   421C 0F                  702 	inc	r7
   421D 80 D2               703 	sjmp	00101$
   421F                     704 00118$:
   421F 8E 04               705 	mov	ar4,r6
   4221 8F 05               706 	mov	ar5,r7
                            707 ;	main.c:110: buff[k]=0;
   4223 8E 82               708 	mov	dpl,r6
   4225 8F 83               709 	mov	dph,r7
   4227 A3                  710 	inc	dptr
   4228 C0 04               711 	push	ar4
   422A C0 05               712 	push	ar5
   422C C0 06               713 	push	ar6
   422E C0 07               714 	push	ar7
   4230 12 49 5B            715 	lcall	_malloc
   4233 A8 82               716 	mov	r0,dpl
   4235 A9 83               717 	mov	r1,dph
   4237 D0 07               718 	pop	ar7
   4239 D0 06               719 	pop	ar6
   423B D0 05               720 	pop	ar5
   423D D0 04               721 	pop	ar4
   423F 88 3A               722 	mov	_itoa_buff_1_1,r0
   4241 89 3B               723 	mov	(_itoa_buff_1_1 + 1),r1
   4243 75 3C 00            724 	mov	(_itoa_buff_1_1 + 2),#0x00
                            725 ;	main.c:111: for(k;k>0;--k)
   4246 EE                  726 	mov	a,r6
   4247 25 3A               727 	add	a,_itoa_buff_1_1
   4249 FE                  728 	mov	r6,a
   424A EF                  729 	mov	a,r7
   424B 35 3B               730 	addc	a,(_itoa_buff_1_1 + 1)
   424D FF                  731 	mov	r7,a
   424E A8 3C               732 	mov	r0,(_itoa_buff_1_1 + 2)
   4250 8E 82               733 	mov	dpl,r6
   4252 8F 83               734 	mov	dph,r7
   4254 88 F0               735 	mov	b,r0
   4256 E4                  736 	clr	a
   4257 12 47 F1            737 	lcall	__gptrput
                            738 ;	main.c:112: {
   425A                     739 00107$:
   425A C3                  740 	clr	c
   425B E4                  741 	clr	a
   425C 9C                  742 	subb	a,r4
   425D 74 80               743 	mov	a,#(0x00 ^ 0x80)
   425F 8D F0               744 	mov	b,r5
   4261 63 F0 80            745 	xrl	b,#0x80
   4264 95 F0               746 	subb	a,b
   4266 50 58               747 	jnc	00106$
                            748 ;	main.c:114: n/=10;
   4268 EC                  749 	mov	a,r4
   4269 24 FF               750 	add	a,#0xff
   426B FE                  751 	mov	r6,a
   426C ED                  752 	mov	a,r5
   426D 34 FF               753 	addc	a,#0xff
   426F FF                  754 	mov	r7,a
   4270 EE                  755 	mov	a,r6
   4271 25 3A               756 	add	a,_itoa_buff_1_1
   4273 F5 3D               757 	mov	_itoa_sloc0_1_0,a
   4275 EF                  758 	mov	a,r7
   4276 35 3B               759 	addc	a,(_itoa_buff_1_1 + 1)
   4278 F5 3E               760 	mov	(_itoa_sloc0_1_0 + 1),a
   427A 85 3C 3F            761 	mov	(_itoa_sloc0_1_0 + 2),(_itoa_buff_1_1 + 2)
   427D 75 54 0A            762 	mov	__modsint_PARM_2,#0x0A
   4280 E4                  763 	clr	a
   4281 F5 55               764 	mov	(__modsint_PARM_2 + 1),a
   4283 85 38 82            765 	mov	dpl,_itoa_n_1_1
   4286 85 39 83            766 	mov	dph,(_itoa_n_1_1 + 1)
   4289 C0 06               767 	push	ar6
   428B C0 07               768 	push	ar7
   428D 12 4B DE            769 	lcall	__modsint
   4290 AB 82               770 	mov	r3,dpl
   4292 74 30               771 	mov	a,#0x30
   4294 2B                  772 	add	a,r3
   4295 85 3D 82            773 	mov	dpl,_itoa_sloc0_1_0
   4298 85 3E 83            774 	mov	dph,(_itoa_sloc0_1_0 + 1)
   429B 85 3F F0            775 	mov	b,(_itoa_sloc0_1_0 + 2)
   429E 12 47 F1            776 	lcall	__gptrput
                            777 ;	main.c:115: }
   42A1 75 54 0A            778 	mov	__divsint_PARM_2,#0x0A
   42A4 E4                  779 	clr	a
   42A5 F5 55               780 	mov	(__divsint_PARM_2 + 1),a
   42A7 85 38 82            781 	mov	dpl,_itoa_n_1_1
   42AA 85 39 83            782 	mov	dph,(_itoa_n_1_1 + 1)
   42AD 12 4C 14            783 	lcall	__divsint
   42B0 85 82 38            784 	mov	_itoa_n_1_1,dpl
   42B3 85 83 39            785 	mov	(_itoa_n_1_1 + 1),dph
   42B6 D0 07               786 	pop	ar7
   42B8 D0 06               787 	pop	ar6
                            788 ;	main.c:112: {
   42BA 8E 04               789 	mov	ar4,r6
   42BC 8F 05               790 	mov	ar5,r7
   42BE 80 9A               791 	sjmp	00107$
   42C0                     792 00106$:
                            793 ;	main.c:118: }
   42C0 85 3A 82            794 	mov	dpl,_itoa_buff_1_1
   42C3 85 3B 83            795 	mov	dph,(_itoa_buff_1_1 + 1)
   42C6 85 3C F0            796 	mov	b,(_itoa_buff_1_1 + 2)
   42C9 22                  797 	ret
                            798 ;------------------------------------------------------------
                            799 ;Allocation info for local variables in function 'init_inout'
                            800 ;------------------------------------------------------------
                            801 ;------------------------------------------------------------
                            802 ;	main.c:121: {
                            803 ;	-----------------------------------------
                            804 ;	 function init_inout
                            805 ;	-----------------------------------------
   42CA                     806 _init_inout:
                            807 ;	main.c:123: TMOD &= 0x0f;
   42CA 75 98 50            808 	mov	_SCON,#0x50
                            809 ;	main.c:124: TMOD |= 0x20;
   42CD 53 89 0F            810 	anl	_TMOD,#0x0F
                            811 ;	main.c:125: TH1=TL1=0xFD;	
   42D0 43 89 20            812 	orl	_TMOD,#0x20
                            813 ;	main.c:126: PCON=0x80;
   42D3 75 8B FD            814 	mov	_TL1,#0xFD
   42D6 75 8D FD            815 	mov	_TH1,#0xFD
                            816 ;	main.c:127: TCON=0x40; 
   42D9 75 87 80            817 	mov	_PCON,#0x80
                            818 ;	main.c:128: RI=0;
   42DC 75 88 40            819 	mov	_TCON,#0x40
                            820 ;	main.c:129: SBUF=0xf0;
   42DF C2 98               821 	clr	_RI
                            822 ;	main.c:130: TI=0;
   42E1 75 99 F0            823 	mov	_SBUF,#0xF0
                            824 ;	main.c:131: }
   42E4 C2 99               825 	clr	_TI
   42E6 22                  826 	ret
                            827 ;------------------------------------------------------------
                            828 ;Allocation info for local variables in function 'init_led'
                            829 ;------------------------------------------------------------
                            830 ;------------------------------------------------------------
                            831 ;	main.c:134: {
                            832 ;	-----------------------------------------
                            833 ;	 function init_led
                            834 ;	-----------------------------------------
   42E7                     835 _init_led:
                            836 ;	main.c:136: TMOD=0x02;
   42E7 75 8A 00            837 	mov	_TL0,#0x00
   42EA 75 8C 00            838 	mov	_TH0,#0x00
                            839 ;	main.c:137: TCON=0x10;
   42ED 75 89 02            840 	mov	_TMOD,#0x02
                            841 ;	main.c:138: IE=0x82;
   42F0 75 88 10            842 	mov	_TCON,#0x10
                            843 ;	main.c:139: putchar(' ');
   42F3 75 A8 82            844 	mov	_IE,#0x82
                            845 ;	main.c:140: }
   42F6 75 82 20            846 	mov	dpl,#0x20
   42F9 02 41 5B            847 	ljmp	_putchar
                            848 ;------------------------------------------------------------
                            849 ;Allocation info for local variables in function 'KR'
                            850 ;------------------------------------------------------------
                            851 ;m                         Allocated with name '_KR_PARM_2'
                            852 ;tekst                     Allocated with name '_KR_PARM_3'
                            853 ;n                         Allocated with name '_KR_PARM_4'
                            854 ;wzorzec                   Allocated with name '_KR_wzorzec_1_1'
                            855 ;d                         Allocated with name '_KR_d_1_1'
                            856 ;hx                        Allocated with name '_KR_hx_1_1'
                            857 ;hy                        Allocated with name '_KR_hy_1_1'
                            858 ;i                         Allocated to registers r7 r0 
                            859 ;j                         Allocated with name '_KR_j_1_1'
                            860 ;count                     Allocated with name '_KR_count_1_1'
                            861 ;------------------------------------------------------------
                            862 ;	main.c:143: {
                            863 ;	-----------------------------------------
                            864 ;	 function KR
                            865 ;	-----------------------------------------
   42FC                     866 _KR:
   42FC 85 82 47            867 	mov	_KR_wzorzec_1_1,dpl
   42FF 85 83 48            868 	mov	(_KR_wzorzec_1_1 + 1),dph
   4302 85 F0 49            869 	mov	(_KR_wzorzec_1_1 + 2),b
                            870 ;	main.c:147: d = (d<<1);
   4305 75 4A 01            871 	mov	_KR_d_1_1,#0x01
   4308 E4                  872 	clr	a
   4309 F5 4B               873 	mov	(_KR_d_1_1 + 1),a
   430B 7F 01               874 	mov	r7,#0x01
   430D 78 00               875 	mov	r0,#0x00
   430F                     876 00107$:
   430F C3                  877 	clr	c
   4310 EF                  878 	mov	a,r7
   4311 95 40               879 	subb	a,_KR_PARM_2
   4313 E8                  880 	mov	a,r0
   4314 64 80               881 	xrl	a,#0x80
   4316 85 41 F0            882 	mov	b,(_KR_PARM_2 + 1)
   4319 63 F0 80            883 	xrl	b,#0x80
   431C 95 F0               884 	subb	a,b
   431E 50 12               885 	jnc	00110$
                            886 ;	main.c:148: 
   4320 E5 4B               887 	mov	a,(_KR_d_1_1 + 1)
   4322 C5 4A               888 	xch	a,_KR_d_1_1
   4324 25 E0               889 	add	a,acc
   4326 C5 4A               890 	xch	a,_KR_d_1_1
   4328 33                  891 	rlc	a
   4329 F5 4B               892 	mov	(_KR_d_1_1 + 1),a
                            893 ;	main.c:147: d = (d<<1);
   432B 0F                  894 	inc	r7
   432C BF 00 E0            895 	cjne	r7,#0x00,00107$
   432F 08                  896 	inc	r0
   4330 80 DD               897 	sjmp	00107$
   4332                     898 00110$:
                            899 ;	main.c:150: {
   4332 E4                  900 	clr a
   4333 F5 4C               901 	mov _KR_hx_1_1,a
   4335 F5 4D               902 	mov (_KR_hx_1_1 + 1),a
   4337 F5 4E               903 	mov _KR_hy_1_1,a
   4339 F5 4F               904 	mov (_KR_hy_1_1 + 1),a
   433B F8                  905 	mov r0,a
   433C FD                  906 	mov r5,a
   433D                     907 00111$:
   433D C3                  908 	clr	c
   433E E8                  909 	mov	a,r0
   433F 95 40               910 	subb	a,_KR_PARM_2
   4341 ED                  911 	mov	a,r5
   4342 64 80               912 	xrl	a,#0x80
   4344 85 41 F0            913 	mov	b,(_KR_PARM_2 + 1)
   4347 63 F0 80            914 	xrl	b,#0x80
   434A 95 F0               915 	subb	a,b
   434C 50 59               916 	jnc	00114$
                            917 ;	main.c:152: hy = ((hy<<1) + tekst[i]);
   434E E5 4C               918 	mov	a,_KR_hx_1_1
   4350 25 4C               919 	add	a,_KR_hx_1_1
   4352 FE                  920 	mov	r6,a
   4353 E5 4D               921 	mov	a,(_KR_hx_1_1 + 1)
   4355 33                  922 	rlc	a
   4356 FA                  923 	mov	r2,a
   4357 E8                  924 	mov	a,r0
   4358 25 47               925 	add	a,_KR_wzorzec_1_1
   435A FB                  926 	mov	r3,a
   435B ED                  927 	mov	a,r5
   435C 35 48               928 	addc	a,(_KR_wzorzec_1_1 + 1)
   435E FC                  929 	mov	r4,a
   435F AF 49               930 	mov	r7,(_KR_wzorzec_1_1 + 2)
   4361 8B 82               931 	mov	dpl,r3
   4363 8C 83               932 	mov	dph,r4
   4365 8F F0               933 	mov	b,r7
   4367 12 4B C2            934 	lcall	__gptrget
   436A FB                  935 	mov	r3,a
   436B 33                  936 	rlc	a
   436C 95 E0               937 	subb	a,acc
   436E FC                  938 	mov	r4,a
   436F EB                  939 	mov	a,r3
   4370 2E                  940 	add	a,r6
   4371 F5 4C               941 	mov	_KR_hx_1_1,a
   4373 EC                  942 	mov	a,r4
   4374 3A                  943 	addc	a,r2
   4375 F5 4D               944 	mov	(_KR_hx_1_1 + 1),a
                            945 ;	main.c:153: }
   4377 E5 4E               946 	mov	a,_KR_hy_1_1
   4379 25 4E               947 	add	a,_KR_hy_1_1
   437B FA                  948 	mov	r2,a
   437C E5 4F               949 	mov	a,(_KR_hy_1_1 + 1)
   437E 33                  950 	rlc	a
   437F FB                  951 	mov	r3,a
   4380 E8                  952 	mov	a,r0
   4381 25 42               953 	add	a,_KR_PARM_3
   4383 FC                  954 	mov	r4,a
   4384 ED                  955 	mov	a,r5
   4385 35 43               956 	addc	a,(_KR_PARM_3 + 1)
   4387 FE                  957 	mov	r6,a
   4388 AF 44               958 	mov	r7,(_KR_PARM_3 + 2)
   438A 8C 82               959 	mov	dpl,r4
   438C 8E 83               960 	mov	dph,r6
   438E 8F F0               961 	mov	b,r7
   4390 12 4B C2            962 	lcall	__gptrget
   4393 FC                  963 	mov	r4,a
   4394 33                  964 	rlc	a
   4395 95 E0               965 	subb	a,acc
   4397 FE                  966 	mov	r6,a
   4398 EC                  967 	mov	a,r4
   4399 2A                  968 	add	a,r2
   439A F5 4E               969 	mov	_KR_hy_1_1,a
   439C EE                  970 	mov	a,r6
   439D 3B                  971 	addc	a,r3
   439E F5 4F               972 	mov	(_KR_hy_1_1 + 1),a
                            973 ;	main.c:150: {
   43A0 08                  974 	inc	r0
   43A1 B8 00 99            975 	cjne	r0,#0x00,00111$
   43A4 0D                  976 	inc	r5
   43A5 80 96               977 	sjmp	00111$
   43A7                     978 00114$:
                            979 ;	main.c:158: {
   43A7 AA 40               980 	mov	r2,_KR_PARM_2
   43A9 AB 41               981 	mov	r3,(_KR_PARM_2 + 1)
   43AB E5 45               982 	mov	a,_KR_PARM_4
   43AD C3                  983 	clr	c
   43AE 9A                  984 	subb	a,r2
   43AF FC                  985 	mov	r4,a
   43B0 E5 46               986 	mov	a,(_KR_PARM_4 + 1)
   43B2 9B                  987 	subb	a,r3
   43B3 FD                  988 	mov	r5,a
   43B4 E4                  989 	clr	a
   43B5 F5 52               990 	mov	_KR_count_1_1,a
   43B7 F5 53               991 	mov	(_KR_count_1_1 + 1),a
   43B9 F5 50               992 	mov	_KR_j_1_1,a
   43BB F5 51               993 	mov	(_KR_j_1_1 + 1),a
   43BD                     994 00104$:
   43BD C3                  995 	clr	c
   43BE EC                  996 	mov	a,r4
   43BF 95 50               997 	subb	a,_KR_j_1_1
   43C1 ED                  998 	mov	a,r5
   43C2 64 80               999 	xrl	a,#0x80
   43C4 85 51 F0           1000 	mov	b,(_KR_j_1_1 + 1)
   43C7 63 F0 80           1001 	xrl	b,#0x80
   43CA 95 F0              1002 	subb	a,b
   43CC 50 03              1003 	jnc	00131$
   43CE 02 44 9F           1004 	ljmp	00106$
   43D1                    1005 00131$:
                           1006 ;	main.c:160: count++;
   43D1 E5 4E              1007 	mov	a,_KR_hy_1_1
   43D3 B5 4C 45           1008 	cjne	a,_KR_hx_1_1,00102$
   43D6 E5 4F              1009 	mov	a,(_KR_hy_1_1 + 1)
   43D8 B5 4D 40           1010 	cjne	a,(_KR_hx_1_1 + 1),00102$
   43DB E5 50              1011 	mov	a,_KR_j_1_1
   43DD 25 42              1012 	add	a,_KR_PARM_3
   43DF F5 54              1013 	mov	_memcmp_PARM_2,a
   43E1 E5 51              1014 	mov	a,(_KR_j_1_1 + 1)
   43E3 35 43              1015 	addc	a,(_KR_PARM_3 + 1)
   43E5 F5 55              1016 	mov	(_memcmp_PARM_2 + 1),a
   43E7 85 44 56           1017 	mov	(_memcmp_PARM_2 + 2),(_KR_PARM_3 + 2)
   43EA 8A 57              1018 	mov	_memcmp_PARM_3,r2
   43EC 8B 58              1019 	mov	(_memcmp_PARM_3 + 1),r3
   43EE 85 47 82           1020 	mov	dpl,_KR_wzorzec_1_1
   43F1 85 48 83           1021 	mov	dph,(_KR_wzorzec_1_1 + 1)
   43F4 85 49 F0           1022 	mov	b,(_KR_wzorzec_1_1 + 2)
   43F7 C0 02              1023 	push	ar2
   43F9 C0 03              1024 	push	ar3
   43FB C0 04              1025 	push	ar4
   43FD C0 05              1026 	push	ar5
   43FF 12 4A 9E           1027 	lcall	_memcmp
   4402 E5 82              1028 	mov	a,dpl
   4404 85 83 F0           1029 	mov	b,dph
   4407 D0 05              1030 	pop	ar5
   4409 D0 04              1031 	pop	ar4
   440B D0 03              1032 	pop	ar3
   440D D0 02              1033 	pop	ar2
   440F 45 F0              1034 	orl	a,b
   4411 70 08              1035 	jnz	00102$
                           1036 ;	main.c:161: //printf("%d ",j);
   4413 05 52              1037 	inc	_KR_count_1_1
   4415 E4                 1038 	clr	a
   4416 B5 52 02           1039 	cjne	a,_KR_count_1_1,00135$
   4419 05 53              1040 	inc	(_KR_count_1_1 + 1)
   441B                    1041 00135$:
   441B                    1042 00102$:
                           1043 ;	main.c:163: ++j;
   441B C0 04              1044 	push	ar4
   441D C0 05              1045 	push	ar5
   441F E5 50              1046 	mov	a,_KR_j_1_1
   4421 25 42              1047 	add	a,_KR_PARM_3
   4423 FE                 1048 	mov	r6,a
   4424 E5 51              1049 	mov	a,(_KR_j_1_1 + 1)
   4426 35 43              1050 	addc	a,(_KR_PARM_3 + 1)
   4428 FF                 1051 	mov	r7,a
   4429 A8 44              1052 	mov	r0,(_KR_PARM_3 + 2)
   442B 8E 82              1053 	mov	dpl,r6
   442D 8F 83              1054 	mov	dph,r7
   442F 88 F0              1055 	mov	b,r0
   4431 12 4B C2           1056 	lcall	__gptrget
   4434 FE                 1057 	mov	r6,a
   4435 33                 1058 	rlc	a
   4436 95 E0              1059 	subb	a,acc
   4438 FF                 1060 	mov	r7,a
   4439 85 4A 54           1061 	mov	__mulint_PARM_2,_KR_d_1_1
   443C 85 4B 55           1062 	mov	(__mulint_PARM_2 + 1),(_KR_d_1_1 + 1)
   443F 8E 82              1063 	mov	dpl,r6
   4441 8F 83              1064 	mov	dph,r7
   4443 C0 02              1065 	push	ar2
   4445 C0 03              1066 	push	ar3
   4447 C0 04              1067 	push	ar4
   4449 C0 05              1068 	push	ar5
   444B 12 4A 34           1069 	lcall	__mulint
   444E AE 82              1070 	mov	r6,dpl
   4450 AF 83              1071 	mov	r7,dph
   4452 D0 05              1072 	pop	ar5
   4454 D0 04              1073 	pop	ar4
   4456 D0 03              1074 	pop	ar3
   4458 D0 02              1075 	pop	ar2
   445A E5 4E              1076 	mov	a,_KR_hy_1_1
   445C C3                 1077 	clr	c
   445D 9E                 1078 	subb	a,r6
   445E FE                 1079 	mov	r6,a
   445F E5 4F              1080 	mov	a,(_KR_hy_1_1 + 1)
   4461 9F                 1081 	subb	a,r7
   4462 CE                 1082 	xch	a,r6
   4463 25 E0              1083 	add	a,acc
   4465 CE                 1084 	xch	a,r6
   4466 33                 1085 	rlc	a
   4467 FF                 1086 	mov	r7,a
   4468 EA                 1087 	mov	a,r2
   4469 25 50              1088 	add	a,_KR_j_1_1
   446B F8                 1089 	mov	r0,a
   446C EB                 1090 	mov	a,r3
   446D 35 51              1091 	addc	a,(_KR_j_1_1 + 1)
   446F F9                 1092 	mov	r1,a
   4470 E8                 1093 	mov	a,r0
   4471 25 42              1094 	add	a,_KR_PARM_3
   4473 F8                 1095 	mov	r0,a
   4474 E9                 1096 	mov	a,r1
   4475 35 43              1097 	addc	a,(_KR_PARM_3 + 1)
   4477 F9                 1098 	mov	r1,a
   4478 AC 44              1099 	mov	r4,(_KR_PARM_3 + 2)
   447A 88 82              1100 	mov	dpl,r0
   447C 89 83              1101 	mov	dph,r1
   447E 8C F0              1102 	mov	b,r4
   4480 12 4B C2           1103 	lcall	__gptrget
   4483 F8                 1104 	mov	r0,a
   4484 33                 1105 	rlc	a
   4485 95 E0              1106 	subb	a,acc
   4487 FC                 1107 	mov	r4,a
   4488 E8                 1108 	mov	a,r0
   4489 2E                 1109 	add	a,r6
   448A F5 4E              1110 	mov	_KR_hy_1_1,a
   448C EC                 1111 	mov	a,r4
   448D 3F                 1112 	addc	a,r7
   448E F5 4F              1113 	mov	(_KR_hy_1_1 + 1),a
                           1114 ;	main.c:164: }
   4490 05 50              1115 	inc	_KR_j_1_1
   4492 E4                 1116 	clr	a
   4493 B5 50 02           1117 	cjne	a,_KR_j_1_1,00136$
   4496 05 51              1118 	inc	(_KR_j_1_1 + 1)
   4498                    1119 00136$:
   4498 D0 05              1120 	pop	ar5
   449A D0 04              1121 	pop	ar4
   449C 02 43 BD           1122 	ljmp	00104$
   449F                    1123 00106$:
                           1124 ;	main.c:166: }
   449F 85 52 82           1125 	mov	dpl,_KR_count_1_1
   44A2 85 53 83           1126 	mov	dph,(_KR_count_1_1 + 1)
   44A5 22                 1127 	ret
                           1128 ;------------------------------------------------------------
                           1129 ;Allocation info for local variables in function 'przerwanie1'
                           1130 ;------------------------------------------------------------
                           1131 ;------------------------------------------------------------
                           1132 ;	main.c:170: {
                           1133 ;	-----------------------------------------
                           1134 ;	 function przerwanie1
                           1135 ;	-----------------------------------------
   44A6                    1136 _przerwanie1:
   44A6 C0 20              1137 	push	bits
   44A8 C0 E0              1138 	push	acc
   44AA C0 F0              1139 	push	b
   44AC C0 82              1140 	push	dpl
   44AE C0 83              1141 	push	dph
   44B0 C0 02              1142 	push	(0+2)
   44B2 C0 03              1143 	push	(0+3)
   44B4 C0 04              1144 	push	(0+4)
   44B6 C0 05              1145 	push	(0+5)
   44B8 C0 06              1146 	push	(0+6)
   44BA C0 07              1147 	push	(0+7)
   44BC C0 00              1148 	push	(0+0)
   44BE C0 01              1149 	push	(0+1)
   44C0 C0 D0              1150 	push	psw
   44C2 75 D0 00           1151 	mov	psw,#0x00
                           1152 ;	main.c:172: switch(iter)
   44C5 90 FF FF           1153 	mov	dptr,#_U10
   44C8 E4                 1154 	clr	a
   44C9 F0                 1155 	movx	@dptr,a
                           1156 ;	main.c:173: {
   44CA E4                 1157 	clr	a
   44CB B5 2F 06           1158 	cjne	a,_iter,00115$
   44CE E4                 1159 	clr	a
   44CF B5 30 02           1160 	cjne	a,(_iter + 1),00115$
   44D2 80 25              1161 	sjmp	00101$
   44D4                    1162 00115$:
   44D4 74 01              1163 	mov	a,#0x01
   44D6 B5 2F 06           1164 	cjne	a,_iter,00116$
   44D9 E4                 1165 	clr	a
   44DA B5 30 02           1166 	cjne	a,(_iter + 1),00116$
   44DD 80 3F              1167 	sjmp	00102$
   44DF                    1168 00116$:
   44DF 74 02              1169 	mov	a,#0x02
   44E1 B5 2F 06           1170 	cjne	a,_iter,00117$
   44E4 E4                 1171 	clr	a
   44E5 B5 30 02           1172 	cjne	a,(_iter + 1),00117$
   44E8 80 69              1173 	sjmp	00103$
   44EA                    1174 00117$:
   44EA 74 03              1175 	mov	a,#0x03
   44EC B5 2F 07           1176 	cjne	a,_iter,00118$
   44EF E4                 1177 	clr	a
   44F0 B5 30 03           1178 	cjne	a,(_iter + 1),00118$
   44F3 02 45 88           1179 	ljmp	00104$
   44F6                    1180 00118$:
   44F6 02 45 AA           1181 	ljmp	00105$
                           1182 ;	main.c:175: U10=cyfry[(int)count/1000];
   44F9                    1183 00101$:
   44F9 90 80 00           1184 	mov	dptr,#_U15
   44FC 74 DF              1185 	mov	a,#0xDF
   44FE F0                 1186 	movx	@dptr,a
                           1187 ;	main.c:176: break;
   44FF 75 54 E8           1188 	mov	__divsint_PARM_2,#0xE8
   4502 75 55 03           1189 	mov	(__divsint_PARM_2 + 1),#0x03
   4505 85 31 82           1190 	mov	dpl,_count
   4508 85 32 83           1191 	mov	dph,(_count + 1)
   450B 12 4C 14           1192 	lcall	__divsint
   450E AA 82              1193 	mov	r2,dpl
   4510 AB 83              1194 	mov	r3,dph
   4512 EA                 1195 	mov	a,r2
   4513 24 21              1196 	add	a,#_cyfry
   4515 F8                 1197 	mov	r0,a
   4516 90 FF FF           1198 	mov	dptr,#_U10
   4519 E6                 1199 	mov	a,@r0
   451A F0                 1200 	movx	@dptr,a
                           1201 ;	main.c:177: case 1: U15=W2;
   451B 02 45 AA           1202 	ljmp	00105$
                           1203 ;	main.c:178: U10=cyfry[(count/100)%10];
   451E                    1204 00102$:
   451E 90 80 00           1205 	mov	dptr,#_U15
   4521 74 EF              1206 	mov	a,#0xEF
   4523 F0                 1207 	movx	@dptr,a
                           1208 ;	main.c:179: break;
   4524 75 54 64           1209 	mov	__divsint_PARM_2,#0x64
   4527 E4                 1210 	clr	a
   4528 F5 55              1211 	mov	(__divsint_PARM_2 + 1),a
   452A 85 31 82           1212 	mov	dpl,_count
   452D 85 32 83           1213 	mov	dph,(_count + 1)
   4530 12 4C 14           1214 	lcall	__divsint
   4533 AA 82              1215 	mov	r2,dpl
   4535 AB 83              1216 	mov	r3,dph
   4537 75 54 0A           1217 	mov	__modsint_PARM_2,#0x0A
   453A E4                 1218 	clr	a
   453B F5 55              1219 	mov	(__modsint_PARM_2 + 1),a
   453D 8A 82              1220 	mov	dpl,r2
   453F 8B 83              1221 	mov	dph,r3
   4541 12 4B DE           1222 	lcall	__modsint
   4544 AA 82              1223 	mov	r2,dpl
   4546 AB 83              1224 	mov	r3,dph
   4548 EA                 1225 	mov	a,r2
   4549 24 21              1226 	add	a,#_cyfry
   454B F8                 1227 	mov	r0,a
   454C 90 FF FF           1228 	mov	dptr,#_U10
   454F E6                 1229 	mov	a,@r0
   4550 F0                 1230 	movx	@dptr,a
                           1231 ;	main.c:180: case 2: U15=W3;
                           1232 ;	main.c:181: U10=cyfry[(count/10)%10];
   4551 80 57              1233 	sjmp	00105$
   4553                    1234 00103$:
   4553 90 80 00           1235 	mov	dptr,#_U15
   4556 74 7F              1236 	mov	a,#0x7F
   4558 F0                 1237 	movx	@dptr,a
                           1238 ;	main.c:182: break;
   4559 75 54 0A           1239 	mov	__divsint_PARM_2,#0x0A
   455C E4                 1240 	clr	a
   455D F5 55              1241 	mov	(__divsint_PARM_2 + 1),a
   455F 85 31 82           1242 	mov	dpl,_count
   4562 85 32 83           1243 	mov	dph,(_count + 1)
   4565 12 4C 14           1244 	lcall	__divsint
   4568 AA 82              1245 	mov	r2,dpl
   456A AB 83              1246 	mov	r3,dph
   456C 75 54 0A           1247 	mov	__modsint_PARM_2,#0x0A
   456F E4                 1248 	clr	a
   4570 F5 55              1249 	mov	(__modsint_PARM_2 + 1),a
   4572 8A 82              1250 	mov	dpl,r2
   4574 8B 83              1251 	mov	dph,r3
   4576 12 4B DE           1252 	lcall	__modsint
   4579 AA 82              1253 	mov	r2,dpl
   457B AB 83              1254 	mov	r3,dph
   457D EA                 1255 	mov	a,r2
   457E 24 21              1256 	add	a,#_cyfry
   4580 F8                 1257 	mov	r0,a
   4581 90 FF FF           1258 	mov	dptr,#_U10
   4584 E6                 1259 	mov	a,@r0
   4585 F0                 1260 	movx	@dptr,a
                           1261 ;	main.c:183: case 3: U15=W4;
                           1262 ;	main.c:184: U10=cyfry[count%10];
   4586 80 22              1263 	sjmp	00105$
   4588                    1264 00104$:
   4588 90 80 00           1265 	mov	dptr,#_U15
   458B 74 BF              1266 	mov	a,#0xBF
   458D F0                 1267 	movx	@dptr,a
                           1268 ;	main.c:185: break;		
   458E 75 54 0A           1269 	mov	__modsint_PARM_2,#0x0A
   4591 E4                 1270 	clr	a
   4592 F5 55              1271 	mov	(__modsint_PARM_2 + 1),a
   4594 85 31 82           1272 	mov	dpl,_count
   4597 85 32 83           1273 	mov	dph,(_count + 1)
   459A 12 4B DE           1274 	lcall	__modsint
   459D AA 82              1275 	mov	r2,dpl
   459F AB 83              1276 	mov	r3,dph
   45A1 EA                 1277 	mov	a,r2
   45A2 24 21              1278 	add	a,#_cyfry
   45A4 F8                 1279 	mov	r0,a
   45A5 90 FF FF           1280 	mov	dptr,#_U10
   45A8 E6                 1281 	mov	a,@r0
   45A9 F0                 1282 	movx	@dptr,a
                           1283 ;	main.c:187: iter++;
   45AA                    1284 00105$:
                           1285 ;	main.c:188: if(iter>3)
   45AA 05 2F              1286 	inc	_iter
   45AC E4                 1287 	clr	a
   45AD B5 2F 02           1288 	cjne	a,_iter,00119$
   45B0 05 30              1289 	inc	(_iter + 1)
   45B2                    1290 00119$:
                           1291 ;	main.c:189: {
   45B2 C3                 1292 	clr	c
   45B3 74 03              1293 	mov	a,#0x03
   45B5 95 2F              1294 	subb	a,_iter
   45B7 74 80              1295 	mov	a,#(0x00 ^ 0x80)
   45B9 85 30 F0           1296 	mov	b,(_iter + 1)
   45BC 63 F0 80           1297 	xrl	b,#0x80
   45BF 95 F0              1298 	subb	a,b
   45C1 50 05              1299 	jnc	00108$
                           1300 ;	main.c:191: }
   45C3 E4                 1301 	clr	a
   45C4 F5 2F              1302 	mov	_iter,a
   45C6 F5 30              1303 	mov	(_iter + 1),a
   45C8                    1304 00108$:
   45C8 D0 D0              1305 	pop	psw
   45CA D0 01              1306 	pop	(0+1)
   45CC D0 00              1307 	pop	(0+0)
   45CE D0 07              1308 	pop	(0+7)
   45D0 D0 06              1309 	pop	(0+6)
   45D2 D0 05              1310 	pop	(0+5)
   45D4 D0 04              1311 	pop	(0+4)
   45D6 D0 03              1312 	pop	(0+3)
   45D8 D0 02              1313 	pop	(0+2)
   45DA D0 83              1314 	pop	dph
   45DC D0 82              1315 	pop	dpl
   45DE D0 F0              1316 	pop	b
   45E0 D0 E0              1317 	pop	acc
   45E2 D0 20              1318 	pop	bits
   45E4 32                 1319 	reti
                           1320 ;------------------------------------------------------------
                           1321 ;Allocation info for local variables in function 'czekaj'
                           1322 ;------------------------------------------------------------
                           1323 ;t                         Allocated to registers r2 r3 
                           1324 ;w                         Allocated to registers r4 r5 
                           1325 ;------------------------------------------------------------
                           1326 ;	main.c:195: {
                           1327 ;	-----------------------------------------
                           1328 ;	 function czekaj
                           1329 ;	-----------------------------------------
   45E5                    1330 _czekaj:
   45E5 AA 82              1331 	mov	r2,dpl
   45E7 AB 83              1332 	mov	r3,dph
                           1333 ;	main.c:198: {
   45E9 7C 00              1334 	mov	r4,#0x00
   45EB 7D 00              1335 	mov	r5,#0x00
   45ED                    1336 00101$:
   45ED C3                 1337 	clr	c
   45EE EC                 1338 	mov	a,r4
   45EF 9A                 1339 	subb	a,r2
   45F0 ED                 1340 	mov	a,r5
   45F1 64 80              1341 	xrl	a,#0x80
   45F3 8B F0              1342 	mov	b,r3
   45F5 63 F0 80           1343 	xrl	b,#0x80
   45F8 95 F0              1344 	subb	a,b
   45FA 40 01              1345 	jc	00110$
   45FC 22                 1346 	ret
   45FD                    1347 00110$:
                           1348 ;	main.c:202: }
                           1349 	
   45FD 00                 1350 	  nop
                           1351 	 
                           1352 ;	main.c:198: {
   45FE 0C                 1353 	inc	r4
   45FF BC 00 EB           1354 	cjne	r4,#0x00,00101$
   4602 0D                 1355 	inc	r5
   4603 02 45 ED           1356 	ljmp	00101$
                           1357 ;------------------------------------------------------------
                           1358 ;Allocation info for local variables in function 'main'
                           1359 ;------------------------------------------------------------
                           1360 ;x                         Allocated with name '_main_x_1_1'
                           1361 ;y                         Allocated with name '_main_y_1_1'
                           1362 ;------------------------------------------------------------
                           1363 ;	main.c:206: {
                           1364 ;	-----------------------------------------
                           1365 ;	 function main
                           1366 ;	-----------------------------------------
   4606                    1367 _main:
                           1368 ;	main.c:211: {
   4606                    1369 00102$:
                           1370 ;	main.c:213: printf(itoa(count));
   4606 12 42 CA           1371 	lcall	_init_inout
                           1372 ;	main.c:214: /*count = 1;
   4609 85 31 82           1373 	mov	dpl,_count
   460C 85 32 83           1374 	mov	dph,(_count + 1)
   460F 12 41 A6           1375 	lcall	_itoa
   4612 12 41 64           1376 	lcall	_printf
                           1377 ;	main.c:236: }
   4615 80 EF              1378 	sjmp	00102$
                           1379 	.area CSEG    (CODE)
                           1380 	.area CONST   (CODE)
   4C50                    1381 __str_0:
   4C50 6B 6F 6E 69 65 63  1382 	.ascii "koniec"
   4C56 00                 1383 	.db 0x00
                           1384 	.area XINIT   (CODE)
                           1385 	.area CABS    (ABS,CODE)
