1, /* (docol) */
0, /* (docon) */
0, /* (dovar) */
0, /* (douser) */
1, /* (dodefer) */
0, /* (dofield) */
0, /* (dovalue) */
1, /* (dodoes) */
0, /* (doabicode) */
0, /* (do;abicode) */
GROUPADD(10)
GROUP( control, 10)
0, /* noop */
1, /* call */
1, /* execute */
1, /* perform */
1, /* ;s */
1, /* execute-;s */
0, /* unloop */
1, /* lit-perform */
1, /* does-xt */
GROUPADD(9)
#ifdef HAS_GLOCALS
1, /* branch-lp+!# */
GROUPADD(1)
#endif
1, /* branch */
1, /* ?branch */
GROUPADD(2)
#ifdef HAS_GLOCALS
1, /* ?branch-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#ifdef HAS_XCONDS
1, /* ?dup-?branch */
1, /* ?dup-0=-?branch */
GROUPADD(2)
#endif
1, /* (next) */
GROUPADD(1)
#ifdef HAS_GLOCALS
1, /* (next)-lp+!# */
GROUPADD(1)
#endif
1, /* (loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
1, /* (loop)-lp+!# */
GROUPADD(1)
#endif
1, /* (+loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
1, /* (+loop)-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#ifdef HAS_XCONDS
1, /* (-loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
1, /* (-loop)-lp+!# */
GROUPADD(1)
#endif
1, /* (/loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
1, /* (/loop)-lp+!# */
GROUPADD(1)
#endif
1, /* (s+loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
1, /* (s+loop)-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#endif
0, /* (for) */
0, /* (do) */
1, /* (?do) */
GROUPADD(3)
#ifdef HAS_XCONDS
1, /* (+do) */
1, /* (u+do) */
1, /* (-do) */
1, /* (u-do) */
1, /* (-[do) */
1, /* (u-[do) */
0, /* (try) */
0, /* uncatch */
1, /* fast-throw */
GROUPADD(9)
#endif
0, /* i */
0, /* i' */
0, /* j */
0, /* k */
0, /* bounds */
0, /* delta-i */
0, /* r'@ */
0, /* rpick# */
GROUPADD(8)
GROUP( strings, 57)
0, /* move */
0, /* cmove */
0, /* cmove> */
0, /* fill */
0, /* compare */
0, /* toupper */
0, /* capscompare */
0, /* /string */
0, /* safe/string */
GROUPADD(9)
GROUP( arith, 66)
0, /* lit */
0, /* + */
0, /* lit+ */
0, /* under+ */
0, /* - */
0, /* negate */
0, /* 1+ */
0, /* 1- */
0, /* max */
0, /* min */
0, /* abs */
0, /* * */
0, /* /f */
0, /* modf */
0, /* /modf */
0, /* x/modf */
0, /* x/f */
0, /* /s */
0, /* mods */
0, /* /mods */
0, /* x/mods */
0, /* x/s */
0, /* 2* */
0, /* 2/ */
0, /* fm/mod */
0, /* sm/rem */
0, /* m* */
0, /* um* */
0, /* um/mod */
0, /* u/-stage2m */
0, /* umod-stage2m */
0, /* u/mod-stage2m */
0, /* /f-stage2m */
0, /* modf-stage2m */
0, /* /modf-stage2m */
0, /* m+ */
0, /* d+ */
0, /* d- */
0, /* dnegate */
0, /* d2* */
0, /* d2/ */
0, /* and */
0, /* or */
0, /* xor */
0, /* invert */
0, /* rshift */
0, /* lshift */
0, /* umax */
0, /* umin */
0, /* mux */
0, /* select */
0, /* dlshift */
0, /* drshift */
0, /* rol */
0, /* ror */
0, /* wrol */
0, /* wror */
0, /* lrol */
0, /* lror */
0, /* drol */
0, /* dror */
0, /* du/mod */
0, /* u/ */
0, /* umod */
0, /* u/mod */
0, /* ux/mod */
0, /* ux/ */
0, /* arshift */
0, /* darshift */
GROUPADD(69)
GROUP( compare, 135)
0, /* 0= */
0, /* 0<> */
0, /* 0< */
0, /* 0> */
0, /* 0<= */
0, /* 0>= */
0, /* = */
0, /* <> */
0, /* < */
0, /* > */
0, /* <= */
0, /* >= */
0, /* u= */
0, /* u<> */
0, /* u< */
0, /* u> */
0, /* u<= */
0, /* u>= */
GROUPADD(18)
#ifdef HAS_DCOMPS
0, /* d= */
0, /* d<> */
0, /* d< */
0, /* d> */
0, /* d<= */
0, /* d>= */
0, /* d0= */
0, /* d0<> */
0, /* d0< */
0, /* d0> */
0, /* d0<= */
0, /* d0>= */
0, /* du= */
0, /* du<> */
0, /* du< */
0, /* du> */
0, /* du<= */
0, /* du>= */
GROUPADD(18)
#endif
0, /* within */
GROUPADD(1)
GROUP( stack, 172)
0, /* up! */
0, /* sp@ */
0, /* sp! */
0, /* rp@ */
0, /* rp! */
GROUPADD(5)
#ifdef HAS_FLOATING
0, /* fp@ */
0, /* fp! */
GROUPADD(2)
#endif
0, /* >r */
0, /* r> */
0, /* rdrop */
0, /* 2>r */
0, /* 2r> */
0, /* 2r@ */
0, /* 2rdrop */
0, /* f>r */
0, /* fr> */
0, /* fr@ */
0, /* over */
0, /* drop */
0, /* swap */
0, /* dup */
0, /* rot */
0, /* -rot */
0, /* nip */
0, /* tuck */
0, /* ?dup */
0, /* pick */
0, /* third */
0, /* fourth */
0, /* 2drop */
0, /* 2dup */
0, /* 2over */
0, /* 2swap */
0, /* 2rot */
0, /* 2nip */
0, /* 2tuck */
0, /* sps@ */
GROUPADD(30)
GROUP( memory, 209)
0, /* @ */
0, /* lit@ */
0, /* ! */
0, /* +! */
0, /* c@ */
0, /* c! */
0, /* 2! */
0, /* 2@ */
0, /* cell+ */
0, /* cells */
0, /* char+ */
0, /* count */
0, /* cell/ */
0, /* cell- */
0, /* inc# */
GROUPADD(15)
GROUP( compiler, 224)
GROUPADD(0)
#ifdef HAS_F83HEADERSTRING
0, /* (f83find) */
GROUPADD(1)
#else /* 225 */
0, /* (listlfind) */
GROUPADD(1)
#ifdef HAS_HASH
0, /* (hashlfind) */
0, /* (tablelfind) */
0, /* (hashkey1) */
0, /* (hashkey2) */
0, /* hashkey2 */
GROUPADD(5)
#endif
GROUPADD(0)
#endif
0, /* (parse-white) */
0, /* scan */
0, /* skip */
0, /* aligned */
0, /* faligned */
0, /* threading-method */
0, /* debugging-method */
0, /* die-on-signal */
GROUPADD(8)
GROUP( hostos, 239)
0, /* (key-file) */
0, /* key?-file */
0, /* stdin */
0, /* stdout */
0, /* stderr */
0, /* term-prep? */
GROUPADD(6)
#ifdef HAS_OS
0, /* (form) */
0, /* isatty */
0, /* isfg */
0, /* wcwidth */
0, /* flush-icache */
1, /* (bye) */
0, /* (system) */
0, /* getenv */
0, /* open-pipe */
0, /* close-pipe */
0, /* >time&date&tz */
0, /* (ms) */
0, /* heap-allocate */
0, /* heap-free */
0, /* heap-resize */
0, /* strerror */
0, /* strsignal */
0, /* call-c */
0, /* call-c# */
0, /* call-c@ */
0, /* gforth-pointers */
0, /* winch? */
GROUPADD(22)
#endif
GROUPADD(0)
#ifdef HAS_FILE
0, /* close-file */
0, /* open-file */
0, /* create-file */
0, /* delete-file */
0, /* rename-file */
0, /* file-position */
0, /* reposition-file */
0, /* file-size */
0, /* resize-file */
0, /* read-file */
0, /* (read-line) */
GROUPADD(11)
#endif
0, /* write-file */
0, /* emit-file */
GROUPADD(2)
#ifdef HAS_FILE
0, /* flush-file */
0, /* file-status */
0, /* file-eof? */
0, /* open-dir */
0, /* read-dir */
0, /* close-dir */
0, /* filename-match */
0, /* set-dir */
0, /* get-dir */
0, /* =mkdir */
GROUPADD(10)
#endif
0, /* newline */
GROUPADD(1)
#ifdef HAS_OS
0, /* utime */
0, /* cputime */
0, /* ntime */
0, /* (ns) */
GROUPADD(4)
#endif
GROUPADD(0)
#ifdef HAS_FLOATING
GROUPADD(0)
GROUP( floating, 295)
0, /* f= */
0, /* f<> */
0, /* f< */
0, /* f> */
0, /* f<= */
0, /* f>= */
0, /* f0= */
0, /* f0<> */
0, /* f0< */
0, /* f0> */
0, /* f0<= */
0, /* f0>= */
0, /* s>f */
0, /* d>f */
0, /* f>d */
0, /* f>s */
0, /* f! */
0, /* f@ */
0, /* df@ */
0, /* df! */
0, /* sf@ */
0, /* sf! */
0, /* f+ */
0, /* f- */
0, /* f* */
0, /* f/ */
0, /* f** */
0, /* fm* */
0, /* fm/ */
0, /* fmx/ */
0, /* f**2 */
0, /* fnegate */
0, /* fdrop */
0, /* fdup */
0, /* fswap */
0, /* fover */
0, /* frot */
0, /* fnip */
0, /* ftuck */
0, /* float+ */
0, /* floats */
0, /* floor */
0, /* fround */
0, /* fmax */
0, /* fmin */
0, /* represent */
0, /* >float */
0, /* fabs */
0, /* facos */
0, /* fasin */
0, /* fatan */
0, /* fatan2 */
0, /* fcos */
0, /* fexp */
0, /* fexpm1 */
0, /* fln */
0, /* flnp1 */
0, /* flog */
0, /* falog */
0, /* fsin */
0, /* fsincos */
0, /* fsqrt */
0, /* ftan */
0, /* fsinh */
0, /* fcosh */
0, /* ftanh */
0, /* fasinh */
0, /* facosh */
0, /* fatanh */
0, /* sfloats */
0, /* dfloats */
0, /* sfaligned */
0, /* dfaligned */
0, /* v* */
0, /* faxpy */
0, /* >float1 */
0, /* float/ */
0, /* dfloat/ */
0, /* sfloat/ */
0, /* f-rot */
0, /* flit */
0, /* flit0 */
0, /* flit1 */
GROUPADD(83)
#endif
GROUPADD(0)
#ifdef HAS_GLOCALS
GROUPADD(0)
GROUP( locals, 378)
0, /* @localn */
0, /* @local0 */
0, /* @local1 */
0, /* @local2 */
0, /* @local3 */
0, /* @local4 */
0, /* @local5 */
0, /* @local6 */
0, /* @local7 */
0, /* !localn */
0, /* !local0 */
0, /* !local1 */
0, /* !local2 */
0, /* !local3 */
0, /* !local4 */
0, /* !local5 */
0, /* !local6 */
0, /* !local7 */
0, /* +!localn */
0, /* lp+n */
GROUPADD(20)
#ifdef HAS_FLOATING
0, /* f@localn */
GROUPADD(1)
#endif
0, /* lp@ */
0, /* lp+! */
0, /* lp- */
0, /* lp+ */
0, /* lp+2 */
0, /* lp! */
0, /* >l */
GROUPADD(7)
#ifdef HAS_FLOATING
0, /* f>l */
0, /* fpick */
0, /* fthird */
0, /* ffourth */
GROUPADD(4)
#endif
GROUPADD(0)
#endif
GROUPADD(0)
#ifdef HAS_OS
GROUPADD(0)
GROUP( syslib, 410)
0, /* open-lib */
0, /* open-lib2 */
0, /* lib-sym */
0, /* lib-sym2 */
0, /* wcall */
0, /* w@ */
0, /* w! */
0, /* l@ */
0, /* l! */
0, /* lib-error */
0, /* close-lib */
0, /* close-lib2 */
GROUPADD(12)
#endif
GROUPADD(0)
GROUP( 64bit, 422)
GROUPADD(0)
#ifdef HAS_64BIT
0, /* x! */
0, /* x@ */
GROUPADD(2)
#endif
GROUPADD(0)
GROUP( memory, 424)
0, /* xd! */
0, /* xd@ */
0, /* w>< */
0, /* l>< */
0, /* x>< */
0, /* xd>< */
0, /* c>s */
0, /* w>s */
0, /* l>s */
0, /* >pow2 */
0, /* log2 */
0, /* u8@+? */
GROUPADD(12)
GROUP( atomic, 436)
0, /* !@ */
0, /* +!@ */
0, /* ?!@ */
0, /* barrier */
GROUPADD(4)
GROUP( peephole, 440)
GROUPADD(0)
#ifdef HAS_PEEPHOLE
0, /* forget-dyncode3 */
0, /* decompile-prim3 */
0, /* @decompile-prim */
0, /* tag-offsets */
0, /* compile-prims */
GROUPADD(5)
#endif
GROUPADD(0)
GROUP( primitive_centric, 445)
0, /* abi-call */
0, /* ;abi-code-exec */
1, /* lit-execute */
GROUPADD(3)
GROUP( object_pointer, 448)
GROUPADD(0)
#ifdef HAS_OBJECTS
0, /* >o */
0, /* o> */
1, /* o#exec */
1, /* x#exec */
1, /* u#exec */
0, /* u#+ */
0, /* up@ */
0, /* o */
0, /* o+ */
0, /* !o+ */
0, /* @o+ */
0, /* sf!o+ */
0, /* sf@o+ */
0, /* o0 */
0, /* o1 */
0, /* o2 */
0, /* o3 */
0, /* o4 */
0, /* o5 */
0, /* o6 */
0, /* o7 */
0, /* o8 */
0, /* o9 */
0, /* o10 */
0, /* o11 */
0, /* o12 */
0, /* o13 */
0, /* o14 */
0, /* o15 */
0, /* o16 */
0, /* o17 */
0, /* o18 */
0, /* o19 */
0, /* o20 */
0, /* o21 */
0, /* o22 */
0, /* o23 */
0, /* o24 */
0, /* o25 */
0, /* o26 */
0, /* o27 */
0, /* o28 */
0, /* o29 */
0, /* o30 */
0, /* o31 */
0, /* !o0 */
0, /* !o1 */
0, /* !o2 */
0, /* !o3 */
0, /* !o4 */
0, /* !o5 */
0, /* !o6 */
0, /* !o7 */
0, /* !o8 */
0, /* !o9 */
0, /* !o10 */
0, /* !o11 */
0, /* !o12 */
0, /* !o13 */
0, /* !o14 */
0, /* !o15 */
0, /* @o0 */
0, /* @o1 */
0, /* @o2 */
0, /* @o3 */
0, /* @o4 */
0, /* @o5 */
0, /* @o6 */
0, /* @o7 */
0, /* @o8 */
0, /* @o9 */
0, /* @o10 */
0, /* @o11 */
0, /* @o12 */
0, /* @o13 */
0, /* @o14 */
0, /* @o15 */
0, /* sf!o0 */
0, /* sf!o1 */
0, /* sf!o2 */
0, /* sf!o3 */
0, /* sf!o4 */
0, /* sf!o5 */
0, /* sf!o6 */
0, /* sf!o7 */
0, /* sf!o8 */
0, /* sf!o9 */
0, /* sf!o10 */
0, /* sf!o11 */
0, /* sf!o12 */
0, /* sf!o13 */
0, /* sf!o14 */
0, /* sf!o15 */
0, /* sf!o16 */
0, /* sf!o17 */
0, /* sf!o18 */
0, /* sf!o19 */
0, /* sf!o20 */
0, /* sf!o21 */
0, /* sf!o22 */
0, /* sf!o23 */
0, /* sf!o24 */
0, /* sf!o25 */
0, /* sf!o26 */
0, /* sf!o27 */
0, /* sf!o28 */
0, /* sf!o29 */
0, /* sf!o30 */
0, /* sf!o31 */
0, /* sf@o0 */
0, /* sf@o1 */
0, /* sf@o2 */
0, /* sf@o3 */
0, /* sf@o4 */
0, /* sf@o5 */
0, /* sf@o6 */
0, /* sf@o7 */
0, /* sf@o8 */
0, /* sf@o9 */
0, /* sf@o10 */
0, /* sf@o11 */
0, /* sf@o12 */
0, /* sf@o13 */
0, /* sf@o14 */
0, /* sf@o15 */
0, /* sf@o16 */
0, /* sf@o17 */
0, /* sf@o18 */
0, /* sf@o19 */
0, /* sf@o20 */
0, /* sf@o21 */
0, /* sf@o22 */
0, /* sf@o23 */
0, /* sf@o24 */
0, /* sf@o25 */
0, /* sf@o26 */
0, /* sf@o27 */
0, /* sf@o28 */
0, /* sf@o29 */
0, /* sf@o30 */
0, /* sf@o31 */
GROUPADD(141)
#endif
GROUPADD(0)
GROUP( static_super, 589)
GROUPADD(0)
GROUP( end, 589)
