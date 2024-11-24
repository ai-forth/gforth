\ run-time routine headers

\ Authors: Anton Ertl, Bernd Paysan, David Kühling
\ Copyright (C) 1997,1998,2002,2003,2006,2007,2010,2013,2015,2016,2019,2021,2023 Free Software Foundation, Inc.

\ This file is part of Gforth.

\ Gforth is free software; you can redistribute it and/or
\ modify it under the terms of the GNU General Public License
\ as published by the Free Software Foundation, either version 3
\ of the License, or (at your option) any later version.

\ This program is distributed in the hope that it will be useful,
\ but WITHOUT ANY WARRANTY; without even the implied warranty of
\ MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
\ GNU General Public License for more details.

\ You should have received a copy of the GNU General Public License
\ along with this program. If not, see http://www.gnu.org/licenses/.

-2 Doer: :docol
-3 Doer: :docon
-3 Doer: :doacon
-4 Doer: :dovar
-5 Doer: :douser
-6 Doer: :dodefer
-7 Doer: :dofield
-8 Doer: :dovalue
-9 Doer: :dodoes
-9 Doer: :dodoes1
-9 Doer: :dodoes2
-9 Doer: :dodoes3
-9 Doer: :dodoes4
-9 Doer: :dodoes5
-9 Doer: :dodoes6
-9 Doer: :dodoes7
-9 Doer: :dodoes8
-9 Doer: :dodoes9
-&10 Doer: :doabicode
-&11 Doer: :do;abicode
-&2 first-primitive
\ this does not work for (at least) (DODOES),
\ so the following routines are commented out
 0 [if]
174 0 #loc prim Primitive (docol)
189 0 #loc prim Primitive (docon)
193 0 #loc prim Primitive (dovar)
197 0 #loc prim Primitive (douser)
201 0 #loc prim Primitive (dodefer)
207 0 #loc prim Primitive (dofield)
211 0 #loc prim Primitive (dovalue)
215 0 #loc prim Primitive (dodoes)
221 0 #loc prim Primitive (doabicode)
228 0 #loc prim Primitive (do;abicode)
 [endif]
