{ 0, 1, 1, 1 , 0, 0,0, 0,N_paren_docol, 1, 0}, /* (docol) */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_paren_docon, 1, 0}, /* (docon) */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_paren_dovar, 1, 0}, /* (dovar) */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_paren_douser, 1, 0}, /* (douser) */
{ 0, 0, 0, 0 , 0, 0,0, 0,N_paren_dodefer, 1, 0}, /* (dodefer) */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_paren_field, 1, 0}, /* (dofield) */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_paren_doval, 1, 0}, /* (dovalue) */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_paren_dodoes, 1, 0}, /* (dodoes) */
{ 0, 0, 0, 0 , 0, 0,0, 0,N_paren_doabicode, 1, 0}, /* (doabicode) */
{ 0, 0, 0, 0 , 0, 0,0, 0,N_paren_do_semicolon_abi_code, 1, 0}, /* (do;abicode) */
GROUPADD(10)
GROUP( control, 10)
{ 0, 0, 0, 0 , 0, 0,0, 0,N_noop, 1, 0}, /* noop */
{ 1, 1, 1, 1 , 0, 0,1, 0,N_call, 1, 0}, /* call */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_execute, 1, 0}, /* execute */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_perform, 1, 0}, /* perform */
{ 1, 0, 1, 1 , 0, 0,0, 0,N_semis, 1, 0}, /* ;s */
{ 2, 0, 2, 1 , 0, 0,0, 0,N_execute_semis, 1, 0}, /* execute-;s */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_unloop, 1, 0}, /* unloop */
{ 1, 0, 0, 0 , 0, 0,1, 0,N_lit_perform, 1, 0}, /* lit-perform */
{ 1, 1, 1, 0 , 0, 0,1, 0,N_extra_xt, 1, 0}, /* does-xt */
GROUPADD(9)
#ifdef HAS_GLOCALS
{ 2, 0, 0, 1 , 0, 0,2, 0,N_branch_lp_plus_store_number, 1, 0}, /* branch-lp+!# */
GROUPADD(1)
#endif
{ 1, 0, 0, 1 , 0, 0,1, 0,N_branch, 1, 0}, /* branch */
{ 2, 0, 1, 1 , 0, 0,1, 0,N_question_branch, 1, 0}, /* ?branch */
GROUPADD(2)
#ifdef HAS_GLOCALS
{ 3, 0, 1, 1 , 0, 0,2, 0,N_question_branch_lp_plus_store_number, 1, 0}, /* ?branch-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#ifdef HAS_XCONDS
{ 2, 0, 1, 1 , 0, 0,1, 0,N_question_dupe_question_branch, 1, 0}, /* ?dup-?branch */
{ 2, 0, 1, 1 , 0, 0,1, 0,N_question_dupe_zero_equals_question_branch, 1, 0}, /* ?dup-0=-?branch */
GROUPADD(2)
#endif
{ 2, 1, 0, 1 , 0, 0,1, 0,N_paren_next, 1, 0}, /* (next) */
GROUPADD(1)
#ifdef HAS_GLOCALS
{ 3, 1, 0, 1 , 0, 0,2, 0,N_paren_next_lp_plus_store_number, 1, 0}, /* (next)-lp+!# */
GROUPADD(1)
#endif
{ 3, 2, 0, 1 , 0, 0,1, 0,N_paren_loop, 1, 0}, /* (loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
{ 4, 2, 0, 1 , 0, 0,2, 0,N_paren_loop_lp_plus_store_number, 1, 0}, /* (loop)-lp+!# */
GROUPADD(1)
#endif
{ 4, 2, 1, 1 , 0, 0,1, 0,N_paren_plus_loop, 1, 0}, /* (+loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
{ 5, 2, 1, 1 , 0, 0,2, 0,N_paren_plus_loop_lp_plus_store_number, 1, 0}, /* (+loop)-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#ifdef HAS_XCONDS
{ 4, 2, 1, 1 , 0, 0,1, 0,N_paren_minus_loop, 1, 0}, /* (-loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
{ 5, 2, 1, 1 , 0, 0,2, 0,N_paren_minus_loop_lp_plus_store_number, 1, 0}, /* (-loop)-lp+!# */
GROUPADD(1)
#endif
{ 4, 2, 1, 1 , 0, 0,1, 0,N_paren_slash_loop, 1, 0}, /* (/loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
{ 5, 2, 1, 1 , 0, 0,2, 0,N_paren_slash_loop_lp_plus_store_number, 1, 0}, /* (/loop)-lp+!# */
GROUPADD(1)
#endif
{ 4, 2, 1, 1 , 0, 0,1, 0,N_paren_symmetric_plus_loop, 1, 0}, /* (s+loop) */
GROUPADD(1)
#ifdef HAS_GLOCALS
{ 5, 2, 1, 1 , 0, 0,2, 0,N_paren_symmetric_plus_loop_lp_plus_store_number, 1, 0}, /* (s+loop)-lp+!# */
GROUPADD(1)
#endif
GROUPADD(0)
#endif
{ 1, 2, 2, 0 , 0, 0,0, 0,N_paren_for, 1, 0}, /* (for) */
{ 2, 2, 2, 0 , 0, 0,0, 0,N_paren_do, 1, 0}, /* (do) */
{ 3, 2, 2, 1 , 0, 0,1, 0,N_paren_question_do, 1, 0}, /* (?do) */
GROUPADD(3)
#ifdef HAS_XCONDS
{ 3, 2, 2, 1 , 0, 0,1, 0,N_paren_plus_do, 1, 0}, /* (+do) */
{ 3, 2, 2, 1 , 0, 0,1, 0,N_paren_u_plus_do, 1, 0}, /* (u+do) */
{ 3, 2, 2, 1 , 0, 0,1, 0,N_paren_minus_do, 1, 0}, /* (-do) */
{ 3, 2, 2, 1 , 0, 0,1, 0,N_paren_u_minus_do, 1, 0}, /* (u-do) */
{ 3, 2, 2, 1 , 0, 0,1, 0,N_paren_minus_bracket_do, 1, 0}, /* (-[do) */
{ 3, 2, 2, 1 , 0, 0,1, 0,N_paren_u_minus_bracket_do, 1, 0}, /* (u-[do) */
{ 1, 6, 1, 0 , 0, 0,1, 0,N_paren_try, 1, 0}, /* (try) */
{ 6, 0, 1, 0 , 0, 0,0, 0,N_uncatch, 1, 0}, /* uncatch */
{ 1, 1, 0, 1 , 0, 0,0, 0,N_fast_throw, 1, 0}, /* fast-throw */
GROUPADD(9)
#endif
{ 1, 2, 1, 0 , 0, 0,0, 0,N_i, 1, 0}, /* i */
{ 2, 3, 1, 0 , 0, 0,0, 0,N_i_tick, 1, 0}, /* i' */
{ 3, 4, 1, 0 , 0, 0,0, 0,N_j, 1, 0}, /* j */
{ 5, 6, 1, 0 , 0, 0,0, 0,N_k, 1, 0}, /* k */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_bounds, 1, 0}, /* bounds */
{ 2, 3, 1, 0 , 0, 0,0, 0,N_delta_i, 1, 0}, /* delta-i */
{ 2, 3, 1, 0 , 0, 0,0, 0,N_r_tick_fetch, 1, 0}, /* r'@ */
{ 1, 1, 1, 0 , 0, 0,1, 0,N_rpick_num, 1, 0}, /* rpick# */
GROUPADD(8)
GROUP( strings, 57)
{ 3, 0, 1, 0 , 0, 0,0, 0,N_move, 1, 0}, /* move */
{ 3, 0, 1, 0 , 0, 0,0, 0,N_c_move, 1, 0}, /* cmove */
{ 3, 0, 1, 0 , 0, 0,0, 0,N_c_move_up, 1, 0}, /* cmove> */
{ 3, 0, 1, 0 , 0, 0,0, 0,N_fill, 1, 0}, /* fill */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_compare, 1, 0}, /* compare */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_toupper, 1, 0}, /* toupper */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_capscompare, 1, 0}, /* capscompare */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_slash_string, 1, 0}, /* /string */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_safe_slash_string, 1, 0}, /* safe/string */
GROUPADD(9)
GROUP( arith, 66)
{ 1, 1, 1, 0 , 0, 0,1, 0,N_lit, 1, 0}, /* lit */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_plus, 1, 0}, /* + */
{ 2, 1, 0, 0 , 0, 0,1, 0,N_lit_plus, 1, 0}, /* lit+ */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_under_plus, 1, 0}, /* under+ */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_minus, 1, 0}, /* - */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_negate, 1, 0}, /* negate */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_one_plus, 1, 0}, /* 1+ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_one_minus, 1, 0}, /* 1- */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_max, 1, 0}, /* max */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_min, 1, 0}, /* min */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_abs, 1, 0}, /* abs */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_star, 1, 0}, /* * */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_slash_f, 1, 0}, /* /f */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_modf, 1, 0}, /* modf */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_slash_mod_f, 1, 0}, /* /modf */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_star_slash_mod_f, 1, 0}, /* x/modf */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_star_slash_f, 1, 0}, /* x/f */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_slash_s, 1, 0}, /* /s */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_mod_s, 1, 0}, /* mods */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_slash_mod_s, 1, 0}, /* /mods */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_star_slash_mod_s, 1, 0}, /* x/mods */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_star_slash_s, 1, 0}, /* x/s */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_two_star, 1, 0}, /* 2* */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_two_slash, 1, 0}, /* 2/ */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_f_m_slash_mod, 1, 0}, /* fm/mod */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_s_m_slash_rem, 1, 0}, /* sm/rem */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_m_star, 1, 0}, /* m* */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_u_m_star, 1, 0}, /* um* */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_u_m_slash_mod, 1, 0}, /* um/mod */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_slash_stage2m, 1, 0}, /* u/-stage2m */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_mod_stage2m, 1, 0}, /* umod-stage2m */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_u_slash_mod_stage2m, 1, 0}, /* u/mod-stage2m */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_slash_f_stage2m, 1, 0}, /* /f-stage2m */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_mod_f_stage2m, 1, 0}, /* modf-stage2m */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_slash_mod_f_stage2m, 1, 0}, /* /modf-stage2m */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_m_plus, 1, 0}, /* m+ */
{ 4, 2, 1, 0 , 0, 0,0, 0,N_d_plus, 1, 0}, /* d+ */
{ 4, 2, 1, 0 , 0, 0,0, 0,N_d_minus, 1, 0}, /* d- */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_d_negate, 1, 0}, /* dnegate */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_d_two_star, 1, 0}, /* d2* */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_d_two_slash, 1, 0}, /* d2/ */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_and, 1, 0}, /* and */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_or, 1, 0}, /* or */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_x_or, 1, 0}, /* xor */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_invert, 1, 0}, /* invert */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_r_shift, 1, 0}, /* rshift */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_l_shift, 1, 0}, /* lshift */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_umax, 1, 0}, /* umax */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_umin, 1, 0}, /* umin */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_mux, 1, 0}, /* mux */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_select, 1, 0}, /* select */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_dlshift, 1, 0}, /* dlshift */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_drshift, 1, 0}, /* drshift */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_rol, 1, 0}, /* rol */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_ror, 1, 0}, /* ror */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_wrol, 1, 0}, /* wrol */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_wror, 1, 0}, /* wror */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_lrol, 1, 0}, /* lrol */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_lror, 1, 0}, /* lror */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_drol, 1, 0}, /* drol */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_dror, 1, 0}, /* dror */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_du_slash_mod, 1, 0}, /* du/mod */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_slash, 1, 0}, /* u/ */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_umod, 1, 0}, /* umod */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_u_slash_mod, 1, 0}, /* u/mod */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_u_star_slash_mod, 1, 0}, /* ux/mod */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_u_star_slash, 1, 0}, /* ux/ */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_ar_shift, 1, 0}, /* arshift */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_darshift, 1, 0}, /* darshift */
GROUPADD(69)
GROUP( compare, 135)
{ 1, 1, 0, 0 , 0, 0,0, 0,N_zero_equals, 1, 0}, /* 0= */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_zero_not_equals, 1, 0}, /* 0<> */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_zero_less_than, 1, 0}, /* 0< */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_zero_greater_than, 1, 0}, /* 0> */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_zero_less_or_equal, 1, 0}, /* 0<= */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_zero_greater_or_equal, 1, 0}, /* 0>= */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_equals, 1, 0}, /* = */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_not_equals, 1, 0}, /* <> */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_less_than, 1, 0}, /* < */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_greater_than, 1, 0}, /* > */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_less_or_equal, 1, 0}, /* <= */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_greater_or_equal, 1, 0}, /* >= */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_equals, 1, 0}, /* u= */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_not_equals, 1, 0}, /* u<> */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_less_than, 1, 0}, /* u< */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_greater_than, 1, 0}, /* u> */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_less_or_equal, 1, 0}, /* u<= */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_u_greater_or_equal, 1, 0}, /* u>= */
GROUPADD(18)
#ifdef HAS_DCOMPS
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_equals, 1, 0}, /* d= */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_not_equals, 1, 0}, /* d<> */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_less_than, 1, 0}, /* d< */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_greater_than, 1, 0}, /* d> */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_less_or_equal, 1, 0}, /* d<= */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_greater_or_equal, 1, 0}, /* d>= */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_d_zero_equals, 1, 0}, /* d0= */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_d_zero_not_equals, 1, 0}, /* d0<> */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_d_zero_less_than, 1, 0}, /* d0< */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_d_zero_greater_than, 1, 0}, /* d0> */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_d_zero_less_or_equal, 1, 0}, /* d0<= */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_d_zero_greater_or_equal, 1, 0}, /* d0>= */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_u_equals, 1, 0}, /* du= */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_u_not_equals, 1, 0}, /* du<> */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_u_less_than, 1, 0}, /* du< */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_u_greater_than, 1, 0}, /* du> */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_u_less_or_equal, 1, 0}, /* du<= */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_d_u_greater_or_equal, 1, 0}, /* du>= */
GROUPADD(18)
#endif
{ 3, 1, 1, 0 , 0, 0,0, 0,N_within, 1, 0}, /* within */
GROUPADD(1)
GROUP( stack, 172)
{ 1, 0, 1, 0 , 0, 0,0, 0,N_up_store, 1, 0}, /* up! */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sp_fetch, 1, 0}, /* sp@ */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sp_store, 1, 0}, /* sp! */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_rp_fetch, 1, 0}, /* rp@ */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_rp_store, 1, 0}, /* rp! */
GROUPADD(5)
#ifdef HAS_FLOATING
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fp_fetch, 1, 0}, /* fp@ */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_fp_store, 1, 0}, /* fp! */
GROUPADD(2)
#endif
{ 1, 1, 2, 0 , 0, 0,0, 0,N_to_r, 1, 0}, /* >r */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_r_from, 1, 0}, /* r> */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_rdrop, 1, 0}, /* rdrop */
{ 2, 2, 2, 0 , 0, 0,0, 0,N_two_to_r, 1, 0}, /* 2>r */
{ 2, 2, 2, 0 , 0, 0,0, 0,N_two_r_from, 1, 0}, /* 2r> */
{ 2, 4, 1, 0 , 0, 0,0, 0,N_two_r_fetch, 1, 0}, /* 2r@ */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_two_r_drop, 1, 0}, /* 2rdrop */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_f_to_r, 1, 0}, /* f>r */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_f_r_from, 1, 0}, /* fr> */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_f_r_fetch, 1, 0}, /* fr@ */
{ 2, 3, 1, 0 , 0, 0,0, 0,N_over, 1, 0}, /* over */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_drop, 1, 0}, /* drop */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_swap, 1, 0}, /* swap */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_dupe, 1, 0}, /* dup */
{ 3, 3, 0, 0 , 0, 0,0, 0,N_rote, 1, 0}, /* rot */
{ 3, 3, 0, 0 , 0, 0,0, 0,N_not_rote, 1, 0}, /* -rot */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_nip, 1, 0}, /* nip */
{ 2, 3, 1, 0 , 0, 0,0, 0,N_tuck, 1, 0}, /* tuck */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_question_dupe, 1, 0}, /* ?dup */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_pick, 1, 0}, /* pick */
{ 3, 4, 1, 0 , 0, 0,0, 0,N_third, 1, 0}, /* third */
{ 4, 5, 1, 0 , 0, 0,0, 0,N_fourth, 1, 0}, /* fourth */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_two_drop, 1, 0}, /* 2drop */
{ 2, 4, 1, 0 , 0, 0,0, 0,N_two_dupe, 1, 0}, /* 2dup */
{ 4, 6, 1, 0 , 0, 0,0, 0,N_two_over, 1, 0}, /* 2over */
{ 4, 4, 0, 0 , 0, 0,0, 0,N_two_swap, 1, 0}, /* 2swap */
{ 6, 6, 0, 0 , 0, 0,0, 0,N_two_rote, 1, 0}, /* 2rot */
{ 4, 2, 1, 0 , 0, 0,0, 0,N_two_nip, 1, 0}, /* 2nip */
{ 4, 6, 1, 0 , 0, 0,0, 0,N_two_tuck, 1, 0}, /* 2tuck */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sps_fetch, 1, 0}, /* sps@ */
GROUPADD(30)
GROUP( memory, 209)
{ 1, 1, 0, 0 , 0, 0,0, 0,N_fetch, 1, 0}, /* @ */
{ 1, 1, 1, 0 , 0, 0,1, 0,N_lit_fetch, 1, 0}, /* lit@ */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_store, 1, 0}, /* ! */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_plus_store, 1, 0}, /* +! */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_c_fetch, 1, 0}, /* c@ */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_c_store, 1, 0}, /* c! */
{ 3, 0, 1, 0 , 0, 0,0, 0,N_two_store, 1, 0}, /* 2! */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_two_fetch, 1, 0}, /* 2@ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_cell_plus, 1, 0}, /* cell+ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_cells, 1, 0}, /* cells */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_char_plus, 1, 0}, /* char+ */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_count, 1, 0}, /* count */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_cell_divide, 1, 0}, /* cell/ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_cell_minus, 1, 0}, /* cell- */
{ 1, 0, 0, 0 , 0, 0,1, 0,N_one_plus_store, 1, 0}, /* inc# */
GROUPADD(15)
GROUP( compiler, 224)
GROUPADD(0)
#ifdef HAS_F83HEADERSTRING
{ 3, 1, 1, 0 , 0, 0,0, 0,N_paren_f83find, 1, 0}, /* (f83find) */
GROUPADD(1)
#else /* 225 */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_paren_listlfind, 1, 0}, /* (listlfind) */
GROUPADD(1)
#ifdef HAS_HASH
{ 3, 1, 1, 0 , 0, 0,0, 0,N_paren_hashlfind, 1, 0}, /* (hashlfind) */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_paren_tablelfind, 1, 0}, /* (tablelfind) */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_paren_hashkey1, 1, 0}, /* (hashkey1) */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_paren_hashkey2, 1, 0}, /* (hashkey2) */
{ 4, 0, 1, 0 , 0, 0,0, 0,N_hashkey2, 1, 0}, /* hashkey2 */
GROUPADD(5)
#endif
GROUPADD(0)
#endif
{ 2, 2, 0, 0 , 0, 0,0, 0,N_paren_parse_white, 1, 0}, /* (parse-white) */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_scan, 1, 0}, /* scan */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_skip, 1, 0}, /* skip */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_aligned, 1, 0}, /* aligned */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_aligned, 1, 0}, /* faligned */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_threading_method, 1, 0}, /* threading-method */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_debugging_method, 1, 0}, /* debugging-method */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_die_on_signal, 1, 0}, /* die-on-signal */
GROUPADD(8)
GROUP( hostos, 239)
{ 1, 1, 0, 0 , 0, 0,0, 0,N_paren_key_file, 1, 0}, /* (key-file) */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_key_q_file, 1, 0}, /* key?-file */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_stdin, 1, 0}, /* stdin */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_stdout, 1, 0}, /* stdout */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_stderr, 1, 0}, /* stderr */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_term_prep_q, 1, 0}, /* term-prep? */
GROUPADD(6)
#ifdef HAS_OS
{ 0, 2, 1, 0 , 0, 0,0, 0,N_paren_form, 1, 0}, /* (form) */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_isatty, 1, 0}, /* isatty */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_isfg, 1, 0}, /* isfg */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_wcwidth, 1, 0}, /* wcwidth */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_flush_icache, 1, 0}, /* flush-icache */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_paren_bye, 1, 0}, /* (bye) */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_paren_system, 1, 0}, /* (system) */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_getenv, 1, 0}, /* getenv */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_open_pipe, 1, 0}, /* open-pipe */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_close_pipe, 1, 0}, /* close-pipe */
{ 2,10, 1, 0 , 0, 0,0, 0,N_to_time_and_date, 1, 0}, /* >time&date&tz */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_paren_ms, 1, 0}, /* (ms) */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_heap_allocate, 1, 0}, /* heap-allocate */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_heap_free, 1, 0}, /* heap-free */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_heap_resize, 1, 0}, /* heap-resize */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_strerror, 1, 0}, /* strerror */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_strsignal, 1, 0}, /* strsignal */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_call_c, 1, 0}, /* call-c */
{ 1, 0, 0, 0 , 0, 0,1, 0,N_call_c_direct, 1, 0}, /* call-c# */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_call_c_fetch, 1, 0}, /* call-c@ */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_gforth_pointers, 1, 0}, /* gforth-pointers */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_winch_query, 1, 0}, /* winch? */
GROUPADD(22)
#endif
GROUPADD(0)
#ifdef HAS_FILE
{ 1, 1, 0, 0 , 0, 0,0, 0,N_close_file, 1, 0}, /* close-file */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_open_file, 1, 0}, /* open-file */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_create_file, 1, 0}, /* create-file */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_delete_file, 1, 0}, /* delete-file */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_rename_file, 1, 0}, /* rename-file */
{ 1, 3, 1, 0 , 0, 0,0, 0,N_file_position, 1, 0}, /* file-position */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_reposition_file, 1, 0}, /* reposition-file */
{ 1, 3, 1, 0 , 0, 0,0, 0,N_file_size, 1, 0}, /* file-size */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_resize_file, 1, 0}, /* resize-file */
{ 3, 2, 1, 0 , 0, 0,0, 0,N_read_file, 1, 0}, /* read-file */
{ 3, 4, 1, 0 , 0, 0,0, 0,N_paren_read_line, 1, 0}, /* (read-line) */
GROUPADD(11)
#endif
{ 3, 1, 1, 0 , 0, 0,0, 0,N_write_file, 1, 0}, /* write-file */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_emit_file, 1, 0}, /* emit-file */
GROUPADD(2)
#ifdef HAS_FILE
{ 1, 1, 0, 0 , 0, 0,0, 0,N_flush_file, 1, 0}, /* flush-file */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_file_status, 1, 0}, /* file-status */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_file_eof_query, 1, 0}, /* file-eof? */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_open_dir, 1, 0}, /* open-dir */
{ 3, 3, 0, 0 , 0, 0,0, 0,N_read_dir, 1, 0}, /* read-dir */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_close_dir, 1, 0}, /* close-dir */
{ 4, 1, 1, 0 , 0, 0,0, 0,N_match_file, 1, 0}, /* filename-match */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_set_dir, 1, 0}, /* set-dir */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_get_dir, 1, 0}, /* get-dir */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_equals_mkdir, 1, 0}, /* =mkdir */
GROUPADD(10)
#endif
{ 0, 2, 1, 0 , 0, 0,0, 0,N_newline, 1, 0}, /* newline */
GROUPADD(1)
#ifdef HAS_OS
{ 0, 2, 1, 0 , 0, 0,0, 0,N_utime, 1, 0}, /* utime */
{ 0, 4, 1, 0 , 0, 0,0, 0,N_cputime, 1, 0}, /* cputime */
{ 0, 2, 1, 0 , 0, 0,0, 0,N_ntime, 1, 0}, /* ntime */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_paren_ns, 1, 0}, /* (ns) */
GROUPADD(4)
#endif
GROUPADD(0)
#ifdef HAS_FLOATING
GROUPADD(0)
GROUP( floating, 295)
{ 2, 1, 2, 0 , 0, 0,0, 0,N_f_equals, 1, 0}, /* f= */
{ 2, 1, 2, 0 , 0, 0,0, 0,N_f_not_equals, 1, 0}, /* f<> */
{ 2, 1, 2, 0 , 0, 0,0, 0,N_f_less_than, 1, 0}, /* f< */
{ 2, 1, 2, 0 , 0, 0,0, 0,N_f_greater_than, 1, 0}, /* f> */
{ 2, 1, 2, 0 , 0, 0,0, 0,N_f_less_or_equal, 1, 0}, /* f<= */
{ 2, 1, 2, 0 , 0, 0,0, 0,N_f_greater_or_equal, 1, 0}, /* f>= */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_zero_equals, 1, 0}, /* f0= */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_zero_not_equals, 1, 0}, /* f0<> */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_zero_less_than, 1, 0}, /* f0< */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_zero_greater_than, 1, 0}, /* f0> */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_zero_less_or_equal, 1, 0}, /* f0<= */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_zero_greater_or_equal, 1, 0}, /* f0>= */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_s_to_f, 1, 0}, /* s>f */
{ 2, 1, 2, 0 , 0, 0,0, 0,N_d_to_f, 1, 0}, /* d>f */
{ 1, 2, 2, 0 , 0, 0,0, 0,N_f_to_d, 1, 0}, /* f>d */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_to_s, 1, 0}, /* f>s */
{ 2, 0, 2, 0 , 0, 0,0, 0,N_f_store, 1, 0}, /* f! */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_fetch, 1, 0}, /* f@ */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_d_f_fetch, 1, 0}, /* df@ */
{ 2, 0, 2, 0 , 0, 0,0, 0,N_d_f_store, 1, 0}, /* df! */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_s_f_fetch, 1, 0}, /* sf@ */
{ 2, 0, 2, 0 , 0, 0,0, 0,N_s_f_store, 1, 0}, /* sf! */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_plus, 1, 0}, /* f+ */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_minus, 1, 0}, /* f- */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_star, 1, 0}, /* f* */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_slash, 1, 0}, /* f/ */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_star_star, 1, 0}, /* f** */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_fm_star, 1, 0}, /* fm* */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_fm_slash, 1, 0}, /* fm/ */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_fm_star_slash, 1, 0}, /* fmx/ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_fm_square, 1, 0}, /* f**2 */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_negate, 1, 0}, /* fnegate */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_f_drop, 1, 0}, /* fdrop */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_f_dupe, 1, 0}, /* fdup */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_f_swap, 1, 0}, /* fswap */
{ 2, 3, 1, 0 , 0, 0,0, 0,N_f_over, 1, 0}, /* fover */
{ 3, 3, 0, 0 , 0, 0,0, 0,N_f_rote, 1, 0}, /* frot */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_nip, 1, 0}, /* fnip */
{ 2, 3, 1, 0 , 0, 0,0, 0,N_f_tuck, 1, 0}, /* ftuck */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_float_plus, 1, 0}, /* float+ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_floats, 1, 0}, /* floats */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_floor, 1, 0}, /* floor */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_round, 1, 0}, /* fround */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_max, 1, 0}, /* fmax */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_min, 1, 0}, /* fmin */
{ 3, 3, 2, 0 , 0, 0,0, 0,N_represent, 1, 0}, /* represent */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_to_float, 1, 0}, /* >float */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_abs, 1, 0}, /* fabs */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_a_cos, 1, 0}, /* facos */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_a_sine, 1, 0}, /* fasin */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_a_tan, 1, 0}, /* fatan */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_f_a_tan_two, 1, 0}, /* fatan2 */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_cos, 1, 0}, /* fcos */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_e_x_p, 1, 0}, /* fexp */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_e_x_p_m_one, 1, 0}, /* fexpm1 */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_l_n, 1, 0}, /* fln */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_l_n_p_one, 1, 0}, /* flnp1 */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_log, 1, 0}, /* flog */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_a_log, 1, 0}, /* falog */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_sine, 1, 0}, /* fsin */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_f_sine_cos, 1, 0}, /* fsincos */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_square_root, 1, 0}, /* fsqrt */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_tan, 1, 0}, /* ftan */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_cinch, 1, 0}, /* fsinh */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_cosh, 1, 0}, /* fcosh */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_tan_h, 1, 0}, /* ftanh */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_a_cinch, 1, 0}, /* fasinh */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_a_cosh, 1, 0}, /* facosh */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_f_a_tan_h, 1, 0}, /* fatanh */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_s_floats, 1, 0}, /* sfloats */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_d_floats, 1, 0}, /* dfloats */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_s_f_aligned, 1, 0}, /* sfaligned */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_d_f_aligned, 1, 0}, /* dfaligned */
{ 5, 1, 2, 0 , 0, 0,0, 0,N_v_star, 1, 0}, /* v* */
{ 6, 0, 2, 0 , 0, 0,0, 0,N_faxpy, 1, 0}, /* faxpy */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_to_float1, 1, 0}, /* >float1 */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_float_divide, 1, 0}, /* float/ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_d_float_divide, 1, 0}, /* dfloat/ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_s_float_divide, 1, 0}, /* sfloat/ */
{ 3, 3, 0, 0 , 0, 0,0, 0,N_f_not_rote, 1, 0}, /* f-rot */
{ 1, 1, 1, 0 , 0, 0,1, 0,N_flit, 1, 0}, /* flit */
{ 2, 1, 1, 0 , 0, 0,2, 0,N_flit0, 1, 0}, /* flit0 */
{ 3, 1, 1, 0 , 0, 0,3, 0,N_flit1, 1, 0}, /* flit1 */
GROUPADD(83)
#endif
GROUPADD(0)
#ifdef HAS_GLOCALS
GROUPADD(0)
GROUP( locals, 378)
{ 1, 1, 0, 0 , 0, 0,0, 0,N_fetch_local_n, 1, 0}, /* @localn */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_local_0, 1, 0}, /* @local0 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_local_1, 1, 0}, /* @local1 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_local_2, 1, 0}, /* @local2 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_local_3, 1, 0}, /* @local3 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_local_4, 1, 0}, /* @local4 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_local_5, 1, 0}, /* @local5 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_local_6, 1, 0}, /* @local6 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_local_7, 1, 0}, /* @local7 */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_store_local_n, 1, 0}, /* !localn */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_local_0, 1, 0}, /* !local0 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_local_1, 1, 0}, /* !local1 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_local_2, 1, 0}, /* !local2 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_local_3, 1, 0}, /* !local3 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_local_4, 1, 0}, /* !local4 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_local_5, 1, 0}, /* !local5 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_local_6, 1, 0}, /* !local6 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_local_7, 1, 0}, /* !local7 */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_plus_store_local_n, 1, 0}, /* +!localn */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_lp_plus_n, 1, 0}, /* lp+n */
GROUPADD(20)
#ifdef HAS_FLOATING
{ 1, 1, 2, 0 , 0, 0,0, 0,N_f_fetch_local_n, 1, 0}, /* f@localn */
GROUPADD(1)
#endif
{ 0, 1, 1, 0 , 0, 0,0, 0,N_lp_fetch, 1, 0}, /* lp@ */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_lp_plus_store, 1, 0}, /* lp+! */
{ 0, 0, 0, 0 , 0, 0,0, 0,N_lp_minus, 1, 0}, /* lp- */
{ 0, 0, 0, 0 , 0, 0,0, 0,N_lp_plus, 1, 0}, /* lp+ */
{ 0, 0, 0, 0 , 0, 0,0, 0,N_lp_plus_two, 1, 0}, /* lp+2 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_lp_store, 1, 0}, /* lp! */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_to_l, 1, 0}, /* >l */
GROUPADD(7)
#ifdef HAS_FLOATING
{ 1, 0, 1, 0 , 0, 0,0, 0,N_f_to_l, 1, 0}, /* f>l */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_fpick, 1, 0}, /* fpick */
{ 3, 4, 1, 0 , 0, 0,0, 0,N_fthird, 1, 0}, /* fthird */
{ 4, 5, 1, 0 , 0, 0,0, 0,N_ffourth, 1, 0}, /* ffourth */
GROUPADD(4)
#endif
GROUPADD(0)
#endif
GROUPADD(0)
#ifdef HAS_OS
GROUPADD(0)
GROUP( syslib, 410)
{ 2, 1, 1, 0 , 0, 0,0, 0,N_open_lib, 1, 0}, /* open-lib */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_open_lib2, 1, 0}, /* open-lib2 */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_lib_sym, 1, 0}, /* lib-sym */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_lib_sym2, 1, 0}, /* lib-sym2 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_wcall, 1, 0}, /* wcall */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_w_fetch, 1, 0}, /* w@ */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_w_store, 1, 0}, /* w! */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_l_fetch, 1, 0}, /* l@ */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_l_store, 1, 0}, /* l! */
{ 0, 2, 1, 0 , 0, 0,0, 0,N_lib_error, 1, 0}, /* lib-error */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_close_lib, 1, 0}, /* close-lib */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_close_lib2, 1, 0}, /* close-lib2 */
GROUPADD(12)
#endif
GROUPADD(0)
GROUP( 64bit, 422)
GROUPADD(0)
#ifdef HAS_64BIT
{ 2, 0, 1, 0 , 0, 0,0, 0,N_x_store, 1, 0}, /* x! */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_x_fetch, 1, 0}, /* x@ */
GROUPADD(2)
#endif
GROUPADD(0)
GROUP( memory, 424)
{ 3, 0, 1, 0 , 0, 0,0, 0,N_x_d_store, 1, 0}, /* xd! */
{ 1, 2, 1, 0 , 0, 0,0, 0,N_x_d_fetch, 1, 0}, /* xd@ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_wordswap, 1, 0}, /* w>< */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_longswap, 1, 0}, /* l>< */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_extralongswap, 1, 0}, /* x>< */
{ 2, 2, 0, 0 , 0, 0,0, 0,N_extralongdswap, 1, 0}, /* xd>< */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_c_to_s, 1, 0}, /* c>s */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_w_to_s, 1, 0}, /* w>s */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_l_to_s, 1, 0}, /* l>s */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_to_pow2, 1, 0}, /* >pow2 */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_log2, 1, 0}, /* log2 */
{ 2, 3, 1, 0 , 0, 0,0, 0,N_u8_fetch_plus_query, 1, 0}, /* u8@+? */
GROUPADD(12)
GROUP( atomic, 436)
{ 2, 1, 1, 0 , 0, 0,0, 0,N_store_fetch, 1, 0}, /* !@ */
{ 2, 1, 1, 0 , 0, 0,0, 0,N_add_store_fetch, 1, 0}, /* +!@ */
{ 3, 1, 1, 0 , 0, 0,0, 0,N_question_store_fetch, 1, 0}, /* ?!@ */
{ 0, 0, 0, 0 , 0, 0,0, 0,N_barrier, 1, 0}, /* barrier */
GROUPADD(4)
GROUP( peephole, 440)
GROUPADD(0)
#ifdef HAS_PEEPHOLE
{ 1, 1, 0, 0 , 0, 0,0, 0,N_forget_dyncode3, 1, 0}, /* forget-dyncode3 */
{ 1, 6, 1, 0 , 0, 0,0, 0,N_decompile_prim3, 1, 0}, /* decompile-prim3 */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_fetch_decompile_prim, 1, 0}, /* @decompile-prim */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_tag_offsets, 1, 0}, /* tag-offsets */
{ 4, 0, 1, 0 , 0, 0,0, 0,N_compile_prims, 1, 0}, /* compile-prims */
GROUPADD(5)
#endif
GROUPADD(0)
GROUP( primitive_centric, 445)
{ 1, 0, 0, 0 , 0, 0,1, 0,N_abi_call, 1, 0}, /* abi-call */
{ 1, 0, 0, 0 , 0, 0,1, 0,N_semi_abi_code_exec, 1, 0}, /* ;abi-code-exec */
{ 1, 0, 0, 0 , 0, 0,1, 0,N_lit_execute, 1, 0}, /* lit-execute */
GROUPADD(3)
GROUP( object_pointer, 448)
GROUPADD(0)
#ifdef HAS_OBJECTS
{ 1, 1, 2, 0 , 0, 0,0, 0,N_to_o, 1, 0}, /* >o */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_o_restore, 1, 0}, /* o> */
{ 1, 0, 0, 0 , 0, 0,1, 0,N_o_lit_exec, 1, 0}, /* o#exec */
{ 2, 1, 0, 0 , 0, 0,1, 0,N_x_lit_exec, 1, 0}, /* x#exec */
{ 2, 0, 0, 0 , 0, 0,2, 0,N_u_lit_exec, 1, 0}, /* u#exec */
{ 2, 1, 1, 0 , 0, 0,2, 0,N_u_lit_plus, 1, 0}, /* u#+ */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_up_fetch, 1, 0}, /* up@ */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o, 1, 0}, /* o */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_o_plus, 1, 0}, /* o+ */
{ 2, 0, 1, 0 , 0, 0,0, 0,N_store_o_plus, 1, 0}, /* !o+ */
{ 1, 1, 0, 0 , 0, 0,0, 0,N_fetch_o_plus, 1, 0}, /* @o+ */
{ 2, 0, 2, 0 , 0, 0,0, 0,N_sf_store_o_plus, 1, 0}, /* sf!o+ */
{ 1, 1, 2, 0 , 0, 0,0, 0,N_sf_fetch_o_plus, 1, 0}, /* sf@o+ */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_0, 1, 0}, /* o0 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_1, 1, 0}, /* o1 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_2, 1, 0}, /* o2 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_3, 1, 0}, /* o3 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_4, 1, 0}, /* o4 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_5, 1, 0}, /* o5 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_6, 1, 0}, /* o6 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_7, 1, 0}, /* o7 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_8, 1, 0}, /* o8 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_9, 1, 0}, /* o9 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_10, 1, 0}, /* o10 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_11, 1, 0}, /* o11 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_12, 1, 0}, /* o12 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_13, 1, 0}, /* o13 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_14, 1, 0}, /* o14 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_15, 1, 0}, /* o15 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_16, 1, 0}, /* o16 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_17, 1, 0}, /* o17 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_18, 1, 0}, /* o18 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_19, 1, 0}, /* o19 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_20, 1, 0}, /* o20 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_21, 1, 0}, /* o21 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_22, 1, 0}, /* o22 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_23, 1, 0}, /* o23 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_24, 1, 0}, /* o24 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_25, 1, 0}, /* o25 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_26, 1, 0}, /* o26 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_27, 1, 0}, /* o27 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_28, 1, 0}, /* o28 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_29, 1, 0}, /* o29 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_30, 1, 0}, /* o30 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_o_31, 1, 0}, /* o31 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_0, 1, 0}, /* !o0 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_1, 1, 0}, /* !o1 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_2, 1, 0}, /* !o2 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_3, 1, 0}, /* !o3 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_4, 1, 0}, /* !o4 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_5, 1, 0}, /* !o5 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_6, 1, 0}, /* !o6 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_7, 1, 0}, /* !o7 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_8, 1, 0}, /* !o8 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_9, 1, 0}, /* !o9 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_10, 1, 0}, /* !o10 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_11, 1, 0}, /* !o11 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_12, 1, 0}, /* !o12 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_13, 1, 0}, /* !o13 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_14, 1, 0}, /* !o14 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_store_o_15, 1, 0}, /* !o15 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_0, 1, 0}, /* @o0 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_1, 1, 0}, /* @o1 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_2, 1, 0}, /* @o2 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_3, 1, 0}, /* @o3 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_4, 1, 0}, /* @o4 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_5, 1, 0}, /* @o5 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_6, 1, 0}, /* @o6 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_7, 1, 0}, /* @o7 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_8, 1, 0}, /* @o8 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_9, 1, 0}, /* @o9 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_10, 1, 0}, /* @o10 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_11, 1, 0}, /* @o11 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_12, 1, 0}, /* @o12 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_13, 1, 0}, /* @o13 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_14, 1, 0}, /* @o14 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_fetch_o_15, 1, 0}, /* @o15 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_0, 1, 0}, /* sf!o0 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_1, 1, 0}, /* sf!o1 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_2, 1, 0}, /* sf!o2 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_3, 1, 0}, /* sf!o3 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_4, 1, 0}, /* sf!o4 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_5, 1, 0}, /* sf!o5 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_6, 1, 0}, /* sf!o6 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_7, 1, 0}, /* sf!o7 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_8, 1, 0}, /* sf!o8 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_9, 1, 0}, /* sf!o9 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_10, 1, 0}, /* sf!o10 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_11, 1, 0}, /* sf!o11 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_12, 1, 0}, /* sf!o12 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_13, 1, 0}, /* sf!o13 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_14, 1, 0}, /* sf!o14 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_15, 1, 0}, /* sf!o15 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_16, 1, 0}, /* sf!o16 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_17, 1, 0}, /* sf!o17 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_18, 1, 0}, /* sf!o18 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_19, 1, 0}, /* sf!o19 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_20, 1, 0}, /* sf!o20 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_21, 1, 0}, /* sf!o21 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_22, 1, 0}, /* sf!o22 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_23, 1, 0}, /* sf!o23 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_24, 1, 0}, /* sf!o24 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_25, 1, 0}, /* sf!o25 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_26, 1, 0}, /* sf!o26 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_27, 1, 0}, /* sf!o27 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_28, 1, 0}, /* sf!o28 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_29, 1, 0}, /* sf!o29 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_30, 1, 0}, /* sf!o30 */
{ 1, 0, 1, 0 , 0, 0,0, 0,N_sf_store_o_31, 1, 0}, /* sf!o31 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_0, 1, 0}, /* sf@o0 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_1, 1, 0}, /* sf@o1 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_2, 1, 0}, /* sf@o2 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_3, 1, 0}, /* sf@o3 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_4, 1, 0}, /* sf@o4 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_5, 1, 0}, /* sf@o5 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_6, 1, 0}, /* sf@o6 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_7, 1, 0}, /* sf@o7 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_8, 1, 0}, /* sf@o8 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_9, 1, 0}, /* sf@o9 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_10, 1, 0}, /* sf@o10 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_11, 1, 0}, /* sf@o11 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_12, 1, 0}, /* sf@o12 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_13, 1, 0}, /* sf@o13 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_14, 1, 0}, /* sf@o14 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_15, 1, 0}, /* sf@o15 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_16, 1, 0}, /* sf@o16 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_17, 1, 0}, /* sf@o17 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_18, 1, 0}, /* sf@o18 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_19, 1, 0}, /* sf@o19 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_20, 1, 0}, /* sf@o20 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_21, 1, 0}, /* sf@o21 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_22, 1, 0}, /* sf@o22 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_23, 1, 0}, /* sf@o23 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_24, 1, 0}, /* sf@o24 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_25, 1, 0}, /* sf@o25 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_26, 1, 0}, /* sf@o26 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_27, 1, 0}, /* sf@o27 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_28, 1, 0}, /* sf@o28 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_29, 1, 0}, /* sf@o29 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_30, 1, 0}, /* sf@o30 */
{ 0, 1, 1, 0 , 0, 0,0, 0,N_sf_fetch_o_31, 1, 0}, /* sf@o31 */
GROUPADD(141)
#endif
GROUPADD(0)
GROUP( static_super, 589)
GROUPADD(0)
GROUP( end, 589)
