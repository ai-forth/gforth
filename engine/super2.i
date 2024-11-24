N_paren_docol, /* (docol) */
N_paren_docon, /* (docon) */
N_paren_dovar, /* (dovar) */
N_paren_douser, /* (douser) */
N_paren_dodefer, /* (dodefer) */
N_paren_field, /* (dofield) */
N_paren_doval, /* (dovalue) */
N_paren_dodoes, /* (dodoes) */
N_paren_doabicode, /* (doabicode) */
N_paren_do_semicolon_abi_code, /* (do;abicode) */
GROUPADD(10)
GROUP( control, 10)
N_noop, /* noop */
N_call, /* call */
N_execute, /* execute */
N_perform, /* perform */
N_semis, /* ;s */
N_execute_semis, /* execute-;s */
N_unloop, /* unloop */
N_lit_perform, /* lit-perform */
N_extra_xt, /* does-xt */
GROUPADD(9)
#ifdef HAS_GLOCALS
N_branch_lp_plus_store_number, /* branch-lp+!# */
GROUPADD(1)
#endif
N_branch, /* branch */
N_question_branch, /* ?branch */
GROUPADD(2)
#ifdef HAS_GLOCALS
N_question_branch_lp_plus_store_number, /* ?branch-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#ifdef HAS_XCONDS
N_question_dupe_question_branch, /* ?dup-?branch */
N_question_dupe_zero_equals_question_branch, /* ?dup-0=-?branch */
GROUPADD(2)
#endif
N_paren_next, /* (next) */
GROUPADD(1)
#ifdef HAS_GLOCALS
N_paren_next_lp_plus_store_number, /* (next)-lp+!# */
GROUPADD(1)
#endif
N_paren_loop, /* (loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
N_paren_loop_lp_plus_store_number, /* (loop)-lp+!# */
GROUPADD(1)
#endif
N_paren_plus_loop, /* (+loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
N_paren_plus_loop_lp_plus_store_number, /* (+loop)-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#ifdef HAS_XCONDS
N_paren_minus_loop, /* (-loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
N_paren_minus_loop_lp_plus_store_number, /* (-loop)-lp+!# */
GROUPADD(1)
#endif
N_paren_slash_loop, /* (/loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
N_paren_slash_loop_lp_plus_store_number, /* (/loop)-lp+!# */
GROUPADD(1)
#endif
N_paren_symmetric_plus_loop, /* (s+loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
N_paren_symmetric_plus_loop_lp_plus_store_number, /* (s+loop)-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#endif
N_paren_for, /* (for) */
N_paren_do, /* (do) */
N_paren_question_do, /* (?do) */
GROUPADD(3)
#ifdef HAS_XCONDS
N_paren_plus_do, /* (+do) */
N_paren_u_plus_do, /* (u+do) */
N_paren_minus_do, /* (-do) */
N_paren_u_minus_do, /* (u-do) */
N_paren_minus_bracket_do, /* (-[do) */
N_paren_u_minus_bracket_do, /* (u-[do) */
N_paren_try, /* (try) */
N_uncatch, /* uncatch */
N_fast_throw, /* fast-throw */
GROUPADD(9)
#endif
N_i, /* i */
N_i_tick, /* i' */
N_j, /* j */
N_k, /* k */
N_bounds, /* bounds */
N_delta_i, /* delta-i */
N_r_tick_fetch, /* r'@ */
N_rpick_num, /* rpick# */
GROUPADD(8)
GROUP( strings, 57)
N_move, /* move */
N_c_move, /* cmove */
N_c_move_up, /* cmove> */
N_fill, /* fill */
N_compare, /* compare */
N_toupper, /* toupper */
N_capscompare, /* capscompare */
N_slash_string, /* /string */
N_safe_slash_string, /* safe/string */
GROUPADD(9)
GROUP( arith, 66)
N_lit, /* lit */
N_plus, /* + */
N_lit_plus, /* lit+ */
N_under_plus, /* under+ */
N_minus, /* - */
N_negate, /* negate */
N_one_plus, /* 1+ */
N_one_minus, /* 1- */
N_max, /* max */
N_min, /* min */
N_abs, /* abs */
N_star, /* * */
N_slash_f, /* /f */
N_modf, /* modf */
N_slash_mod_f, /* /modf */
N_star_slash_mod_f, /* x/modf */
N_star_slash_f, /* x/f */
N_slash_s, /* /s */
N_mod_s, /* mods */
N_slash_mod_s, /* /mods */
N_star_slash_mod_s, /* x/mods */
N_star_slash_s, /* x/s */
N_two_star, /* 2* */
N_two_slash, /* 2/ */
N_f_m_slash_mod, /* fm/mod */
N_s_m_slash_rem, /* sm/rem */
N_m_star, /* m* */
N_u_m_star, /* um* */
N_u_m_slash_mod, /* um/mod */
N_u_slash_stage2m, /* u/-stage2m */
N_u_mod_stage2m, /* umod-stage2m */
N_u_slash_mod_stage2m, /* u/mod-stage2m */
N_slash_f_stage2m, /* /f-stage2m */
N_mod_f_stage2m, /* modf-stage2m */
N_slash_mod_f_stage2m, /* /modf-stage2m */
N_m_plus, /* m+ */
N_d_plus, /* d+ */
N_d_minus, /* d- */
N_d_negate, /* dnegate */
N_d_two_star, /* d2* */
N_d_two_slash, /* d2/ */
N_and, /* and */
N_or, /* or */
N_x_or, /* xor */
N_invert, /* invert */
N_r_shift, /* rshift */
N_l_shift, /* lshift */
N_umax, /* umax */
N_umin, /* umin */
N_mux, /* mux */
N_select, /* select */
N_dlshift, /* dlshift */
N_drshift, /* drshift */
N_rol, /* rol */
N_ror, /* ror */
N_wrol, /* wrol */
N_wror, /* wror */
N_lrol, /* lrol */
N_lror, /* lror */
N_drol, /* drol */
N_dror, /* dror */
N_du_slash_mod, /* du/mod */
N_u_slash, /* u/ */
N_umod, /* umod */
N_u_slash_mod, /* u/mod */
N_u_star_slash_mod, /* ux/mod */
N_u_star_slash, /* ux/ */
N_ar_shift, /* arshift */
N_darshift, /* darshift */
GROUPADD(69)
GROUP( compare, 135)
N_zero_equals, /* 0= */
N_zero_not_equals, /* 0<> */
N_zero_less_than, /* 0< */
N_zero_greater_than, /* 0> */
N_zero_less_or_equal, /* 0<= */
N_zero_greater_or_equal, /* 0>= */
N_equals, /* = */
N_not_equals, /* <> */
N_less_than, /* < */
N_greater_than, /* > */
N_less_or_equal, /* <= */
N_greater_or_equal, /* >= */
N_u_equals, /* u= */
N_u_not_equals, /* u<> */
N_u_less_than, /* u< */
N_u_greater_than, /* u> */
N_u_less_or_equal, /* u<= */
N_u_greater_or_equal, /* u>= */
GROUPADD(18)
#ifdef HAS_DCOMPS
N_d_equals, /* d= */
N_d_not_equals, /* d<> */
N_d_less_than, /* d< */
N_d_greater_than, /* d> */
N_d_less_or_equal, /* d<= */
N_d_greater_or_equal, /* d>= */
N_d_zero_equals, /* d0= */
N_d_zero_not_equals, /* d0<> */
N_d_zero_less_than, /* d0< */
N_d_zero_greater_than, /* d0> */
N_d_zero_less_or_equal, /* d0<= */
N_d_zero_greater_or_equal, /* d0>= */
N_d_u_equals, /* du= */
N_d_u_not_equals, /* du<> */
N_d_u_less_than, /* du< */
N_d_u_greater_than, /* du> */
N_d_u_less_or_equal, /* du<= */
N_d_u_greater_or_equal, /* du>= */
GROUPADD(18)
#endif
N_within, /* within */
GROUPADD(1)
GROUP( stack, 172)
N_up_store, /* up! */
N_sp_fetch, /* sp@ */
N_sp_store, /* sp! */
N_rp_fetch, /* rp@ */
N_rp_store, /* rp! */
GROUPADD(5)
#ifdef HAS_FLOATING
N_fp_fetch, /* fp@ */
N_fp_store, /* fp! */
GROUPADD(2)
#endif
N_to_r, /* >r */
N_r_from, /* r> */
N_rdrop, /* rdrop */
N_two_to_r, /* 2>r */
N_two_r_from, /* 2r> */
N_two_r_fetch, /* 2r@ */
N_two_r_drop, /* 2rdrop */
N_f_to_r, /* f>r */
N_f_r_from, /* fr> */
N_f_r_fetch, /* fr@ */
N_over, /* over */
N_drop, /* drop */
N_swap, /* swap */
N_dupe, /* dup */
N_rote, /* rot */
N_not_rote, /* -rot */
N_nip, /* nip */
N_tuck, /* tuck */
N_question_dupe, /* ?dup */
N_pick, /* pick */
N_third, /* third */
N_fourth, /* fourth */
N_two_drop, /* 2drop */
N_two_dupe, /* 2dup */
N_two_over, /* 2over */
N_two_swap, /* 2swap */
N_two_rote, /* 2rot */
N_two_nip, /* 2nip */
N_two_tuck, /* 2tuck */
N_sps_fetch, /* sps@ */
GROUPADD(30)
GROUP( memory, 209)
N_fetch, /* @ */
N_lit_fetch, /* lit@ */
N_store, /* ! */
N_plus_store, /* +! */
N_c_fetch, /* c@ */
N_c_store, /* c! */
N_two_store, /* 2! */
N_two_fetch, /* 2@ */
N_cell_plus, /* cell+ */
N_cells, /* cells */
N_char_plus, /* char+ */
N_count, /* count */
N_cell_divide, /* cell/ */
N_cell_minus, /* cell- */
N_one_plus_store, /* inc# */
GROUPADD(15)
GROUP( compiler, 224)
GROUPADD(0)
#ifdef HAS_F83HEADERSTRING
N_paren_f83find, /* (f83find) */
GROUPADD(1)
#else /* 225 */
N_paren_listlfind, /* (listlfind) */
GROUPADD(1)
#ifdef HAS_HASH
N_paren_hashlfind, /* (hashlfind) */
N_paren_tablelfind, /* (tablelfind) */
N_paren_hashkey1, /* (hashkey1) */
N_paren_hashkey2, /* (hashkey2) */
N_hashkey2, /* hashkey2 */
GROUPADD(5)
#endif
GROUPADD(0)
#endif
N_paren_parse_white, /* (parse-white) */
N_scan, /* scan */
N_skip, /* skip */
N_aligned, /* aligned */
N_f_aligned, /* faligned */
N_threading_method, /* threading-method */
N_debugging_method, /* debugging-method */
N_die_on_signal, /* die-on-signal */
GROUPADD(8)
GROUP( hostos, 239)
N_paren_key_file, /* (key-file) */
N_key_q_file, /* key?-file */
N_stdin, /* stdin */
N_stdout, /* stdout */
N_stderr, /* stderr */
N_term_prep_q, /* term-prep? */
GROUPADD(6)
#ifdef HAS_OS
N_paren_form, /* (form) */
N_isatty, /* isatty */
N_isfg, /* isfg */
N_wcwidth, /* wcwidth */
N_flush_icache, /* flush-icache */
N_paren_bye, /* (bye) */
N_paren_system, /* (system) */
N_getenv, /* getenv */
N_open_pipe, /* open-pipe */
N_close_pipe, /* close-pipe */
N_to_time_and_date, /* >time&date&tz */
N_paren_ms, /* (ms) */
N_heap_allocate, /* heap-allocate */
N_heap_free, /* heap-free */
N_heap_resize, /* heap-resize */
N_strerror, /* strerror */
N_strsignal, /* strsignal */
N_call_c, /* call-c */
N_call_c_direct, /* call-c# */
N_call_c_fetch, /* call-c@ */
N_gforth_pointers, /* gforth-pointers */
N_winch_query, /* winch? */
GROUPADD(22)
#endif
GROUPADD(0)
#ifdef HAS_FILE
N_close_file, /* close-file */
N_open_file, /* open-file */
N_create_file, /* create-file */
N_delete_file, /* delete-file */
N_rename_file, /* rename-file */
N_file_position, /* file-position */
N_reposition_file, /* reposition-file */
N_file_size, /* file-size */
N_resize_file, /* resize-file */
N_read_file, /* read-file */
N_paren_read_line, /* (read-line) */
GROUPADD(11)
#endif
N_write_file, /* write-file */
N_emit_file, /* emit-file */
GROUPADD(2)
#ifdef HAS_FILE
N_flush_file, /* flush-file */
N_file_status, /* file-status */
N_file_eof_query, /* file-eof? */
N_open_dir, /* open-dir */
N_read_dir, /* read-dir */
N_close_dir, /* close-dir */
N_match_file, /* filename-match */
N_set_dir, /* set-dir */
N_get_dir, /* get-dir */
N_equals_mkdir, /* =mkdir */
GROUPADD(10)
#endif
N_newline, /* newline */
GROUPADD(1)
#ifdef HAS_OS
N_utime, /* utime */
N_cputime, /* cputime */
N_ntime, /* ntime */
N_paren_ns, /* (ns) */
GROUPADD(4)
#endif
GROUPADD(0)
#ifdef HAS_FLOATING
GROUPADD(0)
GROUP( floating, 295)
N_f_equals, /* f= */
N_f_not_equals, /* f<> */
N_f_less_than, /* f< */
N_f_greater_than, /* f> */
N_f_less_or_equal, /* f<= */
N_f_greater_or_equal, /* f>= */
N_f_zero_equals, /* f0= */
N_f_zero_not_equals, /* f0<> */
N_f_zero_less_than, /* f0< */
N_f_zero_greater_than, /* f0> */
N_f_zero_less_or_equal, /* f0<= */
N_f_zero_greater_or_equal, /* f0>= */
N_s_to_f, /* s>f */
N_d_to_f, /* d>f */
N_f_to_d, /* f>d */
N_f_to_s, /* f>s */
N_f_store, /* f! */
N_f_fetch, /* f@ */
N_d_f_fetch, /* df@ */
N_d_f_store, /* df! */
N_s_f_fetch, /* sf@ */
N_s_f_store, /* sf! */
N_f_plus, /* f+ */
N_f_minus, /* f- */
N_f_star, /* f* */
N_f_slash, /* f/ */
N_f_star_star, /* f** */
N_fm_star, /* fm* */
N_fm_slash, /* fm/ */
N_fm_star_slash, /* fmx/ */
N_fm_square, /* f**2 */
N_f_negate, /* fnegate */
N_f_drop, /* fdrop */
N_f_dupe, /* fdup */
N_f_swap, /* fswap */
N_f_over, /* fover */
N_f_rote, /* frot */
N_f_nip, /* fnip */
N_f_tuck, /* ftuck */
N_float_plus, /* float+ */
N_floats, /* floats */
N_floor, /* floor */
N_f_round, /* fround */
N_f_max, /* fmax */
N_f_min, /* fmin */
N_represent, /* represent */
N_to_float, /* >float */
N_f_abs, /* fabs */
N_f_a_cos, /* facos */
N_f_a_sine, /* fasin */
N_f_a_tan, /* fatan */
N_f_a_tan_two, /* fatan2 */
N_f_cos, /* fcos */
N_f_e_x_p, /* fexp */
N_f_e_x_p_m_one, /* fexpm1 */
N_f_l_n, /* fln */
N_f_l_n_p_one, /* flnp1 */
N_f_log, /* flog */
N_f_a_log, /* falog */
N_f_sine, /* fsin */
N_f_sine_cos, /* fsincos */
N_f_square_root, /* fsqrt */
N_f_tan, /* ftan */
N_f_cinch, /* fsinh */
N_f_cosh, /* fcosh */
N_f_tan_h, /* ftanh */
N_f_a_cinch, /* fasinh */
N_f_a_cosh, /* facosh */
N_f_a_tan_h, /* fatanh */
N_s_floats, /* sfloats */
N_d_floats, /* dfloats */
N_s_f_aligned, /* sfaligned */
N_d_f_aligned, /* dfaligned */
N_v_star, /* v* */
N_faxpy, /* faxpy */
N_to_float1, /* >float1 */
N_float_divide, /* float/ */
N_d_float_divide, /* dfloat/ */
N_s_float_divide, /* sfloat/ */
N_f_not_rote, /* f-rot */
N_flit, /* flit */
N_flit0, /* flit0 */
N_flit1, /* flit1 */
GROUPADD(83)
#endif
GROUPADD(0)
#ifdef HAS_GLOCALS
GROUPADD(0)
GROUP( locals, 378)
N_fetch_local_n, /* @localn */
N_fetch_local_0, /* @local0 */
N_fetch_local_1, /* @local1 */
N_fetch_local_2, /* @local2 */
N_fetch_local_3, /* @local3 */
N_fetch_local_4, /* @local4 */
N_fetch_local_5, /* @local5 */
N_fetch_local_6, /* @local6 */
N_fetch_local_7, /* @local7 */
N_store_local_n, /* !localn */
N_store_local_0, /* !local0 */
N_store_local_1, /* !local1 */
N_store_local_2, /* !local2 */
N_store_local_3, /* !local3 */
N_store_local_4, /* !local4 */
N_store_local_5, /* !local5 */
N_store_local_6, /* !local6 */
N_store_local_7, /* !local7 */
N_plus_store_local_n, /* +!localn */
N_lp_plus_n, /* lp+n */
GROUPADD(20)
#ifdef HAS_FLOATING
N_f_fetch_local_n, /* f@localn */
GROUPADD(1)
#endif
N_lp_fetch, /* lp@ */
N_lp_plus_store, /* lp+! */
N_lp_minus, /* lp- */
N_lp_plus, /* lp+ */
N_lp_plus_two, /* lp+2 */
N_lp_store, /* lp! */
N_to_l, /* >l */
GROUPADD(7)
#ifdef HAS_FLOATING
N_f_to_l, /* f>l */
N_fpick, /* fpick */
N_fthird, /* fthird */
N_ffourth, /* ffourth */
GROUPADD(4)
#endif
GROUPADD(0)
#endif
GROUPADD(0)
#ifdef HAS_OS
GROUPADD(0)
GROUP( syslib, 410)
N_open_lib, /* open-lib */
N_open_lib2, /* open-lib2 */
N_lib_sym, /* lib-sym */
N_lib_sym2, /* lib-sym2 */
N_wcall, /* wcall */
N_w_fetch, /* w@ */
N_w_store, /* w! */
N_l_fetch, /* l@ */
N_l_store, /* l! */
N_lib_error, /* lib-error */
N_close_lib, /* close-lib */
N_close_lib2, /* close-lib2 */
GROUPADD(12)
#endif
GROUPADD(0)
GROUP( 64bit, 422)
GROUPADD(0)
#ifdef HAS_64BIT
N_x_store, /* x! */
N_x_fetch, /* x@ */
GROUPADD(2)
#endif
GROUPADD(0)
GROUP( memory, 424)
N_x_d_store, /* xd! */
N_x_d_fetch, /* xd@ */
N_wordswap, /* w>< */
N_longswap, /* l>< */
N_extralongswap, /* x>< */
N_extralongdswap, /* xd>< */
N_c_to_s, /* c>s */
N_w_to_s, /* w>s */
N_l_to_s, /* l>s */
N_to_pow2, /* >pow2 */
N_log2, /* log2 */
N_u8_fetch_plus_query, /* u8@+? */
GROUPADD(12)
GROUP( atomic, 436)
N_store_fetch, /* !@ */
N_add_store_fetch, /* +!@ */
N_question_store_fetch, /* ?!@ */
N_barrier, /* barrier */
GROUPADD(4)
GROUP( peephole, 440)
GROUPADD(0)
#ifdef HAS_PEEPHOLE
N_forget_dyncode3, /* forget-dyncode3 */
N_decompile_prim3, /* decompile-prim3 */
N_fetch_decompile_prim, /* @decompile-prim */
N_tag_offsets, /* tag-offsets */
N_compile_prims, /* compile-prims */
GROUPADD(5)
#endif
GROUPADD(0)
GROUP( primitive_centric, 445)
N_abi_call, /* abi-call */
N_semi_abi_code_exec, /* ;abi-code-exec */
N_lit_execute, /* lit-execute */
GROUPADD(3)
GROUP( object_pointer, 448)
GROUPADD(0)
#ifdef HAS_OBJECTS
N_to_o, /* >o */
N_o_restore, /* o> */
N_o_lit_exec, /* o#exec */
N_x_lit_exec, /* x#exec */
N_u_lit_exec, /* u#exec */
N_u_lit_plus, /* u#+ */
N_up_fetch, /* up@ */
N_o, /* o */
N_o_plus, /* o+ */
N_store_o_plus, /* !o+ */
N_fetch_o_plus, /* @o+ */
N_sf_store_o_plus, /* sf!o+ */
N_sf_fetch_o_plus, /* sf@o+ */
N_o_0, /* o0 */
N_o_1, /* o1 */
N_o_2, /* o2 */
N_o_3, /* o3 */
N_o_4, /* o4 */
N_o_5, /* o5 */
N_o_6, /* o6 */
N_o_7, /* o7 */
N_o_8, /* o8 */
N_o_9, /* o9 */
N_o_10, /* o10 */
N_o_11, /* o11 */
N_o_12, /* o12 */
N_o_13, /* o13 */
N_o_14, /* o14 */
N_o_15, /* o15 */
N_o_16, /* o16 */
N_o_17, /* o17 */
N_o_18, /* o18 */
N_o_19, /* o19 */
N_o_20, /* o20 */
N_o_21, /* o21 */
N_o_22, /* o22 */
N_o_23, /* o23 */
N_o_24, /* o24 */
N_o_25, /* o25 */
N_o_26, /* o26 */
N_o_27, /* o27 */
N_o_28, /* o28 */
N_o_29, /* o29 */
N_o_30, /* o30 */
N_o_31, /* o31 */
N_store_o_0, /* !o0 */
N_store_o_1, /* !o1 */
N_store_o_2, /* !o2 */
N_store_o_3, /* !o3 */
N_store_o_4, /* !o4 */
N_store_o_5, /* !o5 */
N_store_o_6, /* !o6 */
N_store_o_7, /* !o7 */
N_store_o_8, /* !o8 */
N_store_o_9, /* !o9 */
N_store_o_10, /* !o10 */
N_store_o_11, /* !o11 */
N_store_o_12, /* !o12 */
N_store_o_13, /* !o13 */
N_store_o_14, /* !o14 */
N_store_o_15, /* !o15 */
N_fetch_o_0, /* @o0 */
N_fetch_o_1, /* @o1 */
N_fetch_o_2, /* @o2 */
N_fetch_o_3, /* @o3 */
N_fetch_o_4, /* @o4 */
N_fetch_o_5, /* @o5 */
N_fetch_o_6, /* @o6 */
N_fetch_o_7, /* @o7 */
N_fetch_o_8, /* @o8 */
N_fetch_o_9, /* @o9 */
N_fetch_o_10, /* @o10 */
N_fetch_o_11, /* @o11 */
N_fetch_o_12, /* @o12 */
N_fetch_o_13, /* @o13 */
N_fetch_o_14, /* @o14 */
N_fetch_o_15, /* @o15 */
N_sf_store_o_0, /* sf!o0 */
N_sf_store_o_1, /* sf!o1 */
N_sf_store_o_2, /* sf!o2 */
N_sf_store_o_3, /* sf!o3 */
N_sf_store_o_4, /* sf!o4 */
N_sf_store_o_5, /* sf!o5 */
N_sf_store_o_6, /* sf!o6 */
N_sf_store_o_7, /* sf!o7 */
N_sf_store_o_8, /* sf!o8 */
N_sf_store_o_9, /* sf!o9 */
N_sf_store_o_10, /* sf!o10 */
N_sf_store_o_11, /* sf!o11 */
N_sf_store_o_12, /* sf!o12 */
N_sf_store_o_13, /* sf!o13 */
N_sf_store_o_14, /* sf!o14 */
N_sf_store_o_15, /* sf!o15 */
N_sf_store_o_16, /* sf!o16 */
N_sf_store_o_17, /* sf!o17 */
N_sf_store_o_18, /* sf!o18 */
N_sf_store_o_19, /* sf!o19 */
N_sf_store_o_20, /* sf!o20 */
N_sf_store_o_21, /* sf!o21 */
N_sf_store_o_22, /* sf!o22 */
N_sf_store_o_23, /* sf!o23 */
N_sf_store_o_24, /* sf!o24 */
N_sf_store_o_25, /* sf!o25 */
N_sf_store_o_26, /* sf!o26 */
N_sf_store_o_27, /* sf!o27 */
N_sf_store_o_28, /* sf!o28 */
N_sf_store_o_29, /* sf!o29 */
N_sf_store_o_30, /* sf!o30 */
N_sf_store_o_31, /* sf!o31 */
N_sf_fetch_o_0, /* sf@o0 */
N_sf_fetch_o_1, /* sf@o1 */
N_sf_fetch_o_2, /* sf@o2 */
N_sf_fetch_o_3, /* sf@o3 */
N_sf_fetch_o_4, /* sf@o4 */
N_sf_fetch_o_5, /* sf@o5 */
N_sf_fetch_o_6, /* sf@o6 */
N_sf_fetch_o_7, /* sf@o7 */
N_sf_fetch_o_8, /* sf@o8 */
N_sf_fetch_o_9, /* sf@o9 */
N_sf_fetch_o_10, /* sf@o10 */
N_sf_fetch_o_11, /* sf@o11 */
N_sf_fetch_o_12, /* sf@o12 */
N_sf_fetch_o_13, /* sf@o13 */
N_sf_fetch_o_14, /* sf@o14 */
N_sf_fetch_o_15, /* sf@o15 */
N_sf_fetch_o_16, /* sf@o16 */
N_sf_fetch_o_17, /* sf@o17 */
N_sf_fetch_o_18, /* sf@o18 */
N_sf_fetch_o_19, /* sf@o19 */
N_sf_fetch_o_20, /* sf@o20 */
N_sf_fetch_o_21, /* sf@o21 */
N_sf_fetch_o_22, /* sf@o22 */
N_sf_fetch_o_23, /* sf@o23 */
N_sf_fetch_o_24, /* sf@o24 */
N_sf_fetch_o_25, /* sf@o25 */
N_sf_fetch_o_26, /* sf@o26 */
N_sf_fetch_o_27, /* sf@o27 */
N_sf_fetch_o_28, /* sf@o28 */
N_sf_fetch_o_29, /* sf@o29 */
N_sf_fetch_o_30, /* sf@o30 */
N_sf_fetch_o_31, /* sf@o31 */
GROUPADD(141)
#endif
GROUPADD(0)
GROUP( static_super, 589)
GROUPADD(0)
GROUP( end, 589)