10 groupadd
group  control
240 0 #loc prim Primitive noop
244 0 #loc prim Primitive call
259 0 #loc prim Primitive execute
268 0 #loc prim Primitive perform
277 0 #loc prim Primitive ;s
281 0 #loc prim Primitive execute-;s
290 0 #loc prim Primitive unloop
295 0 #loc prim Primitive lit-perform
300 0 #loc prim Primitive does-xt
9 groupadd
has? glocals [IF]
314 0 #loc prim Primitive branch-lp+!#
1 groupadd
[THEN]
322 0 #loc prim Primitive branch
350 0 #loc prim Primitive ?branch
2 groupadd
has? glocals [IF]
350 0 #loc prim Primitive ?branch-lp+!#
1 groupadd
[THEN]
0 groupadd
has? xconds [IF]
363 0 #loc prim Primitive ?dup-?branch
372 0 #loc prim Primitive ?dup-0=-?branch
2 groupadd
[THEN]
has? skiploopprims 0= [IF]
383 0 #loc prim Primitive (next)
1 groupadd
has? glocals [IF]
383 0 #loc prim Primitive (next)-lp+!#
1 groupadd
[THEN]
390 0 #loc prim Primitive (loop)
1 groupadd
has? glocals [IF]
390 0 #loc prim Primitive (loop)-lp+!#
1 groupadd
[THEN]
398 0 #loc prim Primitive (+loop)
1 groupadd
has? glocals [IF]
398 0 #loc prim Primitive (+loop)-lp+!#
1 groupadd
[THEN]
0 groupadd
has? xconds [IF]
426 0 #loc prim Primitive (-loop)
1 groupadd
has? glocals [IF]
426 0 #loc prim Primitive (-loop)-lp+!#
1 groupadd
[THEN]
431 0 #loc prim Primitive (/loop)
1 groupadd
has? glocals [IF]
431 0 #loc prim Primitive (/loop)-lp+!#
1 groupadd
[THEN]
436 0 #loc prim Primitive (s+loop)
1 groupadd
has? glocals [IF]
436 0 #loc prim Primitive (s+loop)-lp+!#
1 groupadd
[THEN]
0 groupadd
[THEN]
453 0 #loc prim Primitive (for)
459 0 #loc prim Primitive (do)
463 0 #loc prim Primitive (?do)
3 groupadd
has? xconds [IF]
477 0 #loc prim Primitive (+do)
491 0 #loc prim Primitive (u+do)
505 0 #loc prim Primitive (-do)
519 0 #loc prim Primitive (u-do)
533 0 #loc prim Primitive (-[do)
547 0 #loc prim Primitive (u-[do)
562 0 #loc prim Primitive (try)
571 0 #loc prim Primitive uncatch
574 0 #loc prim Primitive fast-throw
9 groupadd
[THEN]
589 0 #loc prim Primitive i
595 0 #loc prim Primitive i'
602 0 #loc prim Primitive j
609 0 #loc prim Primitive k
616 0 #loc prim Primitive bounds
622 0 #loc prim Primitive delta-i
628 0 #loc prim Primitive r'@
634 0 #loc prim Primitive rpick#
[THEN]
8 groupadd
group  strings
643 0 #loc prim Primitive move
652 0 #loc prim Primitive cmove
661 0 #loc prim Primitive cmove>
672 0 #loc prim Primitive fill
679 0 #loc prim Primitive compare
709 0 #loc prim Primitive toupper
716 0 #loc prim Primitive capscompare
726 0 #loc prim Primitive /string
734 0 #loc prim Primitive safe/string
9 groupadd
group  arith
751 0 #loc prim Primitive lit
755 0 #loc prim Primitive +
760 0 #loc prim Primitive lit+
767 0 #loc prim Primitive under+
773 0 #loc prim Primitive -
778 0 #loc prim Primitive negate
784 0 #loc prim Primitive 1+
789 0 #loc prim Primitive 1-
794 0 #loc prim Primitive max
802 0 #loc prim Primitive min
810 0 #loc prim Primitive abs
818 0 #loc prim Primitive *
823 0 #loc prim Primitive /f
835 0 #loc prim Primitive modf
847 0 #loc prim Primitive /modf
863 0 #loc prim Primitive */modf
888 0 #loc prim Primitive */f
911 0 #loc prim Primitive /s
921 0 #loc prim Primitive mods
931 0 #loc prim Primitive /mods
943 0 #loc prim Primitive */mods
962 0 #loc prim Primitive */s
980 0 #loc prim Primitive 2*
986 0 #loc prim Primitive 2/
998 0 #loc prim Primitive fm/mod
1019 0 #loc prim Primitive sm/rem
1035 0 #loc prim Primitive m*
1042 0 #loc prim Primitive um*
1054 0 #loc prim Primitive um/mod
1074 0 #loc prim Primitive u/-stage2m
1080 0 #loc prim Primitive umod-stage2m
1087 0 #loc prim Primitive u/mod-stage2m
1095 0 #loc prim Primitive /f-stage2m
1100 0 #loc prim Primitive modf-stage2m
1107 0 #loc prim Primitive /modf-stage2m
1115 0 #loc prim Primitive m+
1125 0 #loc prim Primitive d+
1130 0 #loc prim Primitive d-
1140 0 #loc prim Primitive dnegate
1150 0 #loc prim Primitive d2*
1156 0 #loc prim Primitive d2/
1169 0 #loc prim Primitive and
1172 0 #loc prim Primitive or
1177 0 #loc prim Primitive xor
1180 0 #loc prim Primitive invert
1185 0 #loc prim Primitive rshift
1196 0 #loc prim Primitive lshift
1206 0 #loc prim Primitive umax
1214 0 #loc prim Primitive umin
1222 0 #loc prim Primitive mux
1230 0 #loc prim Primitive select
1236 0 #loc prim Primitive dlshift
1251 0 #loc prim Primitive drshift
1267 0 #loc prim Primitive rol
1271 0 #loc prim Primitive ror
1275 0 #loc prim Primitive wrol
1280 0 #loc prim Primitive wror
1285 0 #loc prim Primitive lrol
1290 0 #loc prim Primitive lror
1295 0 #loc prim Primitive drol
1314 0 #loc prim Primitive dror
1333 0 #loc prim Primitive du/mod
1352 0 #loc prim Primitive u/
1360 0 #loc prim Primitive umod
1368 0 #loc prim Primitive u/mod
1378 0 #loc prim Primitive u*/mod
1396 0 #loc prim Primitive u*/
1414 0 #loc prim Primitive arshift
1421 0 #loc prim Primitive darshift
69 groupadd
group  compare
1490 0 #loc prim Primitive 0=
1490 0 #loc prim Primitive 0<>
1490 0 #loc prim Primitive 0<
1490 0 #loc prim Primitive 0>
1490 0 #loc prim Primitive 0<=
1490 0 #loc prim Primitive 0>=
1491 0 #loc prim Primitive =
1491 0 #loc prim Primitive <>
1491 0 #loc prim Primitive <
1491 0 #loc prim Primitive >
1491 0 #loc prim Primitive <=
1491 0 #loc prim Primitive >=
1492 0 #loc prim Primitive u=
1492 0 #loc prim Primitive u<>
1492 0 #loc prim Primitive u<
1492 0 #loc prim Primitive u>
1492 0 #loc prim Primitive u<=
1492 0 #loc prim Primitive u>=
18 groupadd
has? dcomps [IF]
1542 0 #loc prim Primitive d=
1542 0 #loc prim Primitive d<>
1542 0 #loc prim Primitive d<
1542 0 #loc prim Primitive d>
1542 0 #loc prim Primitive d<=
1542 0 #loc prim Primitive d>=
1543 0 #loc prim Primitive d0=
1543 0 #loc prim Primitive d0<>
1543 0 #loc prim Primitive d0<
1543 0 #loc prim Primitive d0>
1543 0 #loc prim Primitive d0<=
1543 0 #loc prim Primitive d0>=
1544 0 #loc prim Primitive du=
1544 0 #loc prim Primitive du<>
1544 0 #loc prim Primitive du<
1544 0 #loc prim Primitive du>
1544 0 #loc prim Primitive du<=
1544 0 #loc prim Primitive du>=
18 groupadd
[THEN]
1548 0 #loc prim Primitive within
1 groupadd
group  stack
1562 0 #loc prim Primitive up!
1568 0 #loc prim Primitive sp@
1571 0 #loc prim Primitive sp!
1574 0 #loc prim Primitive rp@
1577 0 #loc prim Primitive rp!
5 groupadd
has? floating [IF]
1582 0 #loc prim Primitive fp@
1585 0 #loc prim Primitive fp!
2 groupadd
[THEN]
1590 0 #loc prim Primitive >r
1595 0 #loc prim Primitive r>
1600 0 #loc prim Primitive rdrop
1605 0 #loc prim Primitive 2>r
1609 0 #loc prim Primitive 2r>
1613 0 #loc prim Primitive 2r@
1617 0 #loc prim Primitive 2rdrop
1622 0 #loc prim Primitive f>r
1627 0 #loc prim Primitive fr>
1633 0 #loc prim Primitive fr@
1638 0 #loc prim Primitive over
1642 0 #loc prim Primitive drop
1647 0 #loc prim Primitive swap
1652 0 #loc prim Primitive dup
1656 0 #loc prim Primitive rot
1665 0 #loc prim Primitive -rot
1669 0 #loc prim Primitive nip
1673 0 #loc prim Primitive tuck
1677 0 #loc prim Primitive ?dup
1686 0 #loc prim Primitive pick
1692 0 #loc prim Primitive third
1694 0 #loc prim Primitive fourth
1696 0 #loc prim Primitive 2drop
1701 0 #loc prim Primitive 2dup
1705 0 #loc prim Primitive 2over
1709 0 #loc prim Primitive 2swap
1713 0 #loc prim Primitive 2rot
1717 0 #loc prim Primitive 2nip
1721 0 #loc prim Primitive 2tuck
1725 0 #loc prim Primitive sps@
30 groupadd
group  memory
1732 0 #loc prim Primitive @
1738 0 #loc prim Primitive lit@
1741 0 #loc prim Primitive !
1745 0 #loc prim Primitive +!
1751 0 #loc prim Primitive c@
1777 0 #loc prim Primitive c!
1807 0 #loc prim Primitive 2!
1814 0 #loc prim Primitive 2@
1822 0 #loc prim Primitive cell+
1828 0 #loc prim Primitive cells
1839 0 #loc prim Primitive char+
1845 0 #loc prim Primitive count
1853 0 #loc prim Primitive cell/
1865 0 #loc prim Primitive cell-
1871 0 #loc prim Primitive inc#
15 groupadd
group  compiler
0 groupadd
has? f83headerstring [IF]
1880 0 #loc prim Primitive (f83find)
1 groupadd
[ELSE]
1910 0 #loc prim Primitive (listlfind)
1 groupadd
has? hash [IF]
1931 0 #loc prim Primitive (hashlfind)
1941 0 #loc prim Primitive (tablelfind)
1958 0 #loc prim Primitive (hashkey1)
1974 0 #loc prim Primitive (hashkey2)
1978 0 #loc prim Primitive hashkey2
5 groupadd
[THEN]
0 groupadd
[THEN]
1987 0 #loc prim Primitive (parse-white)
1997 0 #loc prim Primitive scan
2020 0 #loc prim Primitive skip
2038 0 #loc prim Primitive aligned
2044 0 #loc prim Primitive faligned
has? standardthreading has? compiler and [IF]
2052 0 #loc prim Primitive threading-method
2067 0 #loc prim Primitive debugging-method
2077 0 #loc prim Primitive die-on-signal
[THEN]
8 groupadd
group  hostos
2084 0 #loc prim Primitive (key-file)
2098 0 #loc prim Primitive key?-file
2110 0 #loc prim Primitive stdin
2114 0 #loc prim Primitive stdout
2118 0 #loc prim Primitive stderr
2122 0 #loc prim Primitive term-prep?
6 groupadd
has? os [IF]
2127 0 #loc prim Primitive (form)
2140 0 #loc prim Primitive isatty
2144 0 #loc prim Primitive isfg
2152 0 #loc prim Primitive wcwidth
2156 0 #loc prim Primitive flush-icache
2168 0 #loc prim Primitive (bye)
2176 0 #loc prim Primitive (system)
2180 0 #loc prim Primitive getenv
2191 0 #loc prim Primitive open-pipe
2198 0 #loc prim Primitive close-pipe
2202 0 #loc prim Primitive >time&date&tz
2229 0 #loc prim Primitive (ms)
2233 0 #loc prim Primitive heap-allocate
2242 0 #loc prim Primitive heap-free
2250 0 #loc prim Primitive heap-resize
2269 0 #loc prim Primitive strerror
2273 0 #loc prim Primitive strsignal
2277 0 #loc prim Primitive call-c
2285 0 #loc prim Primitive call-c#
2293 0 #loc prim Primitive call-c@
2301 0 #loc prim Primitive gforth-pointers
2304 0 #loc prim Primitive winch?
22 groupadd
[THEN]
0 groupadd
has? file [IF]
2314 0 #loc prim Primitive close-file
2317 0 #loc prim Primitive open-file
2322 0 #loc prim Primitive create-file
2327 0 #loc prim Primitive delete-file
2332 0 #loc prim Primitive rename-file
2336 0 #loc prim Primitive file-position
2341 0 #loc prim Primitive reposition-file
2344 0 #loc prim Primitive file-size
2354 0 #loc prim Primitive resize-file
2357 0 #loc prim Primitive read-file
2372 0 #loc prim Primitive (read-line)
11 groupadd
[THEN]
2381 0 #loc prim Primitive write-file
2394 0 #loc prim Primitive emit-file
2 groupadd
has? file [IF]
2407 0 #loc prim Primitive flush-file
2410 0 #loc prim Primitive file-status
2415 0 #loc prim Primitive file-eof?
2419 0 #loc prim Primitive open-dir
2427 0 #loc prim Primitive read-dir
2455 0 #loc prim Primitive close-dir
2459 0 #loc prim Primitive filename-match
2469 0 #loc prim Primitive set-dir
2476 0 #loc prim Primitive get-dir
2486 0 #loc prim Primitive =mkdir
10 groupadd
[THEN]
2494 0 #loc prim Primitive newline
1 groupadd
has? os [IF]
2513 0 #loc prim Primitive utime
2519 0 #loc prim Primitive cputime
2537 0 #loc prim Primitive ntime
2550 0 #loc prim Primitive (ns)
4 groupadd
[THEN]
0 groupadd
has? floating [IF]
0 groupadd
group  floating
2570 0 #loc prim Primitive f=
2570 0 #loc prim Primitive f<>
2570 0 #loc prim Primitive f<
2570 0 #loc prim Primitive f>
2570 0 #loc prim Primitive f<=
2570 0 #loc prim Primitive f>=
2571 0 #loc prim Primitive f0=
2571 0 #loc prim Primitive f0<>
2571 0 #loc prim Primitive f0<
2571 0 #loc prim Primitive f0>
2571 0 #loc prim Primitive f0<=
2571 0 #loc prim Primitive f0>=
2573 0 #loc prim Primitive s>f
2576 0 #loc prim Primitive d>f
2592 0 #loc prim Primitive f>d
2596 0 #loc prim Primitive f>s
2599 0 #loc prim Primitive f!
2603 0 #loc prim Primitive f@
2607 0 #loc prim Primitive df@
2615 0 #loc prim Primitive df!
2624 0 #loc prim Primitive sf@
2632 0 #loc prim Primitive sf!
2641 0 #loc prim Primitive f+
2644 0 #loc prim Primitive f-
2647 0 #loc prim Primitive f*
2650 0 #loc prim Primitive f/
2653 0 #loc prim Primitive f**
2659 0 #loc prim Primitive fm*
2662 0 #loc prim Primitive fm/
2665 0 #loc prim Primitive fm*/
2668 0 #loc prim Primitive f**2
2671 0 #loc prim Primitive fnegate
2674 0 #loc prim Primitive fdrop
2677 0 #loc prim Primitive fdup
2679 0 #loc prim Primitive fswap
2681 0 #loc prim Primitive fover
2683 0 #loc prim Primitive frot
2685 0 #loc prim Primitive fnip
2687 0 #loc prim Primitive ftuck
2689 0 #loc prim Primitive float+
2693 0 #loc prim Primitive floats
2697 0 #loc prim Primitive floor
2704 0 #loc prim Primitive fround
2710 0 #loc prim Primitive fmax
2716 0 #loc prim Primitive fmin
2722 0 #loc prim Primitive represent
2758 0 #loc prim Primitive >float
2772 0 #loc prim Primitive fabs
2775 0 #loc prim Primitive facos
2780 0 #loc prim Primitive fasin
2785 0 #loc prim Primitive fatan
2790 0 #loc prim Primitive fatan2
2797 0 #loc prim Primitive fcos
2802 0 #loc prim Primitive fexp
2808 0 #loc prim Primitive fexpm1
2823 0 #loc prim Primitive fln
2829 0 #loc prim Primitive flnp1
2844 0 #loc prim Primitive flog
2850 0 #loc prim Primitive falog
2857 0 #loc prim Primitive fsin
2862 0 #loc prim Primitive fsincos
2868 0 #loc prim Primitive fsqrt
2873 0 #loc prim Primitive ftan
2880 0 #loc prim Primitive fsinh
2887 0 #loc prim Primitive fcosh
2894 0 #loc prim Primitive ftanh
2901 0 #loc prim Primitive fasinh
2908 0 #loc prim Primitive facosh
2915 0 #loc prim Primitive fatanh
2923 0 #loc prim Primitive sfloats
2928 0 #loc prim Primitive dfloats
2933 0 #loc prim Primitive sfaligned
2940 0 #loc prim Primitive dfaligned
2947 0 #loc prim Primitive v*
2957 0 #loc prim Primitive faxpy
2968 0 #loc prim Primitive >float1
2983 0 #loc prim Primitive float/
2989 0 #loc prim Primitive dfloat/
2995 0 #loc prim Primitive sfloat/
3001 0 #loc prim Primitive f-rot
3003 0 #loc prim Primitive flit
3009 0 #loc prim Primitive flit0
3016 0 #loc prim Primitive flit1
83 groupadd
[THEN]
0 groupadd
has? glocals [IF]
0 groupadd
group  locals
3036 0 #loc prim Primitive @localn
3045 0 #loc prim Primitive @local0
3045 0 #loc prim Primitive @local1
3045 0 #loc prim Primitive @local2
3045 0 #loc prim Primitive @local3
3045 0 #loc prim Primitive @local4
3045 0 #loc prim Primitive @local5
3045 0 #loc prim Primitive @local6
3045 0 #loc prim Primitive @local7
3049 0 #loc prim Primitive !localn
3052 0 #loc prim Primitive !local0
3051 0 #loc prim Primitive !local1
3051 0 #loc prim Primitive !local2
3051 0 #loc prim Primitive !local3
3051 0 #loc prim Primitive !local4
3051 0 #loc prim Primitive !local5
3051 0 #loc prim Primitive !local6
3051 0 #loc prim Primitive !local7
3055 0 #loc prim Primitive +!localn
3058 0 #loc prim Primitive lp+n
20 groupadd
has? floating [IF]
3063 0 #loc prim Primitive f@localn
1 groupadd
[THEN]
3077 0 #loc prim Primitive lp@
3081 0 #loc prim Primitive lp+!
3088 0 #loc prim Primitive lp-
3091 0 #loc prim Primitive lp+
3095 0 #loc prim Primitive lp+2
3099 0 #loc prim Primitive lp!
3102 0 #loc prim Primitive >l
7 groupadd
has? floating [IF]
3108 0 #loc prim Primitive f>l
3112 0 #loc prim Primitive fpick
3118 0 #loc prim Primitive fthird
3120 0 #loc prim Primitive ffourth
4 groupadd
[THEN]
0 groupadd
[THEN]
0 groupadd
has? OS [IF]
0 groupadd
group  syslib
3129 0 #loc prim Primitive open-lib
3132 0 #loc prim Primitive open-lib2
3135 0 #loc prim Primitive lib-sym
3151 0 #loc prim Primitive lib-sym2
3154 0 #loc prim Primitive wcall
3159 0 #loc prim Primitive w@
3169 0 #loc prim Primitive w!
3178 0 #loc prim Primitive l@
3188 0 #loc prim Primitive l!
3197 0 #loc prim Primitive lib-error
3210 0 #loc prim Primitive close-lib
3213 0 #loc prim Primitive close-lib2
12 groupadd
[THEN]
0 groupadd
group  64bit
0 groupadd
has? 64bit [IF]
3222 0 #loc prim Primitive x!
3231 0 #loc prim Primitive x@
2 groupadd
[THEN]
0 groupadd
group  memory
3245 0 #loc prim Primitive xd!
3283 0 #loc prim Primitive xd@
3320 0 #loc prim Primitive w><
3323 0 #loc prim Primitive l><
3326 0 #loc prim Primitive x><
3329 0 #loc prim Primitive xd><
3340 0 #loc prim Primitive c>s
3344 0 #loc prim Primitive w>s
3348 0 #loc prim Primitive l>s
3352 0 #loc prim Primitive >pow2
3370 0 #loc prim Primitive log2
3391 0 #loc prim Primitive u8@+?
12 groupadd
group  atomic
3401 0 #loc prim Primitive !@
3412 0 #loc prim Primitive +!@
3423 0 #loc prim Primitive ?!@
3436 0 #loc prim Primitive barrier
4 groupadd
group  peephole
0 groupadd
has? peephole [IF]
3449 0 #loc prim Primitive forget-dyncode3
3452 0 #loc prim Primitive decompile-prim3
3468 0 #loc prim Primitive @decompile-prim
3475 0 #loc prim Primitive tag-offsets
3479 0 #loc prim Primitive compile-prims
5 groupadd
[THEN]
0 groupadd
group  primitive_centric
3489 0 #loc prim Primitive abi-call
3496 0 #loc prim Primitive ;abi-code-exec
3504 0 #loc prim Primitive lit-execute
3 groupadd
group  object_pointer
0 groupadd
has? objects [IF]
3515 0 #loc prim Primitive >o
3520 0 #loc prim Primitive o>
3524 0 #loc prim Primitive o#exec
3530 0 #loc prim Primitive x#exec
3539 0 #loc prim Primitive u#exec
3545 0 #loc prim Primitive u#+
3549 0 #loc prim Primitive up@
3554 0 #loc prim Primitive o
3557 0 #loc prim Primitive o+
3560 0 #loc prim Primitive !o+
3563 0 #loc prim Primitive @o+
3566 0 #loc prim Primitive sf!o+
3569 0 #loc prim Primitive sf@o+
3572 0 #loc prim Primitive o0
3571 0 #loc prim Primitive o1
3571 0 #loc prim Primitive o2
3571 0 #loc prim Primitive o3
3571 0 #loc prim Primitive o4
3571 0 #loc prim Primitive o5
3571 0 #loc prim Primitive o6
3571 0 #loc prim Primitive o7
3571 0 #loc prim Primitive o8
3571 0 #loc prim Primitive o9
3571 0 #loc prim Primitive o10
3571 0 #loc prim Primitive o11
3571 0 #loc prim Primitive o12
3571 0 #loc prim Primitive o13
3571 0 #loc prim Primitive o14
3571 0 #loc prim Primitive o15
3571 0 #loc prim Primitive o16
3571 0 #loc prim Primitive o17
3571 0 #loc prim Primitive o18
3571 0 #loc prim Primitive o19
3571 0 #loc prim Primitive o20
3571 0 #loc prim Primitive o21
3571 0 #loc prim Primitive o22
3571 0 #loc prim Primitive o23
3571 0 #loc prim Primitive o24
3571 0 #loc prim Primitive o25
3571 0 #loc prim Primitive o26
3571 0 #loc prim Primitive o27
3571 0 #loc prim Primitive o28
3571 0 #loc prim Primitive o29
3571 0 #loc prim Primitive o30
3571 0 #loc prim Primitive o31
3575 0 #loc prim Primitive !o0
3574 0 #loc prim Primitive !o1
3574 0 #loc prim Primitive !o2
3574 0 #loc prim Primitive !o3
3574 0 #loc prim Primitive !o4
3574 0 #loc prim Primitive !o5
3574 0 #loc prim Primitive !o6
3574 0 #loc prim Primitive !o7
3574 0 #loc prim Primitive !o8
3574 0 #loc prim Primitive !o9
3574 0 #loc prim Primitive !o10
3574 0 #loc prim Primitive !o11
3574 0 #loc prim Primitive !o12
3574 0 #loc prim Primitive !o13
3574 0 #loc prim Primitive !o14
3574 0 #loc prim Primitive !o15
3578 0 #loc prim Primitive @o0
3577 0 #loc prim Primitive @o1
3577 0 #loc prim Primitive @o2
3577 0 #loc prim Primitive @o3
3577 0 #loc prim Primitive @o4
3577 0 #loc prim Primitive @o5
3577 0 #loc prim Primitive @o6
3577 0 #loc prim Primitive @o7
3577 0 #loc prim Primitive @o8
3577 0 #loc prim Primitive @o9
3577 0 #loc prim Primitive @o10
3577 0 #loc prim Primitive @o11
3577 0 #loc prim Primitive @o12
3577 0 #loc prim Primitive @o13
3577 0 #loc prim Primitive @o14
3577 0 #loc prim Primitive @o15
3581 0 #loc prim Primitive sf!o0
3580 0 #loc prim Primitive sf!o1
3580 0 #loc prim Primitive sf!o2
3580 0 #loc prim Primitive sf!o3
3580 0 #loc prim Primitive sf!o4
3580 0 #loc prim Primitive sf!o5
3580 0 #loc prim Primitive sf!o6
3580 0 #loc prim Primitive sf!o7
3580 0 #loc prim Primitive sf!o8
3580 0 #loc prim Primitive sf!o9
3580 0 #loc prim Primitive sf!o10
3580 0 #loc prim Primitive sf!o11
3580 0 #loc prim Primitive sf!o12
3580 0 #loc prim Primitive sf!o13
3580 0 #loc prim Primitive sf!o14
3580 0 #loc prim Primitive sf!o15
3580 0 #loc prim Primitive sf!o16
3580 0 #loc prim Primitive sf!o17
3580 0 #loc prim Primitive sf!o18
3580 0 #loc prim Primitive sf!o19
3580 0 #loc prim Primitive sf!o20
3580 0 #loc prim Primitive sf!o21
3580 0 #loc prim Primitive sf!o22
3580 0 #loc prim Primitive sf!o23
3580 0 #loc prim Primitive sf!o24
3580 0 #loc prim Primitive sf!o25
3580 0 #loc prim Primitive sf!o26
3580 0 #loc prim Primitive sf!o27
3580 0 #loc prim Primitive sf!o28
3580 0 #loc prim Primitive sf!o29
3580 0 #loc prim Primitive sf!o30
3580 0 #loc prim Primitive sf!o31
3584 0 #loc prim Primitive sf@o0
3583 0 #loc prim Primitive sf@o1
3583 0 #loc prim Primitive sf@o2
3583 0 #loc prim Primitive sf@o3
3583 0 #loc prim Primitive sf@o4
3583 0 #loc prim Primitive sf@o5
3583 0 #loc prim Primitive sf@o6
3583 0 #loc prim Primitive sf@o7
3583 0 #loc prim Primitive sf@o8
3583 0 #loc prim Primitive sf@o9
3583 0 #loc prim Primitive sf@o10
3583 0 #loc prim Primitive sf@o11
3583 0 #loc prim Primitive sf@o12
3583 0 #loc prim Primitive sf@o13
3583 0 #loc prim Primitive sf@o14
3583 0 #loc prim Primitive sf@o15
3583 0 #loc prim Primitive sf@o16
3583 0 #loc prim Primitive sf@o17
3583 0 #loc prim Primitive sf@o18
3583 0 #loc prim Primitive sf@o19
3583 0 #loc prim Primitive sf@o20
3583 0 #loc prim Primitive sf@o21
3583 0 #loc prim Primitive sf@o22
3583 0 #loc prim Primitive sf@o23
3583 0 #loc prim Primitive sf@o24
3583 0 #loc prim Primitive sf@o25
3583 0 #loc prim Primitive sf@o26
3583 0 #loc prim Primitive sf@o27
3583 0 #loc prim Primitive sf@o28
3583 0 #loc prim Primitive sf@o29
3583 0 #loc prim Primitive sf@o30
3583 0 #loc prim Primitive sf@o31
141 groupadd
[THEN]
0 groupadd
group  static_super
0 groupadd
group  end
