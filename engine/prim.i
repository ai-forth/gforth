LABEL(paren_docol) /* (docol) ( -- R:a_retaddr ) S0 -- S0  */
/* run-time routine for colon definitions */
NAME("(docol)")
ip += 1;
LABEL1(paren_docol)
{
DEF_CA
Cell * a_retaddr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
rp += -1;
{
#line 177 "prim"
#ifdef DEBUG
    {
      CFA_TO_NAME(CFA);
      if(len>0x1F)
	debugp(stderr,"%08lx: call %08lx noname\n",(Cell)ip,(Cell)CFA);
      else
	debugp(stderr,"%08lx: call %08lx %.*s\n",(Cell)ip,(Cell)CFA,
	       len,name);
    }
#endif
a_retaddr = (Cell *)IP;
SET_IP((Xt *)PFA(CFA));
#line 30 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_retaddr=", vm_out); printarg_a_(a_retaddr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_retaddr,rp[0]);
LABEL2(paren_docol)
NAME1("l2-paren_docol")
NEXT_P1_5;
LABEL3(paren_docol)
NAME1("l3-paren_docol")
DO_GOTO;
}

LABEL(paren_docon) /* (docon) ( -- w ) S0 -- S0  */
/* run-time routine for constants */
NAME("(docon)")
ip += 1;
LABEL1(paren_docon)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 192 "prim"
w = *(Cell *)PFA(CFA);
#line 67 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(paren_docon)
NAME1("l2-paren_docon")
NEXT_P1_5;
LABEL3(paren_docon)
NAME1("l3-paren_docon")
DO_GOTO;
}

LABEL(paren_dovar) /* (dovar) ( -- a_body ) S0 -- S0  */
/* run-time routine for variables and CREATEd words */
NAME("(dovar)")
ip += 1;
LABEL1(paren_dovar)
{
DEF_CA
Cell * a_body;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 196 "prim"
a_body = PFA(CFA);
#line 103 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_body=", vm_out); printarg_a_(a_body);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_body,sp[0]);
LABEL2(paren_dovar)
NAME1("l2-paren_dovar")
NEXT_P1_5;
LABEL3(paren_dovar)
NAME1("l3-paren_dovar")
DO_GOTO;
}

LABEL(paren_douser) /* (douser) ( -- a_user ) S0 -- S0  */
/* run-time routine for constants */
NAME("(douser)")
ip += 1;
LABEL1(paren_douser)
{
DEF_CA
Cell * a_user;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 200 "prim"
a_user = (Cell *)(((Address)up)+*(Cell *)PFA(CFA));
#line 139 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_user=", vm_out); printarg_a_(a_user);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_user,sp[0]);
LABEL2(paren_douser)
NAME1("l2-paren_douser")
NEXT_P1_5;
LABEL3(paren_douser)
NAME1("l3-paren_douser")
DO_GOTO;
}

LABEL(paren_dodefer) /* (dodefer) ( -- ) S0 -- S0  */
/* run-time routine for deferred words */
NAME("(dodefer)")
ip += 1;
LABEL1(paren_dodefer)
{
DEF_CA
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 204 "prim"
ip=IP; /* undo any ip updating that may have been performed by NEXT_P0 */
SUPER_END; /* !! probably unnecessary and may lead to measurement errors */
VM_JUMP(EXEC1(*(Xt *)PFA(CFA)));
#line 175 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(paren_dodefer)
LABEL3(paren_dodefer)
DO_GOTO;
}

LABEL(paren_field) /* (dofield) ( n1 -- n2 ) S0 -- S0  */
/* run-time routine for fields */
NAME("(dofield)")
ip += 1;
LABEL1(paren_field)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 210 "prim"
n2 = n1 + *(Cell *)PFA(CFA);
#line 207 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(paren_field)
NAME1("l2-paren_field")
NEXT_P1_5;
LABEL3(paren_field)
NAME1("l3-paren_field")
DO_GOTO;
}

LABEL(paren_doval) /* (dovalue) ( -- w ) S0 -- S0  */
/* run-time routine for constants */
NAME("(dovalue)")
ip += 1;
LABEL1(paren_doval)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 214 "prim"
w = *(Cell *)PFA(CFA);
#line 243 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(paren_doval)
NAME1("l2-paren_doval")
NEXT_P1_5;
LABEL3(paren_doval)
NAME1("l3-paren_doval")
DO_GOTO;
}

LABEL(paren_dodoes) /* (dodoes) ( -- a_body ) S0 -- S0  */
/*  */
NAME("(dodoes)")
ip += 1;
LABEL1(paren_dodoes)
{
DEF_CA
Cell * a_body;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 217 "prim"
a_body = PFA(CFA);
ip=IP; /* undo any ip updating that may have been performed by NEXT_P0 */
SUPER_END; /* !! probably unnecessary and may lead to measurement errors */
VM_JUMP(EXEC1(EXTRA_CODEXT(CFA)));
#line 282 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_body=", vm_out); printarg_a_(a_body);
fputc('\n', vm_out);
}
#endif
vm_a_2Cell(a_body,sp[0]);
LABEL2(paren_dodoes)
LABEL3(paren_dodoes)
DO_GOTO;
}

LABEL(paren_doabicode) /* (doabicode) ( ... -- ...) S0 -- S0  */
/* run-time routine for @code{ABI-code} definitions */
NAME("(doabicode)")
ip += 1;
LABEL1(paren_doabicode)
{
DEF_CA
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 224 "prim"
abifunc *f = (abifunc *)PFA(CFA);
Float *fp_mem = fp;
sp = (*f)(sp, &fp_mem);
fp = fp_mem;
#line 315 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(paren_doabicode)
NAME1("l2-paren_doabicode")
NEXT_P1_5;
LABEL3(paren_doabicode)
NAME1("l3-paren_doabicode")
DO_GOTO;
}

LABEL(paren_do_semicolon_abi_code) /* (do;abicode) ( ... -- ... ) S0 -- S0  */
/* run-time routine for @code{;abi-code}-defined words */
NAME("(do;abicode)")
ip += 1;
LABEL1(paren_do_semicolon_abi_code)
{
DEF_CA
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 231 "prim"
Float *fp_mem = fp;
Address body = (Address)PFA(CFA);
semiabifunc *f = (semiabifunc *)EXTRA_CODE(CFA);
sp = (*f)(sp, &fp_mem, body);
fp = fp_mem;
#line 351 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(paren_do_semicolon_abi_code)
NAME1("l2-paren_do_semicolon_abi_code")
NEXT_P1_5;
LABEL3(paren_do_semicolon_abi_code)
NAME1("l3-paren_do_semicolon_abi_code")
DO_GOTO;
}

GROUPADD(10)
GROUP( control, 10)
LABEL(noop) /* noop ( -- ) S0 -- S0  */
/*  */
NAME("noop")
ip += 1;
LABEL1(noop)
{
DEF_CA
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 242 "prim"
#line 384 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(noop)
NAME1("l2-noop")
NEXT_P1_5;
LABEL3(noop)
NAME1("l3-noop")
DO_GOTO;
}

LABEL(call) /* call ( #a_callee -- R:a_retaddr ) S0 -- S0  */
/* Call callee (a variant of docol with inline argument). */
NAME("call")
ip += 2;
LABEL1(call)
{
DEF_CA
MAYBE_UNUSED Cell * a_callee;
Cell * a_retaddr;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397760 ),a_callee);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_callee=", vm_out); printarg_a_(a_callee);
}
#endif
rp += -1;
{
#line 247 "prim"
#ifdef DEBUG
    {
      CFA_TO_NAME((Cell *)a_callee);
      if(len>0x1F)
	debugp(stderr,"%08lx: call %08lx noname\n",(Cell)ip,(Cell)a_callee);
      else
	debugp(stderr,"%08lx: call %08lx %.*s\n",(Cell)ip,(Cell)a_callee,
	       len,name);
    }
#endif
a_retaddr = (Cell *)IP;
SET_IP((Xt *)a_callee);
#line 432 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_retaddr=", vm_out); printarg_a_(a_retaddr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_retaddr,rp[0]);
LABEL2(call)
NAME1("l2-call")
NEXT_P1_5;
LABEL3(call)
NAME1("l3-call")
DO_GOTO;
}

LABEL(execute) /* execute ( xt -- ) S0 -- S0  */
/* Perform the semantics represented by the execution token, @i{xt}. */
NAME("execute")
ip += 1;
LABEL1(execute)
{
DEF_CA
MAYBE_UNUSED Xt xt;
NEXT_P0;
vm_Cell2xt(sp[0],xt);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" xt=", vm_out); printarg_xt(xt);
}
#endif
sp += 1;
{
#line 262 "prim"
#ifdef DEBUG
debugp(stderr, "execute %08x\n", xt);
#endif
ip=IP;
SUPER_END;
VM_JUMP(EXEC1(xt));
#line 476 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(execute)
LABEL3(execute)
DO_GOTO;
}

LABEL(perform) /* perform ( a_addr -- ) S0 -- S0  */
/* @code{@@ execute}. */
NAME("perform")
ip += 1;
LABEL1(perform)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 1;
{
#line 271 "prim"
/* and pfe */
ip=IP;
SUPER_END;
VM_JUMP(EXEC1(*(Xt *)a_addr));
#line 511 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(perform)
LABEL3(perform)
DO_GOTO;
}

LABEL(semis) /* ;s ( R:w -- ) S0 -- S0  */
/* The primitive compiled by @code{EXIT}. */
NAME(";s")
ip += 1;
LABEL1(semis)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(rp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
rp += 1;
{
#line 280 "prim"
SET_IP((Xt *)w);
#line 543 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(semis)
NAME1("l2-semis")
NEXT_P1_5;
LABEL3(semis)
NAME1("l3-semis")
DO_GOTO;
}

LABEL(execute_semis) /* execute-;s ( xt R:w -- ) S0 -- S0  */
/* The primitive compiled by @code{EXECUTE-EXIT}. */
NAME("execute-;s")
ip += 1;
LABEL1(execute_semis)
{
DEF_CA
MAYBE_UNUSED Xt xt;
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2xt(sp[0],xt);
vm_Cell2w(rp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" xt=", vm_out); printarg_xt(xt);
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
rp += 1;
{
#line 284 "prim"
#ifdef DEBUG
debugp(stderr, "execute-;s %08x\n", xt);
#endif
SET_IP((Xt *)w);
SUPER_END;
VM_JUMP(EXEC1(xt));
#line 589 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(execute_semis)
LABEL3(execute_semis)
DO_GOTO;
}

LABEL(unloop) /* unloop ( R:w1 R:w2 -- ) S0 -- S0  */
/*  */
NAME("unloop")
ip += 1;
LABEL1(unloop)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(rp[1],w1);
vm_Cell2w(rp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
rp += 2;
{
#line 292 "prim"
/* !! alias for 2rdrop */
#line 625 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(unloop)
NAME1("l2-unloop")
NEXT_P1_5;
LABEL3(unloop)
NAME1("l3-unloop")
DO_GOTO;
}

LABEL(lit_perform) /* lit-perform ( #a_addr -- ) S0 -- S0  */
/*  */
NAME("lit-perform")
ip += 2;
LABEL1(lit_perform)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397761 ),a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
{
#line 297 "prim"
ip=IP;
SUPER_END;
VM_JUMP(EXEC1(*(Xt *)a_addr));
#line 662 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(lit_perform)
LABEL3(lit_perform)
DO_GOTO;
}

LABEL(extra_xt) /* does-xt ( #a_cfa -- a_body ) S0 -- S0  */
/*  */
NAME("does-xt")
ip += 2;
LABEL1(extra_xt)
{
DEF_CA
MAYBE_UNUSED Cell * a_cfa;
Cell * a_body;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397762 ),a_cfa);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_cfa=", vm_out); printarg_a_(a_cfa);
}
#endif
sp += -1;
{
#line 302 "prim"
a_body = PFA(a_cfa);
#ifdef DEBUG
    {
      CFA_TO_NAME(a_cfa);
      debugp(stderr,"%08lx: does %08lx %.*s exec %p\n",
	     (Cell)ip,(Cell)a_cfa,len,name,EXTRA_CODE(a_cfa));
    }
#endif
SUPER_END;
VM_JUMP(EXEC1(EXTRA_CODEXT(a_cfa)));
#line 704 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_body=", vm_out); printarg_a_(a_body);
fputc('\n', vm_out);
}
#endif
vm_a_2Cell(a_body,sp[0]);
LABEL2(extra_xt)
LABEL3(extra_xt)
DO_GOTO;
}

GROUPADD(9)
#ifdef HAS_GLOCALS
LABEL(branch_lp_plus_store_number) /* branch-lp+!# ( #a_target #nlocals -- ) S0 -- S0  */
/*  */
NAME("branch-lp+!#")
ip += 3;
LABEL1(branch_lp_plus_store_number)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlocals;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-2],305397763 ),a_target);
vm_Cell2n(IMM_ARG(IP[-1],305397764 ),nlocals);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlocals=", vm_out); printarg_n(nlocals);
}
#endif
{
#line 316 "prim"
/* this will probably not be used */
lp += nlocals;
ALIVE_DEBUGGING(lp[-1]);
SET_IP((Xt *)a_target);
#line 745 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(branch_lp_plus_store_number)
NAME1("l2-branch_lp_plus_store_number")
NEXT_P1_5;
LABEL3(branch_lp_plus_store_number)
NAME1("l3-branch_lp_plus_store_number")
DO_GOTO;
}

GROUPADD(1)
#endif
LABEL(branch) /* branch ( #a_target -- ) S0 -- S0  */
/*  */
NAME("branch")
ip += 2;
LABEL1(branch)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397765 ),a_target);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
}
#endif
{
#line 324 "prim"
SET_IP((Xt *)a_target);
#line 783 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(branch)
NAME1("l2-branch")
NEXT_P1_5;
LABEL3(branch)
NAME1("l3-branch")
DO_GOTO;
}

LABEL(question_branch) /* ?branch ( #a_target f -- ) S0 -- S0  */
/*  */
NAME("?branch")
ip += 2;
LABEL1(question_branch)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Bool f;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397766 ),a_target);
vm_Cell2f(sp[0],f);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" f=", vm_out); printarg_f(f);
}
#endif
sp += 1;
{
#line 351 "prim"
 if (f==0) {
#line 350
 SET_IP((Xt *)a_target);
#line 350
/* 0=0 */
#line 350
}
#line 350
/* 0=0 */
#line 350
#line 832 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(question_branch)
NAME1("l2-question_branch")
NEXT_P1_5;
LABEL3(question_branch)
NAME1("l3-question_branch")
DO_GOTO;
}

GROUPADD(2)
#ifdef HAS_GLOCALS
LABEL(question_branch_lp_plus_store_number) /* ?branch-lp+!# ( #a_target #nlocals f -- ) S0 -- S0  */
/*  */
NAME("?branch-lp+!#")
ip += 3;
LABEL1(question_branch_lp_plus_store_number)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlocals;
MAYBE_UNUSED Bool f;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-2],305397767 ),a_target);
vm_Cell2n(IMM_ARG(IP[-1],305397768 ),nlocals);
vm_Cell2f(sp[0],f);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlocals=", vm_out); printarg_n(nlocals);
fputs(" f=", vm_out); printarg_f(f);
}
#endif
sp += 1;
{
#line 351 "prim"
	if (f==0) {
#line 350
	lp += nlocals;
#line 350
ALIVE_DEBUGGING(lp[-1]);
#line 350
SET_IP((Xt *)a_target);
#line 350
/* 0=0 */
#line 350
}
#line 350
/* 0=0 */
#line 350
#line 890 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(question_branch_lp_plus_store_number)
NAME1("l2-question_branch_lp_plus_store_number")
NEXT_P1_5;
LABEL3(question_branch_lp_plus_store_number)
NAME1("l3-question_branch_lp_plus_store_number")
DO_GOTO;
}

GROUPADD(1)
#endif
GROUPADD(0)
#ifdef HAS_XCONDS
LABEL(question_dupe_question_branch) /* ?dup-?branch ( #a_target f -- S:... ) S0 -- S0  */
/* The run-time procedure compiled by @code{?DUP-IF}. */
NAME("?dup-?branch")
ip += 2;
LABEL1(question_dupe_question_branch)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Bool f;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397769 ),a_target);
vm_Cell2f(sp[0],f);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" f=", vm_out); printarg_f(f);
}
#endif
sp += 1;
{
#line 366 "prim"
if (f==0) {
  SET_IP((Xt *)a_target);
} else {
  sp--;
  sp[0]=f;
}
#line 939 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(question_dupe_question_branch)
NAME1("l2-question_dupe_question_branch")
NEXT_P1_5;
LABEL3(question_dupe_question_branch)
NAME1("l3-question_dupe_question_branch")
DO_GOTO;
}

LABEL(question_dupe_zero_equals_question_branch) /* ?dup-0=-?branch ( #a_target f -- S:... ) S0 -- S0  */
/* The run-time procedure compiled by @code{?DUP-0=-IF}. */
NAME("?dup-0=-?branch")
ip += 2;
LABEL1(question_dupe_zero_equals_question_branch)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Bool f;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397770 ),a_target);
vm_Cell2f(sp[0],f);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" f=", vm_out); printarg_f(f);
}
#endif
sp += 1;
{
#line 375 "prim"
if (f!=0) {
  sp--;
  sp[0]=f;
  SET_IP((Xt *)a_target);
}
#line 983 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(question_dupe_zero_equals_question_branch)
NAME1("l2-question_dupe_zero_equals_question_branch")
NEXT_P1_5;
LABEL3(question_dupe_zero_equals_question_branch)
NAME1("l3-question_dupe_zero_equals_question_branch")
DO_GOTO;
}

GROUPADD(2)
#endif
LABEL(paren_next) /* (next) ( #a_target R:n1 -- R:n2 ) S0 -- S0  */
/*  */
NAME("(next)")
ip += 2;
LABEL1(paren_next)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397771 ),a_target);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 384 "prim"
n2=n1-1;
#line 383
 if (n1) {
#line 383
 SET_IP((Xt *)a_target);
#line 383
/* 0=0 */
#line 383
}
#line 383
/* 0=0 */
#line 383
#line 1036 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_next)
NAME1("l2-paren_next")
NEXT_P1_5;
LABEL3(paren_next)
NAME1("l3-paren_next")
DO_GOTO;
}

GROUPADD(1)
#ifdef HAS_GLOCALS
LABEL(paren_next_lp_plus_store_number) /* (next)-lp+!# ( #a_target #nlocals R:n1 -- R:n2 ) S0 -- S0  */
/*  */
NAME("(next)-lp+!#")
ip += 3;
LABEL1(paren_next_lp_plus_store_number)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlocals;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-2],305397772 ),a_target);
vm_Cell2n(IMM_ARG(IP[-1],305397773 ),nlocals);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlocals=", vm_out); printarg_n(nlocals);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 384 "prim"
n2=n1-1;
#line 383
	if (n1) {
#line 383
	lp += nlocals;
#line 383
ALIVE_DEBUGGING(lp[-1]);
#line 383
SET_IP((Xt *)a_target);
#line 383
/* 0=0 */
#line 383
}
#line 383
/* 0=0 */
#line 383
#line 1098 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_next_lp_plus_store_number)
NAME1("l2-paren_next_lp_plus_store_number")
NEXT_P1_5;
LABEL3(paren_next_lp_plus_store_number)
NAME1("l3-paren_next_lp_plus_store_number")
DO_GOTO;
}

GROUPADD(1)
#endif
LABEL(paren_loop) /* (loop) ( #a_target R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/*  */
NAME("(loop)")
ip += 2;
LABEL1(paren_loop)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397774 ),a_target);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 391 "prim"
n2=n1+1;
#line 390
 if (n2 != nlimit) {
#line 390
 SET_IP((Xt *)a_target);
#line 390
/* 0=0 */
#line 390
}
#line 390
/* 0=0 */
#line 390
#line 1156 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_loop)
NAME1("l2-paren_loop")
NEXT_P1_5;
LABEL3(paren_loop)
NAME1("l3-paren_loop")
DO_GOTO;
}

GROUPADD(1)
#ifdef HAS_GLOCALS
LABEL(paren_loop_lp_plus_store_number) /* (loop)-lp+!# ( #a_target #nlocals R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/*  */
NAME("(loop)-lp+!#")
ip += 3;
LABEL1(paren_loop_lp_plus_store_number)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlocals;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-2],305397775 ),a_target);
vm_Cell2n(IMM_ARG(IP[-1],305397776 ),nlocals);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlocals=", vm_out); printarg_n(nlocals);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 391 "prim"
n2=n1+1;
#line 390
	if (n2 != nlimit) {
#line 390
	lp += nlocals;
#line 390
ALIVE_DEBUGGING(lp[-1]);
#line 390
SET_IP((Xt *)a_target);
#line 390
/* 0=0 */
#line 390
}
#line 390
/* 0=0 */
#line 390
#line 1221 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_loop_lp_plus_store_number)
NAME1("l2-paren_loop_lp_plus_store_number")
NEXT_P1_5;
LABEL3(paren_loop_lp_plus_store_number)
NAME1("l3-paren_loop_lp_plus_store_number")
DO_GOTO;
}

GROUPADD(1)
#endif
LABEL(paren_plus_loop) /* (+loop) ( #a_target n R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/*  */
NAME("(+loop)")
ip += 2;
LABEL1(paren_plus_loop)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397777 ),a_target);
vm_Cell2n(sp[0],n);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" n=", vm_out); printarg_n(n);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 399 "prim"
/* sign bit manipulation and test: (x^y)<0 is equivalent to (x<0) != (y<0) */
#line 398
/* dependent upon two's complement arithmetic */
#line 398
Cell olddiff = (n1-nlimit)
#line 398
#ifdef HAVE___BUILTIN_ADD_OVERFLOW
#line 398
               ^(0x80UL<<((sizeof(Cell)-1)*8))
#line 398
#endif
#line 398
;
#line 398
n2=n1+n;	
#line 398
 if (
#line 398
#ifdef HAVE___BUILTIN_ADD_OVERFLOW
#line 398
!__builtin_add_overflow(olddiff,n,&olddiff)
#line 398
#else
#line 398
     ((olddiff^(olddiff+n))    /* the limit is not crossed */
#line 398
      &(olddiff^n))            /* OR it is a wrap-around effect */
#line 398
     >=0
#line 398
#endif
#line 398
) {
#line 398
 SET_IP((Xt *)a_target);
#line 398
/* 0=0 */
#line 398
}
#line 398
/* 0=0 */
#line 398
#line 1313 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_plus_loop)
NAME1("l2-paren_plus_loop")
NEXT_P1_5;
LABEL3(paren_plus_loop)
NAME1("l3-paren_plus_loop")
DO_GOTO;
}

GROUPADD(1)
#ifdef HAS_GLOCALS
LABEL(paren_plus_loop_lp_plus_store_number) /* (+loop)-lp+!# ( #a_target #nlocals n R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/*  */
NAME("(+loop)-lp+!#")
ip += 3;
LABEL1(paren_plus_loop_lp_plus_store_number)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlocals;
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-2],305397778 ),a_target);
vm_Cell2n(IMM_ARG(IP[-1],305397779 ),nlocals);
vm_Cell2n(sp[0],n);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlocals=", vm_out); printarg_n(nlocals);
fputs(" n=", vm_out); printarg_n(n);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 399 "prim"
/* sign bit manipulation and test: (x^y)<0 is equivalent to (x<0) != (y<0) */
#line 398
/* dependent upon two's complement arithmetic */
#line 398
Cell olddiff = (n1-nlimit)
#line 398
#ifdef HAVE___BUILTIN_ADD_OVERFLOW
#line 398
               ^(0x80UL<<((sizeof(Cell)-1)*8))
#line 398
#endif
#line 398
;
#line 398
n2=n1+n;	
#line 398
	if (
#line 398
#ifdef HAVE___BUILTIN_ADD_OVERFLOW
#line 398
!__builtin_add_overflow(olddiff,n,&olddiff)
#line 398
#else
#line 398
     ((olddiff^(olddiff+n))    /* the limit is not crossed */
#line 398
      &(olddiff^n))            /* OR it is a wrap-around effect */
#line 398
     >=0
#line 398
#endif
#line 398
) {
#line 398
	lp += nlocals;
#line 398
ALIVE_DEBUGGING(lp[-1]);
#line 398
SET_IP((Xt *)a_target);
#line 398
/* 0=0 */
#line 398
}
#line 398
/* 0=0 */
#line 398
#line 1412 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_plus_loop_lp_plus_store_number)
NAME1("l2-paren_plus_loop_lp_plus_store_number")
NEXT_P1_5;
LABEL3(paren_plus_loop_lp_plus_store_number)
NAME1("l3-paren_plus_loop_lp_plus_store_number")
DO_GOTO;
}

GROUPADD(1)
#endif
GROUPADD(0)
#ifdef HAS_XCONDS
LABEL(paren_minus_loop) /* (-loop) ( #a_target u R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/*  */
NAME("(-loop)")
ip += 2;
LABEL1(paren_minus_loop)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397780 ),a_target);
vm_Cell2u(sp[0],u);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" u=", vm_out); printarg_u(u);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 427 "prim"
n2=n1-u;
#line 426
 if ((nlimit-n2)>=u) {
#line 426
 SET_IP((Xt *)a_target);
#line 426
/* 0=0 */
#line 426
}
#line 426
/* 0=0 */
#line 426
#line 1476 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_minus_loop)
NAME1("l2-paren_minus_loop")
NEXT_P1_5;
LABEL3(paren_minus_loop)
NAME1("l3-paren_minus_loop")
DO_GOTO;
}

GROUPADD(1)
#ifdef HAS_GLOCALS
LABEL(paren_minus_loop_lp_plus_store_number) /* (-loop)-lp+!# ( #a_target #nlocals u R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/*  */
NAME("(-loop)-lp+!#")
ip += 3;
LABEL1(paren_minus_loop_lp_plus_store_number)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlocals;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-2],305397781 ),a_target);
vm_Cell2n(IMM_ARG(IP[-1],305397782 ),nlocals);
vm_Cell2u(sp[0],u);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlocals=", vm_out); printarg_n(nlocals);
fputs(" u=", vm_out); printarg_u(u);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 427 "prim"
n2=n1-u;
#line 426
	if ((nlimit-n2)>=u) {
#line 426
	lp += nlocals;
#line 426
ALIVE_DEBUGGING(lp[-1]);
#line 426
SET_IP((Xt *)a_target);
#line 426
/* 0=0 */
#line 426
}
#line 426
/* 0=0 */
#line 426
#line 1545 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_minus_loop_lp_plus_store_number)
NAME1("l2-paren_minus_loop_lp_plus_store_number")
NEXT_P1_5;
LABEL3(paren_minus_loop_lp_plus_store_number)
NAME1("l3-paren_minus_loop_lp_plus_store_number")
DO_GOTO;
}

GROUPADD(1)
#endif
LABEL(paren_slash_loop) /* (/loop) ( #a_target u R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/*  */
NAME("(/loop)")
ip += 2;
LABEL1(paren_slash_loop)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397783 ),a_target);
vm_Cell2u(sp[0],u);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" u=", vm_out); printarg_u(u);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 432 "prim"
n2=n1+u;
#line 431
 if (n2-nlimit>=u) {
#line 431
 SET_IP((Xt *)a_target);
#line 431
/* 0=0 */
#line 431
}
#line 431
/* 0=0 */
#line 431
#line 1607 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_slash_loop)
NAME1("l2-paren_slash_loop")
NEXT_P1_5;
LABEL3(paren_slash_loop)
NAME1("l3-paren_slash_loop")
DO_GOTO;
}

GROUPADD(1)
#ifdef HAS_GLOCALS
LABEL(paren_slash_loop_lp_plus_store_number) /* (/loop)-lp+!# ( #a_target #nlocals u R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/*  */
NAME("(/loop)-lp+!#")
ip += 3;
LABEL1(paren_slash_loop_lp_plus_store_number)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlocals;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-2],305397784 ),a_target);
vm_Cell2n(IMM_ARG(IP[-1],305397785 ),nlocals);
vm_Cell2u(sp[0],u);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlocals=", vm_out); printarg_n(nlocals);
fputs(" u=", vm_out); printarg_u(u);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 432 "prim"
n2=n1+u;
#line 431
	if (n2-nlimit>=u) {
#line 431
	lp += nlocals;
#line 431
ALIVE_DEBUGGING(lp[-1]);
#line 431
SET_IP((Xt *)a_target);
#line 431
/* 0=0 */
#line 431
}
#line 431
/* 0=0 */
#line 431
#line 1676 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_slash_loop_lp_plus_store_number)
NAME1("l2-paren_slash_loop_lp_plus_store_number")
NEXT_P1_5;
LABEL3(paren_slash_loop_lp_plus_store_number)
NAME1("l3-paren_slash_loop_lp_plus_store_number")
DO_GOTO;
}

GROUPADD(1)
#endif
LABEL(paren_symmetric_plus_loop) /* (s+loop) ( #a_target n R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/* The run-time procedure compiled by S+LOOP. It loops until the index
crosses the boundary between limit and limit-sign(n). I.e. a symmetric
version of (+LOOP). */
NAME("(s+loop)")
ip += 2;
LABEL1(paren_symmetric_plus_loop)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397786 ),a_target);
vm_Cell2n(sp[0],n);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" n=", vm_out); printarg_n(n);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 437 "prim"
/* !! check this thoroughly */
#line 436
Cell diff = n1-nlimit;
#line 436
Cell newdiff = diff+n;
#line 436
if (n<0) {
#line 436
    diff = -diff;
#line 436
    newdiff = -newdiff;
#line 436
}
#line 436
n2=n1+n;
#line 436
 if (((~diff)|newdiff)<0) { /* use | to avoid two branches for gforth-native */
#line 436
 SET_IP((Xt *)a_target);
#line 436
/* 0=0 */
#line 436
}
#line 436
/* 0=0 */
#line 436
#line 1754 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_symmetric_plus_loop)
NAME1("l2-paren_symmetric_plus_loop")
NEXT_P1_5;
LABEL3(paren_symmetric_plus_loop)
NAME1("l3-paren_symmetric_plus_loop")
DO_GOTO;
}

GROUPADD(1)
#ifdef HAS_GLOCALS
LABEL(paren_symmetric_plus_loop_lp_plus_store_number) /* (s+loop)-lp+!# ( #a_target #nlocals n R:nlimit R:n1 -- R:nlimit R:n2 ) S0 -- S0  */
/* The run-time procedure compiled by S+LOOP. It loops until the index
crosses the boundary between limit and limit-sign(n). I.e. a symmetric
version of (+LOOP). */
NAME("(s+loop)-lp+!#")
ip += 3;
LABEL1(paren_symmetric_plus_loop_lp_plus_store_number)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlocals;
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-2],305397787 ),a_target);
vm_Cell2n(IMM_ARG(IP[-1],305397788 ),nlocals);
vm_Cell2n(sp[0],n);
vm_Cell2n(rp[1],nlimit);
vm_Cell2n(rp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlocals=", vm_out); printarg_n(nlocals);
fputs(" n=", vm_out); printarg_n(n);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 437 "prim"
/* !! check this thoroughly */
#line 436
Cell diff = n1-nlimit;
#line 436
Cell newdiff = diff+n;
#line 436
if (n<0) {
#line 436
    diff = -diff;
#line 436
    newdiff = -newdiff;
#line 436
}
#line 436
n2=n1+n;
#line 436
	if (((~diff)|newdiff)<0) { /* use | to avoid two branches for gforth-native */
#line 436
	lp += nlocals;
#line 436
ALIVE_DEBUGGING(lp[-1]);
#line 436
SET_IP((Xt *)a_target);
#line 436
/* 0=0 */
#line 436
}
#line 436
/* 0=0 */
#line 436
#line 1839 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,rp[0]);
LABEL2(paren_symmetric_plus_loop_lp_plus_store_number)
NAME1("l2-paren_symmetric_plus_loop_lp_plus_store_number")
NEXT_P1_5;
LABEL3(paren_symmetric_plus_loop_lp_plus_store_number)
NAME1("l3-paren_symmetric_plus_loop_lp_plus_store_number")
DO_GOTO;
}

GROUPADD(1)
#endif
GROUPADD(0)
#endif
LABEL(paren_for) /* (for) ( ncount -- R:nlimit R:ncount ) S0 -- S0  */
/*  */
NAME("(for)")
ip += 1;
LABEL1(paren_for)
{
DEF_CA
MAYBE_UNUSED Cell ncount;
Cell nlimit;
NEXT_P0;
vm_Cell2n(sp[0],ncount);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ncount=", vm_out); printarg_n(ncount);
}
#endif
sp += 1;
rp += -2;
{
#line 455 "prim"
/* or (for) = >r -- collides with unloop! */
nlimit=0;
#line 1885 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(nlimit,rp[1]);
vm_n2Cell(ncount,rp[0]);
LABEL2(paren_for)
NAME1("l2-paren_for")
NEXT_P1_5;
LABEL3(paren_for)
NAME1("l3-paren_for")
DO_GOTO;
}

LABEL(paren_do) /* (do) ( nlimit nstart -- R:nlimit R:nstart ) S0 -- S0  */
/*  */
NAME("(do)")
ip += 1;
LABEL1(paren_do)
{
DEF_CA
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell nstart;
NEXT_P0;
vm_Cell2n(sp[1],nlimit);
vm_Cell2n(sp[0],nstart);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" nstart=", vm_out); printarg_n(nstart);
}
#endif
sp += 2;
rp += -2;
{
#line 461 "prim"
#line 1927 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(nlimit,rp[1]);
vm_n2Cell(nstart,rp[0]);
LABEL2(paren_do)
NAME1("l2-paren_do")
NEXT_P1_5;
LABEL3(paren_do)
NAME1("l3-paren_do")
DO_GOTO;
}

LABEL(paren_question_do) /* (?do) ( #a_target nlimit nstart -- R:nlimit R:nstart ) S0 -- S0  */
/*  */
NAME("(?do)")
ip += 2;
LABEL1(paren_question_do)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell nstart;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397789 ),a_target);
vm_Cell2n(sp[1],nlimit);
vm_Cell2n(sp[0],nstart);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" nstart=", vm_out); printarg_n(nstart);
}
#endif
sp += 2;
rp += -2;
{
#line 465 "prim"
if (nstart == nlimit) {
    SET_IP((Xt *)a_target);
}
#line 1974 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(nlimit,rp[1]);
vm_n2Cell(nstart,rp[0]);
LABEL2(paren_question_do)
NAME1("l2-paren_question_do")
NEXT_P1_5;
LABEL3(paren_question_do)
NAME1("l3-paren_question_do")
DO_GOTO;
}

GROUPADD(3)
#ifdef HAS_XCONDS
LABEL(paren_plus_do) /* (+do) ( #a_target nlimit nstart -- R:nlimit R:nstart ) S0 -- S0  */
/*  */
NAME("(+do)")
ip += 2;
LABEL1(paren_plus_do)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell nstart;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397790 ),a_target);
vm_Cell2n(sp[1],nlimit);
vm_Cell2n(sp[0],nstart);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" nstart=", vm_out); printarg_n(nstart);
}
#endif
sp += 2;
rp += -2;
{
#line 479 "prim"
if (nstart >= nlimit) {
  SET_IP((Xt *)a_target);
}
#line 2024 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(nlimit,rp[1]);
vm_n2Cell(nstart,rp[0]);
LABEL2(paren_plus_do)
NAME1("l2-paren_plus_do")
NEXT_P1_5;
LABEL3(paren_plus_do)
NAME1("l3-paren_plus_do")
DO_GOTO;
}

LABEL(paren_u_plus_do) /* (u+do) ( #a_target ulimit ustart -- R:ulimit R:ustart ) S0 -- S0  */
/*  */
NAME("(u+do)")
ip += 2;
LABEL1(paren_u_plus_do)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED UCell ulimit;
MAYBE_UNUSED UCell ustart;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397791 ),a_target);
vm_Cell2u(sp[1],ulimit);
vm_Cell2u(sp[0],ustart);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" ulimit=", vm_out); printarg_u(ulimit);
fputs(" ustart=", vm_out); printarg_u(ustart);
}
#endif
sp += 2;
rp += -2;
{
#line 493 "prim"
if (ustart >= ulimit) {
  SET_IP((Xt *)a_target);
}
#line 2072 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(ulimit,rp[1]);
vm_u2Cell(ustart,rp[0]);
LABEL2(paren_u_plus_do)
NAME1("l2-paren_u_plus_do")
NEXT_P1_5;
LABEL3(paren_u_plus_do)
NAME1("l3-paren_u_plus_do")
DO_GOTO;
}

LABEL(paren_minus_do) /* (-do) ( #a_target nlimit nstart -- R:nlimit R:nstart ) S0 -- S0  */
/*  */
NAME("(-do)")
ip += 2;
LABEL1(paren_minus_do)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell nstart;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397792 ),a_target);
vm_Cell2n(sp[1],nlimit);
vm_Cell2n(sp[0],nstart);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" nstart=", vm_out); printarg_n(nstart);
}
#endif
sp += 2;
rp += -2;
{
#line 507 "prim"
if (nstart <= nlimit) {
SET_IP((Xt *)a_target);
}
#line 2120 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(nlimit,rp[1]);
vm_n2Cell(nstart,rp[0]);
LABEL2(paren_minus_do)
NAME1("l2-paren_minus_do")
NEXT_P1_5;
LABEL3(paren_minus_do)
NAME1("l3-paren_minus_do")
DO_GOTO;
}

LABEL(paren_u_minus_do) /* (u-do) ( #a_target ulimit ustart -- R:ulimit R:ustart ) S0 -- S0  */
/*  */
NAME("(u-do)")
ip += 2;
LABEL1(paren_u_minus_do)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED UCell ulimit;
MAYBE_UNUSED UCell ustart;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397793 ),a_target);
vm_Cell2u(sp[1],ulimit);
vm_Cell2u(sp[0],ustart);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" ulimit=", vm_out); printarg_u(ulimit);
fputs(" ustart=", vm_out); printarg_u(ustart);
}
#endif
sp += 2;
rp += -2;
{
#line 521 "prim"
if (ustart <= ulimit) {
SET_IP((Xt *)a_target);
}
#line 2168 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(ulimit,rp[1]);
vm_u2Cell(ustart,rp[0]);
LABEL2(paren_u_minus_do)
NAME1("l2-paren_u_minus_do")
NEXT_P1_5;
LABEL3(paren_u_minus_do)
NAME1("l3-paren_u_minus_do")
DO_GOTO;
}

LABEL(paren_minus_bracket_do) /* (-[do) ( #a_target nlimit nstart -- R:nlimit R:nstart ) S0 -- S0  */
/*  */
NAME("(-[do)")
ip += 2;
LABEL1(paren_minus_bracket_do)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED Cell nlimit;
MAYBE_UNUSED Cell nstart;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397794 ),a_target);
vm_Cell2n(sp[1],nlimit);
vm_Cell2n(sp[0],nstart);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" nlimit=", vm_out); printarg_n(nlimit);
fputs(" nstart=", vm_out); printarg_n(nstart);
}
#endif
sp += 2;
rp += -2;
{
#line 535 "prim"
if (nstart < nlimit) {
SET_IP((Xt *)a_target);
}
#line 2216 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(nlimit,rp[1]);
vm_n2Cell(nstart,rp[0]);
LABEL2(paren_minus_bracket_do)
NAME1("l2-paren_minus_bracket_do")
NEXT_P1_5;
LABEL3(paren_minus_bracket_do)
NAME1("l3-paren_minus_bracket_do")
DO_GOTO;
}

LABEL(paren_u_minus_bracket_do) /* (u-[do) ( #a_target ulimit ustart -- R:ulimit R:ustart ) S0 -- S0  */
/*  */
NAME("(u-[do)")
ip += 2;
LABEL1(paren_u_minus_bracket_do)
{
DEF_CA
MAYBE_UNUSED Cell * a_target;
MAYBE_UNUSED UCell ulimit;
MAYBE_UNUSED UCell ustart;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397795 ),a_target);
vm_Cell2u(sp[1],ulimit);
vm_Cell2u(sp[0],ustart);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_target=", vm_out); printarg_a_(a_target);
fputs(" ulimit=", vm_out); printarg_u(ulimit);
fputs(" ustart=", vm_out); printarg_u(ustart);
}
#endif
sp += 2;
rp += -2;
{
#line 549 "prim"
if (ustart < ulimit) {
SET_IP((Xt *)a_target);
}
#line 2264 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(ulimit,rp[1]);
vm_u2Cell(ustart,rp[0]);
LABEL2(paren_u_minus_bracket_do)
NAME1("l2-paren_u_minus_bracket_do")
NEXT_P1_5;
LABEL3(paren_u_minus_bracket_do)
NAME1("l3-paren_u_minus_bracket_do")
DO_GOTO;
}

LABEL(paren_try) /* (try) ( ... #a_recovery -- R:a_recovery R:a_sp R:c_op R:f_fp R:c_lp R:a_oldhandler ) S0 -- S0  */
/*  */
NAME("(try)")
ip += 2;
LABEL1(paren_try)
{
DEF_CA
MAYBE_UNUSED Cell * a_recovery;
Cell * a_sp;
Char * c_op;
Float * f_fp;
Char * c_lp;
Cell * a_oldhandler;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397796 ),a_recovery);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_recovery=", vm_out); printarg_a_(a_recovery);
}
#endif
{
#line 564 "prim"
a_oldhandler = SPs->handler;
a_sp = sp;
c_op = op;
f_fp = fp;
c_lp = lp;
SPs->handler = rp-6;
SPs->first_throw |= -(Cell)(SPs->first_throw == 0);
#line 2313 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_sp=", vm_out); printarg_a_(a_sp);
fputs(" c_op=", vm_out); printarg_c_(c_op);
fputs(" f_fp=", vm_out); printarg_f_(f_fp);
fputs(" c_lp=", vm_out); printarg_c_(c_lp);
fputs(" a_oldhandler=", vm_out); printarg_a_(a_oldhandler);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
rp += -6;
vm_a_2Cell(a_recovery,rp[5]);
vm_a_2Cell(a_sp,rp[4]);
vm_c_2Cell(c_op,rp[3]);
vm_f_2Cell(f_fp,rp[2]);
vm_c_2Cell(c_lp,rp[1]);
vm_a_2Cell(a_oldhandler,rp[0]);
LABEL2(paren_try)
NAME1("l2-paren_try")
NEXT_P1_5;
LABEL3(paren_try)
NAME1("l3-paren_try")
DO_GOTO;
}

LABEL(uncatch) /* uncatch ( R:a_recovery R:a_sp R:c_op R:f_fp R:c_lp R:a_oldhandler -- ) S0 -- S0  */
/*  */
NAME("uncatch")
ip += 1;
LABEL1(uncatch)
{
DEF_CA
MAYBE_UNUSED Cell * a_recovery;
MAYBE_UNUSED Cell * a_sp;
MAYBE_UNUSED Char * c_op;
MAYBE_UNUSED Float * f_fp;
MAYBE_UNUSED Char * c_lp;
MAYBE_UNUSED Cell * a_oldhandler;
NEXT_P0;
vm_Cell2a_(rp[5],a_recovery);
vm_Cell2a_(rp[4],a_sp);
vm_Cell2c_(rp[3],c_op);
vm_Cell2f_(rp[2],f_fp);
vm_Cell2c_(rp[1],c_lp);
vm_Cell2a_(rp[0],a_oldhandler);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_recovery=", vm_out); printarg_a_(a_recovery);
fputs(" a_sp=", vm_out); printarg_a_(a_sp);
fputs(" c_op=", vm_out); printarg_c_(c_op);
fputs(" f_fp=", vm_out); printarg_f_(f_fp);
fputs(" c_lp=", vm_out); printarg_c_(c_lp);
fputs(" a_oldhandler=", vm_out); printarg_a_(a_oldhandler);
}
#endif
rp += 6;
{
#line 573 "prim"
SPs->handler = a_oldhandler;
#line 2376 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(uncatch)
NAME1("l2-uncatch")
NEXT_P1_5;
LABEL3(uncatch)
NAME1("l3-uncatch")
DO_GOTO;
}

LABEL(fast_throw) /* fast-throw ( ... wball -- ... wball ) S0 -- S0  */
/* Lightweight @code{throw} variant: only for non-zero balls, and
does not store a backtrace or deal with missing @code{catch}. */
NAME("fast-throw")
ip += 1;
LABEL1(fast_throw)
{
DEF_CA
MAYBE_UNUSED Cell wball;
NEXT_P0;
vm_Cell2w(sp[0],wball);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wball=", vm_out); printarg_w(wball);
}
#endif
sp += 1;
{
#line 578 "prim"
rp = SPs->handler;
lp = (Address)rp[1];
fp = (Float *)rp[2];
op = (Char *)rp[3];
sp = (Cell *)rp[4];
SET_IP((Xt *)rp[5]);
#line 2418 "prim.i"
}
SUPER_END;

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
sp += -1;
vm_w2Cell(wball,sp[0]);
LABEL2(fast_throw)
NAME1("l2-fast_throw")
NEXT_P1_5;
LABEL3(fast_throw)
NAME1("l3-fast_throw")
DO_GOTO;
}

GROUPADD(9)
#endif
LABEL(i) /* i ( R:n -- R:n n ) S0 -- S0  */
/* @i{n} is the index of the innermost counted loop. */
NAME("i")
ip += 1;
LABEL1(i)
{
DEF_CA
MAYBE_UNUSED Cell n;
NEXT_P0;
vm_Cell2n(rp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += -1;
{
#line 592 "prim"
#line 2458 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(i)
NAME1("l2-i")
NEXT_P1_5;
LABEL3(i)
NAME1("l3-i")
DO_GOTO;
}

LABEL(i_tick) /* i' ( R:w R:w2 -- R:w R:w2 w ) S0 -- S0  */
/* The limit of the innermost counted loop */
NAME("i'")
ip += 1;
LABEL1(i_tick)
{
DEF_CA
MAYBE_UNUSED Cell w;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(rp[1],w);
vm_Cell2w(rp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += -1;
{
#line 598 "prim"
#line 2497 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(i_tick)
NAME1("l2-i_tick")
NEXT_P1_5;
LABEL3(i_tick)
NAME1("l3-i_tick")
DO_GOTO;
}

LABEL(j) /* j ( R:n R:w1 R:w2 -- n R:n R:w1 R:w2 ) S0 -- S0  */
/* @i{n} is the index of the next-to-innermost counted loop. */
NAME("j")
ip += 1;
LABEL1(j)
{
DEF_CA
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2n(rp[2],n);
vm_Cell2w(rp[1],w1);
vm_Cell2w(rp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += -1;
{
#line 605 "prim"
#line 2539 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(j)
NAME1("l2-j")
NEXT_P1_5;
LABEL3(j)
NAME1("l3-j")
DO_GOTO;
}

LABEL(k) /* k ( R:n R:w1 R:w2 R:w3 R:w4 -- n R:n R:w1 R:w2 R:w3 R:w4 ) S0 -- S0  */
/* @i{n} is the index of the third-innermost counted loop. */
NAME("k")
ip += 1;
LABEL1(k)
{
DEF_CA
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
MAYBE_UNUSED Cell w4;
NEXT_P0;
vm_Cell2n(rp[4],n);
vm_Cell2w(rp[3],w1);
vm_Cell2w(rp[2],w2);
vm_Cell2w(rp[1],w3);
vm_Cell2w(rp[0],w4);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
fputs(" w4=", vm_out); printarg_w(w4);
}
#endif
sp += -1;
{
#line 612 "prim"
#line 2587 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(k)
NAME1("l2-k")
NEXT_P1_5;
LABEL3(k)
NAME1("l3-k")
DO_GOTO;
}

LABEL(bounds) /* bounds ( u1 u2 -- u3 u1 ) S0 -- S0  */
/* Given a memory block represented by starting address @i{addr} and length @i{u} in aus, produce the end address @i{addr+u} and the start address in the right order for @code{u+do} or @code{?do}. */
NAME("bounds")
ip += 1;
LABEL1(bounds)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UCell u3;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
{
#line 619 "prim"
u3=u1+u2;
#line 2627 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u3=", vm_out); printarg_u(u3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u3,sp[1]);
vm_u2Cell(u1,sp[0]);
LABEL2(bounds)
NAME1("l2-bounds")
NEXT_P1_5;
LABEL3(bounds)
NAME1("l3-bounds")
DO_GOTO;
}

LABEL(delta_i) /* delta-i ( r:ulimit r:u -- r:ulimit r:u u2 ) S0 -- S0  */
/* @i{u2}=@code{I'}-@code{I} (difference between limit and index). */
NAME("delta-i")
ip += 1;
LABEL1(delta_i)
{
DEF_CA
MAYBE_UNUSED UCell ulimit;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(rp[1],ulimit);
vm_Cell2u(rp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ulimit=", vm_out); printarg_u(ulimit);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += -1;
{
#line 625 "prim"
u2=ulimit-u;
#line 2670 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(delta_i)
NAME1("l2-delta_i")
NEXT_P1_5;
LABEL3(delta_i)
NAME1("l3-delta_i")
DO_GOTO;
}

LABEL(r_tick_fetch) /* r'@ ( r:w r:w2 -- r:w r:w2 w ) S0 -- S0  */
/* The second item on the return stack */
NAME("r'@")
ip += 1;
LABEL1(r_tick_fetch)
{
DEF_CA
MAYBE_UNUSED Cell w;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(rp[1],w);
vm_Cell2w(rp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += -1;
{
#line 631 "prim"
#line 2710 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(r_tick_fetch)
NAME1("l2-r_tick_fetch")
NEXT_P1_5;
LABEL3(r_tick_fetch)
NAME1("l3-r_tick_fetch")
DO_GOTO;
}

LABEL(rpick_num) /* rpick# ( #u -- w ) S0 -- S0  */
/*  */
NAME("rpick#")
ip += 2;
LABEL1(rpick_num)
{
DEF_CA
MAYBE_UNUSED UCell u;
Cell w;
NEXT_P0;
vm_Cell2u(IMM_ARG(IP[-1],305397797 ),u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += -1;
{
#line 636 "prim"
w = rp[u];
#line 2748 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(rpick_num)
NAME1("l2-rpick_num")
NEXT_P1_5;
LABEL3(rpick_num)
NAME1("l3-rpick_num")
DO_GOTO;
}

GROUPADD(8)
GROUP( strings, 57)
LABEL(move) /* move ( c_from c_to ucount -- ) S0 -- S0  */
/* Copy the contents of @i{ucount} aus at @i{c-from} to
@i{c-to}. @code{move} works correctly even if the two areas overlap. */
NAME("move")
ip += 1;
LABEL1(move)
{
DEF_CA
MAYBE_UNUSED Char * c_from;
MAYBE_UNUSED Char * c_to;
MAYBE_UNUSED UCell ucount;
NEXT_P0;
vm_Cell2c_(sp[2],c_from);
vm_Cell2c_(sp[1],c_to);
vm_Cell2u(sp[0],ucount);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_from=", vm_out); printarg_c_(c_from);
fputs(" c_to=", vm_out); printarg_c_(c_to);
fputs(" ucount=", vm_out); printarg_u(ucount);
}
#endif
sp += 3;
{
#line 647 "prim"
/* !! note that the standard specifies addr, not c-addr */
memmove(c_to,c_from,ucount);
/* make an Ifdef for bsd and others? */
#line 2797 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(move)
NAME1("l2-move")
NEXT_P1_5;
LABEL3(move)
NAME1("l3-move")
DO_GOTO;
}

LABEL(c_move) /* cmove ( c_from c_to u -- ) S0 -- S0  */
/* Copy the contents of @i{ucount} characters from data space at
@i{c-from} to @i{c-to}. The copy proceeds @code{char}-by-@code{char}
from low address to high address; i.e., for overlapping areas it is
safe if @i{c-to}<=@i{c-from}. */
NAME("cmove")
ip += 1;
LABEL1(c_move)
{
DEF_CA
MAYBE_UNUSED Char * c_from;
MAYBE_UNUSED Char * c_to;
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2c_(sp[2],c_from);
vm_Cell2c_(sp[1],c_to);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_from=", vm_out); printarg_c_(c_from);
fputs(" c_to=", vm_out); printarg_c_(c_to);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 3;
{
#line 658 "prim"
cmove(c_from,c_to,u);
#line 2842 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(c_move)
NAME1("l2-c_move")
NEXT_P1_5;
LABEL3(c_move)
NAME1("l3-c_move")
DO_GOTO;
}

LABEL(c_move_up) /* cmove> ( c_from c_to u -- ) S0 -- S0  */
/* Copy the contents of @i{ucount} characters from data space at
@i{c-from} to @i{c-to}. The copy proceeds @code{char}-by-@code{char}
from high address to low address; i.e., for overlapping areas it is
safe if @i{c-to}>=@i{c-from}. */
NAME("cmove>")
ip += 1;
LABEL1(c_move_up)
{
DEF_CA
MAYBE_UNUSED Char * c_from;
MAYBE_UNUSED Char * c_to;
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2c_(sp[2],c_from);
vm_Cell2c_(sp[1],c_to);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_from=", vm_out); printarg_c_(c_from);
fputs(" c_to=", vm_out); printarg_c_(c_to);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 3;
{
#line 667 "prim"
cmove_up(c_from,c_to,u);
#line 2887 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(c_move_up)
NAME1("l2-c_move_up")
NEXT_P1_5;
LABEL3(c_move_up)
NAME1("l3-c_move_up")
DO_GOTO;
}

LABEL(fill) /* fill ( c_addr u c -- ) S0 -- S0  */
/* Store @i{c} in @i{u} chars starting at @i{c-addr}. */
NAME("fill")
ip += 1;
LABEL1(fill)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Char c;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2c(sp[0],c);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" c=", vm_out); printarg_c(c);
}
#endif
sp += 3;
{
#line 675 "prim"
memset(c_addr,c,u);
#line 2929 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(fill)
NAME1("l2-fill")
NEXT_P1_5;
LABEL3(fill)
NAME1("l3-fill")
DO_GOTO;
}

LABEL(compare) /* compare ( c_addr1 u1 c_addr2 u2 -- n ) S0 -- S0  */
/* Compare two strings lexicographically, based on the values of the
bytes in the strings (i.e., case-sensitive and without locale-specific
collation order). If they are equal, @i{n} is 0; if the string in
@i{c_addr1 u1} is smaller, @i{n} is -1; if it is larger, @i{n} is 1. */
NAME("compare")
ip += 1;
LABEL1(compare)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Char * c_addr2;
MAYBE_UNUSED UCell u2;
Cell n;
NEXT_P0;
vm_Cell2c_(sp[3],c_addr1);
vm_Cell2u(sp[2],u1);
vm_Cell2c_(sp[1],c_addr2);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 3;
{
#line 685 "prim"
n = compare(c_addr1, u1, c_addr2, u2);
#line 2978 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(compare)
NAME1("l2-compare")
NEXT_P1_5;
LABEL3(compare)
NAME1("l3-compare")
DO_GOTO;
}

LABEL(toupper) /* toupper ( c1 -- c2 ) S0 -- S0  */
/* If @i{c1} is a lower-case ASCII character, @i{c2}
is the equivalent upper-case character, otherwise @i{c2} is @i{c1}. */
NAME("toupper")
ip += 1;
LABEL1(toupper)
{
DEF_CA
MAYBE_UNUSED Char c1;
Char c2;
NEXT_P0;
vm_Cell2c(sp[0],c1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c1=", vm_out); printarg_c(c1);
}
#endif
{
#line 713 "prim"
c2 = ('a'<=c1 && c1<='z') ? c1+('A'-'a') : c1;
#line 3017 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c2=", vm_out); printarg_c(c2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c2Cell(c2,sp[0]);
LABEL2(toupper)
NAME1("l2-toupper")
NEXT_P1_5;
LABEL3(toupper)
NAME1("l3-toupper")
DO_GOTO;
}

LABEL(capscompare) /* capscompare ( c_addr1 u1 c_addr2 u2 -- n ) S0 -- S0  */
/* Compare two strings lexicographically, based on the values of the
bytes in the strings, but comparing ASCII characters
case-insensitively, and non-ASCII characters case-sensitively and
without locale-specific collation order. If they are equal, @i{n} is
0; if the first string is smaller, @i{n} is -1; if the first string is
larger, @i{n} is 1.  */
NAME("capscompare")
ip += 1;
LABEL1(capscompare)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Char * c_addr2;
MAYBE_UNUSED UCell u2;
Cell n;
NEXT_P0;
vm_Cell2c_(sp[3],c_addr1);
vm_Cell2u(sp[2],u1);
vm_Cell2c_(sp[1],c_addr2);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 3;
{
#line 724 "prim"
/* close ' to keep fontify happy */ 
n = capscompare(c_addr1, u1, c_addr2, u2);
#line 3071 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(capscompare)
NAME1("l2-capscompare")
NEXT_P1_5;
LABEL3(capscompare)
NAME1("l3-capscompare")
DO_GOTO;
}

LABEL(slash_string) /* /string ( c_addr1 u1 n -- c_addr2 u2 ) S0 -- S0  */
/* Adjust the string specified by @i{c-addr1, u1} to remove @i{n}
characters from the start of the string. */
NAME("/string")
ip += 1;
LABEL1(slash_string)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell n;
Char * c_addr2;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr1);
vm_Cell2u(sp[1],u1);
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
{
#line 730 "prim"
c_addr2 = c_addr1+n;
u2 = u1-n;
#line 3119 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[1]);
vm_u2Cell(u2,sp[0]);
LABEL2(slash_string)
NAME1("l2-slash_string")
NEXT_P1_5;
LABEL3(slash_string)
NAME1("l3-slash_string")
DO_GOTO;
}

LABEL(safe_slash_string) /* safe/string ( c_addr1 u1 n -- c_addr2 u2 ) S0 -- S0  */
/* Adjust the string specified by @i{c-addr1, u1} to remove @i{n}
characters from the start of the string.  Unlike @code{/string},
@code{safe/string} removes at least 0 and at most @i{u1} characters. */
NAME("safe/string")
ip += 1;
LABEL1(safe_slash_string)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell n;
Char * c_addr2;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr1);
vm_Cell2u(sp[1],u1);
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
{
#line 739 "prim"
if(n<0) {
  n=0;
}
if(((UCell)n)>u1) {
  n=u1;
}
c_addr2 = c_addr1+n;
u2 = u1-n;
#line 3176 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[1]);
vm_u2Cell(u2,sp[0]);
LABEL2(safe_slash_string)
NAME1("l2-safe_slash_string")
NEXT_P1_5;
LABEL3(safe_slash_string)
NAME1("l3-safe_slash_string")
DO_GOTO;
}

GROUPADD(9)
GROUP( arith, 66)
LABEL(lit) /* lit ( #w -- w ) S0 -- S0  */
/*  */
NAME("lit")
ip += 2;
LABEL1(lit)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(IMM_ARG(IP[-1],305397798 ),w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += -1;
{
#line 753 "prim"
#line 3217 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(lit)
NAME1("l2-lit")
NEXT_P1_5;
LABEL3(lit)
NAME1("l3-lit")
DO_GOTO;
}

LABEL(plus) /* + ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("+")
ip += 1;
LABEL1(plus)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 757 "prim"
n = n1+n2;
#line 3258 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(plus)
NAME1("l2-plus")
NEXT_P1_5;
LABEL3(plus)
NAME1("l3-plus")
DO_GOTO;
}

LABEL(lit_plus) /* lit+ ( n1 #n2 -- n ) S0 -- S0  */
/*  */
NAME("lit+")
ip += 2;
LABEL1(lit_plus)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[0],n1);
vm_Cell2n(IMM_ARG(IP[-1],305397799 ),n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
{
#line 762 "prim"
#ifdef DEBUG
debugp(stderr, "lit+ %08x\n", n2);
#endif
n=n1+n2;
#line 3302 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(lit_plus)
NAME1("l2-lit_plus")
NEXT_P1_5;
LABEL3(lit_plus)
NAME1("l3-lit_plus")
DO_GOTO;
}

LABEL(under_plus) /* under+ ( n1 n2 n3 -- n n2 ) S0 -- S0  */
/* add @i{n3} to @i{n1} (giving @i{n}) */
NAME("under+")
ip += 1;
LABEL1(under_plus)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
MAYBE_UNUSED Cell n3;
Cell n;
NEXT_P0;
vm_Cell2n(sp[2],n1);
vm_Cell2n(sp[1],n2);
vm_Cell2n(sp[0],n3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
fputs(" n3=", vm_out); printarg_n(n3);
}
#endif
sp += 1;
{
#line 770 "prim"
n = n1+n3;
#line 3347 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[1]);
LABEL2(under_plus)
NAME1("l2-under_plus")
NEXT_P1_5;
LABEL3(under_plus)
NAME1("l3-under_plus")
DO_GOTO;
}

LABEL(minus) /* - ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("-")
ip += 1;
LABEL1(minus)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 775 "prim"
n = n1-n2;
#line 3389 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(minus)
NAME1("l2-minus")
NEXT_P1_5;
LABEL3(minus)
NAME1("l3-minus")
DO_GOTO;
}

LABEL(negate) /* negate ( n1 -- n2 ) S0 -- S0  */
/*  */
NAME("negate")
ip += 1;
LABEL1(negate)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 780 "prim"
/* use minus as alias */
n2 = -n1;
#line 3428 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(negate)
NAME1("l2-negate")
NEXT_P1_5;
LABEL3(negate)
NAME1("l3-negate")
DO_GOTO;
}

LABEL(one_plus) /* 1+ ( n1 -- n2 ) S0 -- S0  */
/*  */
NAME("1+")
ip += 1;
LABEL1(one_plus)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 786 "prim"
n2 = n1+1;
#line 3466 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(one_plus)
NAME1("l2-one_plus")
NEXT_P1_5;
LABEL3(one_plus)
NAME1("l3-one_plus")
DO_GOTO;
}

LABEL(one_minus) /* 1- ( n1 -- n2 ) S0 -- S0  */
/*  */
NAME("1-")
ip += 1;
LABEL1(one_minus)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 791 "prim"
n2 = n1-1;
#line 3504 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(one_minus)
NAME1("l2-one_minus")
NEXT_P1_5;
LABEL3(one_minus)
NAME1("l3-one_minus")
DO_GOTO;
}

LABEL(max) /* max ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("max")
ip += 1;
LABEL1(max)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 796 "prim"
if (n1<n2)
  n = n2;
else
  n = n1;
#line 3549 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(max)
NAME1("l2-max")
NEXT_P1_5;
LABEL3(max)
NAME1("l3-max")
DO_GOTO;
}

LABEL(min) /* min ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("min")
ip += 1;
LABEL1(min)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 804 "prim"
if (n1<n2)
  n = n1;
else
  n = n2;
#line 3594 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(min)
NAME1("l2-min")
NEXT_P1_5;
LABEL3(min)
NAME1("l3-min")
DO_GOTO;
}

LABEL(abs) /* abs ( n -- u ) S0 -- S0  */
/*  */
NAME("abs")
ip += 1;
LABEL1(abs)
{
DEF_CA
MAYBE_UNUSED Cell n;
UCell u;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 812 "prim"
if (n<0)
  u = -n;
else
  u = n;
#line 3635 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(abs)
NAME1("l2-abs")
NEXT_P1_5;
LABEL3(abs)
NAME1("l3-abs")
DO_GOTO;
}

LABEL(star) /* * ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("*")
ip += 1;
LABEL1(star)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 820 "prim"
n = n1*n2;
#line 3677 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(star)
NAME1("l2-star")
NEXT_P1_5;
LABEL3(star)
NAME1("l3-star")
DO_GOTO;
}

LABEL(slash_f) /* /f ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("/f")
ip += 1;
LABEL1(slash_f)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 825 "prim"
if (CHECK_DIVISION_SW && n2 == -1 && n1 == CELL_MIN)
  throw(BALL_RESULTRANGE);
if (CHECK_DIVISION_SW && n2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(n2);
n=n1/n2;
if ((n1^n2)<0 && (n1%n2 != 0))
  n--;
#line 3726 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(slash_f)
NAME1("l2-slash_f")
NEXT_P1_5;
LABEL3(slash_f)
NAME1("l3-slash_f")
DO_GOTO;
}

LABEL(modf) /* modf ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("modf")
ip += 1;
LABEL1(modf)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 837 "prim"
if (CHECK_DIVISION_SW && n2 == -1 && n1 == CELL_MIN)
  throw(BALL_RESULTRANGE);
if (CHECK_DIVISION_SW && n2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(n2);
n = n1%n2;
if ((Cell)((n1^n2) < 0) && (Cell)(n != 0))
  n += n2; 
#line 3775 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(modf)
NAME1("l2-modf")
NEXT_P1_5;
LABEL3(modf)
NAME1("l3-modf")
DO_GOTO;
}

LABEL(slash_mod_f) /* /modf ( n1 n2 -- n3 n4 ) S0 -- S0  */
/* n1=n2*n4+n3; n3 is the modulus, n4 the quotient */
NAME("/modf")
ip += 1;
LABEL1(slash_mod_f)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n3;
Cell n4;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
{
#line 850 "prim"
if (CHECK_DIVISION_SW && n2 == -1 && n1 == CELL_MIN)
  throw(BALL_RESULTRANGE);
if (CHECK_DIVISION_SW && n2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(n2);
n4 = n1/n2;
n3 = n1%n2;
if ((n1^n2)<0 && n3!=0) {
  n4 -= 1;
  n3 += n2;
}
#line 3827 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n3=", vm_out); printarg_n(n3);
fputs(" n4=", vm_out); printarg_n(n4);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n3,sp[1]);
vm_n2Cell(n4,sp[0]);
LABEL2(slash_mod_f)
NAME1("l2-slash_mod_f")
NEXT_P1_5;
LABEL3(slash_mod_f)
NAME1("l3-slash_mod_f")
DO_GOTO;
}

LABEL(star_slash_mod_f) /* x/modf ( n1 n2 n3 -- n4 n5 ) S0 -- S0  */
/* n1*n2=n3*n5+n4, with the intermediate result (n1*n2) being
double; n4 is the modulus, n5 the quotient */
NAME("*/modf")
ip += 1;
LABEL1(star_slash_mod_f)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
MAYBE_UNUSED Cell n3;
Cell n4;
Cell n5;
NEXT_P0;
vm_Cell2n(sp[2],n1);
vm_Cell2n(sp[1],n2);
vm_Cell2n(sp[0],n3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
fputs(" n3=", vm_out); printarg_n(n3);
}
#endif
sp += 1;
{
#line 867 "prim"
#ifdef BUGGY_LL_MUL
DCell d = mmul(n1,n2);
#else
DCell d = (DCell)n1 * (DCell)n2;
#endif
#ifdef ASM_SM_SLASH_REM
SAVE_DIVISOR(n3);
ASM_SM_SLASH_REM(DLO(d), DHI(d), n3, n4, n5);
if ((DHI(d)^n3)<0 && n4!=0) {
  if (CHECK_DIVISION && n5 == CELL_MIN)
    throw(BALL_RESULTRANGE);
  n5--;
  n4 += n3;
}
#else
DCell r = fmdiv(d,n3);
n4=DHI(r);
n5=DLO(r);
#endif
#line 3894 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n4=", vm_out); printarg_n(n4);
fputs(" n5=", vm_out); printarg_n(n5);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n4,sp[1]);
vm_n2Cell(n5,sp[0]);
LABEL2(star_slash_mod_f)
NAME1("l2-star_slash_mod_f")
NEXT_P1_5;
LABEL3(star_slash_mod_f)
NAME1("l3-star_slash_mod_f")
DO_GOTO;
}

LABEL(star_slash_f) /* x/f ( n1 n2 n3 -- n4 ) S0 -- S0  */
/* n4=(n1*n2)/n3, with the intermediate result being double */
NAME("*/f")
ip += 1;
LABEL1(star_slash_f)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
MAYBE_UNUSED Cell n3;
Cell n4;
NEXT_P0;
vm_Cell2n(sp[2],n1);
vm_Cell2n(sp[1],n2);
vm_Cell2n(sp[0],n3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
fputs(" n3=", vm_out); printarg_n(n3);
}
#endif
sp += 2;
{
#line 891 "prim"
#ifdef BUGGY_LL_MUL
DCell d = mmul(n1,n2);
#else
DCell d = (DCell)n1 * (DCell)n2;
#endif
#ifdef ASM_SM_SLASH_REM
Cell remainder;
SAVE_DIVISOR(n3);
ASM_SM_SLASH_REM(DLO(d), DHI(d), n3, remainder, n4);
if ((DHI(d)^n3)<0 && remainder!=0) {
  if (CHECK_DIVISION && n4 == CELL_MIN)
    throw(BALL_RESULTRANGE);
  n4--;
}
#else
DCell r = fmdiv(d,n3);
n4=DLO(r);
#endif
#line 3958 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n4=", vm_out); printarg_n(n4);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n4,sp[0]);
LABEL2(star_slash_f)
NAME1("l2-star_slash_f")
NEXT_P1_5;
LABEL3(star_slash_f)
NAME1("l3-star_slash_f")
DO_GOTO;
}

LABEL(slash_s) /* /s ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("/s")
ip += 1;
LABEL1(slash_s)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 913 "prim"
if (CHECK_DIVISION_SW && n2 == -1 && n1 == CELL_MIN)
  throw(BALL_RESULTRANGE);
if (CHECK_DIVISION_SW && n2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(n2);
n = n1/n2;
#line 4005 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(slash_s)
NAME1("l2-slash_s")
NEXT_P1_5;
LABEL3(slash_s)
NAME1("l3-slash_s")
DO_GOTO;
}

LABEL(mod_s) /* mods ( n1 n2 -- n ) S0 -- S0  */
/*  */
NAME("mods")
ip += 1;
LABEL1(mod_s)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 923 "prim"
if (CHECK_DIVISION_SW && n2 == -1 && n1 == CELL_MIN)
  throw(BALL_RESULTRANGE);
if (CHECK_DIVISION_SW && n2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(n2);
n = n1%n2;
#line 4052 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(mod_s)
NAME1("l2-mod_s")
NEXT_P1_5;
LABEL3(mod_s)
NAME1("l3-mod_s")
DO_GOTO;
}

LABEL(slash_mod_s) /* /mods ( n1 n2 -- n3 n4 ) S0 -- S0  */
/* n1=n2*n4+n3; n3 is the remainder, n4 the quotient */
NAME("/mods")
ip += 1;
LABEL1(slash_mod_s)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Cell n3;
Cell n4;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
{
#line 934 "prim"
if (CHECK_DIVISION_SW && n2 == -1 && n1 == CELL_MIN)
  throw(BALL_RESULTRANGE);
if (CHECK_DIVISION_SW && n2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(n2);
n4 = n1/n2;
n3 = n1%n2;
#line 4100 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n3=", vm_out); printarg_n(n3);
fputs(" n4=", vm_out); printarg_n(n4);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n3,sp[1]);
vm_n2Cell(n4,sp[0]);
LABEL2(slash_mod_s)
NAME1("l2-slash_mod_s")
NEXT_P1_5;
LABEL3(slash_mod_s)
NAME1("l3-slash_mod_s")
DO_GOTO;
}

LABEL(star_slash_mod_s) /* x/mods ( n1 n2 n3 -- n4 n5 ) S0 -- S0  */
/* n1*n2=n3*n5+n4, with the intermediate result (n1*n2) being double;
n4 is the remainder, n5 the quotient */
NAME("*/mods")
ip += 1;
LABEL1(star_slash_mod_s)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
MAYBE_UNUSED Cell n3;
Cell n4;
Cell n5;
NEXT_P0;
vm_Cell2n(sp[2],n1);
vm_Cell2n(sp[1],n2);
vm_Cell2n(sp[0],n3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
fputs(" n3=", vm_out); printarg_n(n3);
}
#endif
sp += 1;
{
#line 947 "prim"
#ifdef BUGGY_LL_MUL
DCell d = mmul(n1,n2);
#else
DCell d = (DCell)n1 * (DCell)n2;
#endif
#ifdef ASM_SM_SLASH_REM
SAVE_DIVISOR(n3);
ASM_SM_SLASH_REM(DLO(d), DHI(d), n3, n4, n5);
#else
DCell r = smdiv(d,n3);
n4=DHI(r);
n5=DLO(r);
#endif
#line 4161 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n4=", vm_out); printarg_n(n4);
fputs(" n5=", vm_out); printarg_n(n5);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n4,sp[1]);
vm_n2Cell(n5,sp[0]);
LABEL2(star_slash_mod_s)
NAME1("l2-star_slash_mod_s")
NEXT_P1_5;
LABEL3(star_slash_mod_s)
NAME1("l3-star_slash_mod_s")
DO_GOTO;
}

LABEL(star_slash_s) /* x/s ( n1 n2 n3 -- n4 ) S0 -- S0  */
/* n4=(n1*n2)/n3, with the intermediate result being double */
NAME("*/s")
ip += 1;
LABEL1(star_slash_s)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
MAYBE_UNUSED Cell n3;
Cell n4;
NEXT_P0;
vm_Cell2n(sp[2],n1);
vm_Cell2n(sp[1],n2);
vm_Cell2n(sp[0],n3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
fputs(" n3=", vm_out); printarg_n(n3);
}
#endif
sp += 2;
{
#line 965 "prim"
#ifdef BUGGY_LL_MUL
DCell d = mmul(n1,n2);
#else
DCell d = (DCell)n1 * (DCell)n2;
#endif
#ifdef ASM_SM_SLASH_REM
Cell remainder;
SAVE_DIVISOR(n3);
ASM_SM_SLASH_REM(DLO(d), DHI(d), n3, remainder, n4);
#else
DCell r = smdiv(d,n3);
n4=DLO(r);
#endif
#line 4220 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n4=", vm_out); printarg_n(n4);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n4,sp[0]);
LABEL2(star_slash_s)
NAME1("l2-star_slash_s")
NEXT_P1_5;
LABEL3(star_slash_s)
NAME1("l3-star_slash_s")
DO_GOTO;
}

LABEL(two_star) /* 2* ( n1 -- n2 ) S0 -- S0  */
/* Shift left by 1; also works on unsigned numbers */
NAME("2*")
ip += 1;
LABEL1(two_star)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 983 "prim"
n2 = 2*n1;
#line 4258 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(two_star)
NAME1("l2-two_star")
NEXT_P1_5;
LABEL3(two_star)
NAME1("l3-two_star")
DO_GOTO;
}

LABEL(two_slash) /* 2/ ( n1 -- n2 ) S0 -- S0  */
/* Arithmetic shift right by 1.  For signed numbers this is a floored
division by 2 (note that @code{/} is symmetric on some systems, but
@code{2/} always floors). */
NAME("2/")
ip += 1;
LABEL1(two_slash)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 991 "prim"
n2 = n1>>1;
#line 4298 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(two_slash)
NAME1("l2-two_slash")
NEXT_P1_5;
LABEL3(two_slash)
NAME1("l3-two_slash")
DO_GOTO;
}

LABEL(f_m_slash_mod) /* fm/mod ( d1 n1 -- n2 n3 ) S0 -- S0  */
/* Floored division: @i{d1} = @i{n3}*@i{n1}+@i{n2}, @i{n1}>@i{n2}>=0 or 0>=@i{n2}>@i{n1}. */
NAME("fm/mod")
ip += 1;
LABEL1(f_m_slash_mod)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED Cell n1;
Cell n2;
Cell n3;
NEXT_P0;
vm_twoCell2d(sp[2], sp[1], d1)
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 1001 "prim"
#ifdef ASM_SM_SLASH_REM
  SAVE_DIVISOR(n1);
  ASM_SM_SLASH_REM(DLO(d1), DHI(d1), n1, n2, n3);
  if ((DHI(d1)^n1)<0 && n2!=0) {
    if (CHECK_DIVISION && n3 == CELL_MIN)
      throw(BALL_RESULTRANGE);
    n3--;
    n2 += n1;
  }
#else /* !defined(ASM_SM_SLASH_REM) */
  DCell r = fmdiv(d1,n1);
  n2=DHI(r);
  n3=DLO(r);
#endif /* !defined(ASM_SM_SLASH_REM) */
#line 4354 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputs(" n3=", vm_out); printarg_n(n3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[1]);
vm_n2Cell(n3,sp[0]);
LABEL2(f_m_slash_mod)
NAME1("l2-f_m_slash_mod")
NEXT_P1_5;
LABEL3(f_m_slash_mod)
NAME1("l3-f_m_slash_mod")
DO_GOTO;
}

LABEL(s_m_slash_rem) /* sm/rem ( d1 n1 -- n2 n3 ) S0 -- S0  */
/* Symmetric division: @i{d1} = @i{n3}*@i{n1}+@i{n2}, sign(@i{n2})=sign(@i{d1}) or 0. */
NAME("sm/rem")
ip += 1;
LABEL1(s_m_slash_rem)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED Cell n1;
Cell n2;
Cell n3;
NEXT_P0;
vm_twoCell2d(sp[2], sp[1], d1)
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
sp += 1;
{
#line 1022 "prim"
#ifdef ASM_SM_SLASH_REM
SAVE_DIVISOR(n1);
ASM_SM_SLASH_REM(DLO(d1), DHI(d1), n1, n2, n3);
#else /* !defined(ASM_SM_SLASH_REM) */
DCell r = smdiv(d1,n1);
n2=DHI(r);
n3=DLO(r);
#endif /* !defined(ASM_SM_SLASH_REM) */
#line 4406 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputs(" n3=", vm_out); printarg_n(n3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[1]);
vm_n2Cell(n3,sp[0]);
LABEL2(s_m_slash_rem)
NAME1("l2-s_m_slash_rem")
NEXT_P1_5;
LABEL3(s_m_slash_rem)
NAME1("l3-s_m_slash_rem")
DO_GOTO;
}

LABEL(m_star) /* m* ( n1 n2 -- d ) S0 -- S0  */
/*  */
NAME("m*")
ip += 1;
LABEL1(m_star)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
DCell d;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
{
#line 1037 "prim"
d = mmul(n1,n2);
#line 4449 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" d=", vm_out); printarg_d(d);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(d, sp[1], sp[0])
LABEL2(m_star)
NAME1("l2-m_star")
NEXT_P1_5;
LABEL3(m_star)
NAME1("l3-m_star")
DO_GOTO;
}

LABEL(u_m_star) /* um* ( u1 u2 -- ud ) S0 -- S0  */
/*  */
NAME("um*")
ip += 1;
LABEL1(u_m_star)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UDCell ud;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
{
#line 1044 "prim"
/* use u* as alias */
ud = ummul(u1,u2);
#line 4491 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud=", vm_out); printarg_ud(ud);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud, sp[1], sp[0])
LABEL2(u_m_star)
NAME1("l2-u_m_star")
NEXT_P1_5;
LABEL3(u_m_star)
NAME1("l3-u_m_star")
DO_GOTO;
}

LABEL(u_m_slash_mod) /* um/mod ( ud u1 -- u2 u3 ) S0 -- S0  */
/* ud=u3*u1+u2, 0<=u2<u1 */
NAME("um/mod")
ip += 1;
LABEL1(u_m_slash_mod)
{
DEF_CA
MAYBE_UNUSED UDCell ud;
MAYBE_UNUSED UCell u1;
UCell u2;
UCell u3;
NEXT_P0;
vm_twoCell2ud(sp[2], sp[1], ud)
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud=", vm_out); printarg_ud(ud);
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
sp += 1;
{
#line 1057 "prim"
#ifdef ASM_UM_SLASH_MOD
SAVE_DIVISOR(u1);
ASM_UM_SLASH_MOD(DLO(ud), DHI(ud), u1, u2, u3);
#else /* !defined(ASM_UM_SLASH_MOD) */
UDCell r = umdiv(ud,u1);
u2=DHI(r);
u3=DLO(r);
#endif /* !defined(ASM_UM_SLASH_MOD) */
#line 4541 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputs(" u3=", vm_out); printarg_u(u3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[1]);
vm_u2Cell(u3,sp[0]);
LABEL2(u_m_slash_mod)
NAME1("l2-u_m_slash_mod")
NEXT_P1_5;
LABEL3(u_m_slash_mod)
NAME1("l3-u_m_slash_mod")
DO_GOTO;
}

LABEL(u_slash_stage2m) /* u/-stage2m ( u1 a_reci -- uquotient ) S0 -- S0  */
/* @i{Uquotient} is the result of dividing @i{u1} by the divisor represented
by @i{a-reci}, which was computed by @code{u/-stage1m}. */
NAME("u/-stage2m")
ip += 1;
LABEL1(u_slash_stage2m)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell * a_reci;
UCell uquotient;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2a_(sp[0],a_reci);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" a_reci=", vm_out); printarg_a_(a_reci);
}
#endif
sp += 1;
{
#line 1078 "prim"
stagediv_t *reci = (stagediv_t *)a_reci;
uquotient = uslashstage2(u1,reci);
#line 4587 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" uquotient=", vm_out); printarg_u(uquotient);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(uquotient,sp[0]);
LABEL2(u_slash_stage2m)
NAME1("l2-u_slash_stage2m")
NEXT_P1_5;
LABEL3(u_slash_stage2m)
NAME1("l3-u_slash_stage2m")
DO_GOTO;
}

LABEL(u_mod_stage2m) /* umod-stage2m ( u1 a_reci -- umodulus ) S0 -- S0  */
/* @i{Umodulus} is the remainder of dividing @i{u1} by the divisor represented
by @i{a-reci}, which was computed by @code{u/-stage1m}. */
NAME("umod-stage2m")
ip += 1;
LABEL1(u_mod_stage2m)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell * a_reci;
UCell umodulus;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2a_(sp[0],a_reci);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" a_reci=", vm_out); printarg_a_(a_reci);
}
#endif
sp += 1;
{
#line 1084 "prim"
stagediv_t *reci = (stagediv_t *)a_reci;
UCell uquotient = uslashstage2(u1,reci);
umodulus = u1 - uquotient*reci->divisor;
#line 4632 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" umodulus=", vm_out); printarg_u(umodulus);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(umodulus,sp[0]);
LABEL2(u_mod_stage2m)
NAME1("l2-u_mod_stage2m")
NEXT_P1_5;
LABEL3(u_mod_stage2m)
NAME1("l3-u_mod_stage2m")
DO_GOTO;
}

LABEL(u_slash_mod_stage2m) /* u/mod-stage2m ( u1 a_reci -- umodulus uquotient ) S0 -- S0  */
/* @i{Uquotient} is the quotient and @i{umodulus} is the remainder of
dividing @i{u1} by the divisor represented by @i{a-reci}, which was
computed by @code{u/-stage1m}. */
NAME("u/mod-stage2m")
ip += 1;
LABEL1(u_slash_mod_stage2m)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell * a_reci;
UCell umodulus;
UCell uquotient;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2a_(sp[0],a_reci);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" a_reci=", vm_out); printarg_a_(a_reci);
}
#endif
{
#line 1092 "prim"
stagediv_t *reci = (stagediv_t *)a_reci;
uquotient = uslashstage2(u1,reci);
umodulus = u1 - uquotient*reci->divisor;
#line 4678 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" umodulus=", vm_out); printarg_u(umodulus);
fputs(" uquotient=", vm_out); printarg_u(uquotient);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(umodulus,sp[1]);
vm_u2Cell(uquotient,sp[0]);
LABEL2(u_slash_mod_stage2m)
NAME1("l2-u_slash_mod_stage2m")
NEXT_P1_5;
LABEL3(u_slash_mod_stage2m)
NAME1("l3-u_slash_mod_stage2m")
DO_GOTO;
}

LABEL(slash_f_stage2m) /* /f-stage2m ( n1 a_reci -- nquotient ) S0 -- S0  */
/* @i{Nquotient} is the result of dividing @i{n1} by the divisor represented
by @i{a-reci}, which was computed by @code{/f-stage1m}. */
NAME("/f-stage2m")
ip += 1;
LABEL1(slash_f_stage2m)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell * a_reci;
Cell nquotient;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2a_(sp[0],a_reci);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" a_reci=", vm_out); printarg_a_(a_reci);
}
#endif
sp += 1;
{
#line 1099 "prim"
nquotient = slashfstage2(n1,((stagediv_t *)a_reci));
#line 4723 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" nquotient=", vm_out); printarg_n(nquotient);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(nquotient,sp[0]);
LABEL2(slash_f_stage2m)
NAME1("l2-slash_f_stage2m")
NEXT_P1_5;
LABEL3(slash_f_stage2m)
NAME1("l3-slash_f_stage2m")
DO_GOTO;
}

LABEL(mod_f_stage2m) /* modf-stage2m ( n1 a_reci -- umodulus ) S0 -- S0  */
/* @i{Umodulus} is the remainder of dividing @i{n1} by the divisor represented
by @i{a-reci}, which was computed by @code{/f-stage1m}. */
NAME("modf-stage2m")
ip += 1;
LABEL1(mod_f_stage2m)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell * a_reci;
UCell umodulus;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2a_(sp[0],a_reci);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" a_reci=", vm_out); printarg_a_(a_reci);
}
#endif
sp += 1;
{
#line 1104 "prim"
stagediv_t *reci = (stagediv_t *)a_reci;
Cell nquotient = slashfstage2(n1,reci);
umodulus = n1 - nquotient*reci->divisor;
#line 4768 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" umodulus=", vm_out); printarg_u(umodulus);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(umodulus,sp[0]);
LABEL2(mod_f_stage2m)
NAME1("l2-mod_f_stage2m")
NEXT_P1_5;
LABEL3(mod_f_stage2m)
NAME1("l3-mod_f_stage2m")
DO_GOTO;
}

LABEL(slash_mod_f_stage2m) /* /modf-stage2m ( n1 a_reci -- umodulus nquotient ) S0 -- S0  */
/* @i{Nquotient} is the quotient and @i{umodulus} is the remainder of
dividing @i{n1} by the divisor represented by @i{a-reci}, which was
computed by @code{/f-stage1m}. */
NAME("/modf-stage2m")
ip += 1;
LABEL1(slash_mod_f_stage2m)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell * a_reci;
UCell umodulus;
Cell nquotient;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2a_(sp[0],a_reci);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" a_reci=", vm_out); printarg_a_(a_reci);
}
#endif
{
#line 1112 "prim"
stagediv_t *reci = (stagediv_t *)a_reci;
nquotient = slashfstage2(n1,reci);
umodulus = n1 - nquotient*reci->divisor;
#line 4814 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" umodulus=", vm_out); printarg_u(umodulus);
fputs(" nquotient=", vm_out); printarg_n(nquotient);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(umodulus,sp[1]);
vm_n2Cell(nquotient,sp[0]);
LABEL2(slash_mod_f_stage2m)
NAME1("l2-slash_mod_f_stage2m")
NEXT_P1_5;
LABEL3(slash_mod_f_stage2m)
NAME1("l3-slash_mod_f_stage2m")
DO_GOTO;
}

LABEL(m_plus) /* m+ ( d1 n -- d2 ) S0 -- S0  */
/*  */
NAME("m+")
ip += 1;
LABEL1(m_plus)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED Cell n;
DCell d2;
NEXT_P0;
vm_twoCell2d(sp[2], sp[1], d1)
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
{
#line 1117 "prim"
#ifdef BUGGY_LL_ADD
DLO_IS(d2, DLO(d1)+n);
DHI_IS(d2, DHI(d1) - (n<0) + (DLO(d2)<DLO(d1)));
#else
d2 = d1+n;
#endif
#line 4863 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" d2=", vm_out); printarg_d(d2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(d2, sp[1], sp[0])
LABEL2(m_plus)
NAME1("l2-m_plus")
NEXT_P1_5;
LABEL3(m_plus)
NAME1("l3-m_plus")
DO_GOTO;
}

LABEL(d_plus) /* d+ ( ud1 ud2 -- ud ) S0 -- S0  */
/*  */
NAME("d+")
ip += 1;
LABEL1(d_plus)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UDCell ud2;
UDCell ud;
NEXT_P0;
vm_twoCell2ud(sp[3], sp[2], ud1)
vm_twoCell2ud(sp[1], sp[0], ud2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" ud2=", vm_out); printarg_ud(ud2);
}
#endif
sp += 2;
{
#line 1127 "prim"
ud=dadd(ud1,ud2);
#line 4905 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud=", vm_out); printarg_ud(ud);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud, sp[1], sp[0])
LABEL2(d_plus)
NAME1("l2-d_plus")
NEXT_P1_5;
LABEL3(d_plus)
NAME1("l3-d_plus")
DO_GOTO;
}

LABEL(d_minus) /* d- ( d1 d2 -- d ) S0 -- S0  */
/*  */
NAME("d-")
ip += 1;
LABEL1(d_minus)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED DCell d2;
DCell d;
NEXT_P0;
vm_twoCell2d(sp[3], sp[2], d1)
vm_twoCell2d(sp[1], sp[0], d2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" d2=", vm_out); printarg_d(d2);
}
#endif
sp += 2;
{
#line 1132 "prim"
#ifdef BUGGY_LL_ADD
DLO_IS(d, DLO(d1) - DLO(d2));
DHI_IS(d, DHI(d1)-DHI(d2)-(DLO(d1)<DLO(d2)));
#else
d = d1-d2;
#endif
#line 4952 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" d=", vm_out); printarg_d(d);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(d, sp[1], sp[0])
LABEL2(d_minus)
NAME1("l2-d_minus")
NEXT_P1_5;
LABEL3(d_minus)
NAME1("l3-d_minus")
DO_GOTO;
}

LABEL(d_negate) /* dnegate ( d1 -- d2 ) S0 -- S0  */
/*  */
NAME("dnegate")
ip += 1;
LABEL1(d_negate)
{
DEF_CA
MAYBE_UNUSED DCell d1;
DCell d2;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d1)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
}
#endif
{
#line 1142 "prim"
/* use dminus as alias */
#ifdef BUGGY_LL_ADD
d2 = dnegate(d1);
#else
d2 = -d1;
#endif
#line 4995 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" d2=", vm_out); printarg_d(d2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(d2, sp[1], sp[0])
LABEL2(d_negate)
NAME1("l2-d_negate")
NEXT_P1_5;
LABEL3(d_negate)
NAME1("l3-d_negate")
DO_GOTO;
}

LABEL(d_two_star) /* d2* ( d1 -- d2 ) S0 -- S0  */
/* Shift double-cell left by 1; also works on unsigned numbers */
NAME("d2*")
ip += 1;
LABEL1(d_two_star)
{
DEF_CA
MAYBE_UNUSED DCell d1;
DCell d2;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d1)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
}
#endif
{
#line 1153 "prim"
d2 = DLSHIFT(d1,1);
#line 5033 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" d2=", vm_out); printarg_d(d2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(d2, sp[1], sp[0])
LABEL2(d_two_star)
NAME1("l2-d_two_star")
NEXT_P1_5;
LABEL3(d_two_star)
NAME1("l3-d_two_star")
DO_GOTO;
}

LABEL(d_two_slash) /* d2/ ( d1 -- d2 ) S0 -- S0  */
/* Arithmetic shift right by 1.  For signed numbers this is a floored
division by 2. */
NAME("d2/")
ip += 1;
LABEL1(d_two_slash)
{
DEF_CA
MAYBE_UNUSED DCell d1;
DCell d2;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d1)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
}
#endif
{
#line 1160 "prim"
#ifdef BUGGY_LL_SHIFT
DHI_IS(d2, DHI(d1)>>1);
DLO_IS(d2, (DLO(d1)>>1) | (DHI(d1)<<(CELL_BITS-1)));
#else
d2 = d1>>1;
#endif
#line 5077 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" d2=", vm_out); printarg_d(d2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(d2, sp[1], sp[0])
LABEL2(d_two_slash)
NAME1("l2-d_two_slash")
NEXT_P1_5;
LABEL3(d_two_slash)
NAME1("l3-d_two_slash")
DO_GOTO;
}

LABEL(and) /* and ( w1 w2 -- w ) S0 -- S0  */
/*  */
NAME("and")
ip += 1;
LABEL1(and)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
Cell w;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += 1;
{
#line 1171 "prim"
w = w1&w2;
#line 5119 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(and)
NAME1("l2-and")
NEXT_P1_5;
LABEL3(and)
NAME1("l3-and")
DO_GOTO;
}

LABEL(or) /* or ( w1 w2 -- w ) S0 -- S0  */
/*  */
NAME("or")
ip += 1;
LABEL1(or)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
Cell w;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += 1;
{
#line 1174 "prim"
w = w1|w2;
#line 5161 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(or)
NAME1("l2-or")
NEXT_P1_5;
LABEL3(or)
NAME1("l3-or")
DO_GOTO;
}

LABEL(x_or) /* xor ( w1 w2 -- w ) S0 -- S0  */
/*  */
NAME("xor")
ip += 1;
LABEL1(x_or)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
Cell w;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += 1;
{
#line 1179 "prim"
w = w1^w2;
#line 5203 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(x_or)
NAME1("l2-x_or")
NEXT_P1_5;
LABEL3(x_or)
NAME1("l3-x_or")
DO_GOTO;
}

LABEL(invert) /* invert ( w1 -- w2 ) S0 -- S0  */
/*  */
NAME("invert")
ip += 1;
LABEL1(invert)
{
DEF_CA
MAYBE_UNUSED Cell w1;
Cell w2;
NEXT_P0;
vm_Cell2w(sp[0],w1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
}
#endif
{
#line 1182 "prim"
w2 = ~w1;
#line 5241 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w2=", vm_out); printarg_w(w2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w2,sp[0]);
LABEL2(invert)
NAME1("l2-invert")
NEXT_P1_5;
LABEL3(invert)
NAME1("l3-invert")
DO_GOTO;
}

LABEL(r_shift) /* rshift ( u1 u -- u2 ) S0 -- S0  */
/* Shift @i{u1} (cell) right by @i{u} bits,
filling the shifted-in bits with zero (logical/unsigned shift). */
NAME("rshift")
ip += 1;
LABEL1(r_shift)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1189 "prim"
#ifdef BROKEN_SHIFT
  u2 = rshift(u1, u);
#else
  u2 = u1 >> u;
#endif
#line 5288 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(r_shift)
NAME1("l2-r_shift")
NEXT_P1_5;
LABEL3(r_shift)
NAME1("l3-r_shift")
DO_GOTO;
}

LABEL(l_shift) /* lshift ( u1 u -- u2 ) S0 -- S0  */
/* Shift @i{u1} left by @i{u} bits. */
NAME("lshift")
ip += 1;
LABEL1(l_shift)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1199 "prim"
#ifdef BROKEN_SHIFT
  u2 = lshift(u1, u);
#else
  u2 = u1 << u;
#endif
#line 5334 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(l_shift)
NAME1("l2-l_shift")
NEXT_P1_5;
LABEL3(l_shift)
NAME1("l3-l_shift")
DO_GOTO;
}

LABEL(umax) /* umax ( u1 u2 -- u ) S0 -- S0  */
/*  */
NAME("umax")
ip += 1;
LABEL1(umax)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UCell u;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1208 "prim"
if (u1<u2)
  u = u2;
else
  u = u1;
#line 5379 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(umax)
NAME1("l2-umax")
NEXT_P1_5;
LABEL3(umax)
NAME1("l3-umax")
DO_GOTO;
}

LABEL(umin) /* umin ( u1 u2 -- u ) S0 -- S0  */
/*  */
NAME("umin")
ip += 1;
LABEL1(umin)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UCell u;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1216 "prim"
if (u1<u2)
  u = u1;
else
  u = u2;
#line 5424 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(umin)
NAME1("l2-umin")
NEXT_P1_5;
LABEL3(umin)
NAME1("l3-umin")
DO_GOTO;
}

LABEL(mux) /* mux ( u1 u2 u3 -- u ) S0 -- S0  */
/* Multiplex: For every bit in @i{u3}: for a 1 bit, select the
corresponding bit from @i{u1}, otherwise the corresponding bit from @i{u2}.
E.g., @code{%0011 %1100 %1010 mux} gives @code{%0110} */
NAME("mux")
ip += 1;
LABEL1(mux)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
MAYBE_UNUSED UCell u3;
UCell u;
NEXT_P0;
vm_Cell2u(sp[2],u1);
vm_Cell2u(sp[1],u2);
vm_Cell2u(sp[0],u3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
fputs(" u3=", vm_out); printarg_u(u3);
}
#endif
sp += 2;
{
#line 1227 "prim"
u = (u3 & u1) | (~u3 & u2);
#line 5471 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(mux)
NAME1("l2-mux")
NEXT_P1_5;
LABEL3(mux)
NAME1("l3-mux")
DO_GOTO;
}

LABEL(select) /* select ( u1 u2 f -- u ) S0 -- S0  */
/* If @i{f} is false, @i{u} is @i{u2}, otherwise @i{u1}. */
NAME("select")
ip += 1;
LABEL1(select)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
MAYBE_UNUSED Bool f;
UCell u;
NEXT_P0;
vm_Cell2u(sp[2],u1);
vm_Cell2u(sp[1],u2);
vm_Cell2f(sp[0],f);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
fputs(" f=", vm_out); printarg_f(f);
}
#endif
sp += 2;
{
#line 1233 "prim"
u = f ? u1 : u2;
#line 5516 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(select)
NAME1("l2-select")
NEXT_P1_5;
LABEL3(select)
NAME1("l3-select")
DO_GOTO;
}

LABEL(dlshift) /* dlshift ( ud1 u -- ud2 ) S0 -- S0  */
/* Shift @i{ud1} (double-cell) left by @i{u} bits. */
NAME("dlshift")
ip += 1;
LABEL1(dlshift)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UCell u;
UDCell ud2;
NEXT_P0;
vm_twoCell2ud(sp[2], sp[1], ud1)
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1239 "prim"
#ifdef BUGGY_LL_SHIFT
if(u>=CELL_BITS) {
  u &= CELL_BITS-1;
  DHI_IS(ud2, (DLO(ud1) << u));
  DLO_IS(ud2, 0);
} else {
  DHI_IS(ud2, ((DHI(ud1) << u) | (DLO(ud1) >> (CELL_BITS-u))));
  DLO_IS(ud2, (DLO(ud1) << u));
}
#else
  ud2 = ud1 << u;
#endif
#line 5569 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud2=", vm_out); printarg_ud(ud2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud2, sp[1], sp[0])
LABEL2(dlshift)
NAME1("l2-dlshift")
NEXT_P1_5;
LABEL3(dlshift)
NAME1("l3-dlshift")
DO_GOTO;
}

LABEL(drshift) /* drshift ( ud1 u -- ud2 ) S0 -- S0  */
/* Shift @i{ud1} (double-cell) right by @i{u} bits,
filling the shifted-in bits with zero (logical/unsigned shift). */
NAME("drshift")
ip += 1;
LABEL1(drshift)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UCell u;
UDCell ud2;
NEXT_P0;
vm_twoCell2ud(sp[2], sp[1], ud1)
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1255 "prim"
#ifdef BUGGY_LL_SHIFT
if(u>=CELL_BITS) {
  u &= CELL_BITS-1;
  DHI_IS(ud2, 0);
  DLO_IS(ud2, (DHI(ud1) >> u));
} else {
  DHI_IS(ud2, (DHI(ud1) >> u));
  DLO_IS(ud2, ((DLO(ud1) >> u) | (DHI(ud1) << (CELL_BITS-u))));
}
#else
  ud2 = ud1 >> u;
#endif
#line 5623 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud2=", vm_out); printarg_ud(ud2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud2, sp[1], sp[0])
LABEL2(drshift)
NAME1("l2-drshift")
NEXT_P1_5;
LABEL3(drshift)
NAME1("l3-drshift")
DO_GOTO;
}

LABEL(rol) /* rol ( u1 u -- u2 ) S0 -- S0  */
/* Rotate all bits of @i{u1} left by @i{u} bits. */
NAME("rol")
ip += 1;
LABEL1(rol)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1270 "prim"
u2 = (u1 << u) | (u1 >> (CELL_BITS-u));
#line 5665 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(rol)
NAME1("l2-rol")
NEXT_P1_5;
LABEL3(rol)
NAME1("l3-rol")
DO_GOTO;
}

LABEL(ror) /* ror ( u1 u -- u2 ) S0 -- S0  */
/* Rotate all bits of @i{u1} right by @i{u} bits. */
NAME("ror")
ip += 1;
LABEL1(ror)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1274 "prim"
u2 = (u1 >> u) | (u1 << (CELL_BITS-u));
#line 5707 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(ror)
NAME1("l2-ror")
NEXT_P1_5;
LABEL3(ror)
NAME1("l3-ror")
DO_GOTO;
}

LABEL(wrol) /* wrol ( u1 u -- u2 ) S0 -- S0  */
/* Rotate the least significant 16 bits of @i{u1} left by @i{u} bits,
set the other bits to 0. */
NAME("wrol")
ip += 1;
LABEL1(wrol)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1279 "prim"
u2 = (((uint16_t)u1 << u) | ((uint16_t)u1 >> (16-u))) & 0xFFFF;
#line 5750 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(wrol)
NAME1("l2-wrol")
NEXT_P1_5;
LABEL3(wrol)
NAME1("l3-wrol")
DO_GOTO;
}

LABEL(wror) /* wror ( u1 u -- u2 ) S0 -- S0  */
/* Rotate the least significant 16 bits of @i{u1} right by @i{u} bits,
set the other bits to 0. */
NAME("wror")
ip += 1;
LABEL1(wror)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1284 "prim"
u2 = (((uint16_t)u1 >> u) | ((uint16_t)u1 << (16-u))) & 0xFFFF;
#line 5793 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(wror)
NAME1("l2-wror")
NEXT_P1_5;
LABEL3(wror)
NAME1("l3-wror")
DO_GOTO;
}

LABEL(lrol) /* lrol ( u1 u -- u2 ) S0 -- S0  */
/* Rotate the least significant 32 bits of @i{u1} left by @i{u} bits,
set the other bits to 0. */
NAME("lrol")
ip += 1;
LABEL1(lrol)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1289 "prim"
u2 = (((uint32_t)u1 << u) | ((uint32_t)u1 >> (32-u))) & 0xFFFFFFFF;
#line 5836 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(lrol)
NAME1("l2-lrol")
NEXT_P1_5;
LABEL3(lrol)
NAME1("l3-lrol")
DO_GOTO;
}

LABEL(lror) /* lror ( u1 u -- u2 ) S0 -- S0  */
/* Rotate the least significant 32 bits of @i{u1} right by @i{u} bits,
set the other bits to 0. */
NAME("lror")
ip += 1;
LABEL1(lror)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1294 "prim"
u2 = (((uint32_t)u1 >> u) | ((uint32_t)u1 << (32-u))) & 0xFFFFFFFF;
#line 5879 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(lror)
NAME1("l2-lror")
NEXT_P1_5;
LABEL3(lror)
NAME1("l3-lror")
DO_GOTO;
}

LABEL(drol) /* drol ( ud1 u -- ud2 ) S0 -- S0  */
/* Rotate all bits of @i{ud1} (double-cell) left by @i{u} bits. */
NAME("drol")
ip += 1;
LABEL1(drol)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UCell u;
UDCell ud2;
NEXT_P0;
vm_twoCell2ud(sp[2], sp[1], ud1)
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1298 "prim"
#ifdef BUGGY_LL_SHIFT
unsigned int u1 = u & (CELL_BITS-1);
UCell uh, ul;
uh=u1 ? ((DHI(ud1) << u1) | ((UCell)(DLO(ud1)) >> (CELL_BITS-u1))) : DHI(ud1);
ul=u1 ? ((DLO(ud1) << u1) | ((UCell)(DHI(ud1)) >> (CELL_BITS-u1))) : DLO(ud1);
if(u & CELL_BITS) {
  DHI_IS(ud2, ul);
  DLO_IS(ud2, uh);
} else {
  DHI_IS(ud2, uh);
  DLO_IS(ud2, ul);
}
#else
u &= 2*CELL_BITS-1;
ud2 = (ud1 << u) | (ud1 >> (2*CELL_BITS-u));
#endif
#line 5936 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud2=", vm_out); printarg_ud(ud2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud2, sp[1], sp[0])
LABEL2(drol)
NAME1("l2-drol")
NEXT_P1_5;
LABEL3(drol)
NAME1("l3-drol")
DO_GOTO;
}

LABEL(dror) /* dror ( ud1 u -- ud2 ) S0 -- S0  */
/* Rotate all bits of @i{ud1} (double-cell) right by @i{u} bits. */
NAME("dror")
ip += 1;
LABEL1(dror)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UCell u;
UDCell ud2;
NEXT_P0;
vm_twoCell2ud(sp[2], sp[1], ud1)
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1317 "prim"
#ifdef BUGGY_LL_SHIFT
unsigned int u1 = u & (CELL_BITS-1);
UCell uh, ul;
uh=u1 ? (((UCell)(DHI(ud1)) >> u1) | (DLO(ud1) << (CELL_BITS-u1))) : DHI(ud1);
ul=u1 ? (((UCell)(DLO(ud1)) >> u1) | (DHI(ud1) << (CELL_BITS-u1))) : DLO(ud1);
if(u & CELL_BITS) {
  DHI_IS(ud2, ul);
  DLO_IS(ud2, uh);
} else {
  DHI_IS(ud2, uh);
  DLO_IS(ud2, ul);
}
#else
u &= 2*CELL_BITS-1;
ud2 = (ud1 >> u) | (ud1 << (2*CELL_BITS-u));
#endif
#line 5993 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud2=", vm_out); printarg_ud(ud2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud2, sp[1], sp[0])
LABEL2(dror)
NAME1("l2-dror")
NEXT_P1_5;
LABEL3(dror)
NAME1("l3-dror")
DO_GOTO;
}

LABEL(du_slash_mod) /* du/mod ( d u -- n u1 ) S0 -- S0  */
/* d=n*u+u1, 0<=u1<u; PolyForth style mixed division */
NAME("du/mod")
ip += 1;
LABEL1(du_slash_mod)
{
DEF_CA
MAYBE_UNUSED DCell d;
MAYBE_UNUSED UCell u;
Cell n;
UCell u1;
NEXT_P0;
vm_twoCell2d(sp[2], sp[1], d)
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d=", vm_out); printarg_d(d);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1336 "prim"
Cell up = DHI(d);
Cell correct = -(up < 0);
up += correct & u;
DHI_IS(d, up);
#ifdef ASM_UM_SLASH_MOD
SAVE_DIVISOR(u);
ASM_UM_SLASH_MOD(DLO(d), DHI(d), u, n, u1);
#else /* !defined(ASM_UM_SLASH_MOD) */
{
UDCell r = umdiv(*(UDCell*)&d,u);
n=DHI(r);
u1=DLO(r);
}
#endif /* !defined(ASM_UM_SLASH_MOD) */
#line 6049 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputs(" u1=", vm_out); printarg_u(u1);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[1]);
vm_u2Cell(u1,sp[0]);
LABEL2(du_slash_mod)
NAME1("l2-du_slash_mod")
NEXT_P1_5;
LABEL3(du_slash_mod)
NAME1("l3-du_slash_mod")
DO_GOTO;
}

LABEL(u_slash) /* u/ ( u1 u2 -- u ) S0 -- S0  */
/*  */
NAME("u/")
ip += 1;
LABEL1(u_slash)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UCell u;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1354 "prim"
if (CHECK_DIVISION_SW && u2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(u2);
u = u1/u2;
#line 6096 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(u_slash)
NAME1("l2-u_slash")
NEXT_P1_5;
LABEL3(u_slash)
NAME1("l3-u_slash")
DO_GOTO;
}

LABEL(umod) /* umod ( u1 u2 -- u ) S0 -- S0  */
/*  */
NAME("umod")
ip += 1;
LABEL1(umod)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UCell u;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1362 "prim"
if (CHECK_DIVISION_SW && u2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(u2);
u = u1%u2;
#line 6141 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(umod)
NAME1("l2-umod")
NEXT_P1_5;
LABEL3(umod)
NAME1("l3-umod")
DO_GOTO;
}

LABEL(u_slash_mod) /* u/mod ( u1 u2 -- u3 u4 ) S0 -- S0  */
/* u1=u2*u4+u3; u3 is the modulus, u4 the quotient */
NAME("u/mod")
ip += 1;
LABEL1(u_slash_mod)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UCell u3;
UCell u4;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
{
#line 1371 "prim"
if (CHECK_DIVISION_SW && u2 == 0)
  throw(BALL_DIVZERO);
SAVE_DIVISOR(u2);
u4 = u1/u2;
u3 = u1%u2;
#line 6187 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u3=", vm_out); printarg_u(u3);
fputs(" u4=", vm_out); printarg_u(u4);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u3,sp[1]);
vm_u2Cell(u4,sp[0]);
LABEL2(u_slash_mod)
NAME1("l2-u_slash_mod")
NEXT_P1_5;
LABEL3(u_slash_mod)
NAME1("l3-u_slash_mod")
DO_GOTO;
}

LABEL(u_star_slash_mod) /* ux/mod ( u1 u2 u3 -- u4 u5 ) S0 -- S0  */
/* u1*u2=u3*u5+u4, with the intermediate result (u1*u2) being double. */
NAME("u*/mod")
ip += 1;
LABEL1(u_star_slash_mod)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
MAYBE_UNUSED UCell u3;
UCell u4;
UCell u5;
NEXT_P0;
vm_Cell2u(sp[2],u1);
vm_Cell2u(sp[1],u2);
vm_Cell2u(sp[0],u3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
fputs(" u3=", vm_out); printarg_u(u3);
}
#endif
sp += 1;
{
#line 1381 "prim"
#ifdef BUGGY_LL_MUL
UDCell ud = ummul(u1,u2);
#else
UDCell ud = (UDCell)u1 * (UDCell)u2;
#endif
#ifdef ASM_UM_SLASH_MOD
SAVE_DIVISOR(u3);
ASM_UM_SLASH_MOD(DLO(ud), DHI(ud), u3, u4, u5);
#else
UDCell r = umdiv(ud,u3);
u4=DHI(r);
u5=DLO(r);
#endif
#line 6247 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u4=", vm_out); printarg_u(u4);
fputs(" u5=", vm_out); printarg_u(u5);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u4,sp[1]);
vm_u2Cell(u5,sp[0]);
LABEL2(u_star_slash_mod)
NAME1("l2-u_star_slash_mod")
NEXT_P1_5;
LABEL3(u_star_slash_mod)
NAME1("l3-u_star_slash_mod")
DO_GOTO;
}

LABEL(u_star_slash) /* ux/ ( u1 u2 u3 -- u4 ) S0 -- S0  */
/* u4=(u1*u2)/u3, with the intermediate result being double. */
NAME("u*/")
ip += 1;
LABEL1(u_star_slash)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
MAYBE_UNUSED UCell u3;
UCell u4;
NEXT_P0;
vm_Cell2u(sp[2],u1);
vm_Cell2u(sp[1],u2);
vm_Cell2u(sp[0],u3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
fputs(" u3=", vm_out); printarg_u(u3);
}
#endif
sp += 2;
{
#line 1399 "prim"
#ifdef BUGGY_LL_MUL
UDCell ud = ummul(u1,u2);
#else
UDCell ud = (UDCell)u1 * (UDCell)u2;
#endif
#ifdef ASM_SM_SLASH_REM
UCell remainder;
SAVE_DIVISOR(u3);
ASM_UM_SLASH_MOD(DLO(ud), DHI(ud), u3, remainder, u4);
#else
UDCell r = umdiv(ud,u3);
u4=DLO(r);
#endif
#line 6306 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u4=", vm_out); printarg_u(u4);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u4,sp[0]);
LABEL2(u_star_slash)
NAME1("l2-u_star_slash")
NEXT_P1_5;
LABEL3(u_star_slash)
NAME1("l3-u_star_slash")
DO_GOTO;
}

LABEL(ar_shift) /* arshift ( n1 u -- n2 ) S0 -- S0  */
/* Shift @i{n1} (cell) right by @i{u} bits, filling the shifted-in bits
from the sign bit of @i{n1} (arithmetic shift). */
NAME("arshift")
ip += 1;
LABEL1(ar_shift)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED UCell u;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1418 "prim"
n2 = n1 >> u;
#line 6349 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(ar_shift)
NAME1("l2-ar_shift")
NEXT_P1_5;
LABEL3(ar_shift)
NAME1("l3-ar_shift")
DO_GOTO;
}

LABEL(darshift) /* darshift ( d1 u -- d2 ) S0 -- S0  */
/* Shift @i{d1} (double-cell) right by @i{u} bits, filling the shifted-in bits
from the sign bit of @i{d1} (arithmetic shift). */
NAME("darshift")
ip += 1;
LABEL1(darshift)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED UCell u;
DCell d2;
NEXT_P0;
vm_twoCell2d(sp[2], sp[1], d1)
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1425 "prim"
#ifdef BUGGY_LL_SHIFT
if(u>=CELL_BITS) {
  u &= CELL_BITS-1;
  DHI_IS(d2, 0);
  DLO_IS(d2, (DHI(d1) >> u));
} else {
  DHI_IS(d2, (DHI(d1) >> u));
  DLO_IS(d2, ((DLO(d1) >> u) | (DHI(d1) << (CELL_BITS-u))));
}
#else
  d2 = d1 >> u;
#endif
#line 6403 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" d2=", vm_out); printarg_d(d2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(d2, sp[1], sp[0])
LABEL2(darshift)
NAME1("l2-darshift")
NEXT_P1_5;
LABEL3(darshift)
NAME1("l3-darshift")
DO_GOTO;
}

GROUPADD(69)
GROUP( compare, 135)
LABEL(zero_equals) /* 0= ( n -- f ) S0 -- S0  */
/*  */
NAME("0=")
ip += 1;
LABEL1(zero_equals)
{
DEF_CA
MAYBE_UNUSED Cell n;
Bool f;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 1491 "prim"
f = FLAG(n==0);
#line 1490
#line 6444 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(zero_equals)
NAME1("l2-zero_equals")
NEXT_P1_5;
LABEL3(zero_equals)
NAME1("l3-zero_equals")
DO_GOTO;
}

LABEL(zero_not_equals) /* 0<> ( n -- f ) S0 -- S0  */
/*  */
NAME("0<>")
ip += 1;
LABEL1(zero_not_equals)
{
DEF_CA
MAYBE_UNUSED Cell n;
Bool f;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 1491 "prim"
f = FLAG(n!=0);
#line 1490
#line 6483 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(zero_not_equals)
NAME1("l2-zero_not_equals")
NEXT_P1_5;
LABEL3(zero_not_equals)
NAME1("l3-zero_not_equals")
DO_GOTO;
}

LABEL(zero_less_than) /* 0< ( n -- f ) S0 -- S0  */
/*  */
NAME("0<")
ip += 1;
LABEL1(zero_less_than)
{
DEF_CA
MAYBE_UNUSED Cell n;
Bool f;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 1491 "prim"
f = FLAG(n<0);
#line 1490
#line 6522 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(zero_less_than)
NAME1("l2-zero_less_than")
NEXT_P1_5;
LABEL3(zero_less_than)
NAME1("l3-zero_less_than")
DO_GOTO;
}

LABEL(zero_greater_than) /* 0> ( n -- f ) S0 -- S0  */
/*  */
NAME("0>")
ip += 1;
LABEL1(zero_greater_than)
{
DEF_CA
MAYBE_UNUSED Cell n;
Bool f;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 1491 "prim"
f = FLAG(n>0);
#line 1490
#line 6561 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(zero_greater_than)
NAME1("l2-zero_greater_than")
NEXT_P1_5;
LABEL3(zero_greater_than)
NAME1("l3-zero_greater_than")
DO_GOTO;
}

LABEL(zero_less_or_equal) /* 0<= ( n -- f ) S0 -- S0  */
/*  */
NAME("0<=")
ip += 1;
LABEL1(zero_less_or_equal)
{
DEF_CA
MAYBE_UNUSED Cell n;
Bool f;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 1491 "prim"
f = FLAG(n<=0);
#line 1490
#line 6600 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(zero_less_or_equal)
NAME1("l2-zero_less_or_equal")
NEXT_P1_5;
LABEL3(zero_less_or_equal)
NAME1("l3-zero_less_or_equal")
DO_GOTO;
}

LABEL(zero_greater_or_equal) /* 0>= ( n -- f ) S0 -- S0  */
/*  */
NAME("0>=")
ip += 1;
LABEL1(zero_greater_or_equal)
{
DEF_CA
MAYBE_UNUSED Cell n;
Bool f;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 1491 "prim"
f = FLAG(n>=0);
#line 1490
#line 6639 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(zero_greater_or_equal)
NAME1("l2-zero_greater_or_equal")
NEXT_P1_5;
LABEL3(zero_greater_or_equal)
NAME1("l3-zero_greater_or_equal")
DO_GOTO;
}

LABEL(equals) /* = ( n1 n2 -- f ) S0 -- S0  */
/*  */
NAME("=")
ip += 1;
LABEL1(equals)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Bool f;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 1492 "prim"
f = FLAG(n1==n2);
#line 1491
#line 6682 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(equals)
NAME1("l2-equals")
NEXT_P1_5;
LABEL3(equals)
NAME1("l3-equals")
DO_GOTO;
}

LABEL(not_equals) /* <> ( n1 n2 -- f ) S0 -- S0  */
/*  */
NAME("<>")
ip += 1;
LABEL1(not_equals)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Bool f;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 1492 "prim"
f = FLAG(n1!=n2);
#line 1491
#line 6725 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(not_equals)
NAME1("l2-not_equals")
NEXT_P1_5;
LABEL3(not_equals)
NAME1("l3-not_equals")
DO_GOTO;
}

LABEL(less_than) /* < ( n1 n2 -- f ) S0 -- S0  */
/*  */
NAME("<")
ip += 1;
LABEL1(less_than)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Bool f;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 1492 "prim"
f = FLAG(n1<n2);
#line 1491
#line 6768 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(less_than)
NAME1("l2-less_than")
NEXT_P1_5;
LABEL3(less_than)
NAME1("l3-less_than")
DO_GOTO;
}

LABEL(greater_than) /* > ( n1 n2 -- f ) S0 -- S0  */
/*  */
NAME(">")
ip += 1;
LABEL1(greater_than)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Bool f;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 1492 "prim"
f = FLAG(n1>n2);
#line 1491
#line 6811 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(greater_than)
NAME1("l2-greater_than")
NEXT_P1_5;
LABEL3(greater_than)
NAME1("l3-greater_than")
DO_GOTO;
}

LABEL(less_or_equal) /* <= ( n1 n2 -- f ) S0 -- S0  */
/*  */
NAME("<=")
ip += 1;
LABEL1(less_or_equal)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Bool f;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 1492 "prim"
f = FLAG(n1<=n2);
#line 1491
#line 6854 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(less_or_equal)
NAME1("l2-less_or_equal")
NEXT_P1_5;
LABEL3(less_or_equal)
NAME1("l3-less_or_equal")
DO_GOTO;
}

LABEL(greater_or_equal) /* >= ( n1 n2 -- f ) S0 -- S0  */
/*  */
NAME(">=")
ip += 1;
LABEL1(greater_or_equal)
{
DEF_CA
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Bool f;
NEXT_P0;
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 1;
{
#line 1492 "prim"
f = FLAG(n1>=n2);
#line 1491
#line 6897 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(greater_or_equal)
NAME1("l2-greater_or_equal")
NEXT_P1_5;
LABEL3(greater_or_equal)
NAME1("l3-greater_or_equal")
DO_GOTO;
}

LABEL(u_equals) /* u= ( u1 u2 -- f ) S0 -- S0  */
/*  */
NAME("u=")
ip += 1;
LABEL1(u_equals)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
Bool f;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1493 "prim"
f = FLAG(u1==u2);
#line 1492
#line 6940 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(u_equals)
NAME1("l2-u_equals")
NEXT_P1_5;
LABEL3(u_equals)
NAME1("l3-u_equals")
DO_GOTO;
}

LABEL(u_not_equals) /* u<> ( u1 u2 -- f ) S0 -- S0  */
/*  */
NAME("u<>")
ip += 1;
LABEL1(u_not_equals)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
Bool f;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1493 "prim"
f = FLAG(u1!=u2);
#line 1492
#line 6983 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(u_not_equals)
NAME1("l2-u_not_equals")
NEXT_P1_5;
LABEL3(u_not_equals)
NAME1("l3-u_not_equals")
DO_GOTO;
}

LABEL(u_less_than) /* u< ( u1 u2 -- f ) S0 -- S0  */
/*  */
NAME("u<")
ip += 1;
LABEL1(u_less_than)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
Bool f;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1493 "prim"
f = FLAG(u1<u2);
#line 1492
#line 7026 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(u_less_than)
NAME1("l2-u_less_than")
NEXT_P1_5;
LABEL3(u_less_than)
NAME1("l3-u_less_than")
DO_GOTO;
}

LABEL(u_greater_than) /* u> ( u1 u2 -- f ) S0 -- S0  */
/*  */
NAME("u>")
ip += 1;
LABEL1(u_greater_than)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
Bool f;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1493 "prim"
f = FLAG(u1>u2);
#line 1492
#line 7069 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(u_greater_than)
NAME1("l2-u_greater_than")
NEXT_P1_5;
LABEL3(u_greater_than)
NAME1("l3-u_greater_than")
DO_GOTO;
}

LABEL(u_less_or_equal) /* u<= ( u1 u2 -- f ) S0 -- S0  */
/*  */
NAME("u<=")
ip += 1;
LABEL1(u_less_or_equal)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
Bool f;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1493 "prim"
f = FLAG(u1<=u2);
#line 1492
#line 7112 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(u_less_or_equal)
NAME1("l2-u_less_or_equal")
NEXT_P1_5;
LABEL3(u_less_or_equal)
NAME1("l3-u_less_or_equal")
DO_GOTO;
}

LABEL(u_greater_or_equal) /* u>= ( u1 u2 -- f ) S0 -- S0  */
/*  */
NAME("u>=")
ip += 1;
LABEL1(u_greater_or_equal)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
Bool f;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 1;
{
#line 1493 "prim"
f = FLAG(u1>=u2);
#line 1492
#line 7155 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(u_greater_or_equal)
NAME1("l2-u_greater_or_equal")
NEXT_P1_5;
LABEL3(u_greater_or_equal)
NAME1("l3-u_greater_or_equal")
DO_GOTO;
}

GROUPADD(18)
#ifdef HAS_DCOMPS
LABEL(d_equals) /* d= ( d1 d2 -- f ) S0 -- S0  */
/*  */
NAME("d=")
ip += 1;
LABEL1(d_equals)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED DCell d2;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[3], sp[2], d1)
vm_twoCell2d(sp[1], sp[0], d2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" d2=", vm_out); printarg_d(d2);
}
#endif
sp += 3;
{
#line 1543 "prim"
#ifdef BUGGY_LL_CMP
#line 1542
f = FLAG(d1.lo==d2.lo && d1.hi==d2.hi);
#line 1542
#else
#line 1542
f = FLAG(d1==d2);
#line 1542
#endif
#line 1542
#line 7208 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_equals)
NAME1("l2-d_equals")
NEXT_P1_5;
LABEL3(d_equals)
NAME1("l3-d_equals")
DO_GOTO;
}

LABEL(d_not_equals) /* d<> ( d1 d2 -- f ) S0 -- S0  */
/*  */
NAME("d<>")
ip += 1;
LABEL1(d_not_equals)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED DCell d2;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[3], sp[2], d1)
vm_twoCell2d(sp[1], sp[0], d2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" d2=", vm_out); printarg_d(d2);
}
#endif
sp += 3;
{
#line 1543 "prim"
#ifdef BUGGY_LL_CMP
#line 1542
f = FLAG(d1.lo!=d2.lo || d1.hi!=d2.hi);
#line 1542
#else
#line 1542
f = FLAG(d1!=d2);
#line 1542
#endif
#line 1542
#line 7259 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_not_equals)
NAME1("l2-d_not_equals")
NEXT_P1_5;
LABEL3(d_not_equals)
NAME1("l3-d_not_equals")
DO_GOTO;
}

LABEL(d_less_than) /* d< ( d1 d2 -- f ) S0 -- S0  */
/*  */
NAME("d<")
ip += 1;
LABEL1(d_less_than)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED DCell d2;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[3], sp[2], d1)
vm_twoCell2d(sp[1], sp[0], d2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" d2=", vm_out); printarg_d(d2);
}
#endif
sp += 3;
{
#line 1543 "prim"
#ifdef BUGGY_LL_CMP
#line 1542
f = FLAG(d1.hi==d2.hi ? d1.lo<d2.lo : d1.hi<d2.hi);
#line 1542
#else
#line 1542
f = FLAG(d1<d2);
#line 1542
#endif
#line 1542
#line 7310 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_less_than)
NAME1("l2-d_less_than")
NEXT_P1_5;
LABEL3(d_less_than)
NAME1("l3-d_less_than")
DO_GOTO;
}

LABEL(d_greater_than) /* d> ( d1 d2 -- f ) S0 -- S0  */
/*  */
NAME("d>")
ip += 1;
LABEL1(d_greater_than)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED DCell d2;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[3], sp[2], d1)
vm_twoCell2d(sp[1], sp[0], d2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" d2=", vm_out); printarg_d(d2);
}
#endif
sp += 3;
{
#line 1543 "prim"
#ifdef BUGGY_LL_CMP
#line 1542
f = FLAG(d1.hi==d2.hi ? d1.lo>d2.lo : d1.hi>d2.hi);
#line 1542
#else
#line 1542
f = FLAG(d1>d2);
#line 1542
#endif
#line 1542
#line 7361 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_greater_than)
NAME1("l2-d_greater_than")
NEXT_P1_5;
LABEL3(d_greater_than)
NAME1("l3-d_greater_than")
DO_GOTO;
}

LABEL(d_less_or_equal) /* d<= ( d1 d2 -- f ) S0 -- S0  */
/*  */
NAME("d<=")
ip += 1;
LABEL1(d_less_or_equal)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED DCell d2;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[3], sp[2], d1)
vm_twoCell2d(sp[1], sp[0], d2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" d2=", vm_out); printarg_d(d2);
}
#endif
sp += 3;
{
#line 1543 "prim"
#ifdef BUGGY_LL_CMP
#line 1542
f = FLAG(d1.hi==d2.hi ? d1.lo<=d2.lo : d1.hi<=d2.hi);
#line 1542
#else
#line 1542
f = FLAG(d1<=d2);
#line 1542
#endif
#line 1542
#line 7412 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_less_or_equal)
NAME1("l2-d_less_or_equal")
NEXT_P1_5;
LABEL3(d_less_or_equal)
NAME1("l3-d_less_or_equal")
DO_GOTO;
}

LABEL(d_greater_or_equal) /* d>= ( d1 d2 -- f ) S0 -- S0  */
/*  */
NAME("d>=")
ip += 1;
LABEL1(d_greater_or_equal)
{
DEF_CA
MAYBE_UNUSED DCell d1;
MAYBE_UNUSED DCell d2;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[3], sp[2], d1)
vm_twoCell2d(sp[1], sp[0], d2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d1=", vm_out); printarg_d(d1);
fputs(" d2=", vm_out); printarg_d(d2);
}
#endif
sp += 3;
{
#line 1543 "prim"
#ifdef BUGGY_LL_CMP
#line 1542
f = FLAG(d1.hi==d2.hi ? d1.lo>=d2.lo : d1.hi>=d2.hi);
#line 1542
#else
#line 1542
f = FLAG(d1>=d2);
#line 1542
#endif
#line 1542
#line 7463 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_greater_or_equal)
NAME1("l2-d_greater_or_equal")
NEXT_P1_5;
LABEL3(d_greater_or_equal)
NAME1("l3-d_greater_or_equal")
DO_GOTO;
}

LABEL(d_zero_equals) /* d0= ( d -- f ) S0 -- S0  */
/*  */
NAME("d0=")
ip += 1;
LABEL1(d_zero_equals)
{
DEF_CA
MAYBE_UNUSED DCell d;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d=", vm_out); printarg_d(d);
}
#endif
sp += 1;
{
#line 1544 "prim"
#ifdef BUGGY_LL_CMP
#line 1543
f = FLAG(d.lo==DZERO.lo && d.hi==DZERO.hi);
#line 1543
#else
#line 1543
f = FLAG(d==DZERO);
#line 1543
#endif
#line 1543
#line 7511 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_zero_equals)
NAME1("l2-d_zero_equals")
NEXT_P1_5;
LABEL3(d_zero_equals)
NAME1("l3-d_zero_equals")
DO_GOTO;
}

LABEL(d_zero_not_equals) /* d0<> ( d -- f ) S0 -- S0  */
/*  */
NAME("d0<>")
ip += 1;
LABEL1(d_zero_not_equals)
{
DEF_CA
MAYBE_UNUSED DCell d;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d=", vm_out); printarg_d(d);
}
#endif
sp += 1;
{
#line 1544 "prim"
#ifdef BUGGY_LL_CMP
#line 1543
f = FLAG(d.lo!=DZERO.lo || d.hi!=DZERO.hi);
#line 1543
#else
#line 1543
f = FLAG(d!=DZERO);
#line 1543
#endif
#line 1543
#line 7559 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_zero_not_equals)
NAME1("l2-d_zero_not_equals")
NEXT_P1_5;
LABEL3(d_zero_not_equals)
NAME1("l3-d_zero_not_equals")
DO_GOTO;
}

LABEL(d_zero_less_than) /* d0< ( d -- f ) S0 -- S0  */
/*  */
NAME("d0<")
ip += 1;
LABEL1(d_zero_less_than)
{
DEF_CA
MAYBE_UNUSED DCell d;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d=", vm_out); printarg_d(d);
}
#endif
sp += 1;
{
#line 1544 "prim"
#ifdef BUGGY_LL_CMP
#line 1543
f = FLAG(d.hi==DZERO.hi ? d.lo<DZERO.lo : d.hi<DZERO.hi);
#line 1543
#else
#line 1543
f = FLAG(d<DZERO);
#line 1543
#endif
#line 1543
#line 7607 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_zero_less_than)
NAME1("l2-d_zero_less_than")
NEXT_P1_5;
LABEL3(d_zero_less_than)
NAME1("l3-d_zero_less_than")
DO_GOTO;
}

LABEL(d_zero_greater_than) /* d0> ( d -- f ) S0 -- S0  */
/*  */
NAME("d0>")
ip += 1;
LABEL1(d_zero_greater_than)
{
DEF_CA
MAYBE_UNUSED DCell d;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d=", vm_out); printarg_d(d);
}
#endif
sp += 1;
{
#line 1544 "prim"
#ifdef BUGGY_LL_CMP
#line 1543
f = FLAG(d.hi==DZERO.hi ? d.lo>DZERO.lo : d.hi>DZERO.hi);
#line 1543
#else
#line 1543
f = FLAG(d>DZERO);
#line 1543
#endif
#line 1543
#line 7655 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_zero_greater_than)
NAME1("l2-d_zero_greater_than")
NEXT_P1_5;
LABEL3(d_zero_greater_than)
NAME1("l3-d_zero_greater_than")
DO_GOTO;
}

LABEL(d_zero_less_or_equal) /* d0<= ( d -- f ) S0 -- S0  */
/*  */
NAME("d0<=")
ip += 1;
LABEL1(d_zero_less_or_equal)
{
DEF_CA
MAYBE_UNUSED DCell d;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d=", vm_out); printarg_d(d);
}
#endif
sp += 1;
{
#line 1544 "prim"
#ifdef BUGGY_LL_CMP
#line 1543
f = FLAG(d.hi==DZERO.hi ? d.lo<=DZERO.lo : d.hi<=DZERO.hi);
#line 1543
#else
#line 1543
f = FLAG(d<=DZERO);
#line 1543
#endif
#line 1543
#line 7703 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_zero_less_or_equal)
NAME1("l2-d_zero_less_or_equal")
NEXT_P1_5;
LABEL3(d_zero_less_or_equal)
NAME1("l3-d_zero_less_or_equal")
DO_GOTO;
}

LABEL(d_zero_greater_or_equal) /* d0>= ( d -- f ) S0 -- S0  */
/*  */
NAME("d0>=")
ip += 1;
LABEL1(d_zero_greater_or_equal)
{
DEF_CA
MAYBE_UNUSED DCell d;
Bool f;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d=", vm_out); printarg_d(d);
}
#endif
sp += 1;
{
#line 1544 "prim"
#ifdef BUGGY_LL_CMP
#line 1543
f = FLAG(d.hi==DZERO.hi ? d.lo>=DZERO.lo : d.hi>=DZERO.hi);
#line 1543
#else
#line 1543
f = FLAG(d>=DZERO);
#line 1543
#endif
#line 1543
#line 7751 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_zero_greater_or_equal)
NAME1("l2-d_zero_greater_or_equal")
NEXT_P1_5;
LABEL3(d_zero_greater_or_equal)
NAME1("l3-d_zero_greater_or_equal")
DO_GOTO;
}

LABEL(d_u_equals) /* du= ( ud1 ud2 -- f ) S0 -- S0  */
/*  */
NAME("du=")
ip += 1;
LABEL1(d_u_equals)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UDCell ud2;
Bool f;
NEXT_P0;
vm_twoCell2ud(sp[3], sp[2], ud1)
vm_twoCell2ud(sp[1], sp[0], ud2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" ud2=", vm_out); printarg_ud(ud2);
}
#endif
sp += 3;
{
#line 1545 "prim"
#ifdef BUGGY_LL_CMP
#line 1544
f = FLAG(ud1.lo==ud2.lo && ud1.hi==ud2.hi);
#line 1544
#else
#line 1544
f = FLAG(ud1==ud2);
#line 1544
#endif
#line 1544
#line 7802 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_u_equals)
NAME1("l2-d_u_equals")
NEXT_P1_5;
LABEL3(d_u_equals)
NAME1("l3-d_u_equals")
DO_GOTO;
}

LABEL(d_u_not_equals) /* du<> ( ud1 ud2 -- f ) S0 -- S0  */
/*  */
NAME("du<>")
ip += 1;
LABEL1(d_u_not_equals)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UDCell ud2;
Bool f;
NEXT_P0;
vm_twoCell2ud(sp[3], sp[2], ud1)
vm_twoCell2ud(sp[1], sp[0], ud2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" ud2=", vm_out); printarg_ud(ud2);
}
#endif
sp += 3;
{
#line 1545 "prim"
#ifdef BUGGY_LL_CMP
#line 1544
f = FLAG(ud1.lo!=ud2.lo || ud1.hi!=ud2.hi);
#line 1544
#else
#line 1544
f = FLAG(ud1!=ud2);
#line 1544
#endif
#line 1544
#line 7853 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_u_not_equals)
NAME1("l2-d_u_not_equals")
NEXT_P1_5;
LABEL3(d_u_not_equals)
NAME1("l3-d_u_not_equals")
DO_GOTO;
}

LABEL(d_u_less_than) /* du< ( ud1 ud2 -- f ) S0 -- S0  */
/*  */
NAME("du<")
ip += 1;
LABEL1(d_u_less_than)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UDCell ud2;
Bool f;
NEXT_P0;
vm_twoCell2ud(sp[3], sp[2], ud1)
vm_twoCell2ud(sp[1], sp[0], ud2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" ud2=", vm_out); printarg_ud(ud2);
}
#endif
sp += 3;
{
#line 1545 "prim"
#ifdef BUGGY_LL_CMP
#line 1544
f = FLAG(ud1.hi==ud2.hi ? ud1.lo<ud2.lo : ud1.hi<ud2.hi);
#line 1544
#else
#line 1544
f = FLAG(ud1<ud2);
#line 1544
#endif
#line 1544
#line 7904 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_u_less_than)
NAME1("l2-d_u_less_than")
NEXT_P1_5;
LABEL3(d_u_less_than)
NAME1("l3-d_u_less_than")
DO_GOTO;
}

LABEL(d_u_greater_than) /* du> ( ud1 ud2 -- f ) S0 -- S0  */
/*  */
NAME("du>")
ip += 1;
LABEL1(d_u_greater_than)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UDCell ud2;
Bool f;
NEXT_P0;
vm_twoCell2ud(sp[3], sp[2], ud1)
vm_twoCell2ud(sp[1], sp[0], ud2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" ud2=", vm_out); printarg_ud(ud2);
}
#endif
sp += 3;
{
#line 1545 "prim"
#ifdef BUGGY_LL_CMP
#line 1544
f = FLAG(ud1.hi==ud2.hi ? ud1.lo>ud2.lo : ud1.hi>ud2.hi);
#line 1544
#else
#line 1544
f = FLAG(ud1>ud2);
#line 1544
#endif
#line 1544
#line 7955 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_u_greater_than)
NAME1("l2-d_u_greater_than")
NEXT_P1_5;
LABEL3(d_u_greater_than)
NAME1("l3-d_u_greater_than")
DO_GOTO;
}

LABEL(d_u_less_or_equal) /* du<= ( ud1 ud2 -- f ) S0 -- S0  */
/*  */
NAME("du<=")
ip += 1;
LABEL1(d_u_less_or_equal)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UDCell ud2;
Bool f;
NEXT_P0;
vm_twoCell2ud(sp[3], sp[2], ud1)
vm_twoCell2ud(sp[1], sp[0], ud2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" ud2=", vm_out); printarg_ud(ud2);
}
#endif
sp += 3;
{
#line 1545 "prim"
#ifdef BUGGY_LL_CMP
#line 1544
f = FLAG(ud1.hi==ud2.hi ? ud1.lo<=ud2.lo : ud1.hi<=ud2.hi);
#line 1544
#else
#line 1544
f = FLAG(ud1<=ud2);
#line 1544
#endif
#line 1544
#line 8006 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_u_less_or_equal)
NAME1("l2-d_u_less_or_equal")
NEXT_P1_5;
LABEL3(d_u_less_or_equal)
NAME1("l3-d_u_less_or_equal")
DO_GOTO;
}

LABEL(d_u_greater_or_equal) /* du>= ( ud1 ud2 -- f ) S0 -- S0  */
/*  */
NAME("du>=")
ip += 1;
LABEL1(d_u_greater_or_equal)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
MAYBE_UNUSED UDCell ud2;
Bool f;
NEXT_P0;
vm_twoCell2ud(sp[3], sp[2], ud1)
vm_twoCell2ud(sp[1], sp[0], ud2)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
fputs(" ud2=", vm_out); printarg_ud(ud2);
}
#endif
sp += 3;
{
#line 1545 "prim"
#ifdef BUGGY_LL_CMP
#line 1544
f = FLAG(ud1.hi==ud2.hi ? ud1.lo>=ud2.lo : ud1.hi>=ud2.hi);
#line 1544
#else
#line 1544
f = FLAG(ud1>=ud2);
#line 1544
#endif
#line 1544
#line 8057 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(d_u_greater_or_equal)
NAME1("l2-d_u_greater_or_equal")
NEXT_P1_5;
LABEL3(d_u_greater_or_equal)
NAME1("l3-d_u_greater_or_equal")
DO_GOTO;
}

GROUPADD(18)
#endif
LABEL(within) /* within ( u1 u2 u3 -- f ) S0 -- S0  */
/* u2<u3 and u1 in [u2,u3) or: u2>=u3 and u1 not in [u3,u2).  This works for
unsigned and signed numbers (but not a mixture).  Another way to think
about this word is to consider the numbers as a circle (wrapping
around from @code{max-u} to 0 for unsigned, and from @code{max-n} to
min-n for signed numbers); now consider the range from u2 towards
increasing numbers up to and excluding u3 (giving an empty range if
u2=u3); if u1 is in this range, @code{within} returns true. */
NAME("within")
ip += 1;
LABEL1(within)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
MAYBE_UNUSED UCell u3;
Bool f;
NEXT_P0;
vm_Cell2u(sp[2],u1);
vm_Cell2u(sp[1],u2);
vm_Cell2u(sp[0],u3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
fputs(" u3=", vm_out); printarg_u(u3);
}
#endif
sp += 2;
{
#line 1557 "prim"
f = FLAG(u1-u2 < u3-u2);
#line 8110 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(within)
NAME1("l2-within")
NEXT_P1_5;
LABEL3(within)
NAME1("l3-within")
DO_GOTO;
}

GROUPADD(1)
GROUP( stack, 172)
LABEL(up_store) /* up! ( a_addr -- ) S0 -- S0  */
/*  */
NAME("up!")
ip += 1;
LABEL1(up_store)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 1;
{
#line 1564 "prim"
gforth_UP=up=(user_area*)a_addr;
#line 8150 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(up_store)
NAME1("l2-up_store")
NEXT_P1_5;
LABEL3(up_store)
NAME1("l3-up_store")
DO_GOTO;
}

LABEL(sp_fetch) /* sp@ ( S:... -- a_addr ) S0 -- S0  */
/*  */
NAME("sp@")
ip += 1;
LABEL1(sp_fetch)
{
DEF_CA
Cell * a_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 1570 "prim"
a_addr = sp;
#line 8183 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
sp += -1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(sp_fetch)
NAME1("l2-sp_fetch")
NEXT_P1_5;
LABEL3(sp_fetch)
NAME1("l3-sp_fetch")
DO_GOTO;
}

LABEL(sp_store) /* sp! ( a_addr -- S:... ) S0 -- S0  */
/*  */
NAME("sp!")
ip += 1;
LABEL1(sp_store)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 1;
{
#line 1573 "prim"
sp = a_addr;
#line 8222 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sp_store)
NAME1("l2-sp_store")
NEXT_P1_5;
LABEL3(sp_store)
NAME1("l3-sp_store")
DO_GOTO;
}

LABEL(rp_fetch) /* rp@ ( -- a_addr ) S0 -- S0  */
/*  */
NAME("rp@")
ip += 1;
LABEL1(rp_fetch)
{
DEF_CA
Cell * a_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 1576 "prim"
a_addr = rp;
#line 8256 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(rp_fetch)
NAME1("l2-rp_fetch")
NEXT_P1_5;
LABEL3(rp_fetch)
NAME1("l3-rp_fetch")
DO_GOTO;
}

LABEL(rp_store) /* rp! ( a_addr -- ) S0 -- S0  */
/*  */
NAME("rp!")
ip += 1;
LABEL1(rp_store)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 1;
{
#line 1579 "prim"
rp = a_addr;
#line 8294 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(rp_store)
NAME1("l2-rp_store")
NEXT_P1_5;
LABEL3(rp_store)
NAME1("l3-rp_store")
DO_GOTO;
}

GROUPADD(5)
#ifdef HAS_FLOATING
LABEL(fp_fetch) /* fp@ ( f:... -- f_addr ) S0 -- S0  */
/*  */
NAME("fp@")
ip += 1;
LABEL1(fp_fetch)
{
DEF_CA
Float * f_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 1584 "prim"
f_addr = fp;
#line 8330 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f_addr=", vm_out); printarg_f_(f_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f_2Cell(f_addr,sp[0]);
LABEL2(fp_fetch)
NAME1("l2-fp_fetch")
NEXT_P1_5;
LABEL3(fp_fetch)
NAME1("l3-fp_fetch")
DO_GOTO;
}

LABEL(fp_store) /* fp! ( f_addr -- f:... ) S0 -- S0  */
/*  */
NAME("fp!")
ip += 1;
LABEL1(fp_store)
{
DEF_CA
MAYBE_UNUSED Float * f_addr;
NEXT_P0;
vm_Cell2f_(sp[0],f_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" f_addr=", vm_out); printarg_f_(f_addr);
}
#endif
sp += 1;
{
#line 1587 "prim"
fp = f_addr;
#line 8368 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(fp_store)
NAME1("l2-fp_store")
NEXT_P1_5;
LABEL3(fp_store)
NAME1("l3-fp_store")
DO_GOTO;
}

GROUPADD(2)
#endif
LABEL(to_r) /* >r ( w -- R:w ) S0 -- S0  */
/*  */
NAME(">r")
ip += 1;
LABEL1(to_r)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
rp += -1;
{
#line 1592 "prim"
#line 8406 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,rp[0]);
LABEL2(to_r)
NAME1("l2-to_r")
NEXT_P1_5;
LABEL3(to_r)
NAME1("l3-to_r")
DO_GOTO;
}

LABEL(r_from) /* r> ( R:w -- w ) S0 -- S0  */
/*  */
NAME("r>")
ip += 1;
LABEL1(r_from)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(rp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += -1;
rp += 1;
{
#line 1597 "prim"
#line 8443 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(r_from)
NAME1("l2-r_from")
NEXT_P1_5;
LABEL3(r_from)
NAME1("l3-r_from")
DO_GOTO;
}

LABEL(rdrop) /* rdrop ( R:w -- ) S0 -- S0  */
/*  */
NAME("rdrop")
ip += 1;
LABEL1(rdrop)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(rp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
rp += 1;
{
#line 1602 "prim"
ALIVE_DEBUGGING(w);
#line 8480 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(rdrop)
NAME1("l2-rdrop")
NEXT_P1_5;
LABEL3(rdrop)
NAME1("l3-rdrop")
DO_GOTO;
}

LABEL(two_to_r) /* 2>r ( w1 w2 -- R:w1 R:w2 ) S0 -- S0  */
/*  */
NAME("2>r")
ip += 1;
LABEL1(two_to_r)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += 2;
rp += -2;
{
#line 1607 "prim"
#line 8519 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,rp[1]);
vm_w2Cell(w2,rp[0]);
LABEL2(two_to_r)
NAME1("l2-two_to_r")
NEXT_P1_5;
LABEL3(two_to_r)
NAME1("l3-two_to_r")
DO_GOTO;
}

LABEL(two_r_from) /* 2r> ( R:w1 R:w2 -- w1 w2 ) S0 -- S0  */
/*  */
NAME("2r>")
ip += 1;
LABEL1(two_r_from)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(rp[1],w1);
vm_Cell2w(rp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += -2;
rp += 2;
{
#line 1611 "prim"
#line 8560 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(two_r_from)
NAME1("l2-two_r_from")
NEXT_P1_5;
LABEL3(two_r_from)
NAME1("l3-two_r_from")
DO_GOTO;
}

LABEL(two_r_fetch) /* 2r@ ( R:w1 R:w2 -- R:w1 R:w2 w1 w2 ) S0 -- S0  */
/*  */
NAME("2r@")
ip += 1;
LABEL1(two_r_fetch)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(rp[1],w1);
vm_Cell2w(rp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += -2;
{
#line 1615 "prim"
#line 8600 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(two_r_fetch)
NAME1("l2-two_r_fetch")
NEXT_P1_5;
LABEL3(two_r_fetch)
NAME1("l3-two_r_fetch")
DO_GOTO;
}

LABEL(two_r_drop) /* 2rdrop ( R:w1 R:w2 -- ) S0 -- S0  */
/*  */
NAME("2rdrop")
ip += 1;
LABEL1(two_r_drop)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(rp[1],w1);
vm_Cell2w(rp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
rp += 2;
{
#line 1619 "prim"
ALIVE_DEBUGGING(w1);
#line 8641 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(two_r_drop)
NAME1("l2-two_r_drop")
NEXT_P1_5;
LABEL3(two_r_drop)
NAME1("l3-two_r_drop")
DO_GOTO;
}

LABEL(f_to_r) /* f>r ( r -- ) S0 -- S0  */
/*  */
NAME("f>r")
ip += 1;
LABEL1(f_to_r)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 1624 "prim"
Float rval[1] = { r };
rp -= sizeof(Float)/sizeof(Cell);
memcpy(rp, rval, sizeof(Float));
#line 8679 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(f_to_r)
NAME1("l2-f_to_r")
NEXT_P1_5;
LABEL3(f_to_r)
NAME1("l3-f_to_r")
DO_GOTO;
}

LABEL(f_r_from) /* fr> ( -- r ) S0 -- S0  */
/*  */
NAME("fr>")
ip += 1;
LABEL1(f_r_from)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 1629 "prim"
Float rval[1];
memcpy(rval, rp, sizeof(Float));
rp += sizeof(Float)/sizeof(Cell);
r = rval[0];
#line 8716 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(f_r_from)
NAME1("l2-f_r_from")
NEXT_P1_5;
LABEL3(f_r_from)
NAME1("l3-f_r_from")
DO_GOTO;
}

LABEL(f_r_fetch) /* fr@ ( -- r ) S0 -- S0  */
/*  */
NAME("fr@")
ip += 1;
LABEL1(f_r_fetch)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 1635 "prim"
Float rval[1];
memcpy(rval, rp, sizeof(Float));
r = rval[0];
#line 8754 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(f_r_fetch)
NAME1("l2-f_r_fetch")
NEXT_P1_5;
LABEL3(f_r_fetch)
NAME1("l3-f_r_fetch")
DO_GOTO;
}

LABEL(over) /* over ( w1 w2 -- w1 w2 w1 ) S0 -- S0  */
/*  */
NAME("over")
ip += 1;
LABEL1(over)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += -1;
{
#line 1640 "prim"
#line 8794 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,sp[0]);
LABEL2(over)
NAME1("l2-over")
NEXT_P1_5;
LABEL3(over)
NAME1("l3-over")
DO_GOTO;
}

LABEL(drop) /* drop ( w -- ) S0 -- S0  */
/*  */
NAME("drop")
ip += 1;
LABEL1(drop)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 1644 "prim"
ALIVE_DEBUGGING(w);
#line 8831 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(drop)
NAME1("l2-drop")
NEXT_P1_5;
LABEL3(drop)
NAME1("l3-drop")
DO_GOTO;
}

LABEL(swap) /* swap ( w1 w2 -- w2 w1 ) S0 -- S0  */
/*  */
NAME("swap")
ip += 1;
LABEL1(swap)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
{
#line 1649 "prim"
#line 8868 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w2,sp[1]);
vm_w2Cell(w1,sp[0]);
LABEL2(swap)
NAME1("l2-swap")
NEXT_P1_5;
LABEL3(swap)
NAME1("l3-swap")
DO_GOTO;
}

LABEL(dupe) /* dup ( w -- w w ) S0 -- S0  */
/*  */
NAME("dup")
ip += 1;
LABEL1(dupe)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += -1;
{
#line 1654 "prim"
#line 8905 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(dupe)
NAME1("l2-dupe")
NEXT_P1_5;
LABEL3(dupe)
NAME1("l3-dupe")
DO_GOTO;
}

LABEL(rote) /* rot ( w1 w2 w3 -- w2 w3 w1 ) S0 -- S0  */
/*  */
NAME("rot")
ip += 1;
LABEL1(rote)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
NEXT_P0;
vm_Cell2w(sp[2],w1);
vm_Cell2w(sp[1],w2);
vm_Cell2w(sp[0],w3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
}
#endif
{
#line 1658 "prim"
#line 8946 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w2,sp[2]);
vm_w2Cell(w3,sp[1]);
vm_w2Cell(w1,sp[0]);
LABEL2(rote)
NAME1("l2-rote")
NEXT_P1_5;
LABEL3(rote)
NAME1("l3-rote")
DO_GOTO;
}

LABEL(not_rote) /* -rot ( w1 w2 w3 -- w3 w1 w2 ) S0 -- S0  */
/*  */
NAME("-rot")
ip += 1;
LABEL1(not_rote)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
NEXT_P0;
vm_Cell2w(sp[2],w1);
vm_Cell2w(sp[1],w2);
vm_Cell2w(sp[0],w3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
}
#endif
{
#line 1667 "prim"
#line 8989 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w3,sp[2]);
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(not_rote)
NAME1("l2-not_rote")
NEXT_P1_5;
LABEL3(not_rote)
NAME1("l3-not_rote")
DO_GOTO;
}

LABEL(nip) /* nip ( w1 w2 -- w2 ) S0 -- S0  */
/*  */
NAME("nip")
ip += 1;
LABEL1(nip)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += 1;
{
#line 1671 "prim"
#line 9030 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w2,sp[0]);
LABEL2(nip)
NAME1("l2-nip")
NEXT_P1_5;
LABEL3(nip)
NAME1("l3-nip")
DO_GOTO;
}

LABEL(tuck) /* tuck ( w1 w2 -- w2 w1 w2 ) S0 -- S0  */
/*  */
NAME("tuck")
ip += 1;
LABEL1(tuck)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += -1;
{
#line 1675 "prim"
#line 9069 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w2,sp[2]);
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(tuck)
NAME1("l2-tuck")
NEXT_P1_5;
LABEL3(tuck)
NAME1("l3-tuck")
DO_GOTO;
}

LABEL(question_dupe) /* ?dup ( w -- S:... w ) S0 -- S0  */
/* Actually the stack effect is: @code{( 0 -- 0  |  x\0 -- x x )}.  It performs a
@code{dup} if x is nonzero. */
NAME("?dup")
ip += 1;
LABEL1(question_dupe)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 1681 "prim"
if (w!=0) {
  *--sp = w;
}
#line 9111 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
sp += -1;
vm_w2Cell(w,sp[0]);
LABEL2(question_dupe)
NAME1("l2-question_dupe")
NEXT_P1_5;
LABEL3(question_dupe)
NAME1("l3-question_dupe")
DO_GOTO;
}

LABEL(pick) /* pick ( S:... u -- S:... w ) S0 -- S0  */
/* Actually the stack effect is @code{ x0 ... xu u -- x0 ... xu x0 }. */
NAME("pick")
ip += 1;
LABEL1(pick)
{
DEF_CA
MAYBE_UNUSED UCell u;
Cell w;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 1689 "prim"
w = sp[u];
#line 9150 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
sp += -1;
vm_w2Cell(w,sp[0]);
LABEL2(pick)
NAME1("l2-pick")
NEXT_P1_5;
LABEL3(pick)
NAME1("l3-pick")
DO_GOTO;
}

LABEL(third) /* third ( w1 w2 w3 -- w1 w2 w3 w1 ) S0 -- S0  */
/*  */
NAME("third")
ip += 1;
LABEL1(third)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
NEXT_P0;
vm_Cell2w(sp[2],w1);
vm_Cell2w(sp[1],w2);
vm_Cell2w(sp[0],w3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
}
#endif
sp += -1;
{
#line 1694 "prim"
#line 9194 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,sp[0]);
LABEL2(third)
NAME1("l2-third")
NEXT_P1_5;
LABEL3(third)
NAME1("l3-third")
DO_GOTO;
}

LABEL(fourth) /* fourth ( w1 w2 w3 w4 -- w1 w2 w3 w4 w1 ) S0 -- S0  */
/*  */
NAME("fourth")
ip += 1;
LABEL1(fourth)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
MAYBE_UNUSED Cell w4;
NEXT_P0;
vm_Cell2w(sp[3],w1);
vm_Cell2w(sp[2],w2);
vm_Cell2w(sp[1],w3);
vm_Cell2w(sp[0],w4);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
fputs(" w4=", vm_out); printarg_w(w4);
}
#endif
sp += -1;
{
#line 1696 "prim"
#line 9239 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,sp[0]);
LABEL2(fourth)
NAME1("l2-fourth")
NEXT_P1_5;
LABEL3(fourth)
NAME1("l3-fourth")
DO_GOTO;
}

LABEL(two_drop) /* 2drop ( w1 w2 -- ) S0 -- S0  */
/*  */
NAME("2drop")
ip += 1;
LABEL1(two_drop)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += 2;
{
#line 1698 "prim"
ALIVE_DEBUGGING(w1);
#line 9279 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(two_drop)
NAME1("l2-two_drop")
NEXT_P1_5;
LABEL3(two_drop)
NAME1("l3-two_drop")
DO_GOTO;
}

LABEL(two_dupe) /* 2dup ( w1 w2 -- w1 w2 w1 w2 ) S0 -- S0  */
/*  */
NAME("2dup")
ip += 1;
LABEL1(two_dupe)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
NEXT_P0;
vm_Cell2w(sp[1],w1);
vm_Cell2w(sp[0],w2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
}
#endif
sp += -2;
{
#line 1703 "prim"
#line 9317 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(two_dupe)
NAME1("l2-two_dupe")
NEXT_P1_5;
LABEL3(two_dupe)
NAME1("l3-two_dupe")
DO_GOTO;
}

LABEL(two_over) /* 2over ( w1 w2 w3 w4 -- w1 w2 w3 w4 w1 w2 ) S0 -- S0  */
/*  */
NAME("2over")
ip += 1;
LABEL1(two_over)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
MAYBE_UNUSED Cell w4;
NEXT_P0;
vm_Cell2w(sp[3],w1);
vm_Cell2w(sp[2],w2);
vm_Cell2w(sp[1],w3);
vm_Cell2w(sp[0],w4);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
fputs(" w4=", vm_out); printarg_w(w4);
}
#endif
sp += -2;
{
#line 1707 "prim"
#line 9363 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(two_over)
NAME1("l2-two_over")
NEXT_P1_5;
LABEL3(two_over)
NAME1("l3-two_over")
DO_GOTO;
}

LABEL(two_swap) /* 2swap ( w1 w2 w3 w4 -- w3 w4 w1 w2 ) S0 -- S0  */
/*  */
NAME("2swap")
ip += 1;
LABEL1(two_swap)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
MAYBE_UNUSED Cell w4;
NEXT_P0;
vm_Cell2w(sp[3],w1);
vm_Cell2w(sp[2],w2);
vm_Cell2w(sp[1],w3);
vm_Cell2w(sp[0],w4);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
fputs(" w4=", vm_out); printarg_w(w4);
}
#endif
{
#line 1711 "prim"
#line 9408 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w3,sp[3]);
vm_w2Cell(w4,sp[2]);
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(two_swap)
NAME1("l2-two_swap")
NEXT_P1_5;
LABEL3(two_swap)
NAME1("l3-two_swap")
DO_GOTO;
}

LABEL(two_rote) /* 2rot ( w1 w2 w3 w4 w5 w6 -- w3 w4 w5 w6 w1 w2 ) S0 -- S0  */
/*  */
NAME("2rot")
ip += 1;
LABEL1(two_rote)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
MAYBE_UNUSED Cell w4;
MAYBE_UNUSED Cell w5;
MAYBE_UNUSED Cell w6;
NEXT_P0;
vm_Cell2w(sp[5],w1);
vm_Cell2w(sp[4],w2);
vm_Cell2w(sp[3],w3);
vm_Cell2w(sp[2],w4);
vm_Cell2w(sp[1],w5);
vm_Cell2w(sp[0],w6);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
fputs(" w4=", vm_out); printarg_w(w4);
fputs(" w5=", vm_out); printarg_w(w5);
fputs(" w6=", vm_out); printarg_w(w6);
}
#endif
{
#line 1715 "prim"
#line 9461 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w3,sp[5]);
vm_w2Cell(w4,sp[4]);
vm_w2Cell(w5,sp[3]);
vm_w2Cell(w6,sp[2]);
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(two_rote)
NAME1("l2-two_rote")
NEXT_P1_5;
LABEL3(two_rote)
NAME1("l3-two_rote")
DO_GOTO;
}

LABEL(two_nip) /* 2nip ( w1 w2 w3 w4 -- w3 w4 ) S0 -- S0  */
/*  */
NAME("2nip")
ip += 1;
LABEL1(two_nip)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
MAYBE_UNUSED Cell w4;
NEXT_P0;
vm_Cell2w(sp[3],w1);
vm_Cell2w(sp[2],w2);
vm_Cell2w(sp[1],w3);
vm_Cell2w(sp[0],w4);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
fputs(" w4=", vm_out); printarg_w(w4);
}
#endif
sp += 2;
{
#line 1719 "prim"
#line 9511 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w3,sp[1]);
vm_w2Cell(w4,sp[0]);
LABEL2(two_nip)
NAME1("l2-two_nip")
NEXT_P1_5;
LABEL3(two_nip)
NAME1("l3-two_nip")
DO_GOTO;
}

LABEL(two_tuck) /* 2tuck ( w1 w2 w3 w4 -- w3 w4 w1 w2 w3 w4 ) S0 -- S0  */
/*  */
NAME("2tuck")
ip += 1;
LABEL1(two_tuck)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell w3;
MAYBE_UNUSED Cell w4;
NEXT_P0;
vm_Cell2w(sp[3],w1);
vm_Cell2w(sp[2],w2);
vm_Cell2w(sp[1],w3);
vm_Cell2w(sp[0],w4);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" w3=", vm_out); printarg_w(w3);
fputs(" w4=", vm_out); printarg_w(w4);
}
#endif
sp += -2;
{
#line 1723 "prim"
#line 9557 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w3,sp[5]);
vm_w2Cell(w4,sp[4]);
vm_w2Cell(w1,sp[3]);
vm_w2Cell(w2,sp[2]);
vm_w2Cell(w3,sp[1]);
vm_w2Cell(w4,sp[0]);
LABEL2(two_tuck)
NAME1("l2-two_tuck")
NEXT_P1_5;
LABEL3(two_tuck)
NAME1("l3-two_tuck")
DO_GOTO;
}

LABEL(sps_fetch) /* sps@ ( -- w ) S0 -- S0  */
/*  */
NAME("sps@")
ip += 1;
LABEL1(sps_fetch)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 1727 "prim"
w = (Cell)SPs;
#line 9597 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(sps_fetch)
NAME1("l2-sps_fetch")
NEXT_P1_5;
LABEL3(sps_fetch)
NAME1("l3-sps_fetch")
DO_GOTO;
}

GROUPADD(30)
GROUP( memory, 209)
LABEL(fetch) /* @ ( a_addr -- w ) S0 -- S0  */
/* @i{w} is the cell stored at @i{a_addr}. */
NAME("@")
ip += 1;
LABEL1(fetch)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
Cell w;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
{
#line 1735 "prim"
w = *a_addr;
#line 9637 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch)
NAME1("l2-fetch")
NEXT_P1_5;
LABEL3(fetch)
NAME1("l3-fetch")
DO_GOTO;
}

LABEL(lit_fetch) /* lit@ ( #a_addr -- w ) S0 -- S0  */
/*  */
NAME("lit@")
ip += 2;
LABEL1(lit_fetch)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
Cell w;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397800 ),a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += -1;
{
#line 1740 "prim"
w = *a_addr;
#line 9676 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(lit_fetch)
NAME1("l2-lit_fetch")
NEXT_P1_5;
LABEL3(lit_fetch)
NAME1("l3-lit_fetch")
DO_GOTO;
}

LABEL(store) /* ! ( w a_addr -- ) S0 -- S0  */
/* Store @i{w} into the cell at @i{a-addr}. */
NAME("!")
ip += 1;
LABEL1(store)
{
DEF_CA
MAYBE_UNUSED Cell w;
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2w(sp[1],w);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 2;
{
#line 1744 "prim"
*a_addr = w;
#line 9717 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store)
NAME1("l2-store")
NEXT_P1_5;
LABEL3(store)
NAME1("l3-store")
DO_GOTO;
}

LABEL(plus_store) /* +! ( n a_addr -- ) S0 -- S0  */
/* Add @i{n} to the cell at @i{a-addr}. */
NAME("+!")
ip += 1;
LABEL1(plus_store)
{
DEF_CA
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2n(sp[1],n);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 2;
{
#line 1748 "prim"
*a_addr += n;
#line 9756 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(plus_store)
NAME1("l2-plus_store")
NEXT_P1_5;
LABEL3(plus_store)
NAME1("l3-plus_store")
DO_GOTO;
}

LABEL(c_fetch) /* c@ ( c_addr -- c ) S0 -- S0  */
/* @i{c} is the char stored at @i{c_addr}. */
NAME("c@")
ip += 1;
LABEL1(c_fetch)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
Char c;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
{
#line 1754 "prim"
c = *c_addr;
#line 9792 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c=", vm_out); printarg_c(c);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c2Cell(c,sp[0]);
LABEL2(c_fetch)
NAME1("l2-c_fetch")
NEXT_P1_5;
LABEL3(c_fetch)
NAME1("l3-c_fetch")
DO_GOTO;
}

LABEL(c_store) /* c! ( c c_addr -- ) S0 -- S0  */
/* Store @i{c} into the char at @i{c-addr}. */
NAME("c!")
ip += 1;
LABEL1(c_store)
{
DEF_CA
MAYBE_UNUSED Char c;
MAYBE_UNUSED Char * c_addr;
NEXT_P0;
vm_Cell2c(sp[1],c);
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c=", vm_out); printarg_c(c);
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
sp += 2;
{
#line 1780 "prim"
*c_addr = c;
#line 9833 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(c_store)
NAME1("l2-c_store")
NEXT_P1_5;
LABEL3(c_store)
NAME1("l3-c_store")
DO_GOTO;
}

LABEL(two_store) /* 2! ( w1 w2 a_addr -- ) S0 -- S0  */
/* Store @i{w2} into the cell at @i{c-addr} and @i{w1} into the next cell. */
NAME("2!")
ip += 1;
LABEL1(two_store)
{
DEF_CA
MAYBE_UNUSED Cell w1;
MAYBE_UNUSED Cell w2;
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2w(sp[2],w1);
vm_Cell2w(sp[1],w2);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 3;
{
#line 1810 "prim"
a_addr[0] = w2;
a_addr[1] = w1;
#line 9876 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(two_store)
NAME1("l2-two_store")
NEXT_P1_5;
LABEL3(two_store)
NAME1("l3-two_store")
DO_GOTO;
}

LABEL(two_fetch) /* 2@ ( a_addr -- w1 w2 ) S0 -- S0  */
/* @i{w2} is the content of the cell stored at @i{a-addr}, @i{w1} is
the content of the next cell. */
NAME("2@")
ip += 1;
LABEL1(two_fetch)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
Cell w1;
Cell w2;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += -1;
{
#line 1818 "prim"
w2 = a_addr[0];
w1 = a_addr[1];
#line 9916 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w1=", vm_out); printarg_w(w1);
fputs(" w2=", vm_out); printarg_w(w2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w1,sp[1]);
vm_w2Cell(w2,sp[0]);
LABEL2(two_fetch)
NAME1("l2-two_fetch")
NEXT_P1_5;
LABEL3(two_fetch)
NAME1("l3-two_fetch")
DO_GOTO;
}

LABEL(cell_plus) /* cell+ ( a_addr1 -- a_addr2 ) S0 -- S0  */
/* @code{1 cells +} */
NAME("cell+")
ip += 1;
LABEL1(cell_plus)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr1;
Cell * a_addr2;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr1=", vm_out); printarg_a_(a_addr1);
}
#endif
{
#line 1825 "prim"
a_addr2 = a_addr1+1;
#line 9956 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr2=", vm_out); printarg_a_(a_addr2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr2,sp[0]);
LABEL2(cell_plus)
NAME1("l2-cell_plus")
NEXT_P1_5;
LABEL3(cell_plus)
NAME1("l3-cell_plus")
DO_GOTO;
}

LABEL(cells) /* cells ( n1 -- n2 ) S0 -- S0  */
/*  @i{n2} is the number of address units of @i{n1} cells. */
NAME("cells")
ip += 1;
LABEL1(cells)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 1831 "prim"
n2 = n1 * sizeof(Cell);
#line 9994 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(cells)
NAME1("l2-cells")
NEXT_P1_5;
LABEL3(cells)
NAME1("l3-cells")
DO_GOTO;
}

LABEL(char_plus) /* char+ ( c_addr1 -- c_addr2 ) S0 -- S0  */
/* @code{1 chars +}. */
NAME("char+")
ip += 1;
LABEL1(char_plus)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
Char * c_addr2;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
}
#endif
{
#line 1842 "prim"
c_addr2 = c_addr1 + 1;
#line 10032 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[0]);
LABEL2(char_plus)
NAME1("l2-char_plus")
NEXT_P1_5;
LABEL3(char_plus)
NAME1("l3-char_plus")
DO_GOTO;
}

LABEL(count) /* count ( c_addr1 -- c_addr2 u ) S0 -- S0  */
/* @i{c-addr2} is the first character and @i{u} the length of the
counted string at @i{c-addr1}. */
NAME("count")
ip += 1;
LABEL1(count)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
Char * c_addr2;
UCell u;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
}
#endif
sp += -1;
{
#line 1849 "prim"
u = *c_addr1;
c_addr2 = c_addr1+1;
#line 10074 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[1]);
vm_u2Cell(u,sp[0]);
LABEL2(count)
NAME1("l2-count")
NEXT_P1_5;
LABEL3(count)
NAME1("l3-count")
DO_GOTO;
}

LABEL(cell_divide) /* cell/ ( n1 -- n2 ) S0 -- S0  */
/* @i{N2} is the number of cells that fit into @i{n1} aus, rounded
towards negative infinity. */
NAME("cell/")
ip += 1;
LABEL1(cell_divide)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 1857 "prim"
n2 = n1 >> (sizeof(Cell) == 8 ? 3 : 2);
#line 10115 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(cell_divide)
NAME1("l2-cell_divide")
NEXT_P1_5;
LABEL3(cell_divide)
NAME1("l3-cell_divide")
DO_GOTO;
}

LABEL(cell_minus) /* cell- ( a_addr1 -- a_addr2 ) S0 -- S0  */
/* @code{1 cells -} */
NAME("cell-")
ip += 1;
LABEL1(cell_minus)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr1;
Cell * a_addr2;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr1=", vm_out); printarg_a_(a_addr1);
}
#endif
{
#line 1868 "prim"
a_addr2 = a_addr1-1;
#line 10153 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr2=", vm_out); printarg_a_(a_addr2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr2,sp[0]);
LABEL2(cell_minus)
NAME1("l2-cell_minus")
NEXT_P1_5;
LABEL3(cell_minus)
NAME1("l3-cell_minus")
DO_GOTO;
}

LABEL(one_plus_store) /* inc# ( #a_addr -- ) S0 -- S0  */
/*  */
NAME("inc#")
ip += 2;
LABEL1(one_plus_store)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397801 ),a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
{
#line 1873 "prim"
*a_addr += 1;
#line 10190 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(one_plus_store)
NAME1("l2-one_plus_store")
NEXT_P1_5;
LABEL3(one_plus_store)
NAME1("l3-one_plus_store")
DO_GOTO;
}

GROUPADD(15)
GROUP( compiler, 224)
GROUPADD(0)
#ifdef HAS_F83HEADERSTRING
LABEL(paren_f83find) /* (f83find) ( c_addr u f83name1 -- f83name2 ) S0 -- S0  */
/*  */
NAME("(f83find)")
ip += 1;
LABEL1(paren_f83find)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED struct F83Name * f83name1;
struct F83Name * f83name2;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2f83name(sp[0],f83name1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" f83name1=", vm_out); printarg_f83name(f83name1);
}
#endif
sp += 2;
{
#line 1882 "prim"
for (; f83name1 != NULL; f83name1 = (struct F83Name *)(f83name1->next))
  if ((UCell)F83NAME_COUNT(f83name1)==u &&
      memcasecmp(c_addr, f83name1->name, u)== 0 /* or inline? */)
    break;
f83name2=f83name1;
#ifdef DEBUG
fprintf(stderr, "F83find ");
fwrite(c_addr, u, 1, stderr);
fprintf(stderr, " found %08x\n", f83name2); 
#endif
#line 10246 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f83name2=", vm_out); printarg_f83name(f83name2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f83name2Cell(f83name2,sp[0]);
LABEL2(paren_f83find)
NAME1("l2-paren_f83find")
NEXT_P1_5;
LABEL3(paren_f83find)
NAME1("l3-paren_f83find")
DO_GOTO;
}

GROUPADD(1)
#else /* 225 */
LABEL(paren_listlfind) /* (listlfind) ( c_addr u longname1 -- longname2 ) S0 -- S0  */
/*  */
NAME("(listlfind)")
ip += 1;
LABEL1(paren_listlfind)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED struct Longname * longname1;
struct Longname * longname2;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2longname(sp[0],longname1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" longname1=", vm_out); printarg_longname(longname1);
}
#endif
sp += 2;
{
#line 1912 "prim"
longname2=listlfind(c_addr, u, longname1);
#line 10293 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" longname2=", vm_out); printarg_longname(longname2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_longname2Cell(longname2,sp[0]);
LABEL2(paren_listlfind)
NAME1("l2-paren_listlfind")
NEXT_P1_5;
LABEL3(paren_listlfind)
NAME1("l3-paren_listlfind")
DO_GOTO;
}

GROUPADD(1)
#ifdef HAS_HASH
LABEL(paren_hashlfind) /* (hashlfind) ( c_addr u a_addr -- longname2 ) S0 -- S0  */
/*  */
NAME("(hashlfind)")
ip += 1;
LABEL1(paren_hashlfind)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell * a_addr;
struct Longname * longname2;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 2;
{
#line 1933 "prim"
longname2 = hashlfind(c_addr, u, a_addr);
#line 10340 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" longname2=", vm_out); printarg_longname(longname2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_longname2Cell(longname2,sp[0]);
LABEL2(paren_hashlfind)
NAME1("l2-paren_hashlfind")
NEXT_P1_5;
LABEL3(paren_hashlfind)
NAME1("l3-paren_hashlfind")
DO_GOTO;
}

LABEL(paren_tablelfind) /* (tablelfind) ( c_addr u a_addr -- longname2 ) S0 -- S0  */
/* A case-sensitive variant of @code{(hashfind)} */
NAME("(tablelfind)")
ip += 1;
LABEL1(paren_tablelfind)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell * a_addr;
struct Longname * longname2;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 2;
{
#line 1944 "prim"
longname2 = tablelfind(c_addr, u, a_addr);
#line 10385 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" longname2=", vm_out); printarg_longname(longname2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_longname2Cell(longname2,sp[0]);
LABEL2(paren_tablelfind)
NAME1("l2-paren_tablelfind")
NEXT_P1_5;
LABEL3(paren_tablelfind)
NAME1("l3-paren_tablelfind")
DO_GOTO;
}

LABEL(paren_hashkey1) /* (hashkey1) ( c_addr u ubits -- ukey ) S0 -- S0  */
/* ukey is the hash key for the string c_addr u fitting in ubits bits */
NAME("(hashkey1)")
ip += 1;
LABEL1(paren_hashkey1)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED UCell ubits;
UCell ukey;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2u(sp[0],ubits);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" ubits=", vm_out); printarg_u(ubits);
}
#endif
sp += 2;
{
#line 1961 "prim"
ukey = hashkey1(c_addr, u, ubits);
#line 10430 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ukey=", vm_out); printarg_u(ukey);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(ukey,sp[0]);
LABEL2(paren_hashkey1)
NAME1("l2-paren_hashkey1")
NEXT_P1_5;
LABEL3(paren_hashkey1)
NAME1("l3-paren_hashkey1")
DO_GOTO;
}

LABEL(paren_hashkey2) /* (hashkey2) ( c_addr u ubits -- ukey ) S0 -- S0  */
/* A faster replacement for @code{(hashkey1)} */
NAME("(hashkey2)")
ip += 1;
LABEL1(paren_hashkey2)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED UCell ubits;
UCell ukey;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2u(sp[0],ubits);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" ubits=", vm_out); printarg_u(ubits);
}
#endif
sp += 2;
{
#line 1977 "prim"
ukey = hashkey2a(c_addr,u) >> (8*sizeof(UCell) - ubits);
#line 10475 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ukey=", vm_out); printarg_u(ukey);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(ukey,sp[0]);
LABEL2(paren_hashkey2)
NAME1("l2-paren_hashkey2")
NEXT_P1_5;
LABEL3(paren_hashkey2)
NAME1("l3-paren_hashkey2")
DO_GOTO;
}

LABEL(hashkey2) /* hashkey2 ( c_addr u f a_addr -- ) S0 -- S0  */
/* Compute a 128 bit hash key of the string c_addr u, starting with the
key in a_addr.  If f is true, compute case insensitive. */
NAME("hashkey2")
ip += 1;
LABEL1(hashkey2)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Bool f;
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2c_(sp[3],c_addr);
vm_Cell2u(sp[2],u);
vm_Cell2f(sp[1],f);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" f=", vm_out); printarg_f(f);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 4;
{
#line 1982 "prim"
hashkey2(c_addr, u, f ? 0x2020202020202020LL : 0LL, (hash128*)a_addr);
#line 10523 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(hashkey2)
NAME1("l2-hashkey2")
NEXT_P1_5;
LABEL3(hashkey2)
NAME1("l3-hashkey2")
DO_GOTO;
}

GROUPADD(5)
#endif
GROUPADD(0)
#endif
LABEL(paren_parse_white) /* (parse-white) ( c_addr1 u1 -- c_addr2 u2 ) S0 -- S0  */
/*  */
NAME("(parse-white)")
ip += 1;
LABEL1(paren_parse_white)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
Char * c_addr2;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr1);
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
{
#line 1989 "prim"
struct Cellpair r=parse_white(c_addr1, u1);
c_addr2 = (Char *)(r.n1);
u2 = r.n2;
#line 10569 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[1]);
vm_u2Cell(u2,sp[0]);
LABEL2(paren_parse_white)
NAME1("l2-paren_parse_white")
NEXT_P1_5;
LABEL3(paren_parse_white)
NAME1("l3-paren_parse_white")
DO_GOTO;
}

LABEL(scan) /* scan ( c_addr1 u1 c -- c_addr2 u2 ) S0 -- S0  */
/* Skip all characters not equal to c.  The result starts with c or is
empty.  @code{Scan} is limited to single-byte (ASCII) characters.  Use
@code{search} to search for multi-byte characters. */
NAME("scan")
ip += 1;
LABEL1(scan)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Char c;
Char * c_addr2;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr1);
vm_Cell2u(sp[1],u1);
vm_Cell2c(sp[0],c);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" c=", vm_out); printarg_c(c);
}
#endif
sp += 1;
{
#line 2002 "prim"
for (c_addr2=c_addr1; c_addr2!=c_addr1+u1 && *c_addr2 != c; c_addr2++)
  ;
u2 = (c_addr1+u1)-c_addr2;
#if 0
Char *c_addr3=memchr(c_addr1, c, u1);
if (u2!=0 && c_addr3!=c_addr2)
  fprintf(stderr,"\nscan: %p %ld %d -- %p %ld (memchr -> %p)",c_addr1,u1,c,c_addr2,u2,c_addr3);
#endif
#line 10626 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[1]);
vm_u2Cell(u2,sp[0]);
LABEL2(scan)
NAME1("l2-scan")
NEXT_P1_5;
LABEL3(scan)
NAME1("l3-scan")
DO_GOTO;
}

LABEL(skip) /* skip ( c_addr1 u1 c -- c_addr2 u2 ) S0 -- S0  */
/* Skip all characters equal to c.  The result starts with the first
non-c character, or it is empty.  @code{Scan} is limited to
single-byte (ASCII) characters. */
NAME("skip")
ip += 1;
LABEL1(skip)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Char c;
Char * c_addr2;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr1);
vm_Cell2u(sp[1],u1);
vm_Cell2c(sp[0],c);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" c=", vm_out); printarg_c(c);
}
#endif
sp += 1;
{
#line 2025 "prim"
for (c_addr2=c_addr1; c_addr2!=c_addr1+u1 && *c_addr2 == c; c_addr2++)
  ;
u2 = (c_addr1+u1)-c_addr2;
#line 10678 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[1]);
vm_u2Cell(u2,sp[0]);
LABEL2(skip)
NAME1("l2-skip")
NEXT_P1_5;
LABEL3(skip)
NAME1("l3-skip")
DO_GOTO;
}

LABEL(aligned) /* aligned ( c_addr -- a_addr ) S0 -- S0  */
/*  @i{a-addr} is the smallest aligned address greater than or equal to @i{c-addr}. */
NAME("aligned")
ip += 1;
LABEL1(aligned)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
Cell * a_addr;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
{
#line 2041 "prim"
a_addr = (Cell *)((((Cell)c_addr)+(sizeof(Cell)-1))&(-sizeof(Cell)));
#line 10718 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(aligned)
NAME1("l2-aligned")
NEXT_P1_5;
LABEL3(aligned)
NAME1("l3-aligned")
DO_GOTO;
}

LABEL(f_aligned) /* faligned ( c_addr -- f_addr ) S0 -- S0  */
/*  @i{f-addr} is the first float-aligned address greater than or equal to @i{c-addr}. */
NAME("faligned")
ip += 1;
LABEL1(f_aligned)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
Float * f_addr;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
{
#line 2047 "prim"
f_addr = (Float *)((((Cell)c_addr)+(sizeof(Float)-1))&(-sizeof(Float)));
#line 10756 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f_addr=", vm_out); printarg_f_(f_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f_2Cell(f_addr,sp[0]);
LABEL2(f_aligned)
NAME1("l2-f_aligned")
NEXT_P1_5;
LABEL3(f_aligned)
NAME1("l3-f_aligned")
DO_GOTO;
}

LABEL(threading_method) /* threading-method ( -- n ) S0 -- S0  */
/* 0 if the engine is direct threaded. Note that this may change during
the lifetime of an image. */
NAME("threading-method")
ip += 1;
LABEL1(threading_method)
{
DEF_CA
Cell n;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2056 "prim"
#if defined(DOUBLY_INDIRECT)
n=2;
#else
# if defined(DIRECT_THREADED)
n=0;
# else
n=1;
# endif
#endif
#line 10801 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(threading_method)
NAME1("l2-threading_method")
NEXT_P1_5;
LABEL3(threading_method)
NAME1("l3-threading_method")
DO_GOTO;
}

LABEL(debugging_method) /* debugging-method ( -- n ) S0 -- S0  */
/* true if the engine supports debugging */
NAME("debugging-method")
ip += 1;
LABEL1(debugging_method)
{
DEF_CA
Cell n;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2070 "prim"
#if defined(GFORTH_DEBUGGING)
n=-1;
#else
n=0;
#endif
#line 10841 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(debugging_method)
NAME1("l2-debugging_method")
NEXT_P1_5;
LABEL3(debugging_method)
NAME1("l3-debugging_method")
DO_GOTO;
}

LABEL(die_on_signal) /* die-on-signal ( -- a_addr ) S0 -- S0  */
/*  */
NAME("die-on-signal")
ip += 1;
LABEL1(die_on_signal)
{
DEF_CA
Cell * a_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2079 "prim"
a_addr = &die_on_signal;
#line 10877 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(die_on_signal)
NAME1("l2-die_on_signal")
NEXT_P1_5;
LABEL3(die_on_signal)
NAME1("l3-die_on_signal")
DO_GOTO;
}

GROUPADD(8)
GROUP( hostos, 239)
LABEL(paren_key_file) /* (key-file) ( wfileid -- n ) S0 -- S0  */
/* Read one character @i{n} from @i{wfileid}.  This word disables
buffering for @i{wfileid}.  If you want to read characters from a
terminal in non-canonical (raw) mode, you have to put the terminal in
non-canonical mode yourself (using the C interface); the exception is
@code{stdin}: Gforth automatically puts it into non-canonical mode.  If
an error occurred, a negative ior is returned instead of a positive byte. */
NAME("(key-file)")
ip += 1;
LABEL1(paren_key_file)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
Cell n;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
{
#line 2092 "prim"
#ifdef HAS_FILE
fflush(stdout);
n = key((FILE*)wfileid);
#else
n = key(stdin);
#endif
#line 10927 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(paren_key_file)
NAME1("l2-paren_key_file")
NEXT_P1_5;
LABEL3(paren_key_file)
NAME1("l3-paren_key_file")
DO_GOTO;
}

LABEL(key_q_file) /* key?-file ( wfileid -- f ) S0 -- S0  */
/* @i{f} is true if at least one character can be read from @i{wfileid}
without blocking.  If you also want to use @code{read-file} or
@code{read-line} on the file, you have to call @code{key?-file} or
@code{key-file} first (these two words disable buffering). */
NAME("key?-file")
ip += 1;
LABEL1(key_q_file)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
Bool f;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
{
#line 2104 "prim"
#ifdef HAS_FILE
fflush(stdout);
f = key_query((FILE*)wfileid);
#else
f = key_query(stdin);
#endif
#line 10973 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(key_q_file)
NAME1("l2-key_q_file")
NEXT_P1_5;
LABEL3(key_q_file)
NAME1("l3-key_q_file")
DO_GOTO;
}

LABEL(stdin) /* stdin ( -- wfileid ) S0 -- S0  */
/* The standard input file of the Gforth process. */
NAME("stdin")
ip += 1;
LABEL1(stdin)
{
DEF_CA
Cell wfileid;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2113 "prim"
wfileid = (Cell)stdin;
#line 11009 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wfileid=", vm_out); printarg_w(wfileid);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wfileid,sp[0]);
LABEL2(stdin)
NAME1("l2-stdin")
NEXT_P1_5;
LABEL3(stdin)
NAME1("l3-stdin")
DO_GOTO;
}

LABEL(stdout) /* stdout ( -- wfileid ) S0 -- S0  */
/* The standard output file of the Gforth process. */
NAME("stdout")
ip += 1;
LABEL1(stdout)
{
DEF_CA
Cell wfileid;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2117 "prim"
wfileid = (Cell)stdout;
#line 11045 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wfileid=", vm_out); printarg_w(wfileid);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wfileid,sp[0]);
LABEL2(stdout)
NAME1("l2-stdout")
NEXT_P1_5;
LABEL3(stdout)
NAME1("l3-stdout")
DO_GOTO;
}

LABEL(stderr) /* stderr ( -- wfileid ) S0 -- S0  */
/* The standard error output file of the Gforth process. */
NAME("stderr")
ip += 1;
LABEL1(stderr)
{
DEF_CA
Cell wfileid;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2121 "prim"
wfileid = (Cell)stderr;
#line 11081 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wfileid=", vm_out); printarg_w(wfileid);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wfileid,sp[0]);
LABEL2(stderr)
NAME1("l2-stderr")
NEXT_P1_5;
LABEL3(stderr)
NAME1("l3-stderr")
DO_GOTO;
}

LABEL(term_prep_q) /* term-prep? ( -- f ) S0 -- S0  */
/*  */
NAME("term-prep?")
ip += 1;
LABEL1(term_prep_q)
{
DEF_CA
Bool f;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2124 "prim"
f=FLAG(terminal_prepped);
#line 11117 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(term_prep_q)
NAME1("l2-term_prep_q")
NEXT_P1_5;
LABEL3(term_prep_q)
NAME1("l3-term_prep_q")
DO_GOTO;
}

GROUPADD(6)
#ifdef HAS_OS
LABEL(paren_form) /* (form) ( -- urows ucols ) S0 -- S0  */
/* The number of lines and columns in the terminal. These numbers may
change with the window size.  Note that it depends on the OS whether
this reflects the actual size and changes with the window size
(currently only on Unix-like OSs).  On other OSs you just get a
default, and can tell Gforth the terminal size by setting the
environment variables @code{COLUMNS} and @code{LINES} before starting
Gforth. */
NAME("(form)")
ip += 1;
LABEL1(paren_form)
{
DEF_CA
UCell urows;
UCell ucols;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -2;
{
#line 2136 "prim"
/* we could block SIGWINCH here to get a consistent size, but I don't
 think this is necessary or always beneficial */
urows=rows;
ucols=cols;
#line 11165 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" urows=", vm_out); printarg_u(urows);
fputs(" ucols=", vm_out); printarg_u(ucols);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(urows,sp[1]);
vm_u2Cell(ucols,sp[0]);
LABEL2(paren_form)
NAME1("l2-paren_form")
NEXT_P1_5;
LABEL3(paren_form)
NAME1("l3-paren_form")
DO_GOTO;
}

LABEL(isatty) /* isatty ( wfileid -- f ) S0 -- S0  */
/* checks if fd is a (pseudo-)terminal */
NAME("isatty")
ip += 1;
LABEL1(isatty)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
Bool f;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
{
#line 2143 "prim"
f = FLAG(isatty( fileno((FILE*)wfileid) ));
#line 11205 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(isatty)
NAME1("l2-isatty")
NEXT_P1_5;
LABEL3(isatty)
NAME1("l3-isatty")
DO_GOTO;
}

LABEL(isfg) /* isfg ( wfileid -- f ) S0 -- S0  */
/* check if fd is controlled by us (we are the foreground process) */
NAME("isfg")
ip += 1;
LABEL1(isfg)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
Bool f;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
{
#line 2147 "prim"
pid_t fg = tcgetpgrp( fileno((FILE*)wfileid) );
if (fg == -1) {
   f=-1; // non-terminal file, is ours
} else
   f=FLAG(fg == getpgrp());
#line 11247 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(isfg)
NAME1("l2-isfg")
NEXT_P1_5;
LABEL3(isfg)
NAME1("l3-isfg")
DO_GOTO;
}

LABEL(wcwidth) /* wcwidth ( u -- n ) S0 -- S0  */
/* The number of fixed-width characters per unicode character u */
NAME("wcwidth")
ip += 1;
LABEL1(wcwidth)
{
DEF_CA
MAYBE_UNUSED UCell u;
Cell n;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
{
#line 2155 "prim"
n = wcwidth(u);
#line 11285 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(wcwidth)
NAME1("l2-wcwidth")
NEXT_P1_5;
LABEL3(wcwidth)
NAME1("l3-wcwidth")
DO_GOTO;
}

LABEL(flush_icache) /* flush-icache ( c_addr u -- ) S0 -- S0  */
/* Make sure that the instruction cache of the processor (if there is
one) does not contain stale data at @i{c-addr} and @i{u} bytes
afterwards. @code{END-CODE} performs a @code{flush-icache}
automatically. Caveat: @code{flush-icache} might not work on your
installation; this is usually the case if direct threading is not
supported on your machine (take a look at your @file{machine.h}) and
your machine has a separate instruction cache. In such cases,
@code{flush-icache} does nothing instead of flushing the instruction
cache. */
NAME("flush-icache")
ip += 1;
LABEL1(flush_icache)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 2;
{
#line 2167 "prim"
FLUSH_ICACHE((caddr_t)c_addr,u);
#line 11334 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(flush_icache)
NAME1("l2-flush_icache")
NEXT_P1_5;
LABEL3(flush_icache)
NAME1("l3-flush_icache")
DO_GOTO;
}

LABEL(paren_bye) /* (bye) ( n -- ) S0 -- S0  */
/*  */
NAME("(bye)")
ip += 1;
LABEL1(paren_bye)
{
DEF_CA
MAYBE_UNUSED Cell n;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
{
#line 2170 "prim"
SUPER_END;
gforth_FP=fp;
gforth_SP=sp;
gforth_RP=rp;
gforth_LP=lp;
return (Label *)n;
#line 11375 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(paren_bye)
NAME1("l2-paren_bye")
NEXT_P1_5;
LABEL3(paren_bye)
NAME1("l3-paren_bye")
DO_GOTO;
}

LABEL(paren_system) /* (system) ( c_addr u -- wretval wior ) S0 -- S0  */
/*  */
NAME("(system)")
ip += 1;
LABEL1(paren_system)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
Cell wretval;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
{
#line 2178 "prim"
wretval = gforth_system(c_addr, u);  
wior = IOR(wretval==-1 || (wretval==127 && errno != 0));
#line 11416 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wretval=", vm_out); printarg_w(wretval);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wretval,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(paren_system)
NAME1("l2-paren_system")
NEXT_P1_5;
LABEL3(paren_system)
NAME1("l3-paren_system")
DO_GOTO;
}

LABEL(getenv) /* getenv ( c_addr1 u1 -- c_addr2 u2 ) S0 -- S0  */
/* The string @i{c-addr1 u1} specifies an environment variable. The string @i{c-addr2 u2}
is the host operating system's expansion of that environment variable. If the
environment variable does not exist, @i{c-addr2 u2} specifies a string 0 characters
in length. */
NAME("getenv")
ip += 1;
LABEL1(getenv)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
Char * c_addr2;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr1);
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
{
#line 2186 "prim"
/* close ' to keep fontify happy */
char * string = cstr(c_addr1,u1);
c_addr2 = (Char *)getenv(string);
u2 = (c_addr2 == NULL ? 0 : strlen((char *)c_addr2));
free_l(string);
#line 11467 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[1]);
vm_u2Cell(u2,sp[0]);
LABEL2(getenv)
NAME1("l2-getenv")
NEXT_P1_5;
LABEL3(getenv)
NAME1("l3-getenv")
DO_GOTO;
}

LABEL(open_pipe) /* open-pipe ( c_addr u wfam -- wfileid wior ) S0 -- S0  */
/*  */
NAME("open-pipe")
ip += 1;
LABEL1(open_pipe)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell wfam;
Cell wfileid;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2w(sp[0],wfam);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" wfam=", vm_out); printarg_w(wfam);
}
#endif
sp += 1;
{
#line 2193 "prim"
char * string = cstr(c_addr,u);
fflush(stdout);
wfileid=(Cell)popen(string,pfileattr[wfam]); /* ~ expansion of 1st arg? */
wior = IOR(wfileid==0); /* !! the man page says that errno is not set reliably */
free_l(string);
#line 11519 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wfileid=", vm_out); printarg_w(wfileid);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wfileid,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(open_pipe)
NAME1("l2-open_pipe")
NEXT_P1_5;
LABEL3(open_pipe)
NAME1("l3-open_pipe")
DO_GOTO;
}

LABEL(close_pipe) /* close-pipe ( wfileid -- wretval wior ) S0 -- S0  */
/*  */
NAME("close-pipe")
ip += 1;
LABEL1(close_pipe)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
Cell wretval;
Cell wior;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += -1;
{
#line 2200 "prim"
wretval = pclose((FILE *)wfileid);
wior = IOR(wretval==-1);
#line 11562 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wretval=", vm_out); printarg_w(wretval);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wretval,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(close_pipe)
NAME1("l2-close_pipe")
NEXT_P1_5;
LABEL3(close_pipe)
NAME1("l3-close_pipe")
DO_GOTO;
}

LABEL(to_time_and_date) /* >time&date&tz ( udtime -- nsec nmin nhour nday nmonth nyear fdst ndstoff c_addrtz utz ) S0 -- S0  */
/* Convert time in seconds since 1.1.1970 0:00Z to the current time of day. Seconds, minutes and hours are numbered from 0.
Months are numbered from 1. */
NAME(">time&date&tz")
ip += 1;
LABEL1(to_time_and_date)
{
DEF_CA
MAYBE_UNUSED UDCell udtime;
Cell nsec;
Cell nmin;
Cell nhour;
Cell nday;
Cell nmonth;
Cell nyear;
Bool fdst;
Cell ndstoff;
Char * c_addrtz;
UCell utz;
NEXT_P0;
vm_twoCell2ud(sp[1], sp[0], udtime)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" udtime=", vm_out); printarg_ud(udtime);
}
#endif
sp += -8;
{
#line 2206 "prim"
#ifdef BUGGY_LONG_LONG
time_t now=(time_t)DLO(udtime);
#else
time_t now=(time_t)udtime;
#endif
struct tm ltime;
localtime_r(&now, &ltime); /* thread save version */
nyear =ltime.tm_year+1900;
nmonth=ltime.tm_mon+1;
nday  =ltime.tm_mday;
nhour =ltime.tm_hour;
nmin  =ltime.tm_min;
nsec  =ltime.tm_sec;
fdst  =FLAG(ltime.tm_isdst);
#ifdef __USE_MISC
ndstoff=ltime.tm_gmtoff;
c_addrtz=(Char *)ltime.tm_zone;
utz     =strlen(ltime.tm_zone);
#else
ndstoff = 0;
c_addrtz= 0;
utz     = 0;
#endif
#line 11635 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" nsec=", vm_out); printarg_n(nsec);
fputs(" nmin=", vm_out); printarg_n(nmin);
fputs(" nhour=", vm_out); printarg_n(nhour);
fputs(" nday=", vm_out); printarg_n(nday);
fputs(" nmonth=", vm_out); printarg_n(nmonth);
fputs(" nyear=", vm_out); printarg_n(nyear);
fputs(" fdst=", vm_out); printarg_f(fdst);
fputs(" ndstoff=", vm_out); printarg_n(ndstoff);
fputs(" c_addrtz=", vm_out); printarg_c_(c_addrtz);
fputs(" utz=", vm_out); printarg_u(utz);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(nsec,sp[9]);
vm_n2Cell(nmin,sp[8]);
vm_n2Cell(nhour,sp[7]);
vm_n2Cell(nday,sp[6]);
vm_n2Cell(nmonth,sp[5]);
vm_n2Cell(nyear,sp[4]);
vm_f2Cell(fdst,sp[3]);
vm_n2Cell(ndstoff,sp[2]);
vm_c_2Cell(c_addrtz,sp[1]);
vm_u2Cell(utz,sp[0]);
LABEL2(to_time_and_date)
NAME1("l2-to_time_and_date")
NEXT_P1_5;
LABEL3(to_time_and_date)
NAME1("l3-to_time_and_date")
DO_GOTO;
}

LABEL(paren_ms) /* (ms) ( u -- ) S0 -- S0  */
/* Wait at least @i{n} milli-second. */
NAME("(ms)")
ip += 1;
LABEL1(paren_ms)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 2232 "prim"
gforth_ms(u);
#line 11691 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(paren_ms)
NAME1("l2-paren_ms")
NEXT_P1_5;
LABEL3(paren_ms)
NAME1("l3-paren_ms")
DO_GOTO;
}

LABEL(heap_allocate) /* heap-allocate ( u -- a_addr wior ) S0 -- S0  */
/* Allocate @i{u} address units of contiguous data space. The initial
contents of the data space is undefined. If the allocation is successful,
@i{a-addr} is the start address of the allocated region and @i{wior}
is 0. If the allocation fails, @i{a-addr} is undefined and @i{wior}
is a non-zero I/O result code. */
NAME("heap-allocate")
ip += 1;
LABEL1(heap_allocate)
{
DEF_CA
MAYBE_UNUSED UCell u;
Cell * a_addr;
Cell wior;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += -1;
{
#line 2240 "prim"
a_addr = (Cell *)malloc_l(u?u:1);
wior = IOR(a_addr==NULL);
#line 11734 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(heap_allocate)
NAME1("l2-heap_allocate")
NEXT_P1_5;
LABEL3(heap_allocate)
NAME1("l3-heap_allocate")
DO_GOTO;
}

LABEL(heap_free) /* heap-free ( a_addr -- wior ) S0 -- S0  */
/* Return the region of data space starting at @i{a-addr} to the system.
The region must originally have been obtained using @code{allocate} or
@code{resize}. If the operational is successful, @i{wior} is 0.
If the operation fails, @i{wior} is a non-zero I/O result code. */
NAME("heap-free")
ip += 1;
LABEL1(heap_free)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
Cell wior;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
{
#line 2248 "prim"
free_l(a_addr);
wior = 0;
#line 11778 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(heap_free)
NAME1("l2-heap_free")
NEXT_P1_5;
LABEL3(heap_free)
NAME1("l3-heap_free")
DO_GOTO;
}

LABEL(heap_resize) /* heap-resize ( a_addr1 u -- a_addr2 wior ) S0 -- S0  */
/* Change the size of the allocated area at @i{a-addr1} to @i{u}
address units, possibly moving the contents to a different
area. @i{a-addr2} is the address of the resulting area.
If the operation is successful, @i{wior} is 0.
If the operation fails, @i{wior} is a non-zero
I/O result code. If @i{a-addr1} is 0, Gforth's (but not the Standard)
@code{resize} @code{allocate}s @i{u} address units. */
NAME("heap-resize")
ip += 1;
LABEL1(heap_resize)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr1;
MAYBE_UNUSED UCell u;
Cell * a_addr2;
Cell wior;
NEXT_P0;
vm_Cell2a_(sp[1],a_addr1);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr1=", vm_out); printarg_a_(a_addr1);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
{
#line 2259 "prim"
/* the following check is not necessary on most OSs, but it is needed
   on SunOS 4.1.2. */
/* close ' to keep fontify happy */
if (a_addr1==NULL)
  a_addr2 = (Cell *)malloc_l(u);
else
  a_addr2 = (Cell *)realloc_l(a_addr1, (u ? u : 1));
wior = IOR(a_addr2==NULL);	/* !! Define a return code */
if(wior)
  a_addr2 = a_addr1; /* in case of an error, keep a_addr1 */
#line 11835 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr2=", vm_out); printarg_a_(a_addr2);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr2,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(heap_resize)
NAME1("l2-heap_resize")
NEXT_P1_5;
LABEL3(heap_resize)
NAME1("l3-heap_resize")
DO_GOTO;
}

LABEL(strerror) /* strerror ( n -- c_addr u ) S0 -- S0  */
/*  */
NAME("strerror")
ip += 1;
LABEL1(strerror)
{
DEF_CA
MAYBE_UNUSED Cell n;
Char * c_addr;
UCell u;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += -1;
{
#line 2271 "prim"
c_addr = (Char *)strerror(n);
u = strlen((char *)c_addr);
#line 11878 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr,sp[1]);
vm_u2Cell(u,sp[0]);
LABEL2(strerror)
NAME1("l2-strerror")
NEXT_P1_5;
LABEL3(strerror)
NAME1("l3-strerror")
DO_GOTO;
}

LABEL(strsignal) /* strsignal ( n -- c_addr u ) S0 -- S0  */
/*  */
NAME("strsignal")
ip += 1;
LABEL1(strsignal)
{
DEF_CA
MAYBE_UNUSED Cell n;
Char * c_addr;
UCell u;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += -1;
{
#line 2275 "prim"
c_addr = (Char *)strsignal(n);
u = strlen((char *)c_addr);
#line 11921 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr,sp[1]);
vm_u2Cell(u,sp[0]);
LABEL2(strsignal)
NAME1("l2-strsignal")
NEXT_P1_5;
LABEL3(strsignal)
NAME1("l3-strsignal")
DO_GOTO;
}

LABEL(call_c) /* call-c ( ... w -- ... ) S0 -- S0  */
/* Call the C function pointed to by @i{w}. The C function has to
access the stack itself. The stack pointers are exported into a ptrpair
structure passed to the C function, and returned in that form. */
NAME("call-c")
ip += 1;
LABEL1(call_c)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 2282 "prim"
IF_fpTOS(fp[0]=fpTOS);
GFORTH_CALL_C(&w, sp, fp);
IF_fpTOS(fpTOS=fp[0]);
#line 11965 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(call_c)
NAME1("l2-call_c")
NEXT_P1_5;
LABEL3(call_c)
NAME1("l3-call_c")
DO_GOTO;
}

LABEL(call_c_direct) /* call-c# ( ... #a_addr -- ... ) S0 -- S0  */
/* Call the C function pointed to by the inline argument @i{w}. The C function
has to access the stack itself. The stack pointers are exported into a ptrpair
structure passed to the C function, and returned in that form. */
NAME("call-c#")
ip += 2;
LABEL1(call_c_direct)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397802 ),a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
{
#line 2290 "prim"
IF_fpTOS(fp[0]=fpTOS);
GFORTH_CALL_C(a_addr, sp, fp);
IF_fpTOS(fpTOS=fp[0]);
#line 12004 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(call_c_direct)
NAME1("l2-call_c_direct")
NEXT_P1_5;
LABEL3(call_c_direct)
NAME1("l3-call_c_direct")
DO_GOTO;
}

LABEL(call_c_fetch) /* call-c@ ( ... a_addr -- ... ) S0 -- S0  */
/* Call the C function pointed to by the pointer stored at @i{a_addr}. The C
function has to access the stack itself. The stack pointers are exported into
a ptrpair structure passed to the C function, and returned in that form. */
NAME("call-c@")
ip += 1;
LABEL1(call_c_fetch)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 1;
{
#line 2298 "prim"
IF_fpTOS(fp[0]=fpTOS);
GFORTH_CALL_C(a_addr, sp, fp);
IF_fpTOS(fpTOS=fp[0]);
#line 12044 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(call_c_fetch)
NAME1("l2-call_c_fetch")
NEXT_P1_5;
LABEL3(call_c_fetch)
NAME1("l3-call_c_fetch")
DO_GOTO;
}

LABEL(gforth_pointers) /* gforth-pointers ( -- a_addr ) S0 -- S0  */
/*  */
NAME("gforth-pointers")
ip += 1;
LABEL1(gforth_pointers)
{
DEF_CA
Cell * a_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2303 "prim"
a_addr = (Cell*)gforth_pointers;
#line 12078 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(gforth_pointers)
NAME1("l2-gforth_pointers")
NEXT_P1_5;
LABEL3(gforth_pointers)
NAME1("l3-gforth_pointers")
DO_GOTO;
}

LABEL(winch_query) /* winch? ( -- a_addr ) S0 -- S0  */
/*  */
NAME("winch?")
ip += 1;
LABEL1(winch_query)
{
DEF_CA
Cell * a_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 2306 "prim"
#ifdef SIGWINCH
a_addr = &winch_addr;
#else
a_addr = NULL;
#endif
#line 12118 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(winch_query)
NAME1("l2-winch_query")
NEXT_P1_5;
LABEL3(winch_query)
NAME1("l3-winch_query")
DO_GOTO;
}

GROUPADD(22)
#endif
GROUPADD(0)
#ifdef HAS_FILE
LABEL(close_file) /* close-file ( wfileid -- wior ) S0 -- S0  */
/*  */
NAME("close-file")
ip += 1;
LABEL1(close_file)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
Cell wior;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
{
#line 2316 "prim"
wior = IOR(fclose((FILE *)wfileid)==EOF);
#line 12160 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(close_file)
NAME1("l2-close_file")
NEXT_P1_5;
LABEL3(close_file)
NAME1("l3-close_file")
DO_GOTO;
}

LABEL(open_file) /* open-file ( c_addr u wfam -- wfileid wior ) S0 -- S0  */
/*  */
NAME("open-file")
ip += 1;
LABEL1(open_file)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell wfam;
Cell wfileid;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2w(sp[0],wfam);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" wfam=", vm_out); printarg_w(wfam);
}
#endif
sp += 1;
{
#line 2319 "prim"
char * string = tilde_cstr(c_addr,u);
wfileid = opencreate_file(string, wfam, 0, &wior);
free_l(string);
#line 12208 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wfileid=", vm_out); printarg_w(wfileid);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wfileid,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(open_file)
NAME1("l2-open_file")
NEXT_P1_5;
LABEL3(open_file)
NAME1("l3-open_file")
DO_GOTO;
}

LABEL(create_file) /* create-file ( c_addr u wfam -- wfileid wior ) S0 -- S0  */
/*  */
NAME("create-file")
ip += 1;
LABEL1(create_file)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell wfam;
Cell wfileid;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2w(sp[0],wfam);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" wfam=", vm_out); printarg_w(wfam);
}
#endif
sp += 1;
{
#line 2324 "prim"
char * string = tilde_cstr(c_addr,u);
wfileid = opencreate_file(string, wfam, O_CREAT|O_TRUNC, &wior);
free_l(string);
#line 12258 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wfileid=", vm_out); printarg_w(wfileid);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wfileid,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(create_file)
NAME1("l2-create_file")
NEXT_P1_5;
LABEL3(create_file)
NAME1("l3-create_file")
DO_GOTO;
}

LABEL(delete_file) /* delete-file ( c_addr u -- wior ) S0 -- S0  */
/*  */
NAME("delete-file")
ip += 1;
LABEL1(delete_file)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 2329 "prim"
char * string = tilde_cstr(c_addr,u);
wior = IOR(unlink(string)==-1);
free_l(string);
#line 12304 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(delete_file)
NAME1("l2-delete_file")
NEXT_P1_5;
LABEL3(delete_file)
NAME1("l3-delete_file")
DO_GOTO;
}

LABEL(rename_file) /* rename-file ( c_addr1 u1 c_addr2 u2 -- wior ) S0 -- S0  */
/* Rename file @i{c_addr1 u1} to new name @i{c_addr2 u2} */
NAME("rename-file")
ip += 1;
LABEL1(rename_file)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Char * c_addr2;
MAYBE_UNUSED UCell u2;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[3],c_addr1);
vm_Cell2u(sp[2],u1);
vm_Cell2c_(sp[1],c_addr2);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 3;
{
#line 2335 "prim"
wior = rename_file(c_addr1, u1, c_addr2, u2);
#line 12352 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(rename_file)
NAME1("l2-rename_file")
NEXT_P1_5;
LABEL3(rename_file)
NAME1("l3-rename_file")
DO_GOTO;
}

LABEL(file_position) /* file-position ( wfileid -- ud wior ) S0 -- S0  */
/*  */
NAME("file-position")
ip += 1;
LABEL1(file_position)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
UDCell ud;
Cell wior;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += -2;
{
#line 2338 "prim"
/* !! use tell and lseek? */
ud = OFF2UD(ftello((FILE *)wfileid));
wior = IOR(UD2OFF(ud)==-1);
#line 12394 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud=", vm_out); printarg_ud(ud);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud, sp[2], sp[1])
vm_w2Cell(wior,sp[0]);
LABEL2(file_position)
NAME1("l2-file_position")
NEXT_P1_5;
LABEL3(file_position)
NAME1("l3-file_position")
DO_GOTO;
}

LABEL(reposition_file) /* reposition-file ( ud wfileid -- wior ) S0 -- S0  */
/*  */
NAME("reposition-file")
ip += 1;
LABEL1(reposition_file)
{
DEF_CA
MAYBE_UNUSED UDCell ud;
MAYBE_UNUSED Cell wfileid;
Cell wior;
NEXT_P0;
vm_twoCell2ud(sp[2], sp[1], ud)
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud=", vm_out); printarg_ud(ud);
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += 2;
{
#line 2343 "prim"
wior = IOR(fseeko((FILE *)wfileid, UD2OFF(ud), SEEK_SET)==-1);
#line 12438 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(reposition_file)
NAME1("l2-reposition_file")
NEXT_P1_5;
LABEL3(reposition_file)
NAME1("l3-reposition_file")
DO_GOTO;
}

LABEL(file_size) /* file-size ( wfileid -- ud wior ) S0 -- S0  */
/*  */
NAME("file-size")
ip += 1;
LABEL1(file_size)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
UDCell ud;
Cell wior;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += -2;
{
#line 2346 "prim"
struct stat buf;
wior = IOR(fstat(fileno((FILE *)wfileid), &buf)==-1);
if (wior==0 && (S_ISREG(buf.st_mode) || S_ISDIR(buf.st_mode)))
  ud = OFF2UD(buf.st_size);
else {
  ud = OFF2UD(0);
  wior = -2057; /* wrong file type */
}
#line 12485 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud=", vm_out); printarg_ud(ud);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud, sp[2], sp[1])
vm_w2Cell(wior,sp[0]);
LABEL2(file_size)
NAME1("l2-file_size")
NEXT_P1_5;
LABEL3(file_size)
NAME1("l3-file_size")
DO_GOTO;
}

LABEL(resize_file) /* resize-file ( ud wfileid -- wior ) S0 -- S0  */
/*  */
NAME("resize-file")
ip += 1;
LABEL1(resize_file)
{
DEF_CA
MAYBE_UNUSED UDCell ud;
MAYBE_UNUSED Cell wfileid;
Cell wior;
NEXT_P0;
vm_twoCell2ud(sp[2], sp[1], ud)
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud=", vm_out); printarg_ud(ud);
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += 2;
{
#line 2356 "prim"
wior = IOR(ftruncate(fileno((FILE *)wfileid), UD2OFF(ud))==-1);
#line 12529 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(resize_file)
NAME1("l2-resize_file")
NEXT_P1_5;
LABEL3(resize_file)
NAME1("l3-resize_file")
DO_GOTO;
}

LABEL(read_file) /* read-file ( c_addr u1 wfileid -- u2 wior ) S0 -- S0  */
/* Read @i{u1} characters from file @i{wfileid} into the buffer at
@i{c_addr}.  A non-zero @i{wior} indicates an error.  @i{U2} indicates
the length of the read data.  End-of-file is not an error and is
indicated by @i{u2}$<$@i{u1} and @i{wior}=0. */
NAME("read-file")
ip += 1;
LABEL1(read_file)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell wfileid;
UCell u2;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u1);
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += 1;
{
#line 2363 "prim"
/* !! fread does not guarantee enough */
u2 = 0;
do {
  u2 += fread(c_addr+u2, sizeof(Char), u1-u2, (FILE *)wfileid);
  if (u2>0)
    gf_regetc((FILE *)wfileid);
  if((wior = FILEIO(u2<u1 && ferror((FILE *)wfileid))))
    clearerr((FILE *)wfileid);
} while(wior==TOIOR(EINTR));
#line 12586 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(read_file)
NAME1("l2-read_file")
NEXT_P1_5;
LABEL3(read_file)
NAME1("l3-read_file")
DO_GOTO;
}

LABEL(paren_read_line) /* (read-line) ( c_addr u1 wfileid -- u2 flag u3 wior ) S0 -- S0  */
/*  */
NAME("(read-line)")
ip += 1;
LABEL1(paren_read_line)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell wfileid;
UCell u2;
Bool flag;
UCell u3;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u1);
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += -1;
{
#line 2374 "prim"
struct Cellquad r = read_line(c_addr, u1, (FILE *)wfileid);
u2   = r.n1;
flag = r.n2;
u3   = r.n3;
wior = r.n4;
#line 12640 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputs(" flag=", vm_out); printarg_f(flag);
fputs(" u3=", vm_out); printarg_u(u3);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[3]);
vm_f2Cell(flag,sp[2]);
vm_u2Cell(u3,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(paren_read_line)
NAME1("l2-paren_read_line")
NEXT_P1_5;
LABEL3(paren_read_line)
NAME1("l3-paren_read_line")
DO_GOTO;
}

GROUPADD(11)
#endif
LABEL(write_file) /* write-file ( c_addr u1 wfileid -- wior ) S0 -- S0  */
/*  */
NAME("write-file")
ip += 1;
LABEL1(write_file)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell wfileid;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u1);
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += 2;
{
#line 2383 "prim"
/* !! fwrite does not guarantee enough */
#ifdef HAS_FILE
UCell u2 = 0;
do {
  u2 += fwrite(c_addr+u2, sizeof(Char), u1-u2, (FILE *)wfileid);
  if((wior = FILEIO(u2<u1 && ferror((FILE *)wfileid))))
    clearerr((FILE *)wfileid);
} while(wior==TOIOR(EINTR));
#else
TYPE(c_addr, u1);
#endif
#line 12703 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(write_file)
NAME1("l2-write_file")
NEXT_P1_5;
LABEL3(write_file)
NAME1("l3-write_file")
DO_GOTO;
}

LABEL(emit_file) /* emit-file ( c wfileid -- wior ) S0 -- S0  */
/*  */
NAME("emit-file")
ip += 1;
LABEL1(emit_file)
{
DEF_CA
MAYBE_UNUSED Char c;
MAYBE_UNUSED Cell wfileid;
Cell wior;
NEXT_P0;
vm_Cell2c(sp[1],c);
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c=", vm_out); printarg_c(c);
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
sp += 1;
{
#line 2396 "prim"
#ifdef HAS_FILE
do {
  wior = FILEIO(putc(c, (FILE *)wfileid)==EOF);
  if (wior)
    clearerr((FILE *)wfileid);
} while(wior==TOIOR(EINTR));
#else
PUTC(c);
#endif
#line 12753 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(emit_file)
NAME1("l2-emit_file")
NEXT_P1_5;
LABEL3(emit_file)
NAME1("l3-emit_file")
DO_GOTO;
}

GROUPADD(2)
#ifdef HAS_FILE
LABEL(flush_file) /* flush-file ( wfileid -- wior ) S0 -- S0  */
/*  */
NAME("flush-file")
ip += 1;
LABEL1(flush_file)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
Cell wior;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
{
#line 2409 "prim"
wior = IOR(fflush((FILE *) wfileid)==EOF);
#line 12793 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(flush_file)
NAME1("l2-flush_file")
NEXT_P1_5;
LABEL3(flush_file)
NAME1("l3-flush_file")
DO_GOTO;
}

LABEL(file_status) /* file-status ( c_addr u -- wfam wior ) S0 -- S0  */
/*  */
NAME("file-status")
ip += 1;
LABEL1(file_status)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
Cell wfam;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
{
#line 2412 "prim"
struct Cellpair r = file_status(c_addr, u);
wfam = r.n1;
wior = r.n2;
#line 12837 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wfam=", vm_out); printarg_w(wfam);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wfam,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(file_status)
NAME1("l2-file_status")
NEXT_P1_5;
LABEL3(file_status)
NAME1("l3-file_status")
DO_GOTO;
}

LABEL(file_eof_query) /* file-eof? ( wfileid -- flag ) S0 -- S0  */
/* @var{Flag} is true if the end-of-file indicator for @var{wfileid} is set. */
NAME("file-eof?")
ip += 1;
LABEL1(file_eof_query)
{
DEF_CA
MAYBE_UNUSED Cell wfileid;
Bool flag;
NEXT_P0;
vm_Cell2w(sp[0],wfileid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wfileid=", vm_out); printarg_w(wfileid);
}
#endif
{
#line 2418 "prim"
flag = FLAG(feof((FILE *) wfileid));
#line 12877 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" flag=", vm_out); printarg_f(flag);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(flag,sp[0]);
LABEL2(file_eof_query)
NAME1("l2-file_eof_query")
NEXT_P1_5;
LABEL3(file_eof_query)
NAME1("l3-file_eof_query")
DO_GOTO;
}

LABEL(open_dir) /* open-dir ( c_addr u -- wdirid wior ) S0 -- S0  */
/* Open the directory specified by @i{c-addr, u}
and return @i{dir-id} for futher access to it. */
NAME("open-dir")
ip += 1;
LABEL1(open_dir)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
Cell wdirid;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
{
#line 2423 "prim"
char * string = tilde_cstr(c_addr,u);
wdirid = (Cell)opendir(string);
wior =  IOR(wdirid == 0);
free_l(string);
#line 12923 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wdirid=", vm_out); printarg_w(wdirid);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wdirid,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(open_dir)
NAME1("l2-open_dir")
NEXT_P1_5;
LABEL3(open_dir)
NAME1("l3-open_dir")
DO_GOTO;
}

LABEL(read_dir) /* read-dir ( c_addr u1 wdirid -- u2 flag wior ) S0 -- S0  */
/* Attempt to read the next entry from the directory specified
by @i{dir-id} to the buffer of length @i{u1} at address @i{c-addr}. 
If the attempt fails because there is no more entries,
@i{ior}=0, @i{flag}=0, @i{u2}=0, and the buffer is unmodified.
If the attempt to read the next entry fails because of any other reason, 
return @i{ior}<>0.
If the attempt succeeds, store file name to the buffer at @i{c-addr}
and return @i{ior}=0, @i{flag}=true and @i{u2} equal to the size of the file name.
If the length of the file name is greater than @i{u1}, 
store first @i{u1} characters from file name into the buffer and
indicate "name too long" with @i{ior}, @i{flag}=true, and @i{u2}=@i{u1}. */
NAME("read-dir")
ip += 1;
LABEL1(read_dir)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell wdirid;
UCell u2;
Bool flag;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u1);
vm_Cell2w(sp[0],wdirid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" wdirid=", vm_out); printarg_w(wdirid);
}
#endif
{
#line 2440 "prim"
struct dirent * dresult;
dresult=readdir((DIR *)wdirid);
wior = 0;
flag = -1;
if(dresult == NULL) {
  u2 = 0;
  flag = 0;
} else {
  u2 = strlen((char *)dresult->d_name);
  if(u2 > u1) {
    u2 = u1;
    wior = -512-ENAMETOOLONG;
  }
  memmove(c_addr, dresult->d_name, u2);
}
#line 12995 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputs(" flag=", vm_out); printarg_f(flag);
fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[2]);
vm_f2Cell(flag,sp[1]);
vm_w2Cell(wior,sp[0]);
LABEL2(read_dir)
NAME1("l2-read_dir")
NEXT_P1_5;
LABEL3(read_dir)
NAME1("l3-read_dir")
DO_GOTO;
}

LABEL(close_dir) /* close-dir ( wdirid -- wior ) S0 -- S0  */
/* Close the directory specified by @i{dir-id}. */
NAME("close-dir")
ip += 1;
LABEL1(close_dir)
{
DEF_CA
MAYBE_UNUSED Cell wdirid;
Cell wior;
NEXT_P0;
vm_Cell2w(sp[0],wdirid);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wdirid=", vm_out); printarg_w(wdirid);
}
#endif
{
#line 2458 "prim"
wior = IOR(closedir((DIR *)wdirid));
#line 13037 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(close_dir)
NAME1("l2-close_dir")
NEXT_P1_5;
LABEL3(close_dir)
NAME1("l3-close_dir")
DO_GOTO;
}

LABEL(match_file) /* filename-match ( c_addr1 u1 c_addr2 u2 -- flag ) S0 -- S0  */
/* match the file name @var{c_addr1 u1} with the pattern @var{c_addr2 u2}.
Patterns match char by char except for the special characters '*' and '?',
which are wildcards for several ('*') or one ('?') character. */
NAME("filename-match")
ip += 1;
LABEL1(match_file)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Char * c_addr2;
MAYBE_UNUSED UCell u2;
Bool flag;
NEXT_P0;
vm_Cell2c_(sp[3],c_addr1);
vm_Cell2u(sp[2],u1);
vm_Cell2c_(sp[1],c_addr2);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 3;
{
#line 2464 "prim"
char * string = cstr(c_addr1, u1);
char * pattern = cstr(c_addr2, u2);
flag = FLAG(!fnmatch(pattern, string, 0));
free_l(string);
free_l(pattern);
#line 13091 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" flag=", vm_out); printarg_f(flag);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(flag,sp[0]);
LABEL2(match_file)
NAME1("l2-match_file")
NEXT_P1_5;
LABEL3(match_file)
NAME1("l3-match_file")
DO_GOTO;
}

LABEL(set_dir) /* set-dir ( c_addr u -- wior ) S0 -- S0  */
/* Change the current directory to @i{c-addr, u}.
Return an error if this is not possible */
NAME("set-dir")
ip += 1;
LABEL1(set_dir)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 2473 "prim"
char * string = tilde_cstr(c_addr, u);
wior = IOR(chdir(string));
free_l(string);
#line 13136 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(set_dir)
NAME1("l2-set_dir")
NEXT_P1_5;
LABEL3(set_dir)
NAME1("l3-set_dir")
DO_GOTO;
}

LABEL(get_dir) /* get-dir ( c_addr1 u1 -- c_addr2 u2 ) S0 -- S0  */
/* Store the current directory in the buffer specified by @i{c-addr1, u1}.
If the buffer size is not sufficient, return 0 0 */
NAME("get-dir")
ip += 1;
LABEL1(get_dir)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
Char * c_addr2;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr1);
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
{
#line 2480 "prim"
c_addr2 = (Char *)getcwd((char *)c_addr1, u1);
if(c_addr2 != NULL) {
  u2 = strlen((char *)c_addr2);
} else {
  u2 = 0;
}
#line 13184 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr2=", vm_out); printarg_c_(c_addr2);
fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr2,sp[1]);
vm_u2Cell(u2,sp[0]);
LABEL2(get_dir)
NAME1("l2-get_dir")
NEXT_P1_5;
LABEL3(get_dir)
NAME1("l3-get_dir")
DO_GOTO;
}

LABEL(equals_mkdir) /* =mkdir ( c_addr u wmode -- wior ) S0 -- S0  */
/* Create directory @i{c-addr u} with mode @i{wmode}. */
NAME("=mkdir")
ip += 1;
LABEL1(equals_mkdir)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell wmode;
Cell wior;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2w(sp[0],wmode);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" wmode=", vm_out); printarg_w(wmode);
}
#endif
sp += 2;
{
#line 2489 "prim"
char * string = tilde_cstr(c_addr,u);
wior = IOR(mkdir(string,wmode));
free_l(string);
#line 13233 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(equals_mkdir)
NAME1("l2-equals_mkdir")
NEXT_P1_5;
LABEL3(equals_mkdir)
NAME1("l3-equals_mkdir")
DO_GOTO;
}

GROUPADD(10)
#endif
LABEL(newline) /* newline ( -- c_addr u ) S0 -- S0  */
/* String containing the newline sequence of the host OS */
NAME("newline")
ip += 1;
LABEL1(newline)
{
DEF_CA
Char * c_addr;
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -2;
{
#line 2497 "prim"
static const char newline[] = {
#if DIRSEP=='/'
/* Unix */
'\n'
#else
/* DOS, Win, OS/2 */
'\r','\n'
#endif
};
c_addr=(Char *)newline;
u=sizeof(newline);
#line 13282 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr,sp[1]);
vm_u2Cell(u,sp[0]);
LABEL2(newline)
NAME1("l2-newline")
NEXT_P1_5;
LABEL3(newline)
NAME1("l3-newline")
DO_GOTO;
}

GROUPADD(1)
#ifdef HAS_OS
LABEL(utime) /* utime ( -- dtime ) S0 -- S0  */
/* Report the current time in microseconds since some epoch.  Use @code{#1000000 um/mod nip} to convert to seconds */
NAME("utime")
ip += 1;
LABEL1(utime)
{
DEF_CA
DCell dtime;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -2;
{
#line 2516 "prim"
struct timeval time1;
gettimeofday(&time1,NULL);
dtime = timeval2us(&time1);
#line 13324 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" dtime=", vm_out); printarg_d(dtime);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(dtime, sp[1], sp[0])
LABEL2(utime)
NAME1("l2-utime")
NEXT_P1_5;
LABEL3(utime)
NAME1("l3-utime")
DO_GOTO;
}

LABEL(cputime) /* cputime ( -- duser dsystem ) S0 -- S0  */
/* duser and dsystem are the respective user- and system-level CPU
times used since the start of the Forth system (excluding child
processes), in microseconds (the granularity may be much larger,
however).  On platforms without the getrusage call, it reports elapsed
time (since some epoch) for duser and 0 for dsystem. */
NAME("cputime")
ip += 1;
LABEL1(cputime)
{
DEF_CA
DCell duser;
DCell dsystem;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -4;
{
#line 2526 "prim"
#ifdef HAVE_GETRUSAGE
struct rusage usage;
getrusage(RUSAGE_SELF, &usage);
duser = timeval2us(&usage.ru_utime);
dsystem = timeval2us(&usage.ru_stime);
#else
struct timeval time1;
gettimeofday(&time1,NULL);
duser = timeval2us(&time1);
dsystem = DZERO;
#endif
#line 13375 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" duser=", vm_out); printarg_d(duser);
fputs(" dsystem=", vm_out); printarg_d(dsystem);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(duser, sp[3], sp[2])
vm_d2twoCell(dsystem, sp[1], sp[0])
LABEL2(cputime)
NAME1("l2-cputime")
NEXT_P1_5;
LABEL3(cputime)
NAME1("l3-cputime")
DO_GOTO;
}

LABEL(ntime) /* ntime ( -- dtime ) S0 -- S0  */
/* Report the current time in nanoseconds since some epoch. */
NAME("ntime")
ip += 1;
LABEL1(ntime)
{
DEF_CA
DCell dtime;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -2;
{
#line 2540 "prim"
struct timespec time1;
#ifdef HAVE_CLOCK_GETTIME
clock_gettime(CLOCK_REALTIME,&time1);
#else
struct timeval time2;
gettimeofday(&time2,NULL);
time1.tv_sec = time2.tv_sec;
time1.tv_nsec = time2.tv_usec*1000;
#endif
dtime = timespec2ns(&time1);
#line 13422 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" dtime=", vm_out); printarg_d(dtime);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(dtime, sp[1], sp[0])
LABEL2(ntime)
NAME1("l2-ntime")
NEXT_P1_5;
LABEL3(ntime)
NAME1("l3-ntime")
DO_GOTO;
}

LABEL(paren_ns) /* (ns) ( uns nsec -- wior ) S0 -- S0  */
/* Wait for usec+uns, values precomputed in Forth */
NAME("(ns)")
ip += 1;
LABEL1(paren_ns)
{
DEF_CA
MAYBE_UNUSED UCell uns;
MAYBE_UNUSED Cell nsec;
Cell wior;
NEXT_P0;
vm_Cell2u(sp[1],uns);
vm_Cell2n(sp[0],nsec);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" uns=", vm_out); printarg_u(uns);
fputs(" nsec=", vm_out); printarg_n(nsec);
}
#endif
sp += 1;
{
#line 2553 "prim"
if(nsec >= 0) {
#if HAVE_PSELECT
  struct timespec tout = { nsec, uns };
  wior=IOR(pselect(0, NULL, NULL, NULL, &tout, NULL) < 0);
#else
  struct timeval tout = { nsec, uns/1000 };
  wior=IOR(select(0, NULL, NULL, NULL, &tout) < 0);
#endif
} else {
  wior = 0;
}
#line 13474 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" wior=", vm_out); printarg_w(wior);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(wior,sp[0]);
LABEL2(paren_ns)
NAME1("l2-paren_ns")
NEXT_P1_5;
LABEL3(paren_ns)
NAME1("l3-paren_ns")
DO_GOTO;
}

GROUPADD(4)
#endif
GROUPADD(0)
#ifdef HAS_FLOATING
GROUPADD(0)
GROUP( floating, 295)
LABEL(f_equals) /* f= ( r1 r2 -- f ) S0 -- S0  */
/*  */
NAME("f=")
ip += 1;
LABEL1(f_equals)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Bool f;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
sp += -1;
fp += 2;
{
#line 2571 "prim"
f = FLAG(r1==r2);
#line 2570
#line 13524 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_equals)
NAME1("l2-f_equals")
NEXT_P1_5;
LABEL3(f_equals)
NAME1("l3-f_equals")
DO_GOTO;
}

LABEL(f_not_equals) /* f<> ( r1 r2 -- f ) S0 -- S0  */
/*  */
NAME("f<>")
ip += 1;
LABEL1(f_not_equals)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Bool f;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
sp += -1;
fp += 2;
{
#line 2571 "prim"
f = FLAG(r1!=r2);
#line 2570
#line 13568 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_not_equals)
NAME1("l2-f_not_equals")
NEXT_P1_5;
LABEL3(f_not_equals)
NAME1("l3-f_not_equals")
DO_GOTO;
}

LABEL(f_less_than) /* f< ( r1 r2 -- f ) S0 -- S0  */
/*  */
NAME("f<")
ip += 1;
LABEL1(f_less_than)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Bool f;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
sp += -1;
fp += 2;
{
#line 2571 "prim"
f = FLAG(r1<r2);
#line 2570
#line 13612 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_less_than)
NAME1("l2-f_less_than")
NEXT_P1_5;
LABEL3(f_less_than)
NAME1("l3-f_less_than")
DO_GOTO;
}

LABEL(f_greater_than) /* f> ( r1 r2 -- f ) S0 -- S0  */
/*  */
NAME("f>")
ip += 1;
LABEL1(f_greater_than)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Bool f;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
sp += -1;
fp += 2;
{
#line 2571 "prim"
f = FLAG(r1>r2);
#line 2570
#line 13656 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_greater_than)
NAME1("l2-f_greater_than")
NEXT_P1_5;
LABEL3(f_greater_than)
NAME1("l3-f_greater_than")
DO_GOTO;
}

LABEL(f_less_or_equal) /* f<= ( r1 r2 -- f ) S0 -- S0  */
/*  */
NAME("f<=")
ip += 1;
LABEL1(f_less_or_equal)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Bool f;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
sp += -1;
fp += 2;
{
#line 2571 "prim"
f = FLAG(r1<=r2);
#line 2570
#line 13700 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_less_or_equal)
NAME1("l2-f_less_or_equal")
NEXT_P1_5;
LABEL3(f_less_or_equal)
NAME1("l3-f_less_or_equal")
DO_GOTO;
}

LABEL(f_greater_or_equal) /* f>= ( r1 r2 -- f ) S0 -- S0  */
/*  */
NAME("f>=")
ip += 1;
LABEL1(f_greater_or_equal)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Bool f;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
sp += -1;
fp += 2;
{
#line 2571 "prim"
f = FLAG(r1>=r2);
#line 2570
#line 13744 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_greater_or_equal)
NAME1("l2-f_greater_or_equal")
NEXT_P1_5;
LABEL3(f_greater_or_equal)
NAME1("l3-f_greater_or_equal")
DO_GOTO;
}

LABEL(f_zero_equals) /* f0= ( r -- f ) S0 -- S0  */
/*  */
NAME("f0=")
ip += 1;
LABEL1(f_zero_equals)
{
DEF_CA
MAYBE_UNUSED Float r;
Bool f;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
sp += -1;
fp += 1;
{
#line 2572 "prim"
f = FLAG(r==0.);
#line 2571
#line 13785 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_zero_equals)
NAME1("l2-f_zero_equals")
NEXT_P1_5;
LABEL3(f_zero_equals)
NAME1("l3-f_zero_equals")
DO_GOTO;
}

LABEL(f_zero_not_equals) /* f0<> ( r -- f ) S0 -- S0  */
/*  */
NAME("f0<>")
ip += 1;
LABEL1(f_zero_not_equals)
{
DEF_CA
MAYBE_UNUSED Float r;
Bool f;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
sp += -1;
fp += 1;
{
#line 2572 "prim"
f = FLAG(r!=0.);
#line 2571
#line 13826 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_zero_not_equals)
NAME1("l2-f_zero_not_equals")
NEXT_P1_5;
LABEL3(f_zero_not_equals)
NAME1("l3-f_zero_not_equals")
DO_GOTO;
}

LABEL(f_zero_less_than) /* f0< ( r -- f ) S0 -- S0  */
/*  */
NAME("f0<")
ip += 1;
LABEL1(f_zero_less_than)
{
DEF_CA
MAYBE_UNUSED Float r;
Bool f;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
sp += -1;
fp += 1;
{
#line 2572 "prim"
f = FLAG(r<0.);
#line 2571
#line 13867 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_zero_less_than)
NAME1("l2-f_zero_less_than")
NEXT_P1_5;
LABEL3(f_zero_less_than)
NAME1("l3-f_zero_less_than")
DO_GOTO;
}

LABEL(f_zero_greater_than) /* f0> ( r -- f ) S0 -- S0  */
/*  */
NAME("f0>")
ip += 1;
LABEL1(f_zero_greater_than)
{
DEF_CA
MAYBE_UNUSED Float r;
Bool f;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
sp += -1;
fp += 1;
{
#line 2572 "prim"
f = FLAG(r>0.);
#line 2571
#line 13908 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_zero_greater_than)
NAME1("l2-f_zero_greater_than")
NEXT_P1_5;
LABEL3(f_zero_greater_than)
NAME1("l3-f_zero_greater_than")
DO_GOTO;
}

LABEL(f_zero_less_or_equal) /* f0<= ( r -- f ) S0 -- S0  */
/*  */
NAME("f0<=")
ip += 1;
LABEL1(f_zero_less_or_equal)
{
DEF_CA
MAYBE_UNUSED Float r;
Bool f;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
sp += -1;
fp += 1;
{
#line 2572 "prim"
f = FLAG(r<=0.);
#line 2571
#line 13949 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_zero_less_or_equal)
NAME1("l2-f_zero_less_or_equal")
NEXT_P1_5;
LABEL3(f_zero_less_or_equal)
NAME1("l3-f_zero_less_or_equal")
DO_GOTO;
}

LABEL(f_zero_greater_or_equal) /* f0>= ( r -- f ) S0 -- S0  */
/*  */
NAME("f0>=")
ip += 1;
LABEL1(f_zero_greater_or_equal)
{
DEF_CA
MAYBE_UNUSED Float r;
Bool f;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
sp += -1;
fp += 1;
{
#line 2572 "prim"
f = FLAG(r>=0.);
#line 2571
#line 13990 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(f_zero_greater_or_equal)
NAME1("l2-f_zero_greater_or_equal")
NEXT_P1_5;
LABEL3(f_zero_greater_or_equal)
NAME1("l3-f_zero_greater_or_equal")
DO_GOTO;
}

LABEL(s_to_f) /* s>f ( n -- r ) S0 -- S0  */
/*  */
NAME("s>f")
ip += 1;
LABEL1(s_to_f)
{
DEF_CA
MAYBE_UNUSED Cell n;
Float r;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
fp += -1;
{
#line 2575 "prim"
r = n;
#line 14030 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(s_to_f)
NAME1("l2-s_to_f")
NEXT_P1_5;
LABEL3(s_to_f)
NAME1("l3-s_to_f")
DO_GOTO;
}

LABEL(d_to_f) /* d>f ( d -- r ) S0 -- S0  */
/*  */
NAME("d>f")
ip += 1;
LABEL1(d_to_f)
{
DEF_CA
MAYBE_UNUSED DCell d;
Float r;
NEXT_P0;
vm_twoCell2d(sp[1], sp[0], d)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" d=", vm_out); printarg_d(d);
}
#endif
sp += 2;
fp += -1;
{
#line 2578 "prim"
#ifdef BUGGY_LL_D2F
extern double ldexp(double x, int exp);
if (DHI(d)<0) {
#ifdef BUGGY_LL_ADD
  DCell d2=dnegate(d);
#else
  DCell d2=-d;
#endif
  r = -(ldexp((Float)DHI(d2),CELL_BITS) + (Float)DLO(d2));
} else
  r = ldexp((Float)DHI(d),CELL_BITS) + (Float)DLO(d);
#else
r = d;
#endif
#line 14083 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(d_to_f)
NAME1("l2-d_to_f")
NEXT_P1_5;
LABEL3(d_to_f)
NAME1("l3-d_to_f")
DO_GOTO;
}

LABEL(f_to_d) /* f>d ( r -- d ) S0 -- S0  */
/*  */
NAME("f>d")
ip += 1;
LABEL1(f_to_d)
{
DEF_CA
MAYBE_UNUSED Float r;
DCell d;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
sp += -2;
fp += 1;
{
#line 2594 "prim"
extern DCell double2ll(Float r);
d = double2ll(r);
#line 14124 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" d=", vm_out); printarg_d(d);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_d2twoCell(d, sp[1], sp[0])
LABEL2(f_to_d)
NAME1("l2-f_to_d")
NEXT_P1_5;
LABEL3(f_to_d)
NAME1("l3-f_to_d")
DO_GOTO;
}

LABEL(f_to_s) /* f>s ( r -- n ) S0 -- S0  */
/*  */
NAME("f>s")
ip += 1;
LABEL1(f_to_s)
{
DEF_CA
MAYBE_UNUSED Float r;
Cell n;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
sp += -1;
fp += 1;
{
#line 2598 "prim"
n = (Cell)r;
#line 14164 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(f_to_s)
NAME1("l2-f_to_s")
NEXT_P1_5;
LABEL3(f_to_s)
NAME1("l3-f_to_s")
DO_GOTO;
}

LABEL(f_store) /* f! ( r f_addr -- ) S0 -- S0  */
/* Store @i{r} into the float at address @i{f-addr}. */
NAME("f!")
ip += 1;
LABEL1(f_store)
{
DEF_CA
MAYBE_UNUSED Float r;
MAYBE_UNUSED Float * f_addr;
NEXT_P0;
vm_Float2r(fp[0],r);
vm_Cell2f_(sp[0],f_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
fputs(" f_addr=", vm_out); printarg_f_(f_addr);
}
#endif
sp += 1;
fp += 1;
{
#line 2602 "prim"
*f_addr = r;
#line 14206 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(f_store)
NAME1("l2-f_store")
NEXT_P1_5;
LABEL3(f_store)
NAME1("l3-f_store")
DO_GOTO;
}

LABEL(f_fetch) /* f@ ( f_addr -- r ) S0 -- S0  */
/* @i{r} is the float at address @i{f-addr}. */
NAME("f@")
ip += 1;
LABEL1(f_fetch)
{
DEF_CA
MAYBE_UNUSED Float * f_addr;
Float r;
NEXT_P0;
vm_Cell2f_(sp[0],f_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" f_addr=", vm_out); printarg_f_(f_addr);
}
#endif
sp += 1;
fp += -1;
{
#line 2606 "prim"
r = *f_addr;
#line 14244 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(f_fetch)
NAME1("l2-f_fetch")
NEXT_P1_5;
LABEL3(f_fetch)
NAME1("l3-f_fetch")
DO_GOTO;
}

LABEL(d_f_fetch) /* df@ ( df_addr -- r ) S0 -- S0  */
/* Fetch the double-precision IEEE floating-point value @i{r} from the address @i{df-addr}. */
NAME("df@")
ip += 1;
LABEL1(d_f_fetch)
{
DEF_CA
MAYBE_UNUSED DFloat * df_addr;
Float r;
NEXT_P0;
vm_Cell2df_(sp[0],df_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" df_addr=", vm_out); printarg_df_(df_addr);
}
#endif
sp += 1;
fp += -1;
{
#line 2610 "prim"
#ifdef IEEE_FP
r = *df_addr;
#else
!! df@
#endif
#line 14288 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(d_f_fetch)
NAME1("l2-d_f_fetch")
NEXT_P1_5;
LABEL3(d_f_fetch)
NAME1("l3-d_f_fetch")
DO_GOTO;
}

LABEL(d_f_store) /* df! ( r df_addr -- ) S0 -- S0  */
/* Store @i{r} as double-precision IEEE floating-point value to the
address @i{df-addr}. */
NAME("df!")
ip += 1;
LABEL1(d_f_store)
{
DEF_CA
MAYBE_UNUSED Float r;
MAYBE_UNUSED DFloat * df_addr;
NEXT_P0;
vm_Float2r(fp[0],r);
vm_Cell2df_(sp[0],df_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
fputs(" df_addr=", vm_out); printarg_df_(df_addr);
}
#endif
sp += 1;
fp += 1;
{
#line 2619 "prim"
#ifdef IEEE_FP
*df_addr = r;
#else
!! df!
#endif
#line 14335 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(d_f_store)
NAME1("l2-d_f_store")
NEXT_P1_5;
LABEL3(d_f_store)
NAME1("l3-d_f_store")
DO_GOTO;
}

LABEL(s_f_fetch) /* sf@ ( sf_addr -- r ) S0 -- S0  */
/* Fetch the single-precision IEEE floating-point value @i{r} from the address @i{sf-addr}. */
NAME("sf@")
ip += 1;
LABEL1(s_f_fetch)
{
DEF_CA
MAYBE_UNUSED SFloat * sf_addr;
Float r;
NEXT_P0;
vm_Cell2sf_(sp[0],sf_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
}
#endif
sp += 1;
fp += -1;
{
#line 2627 "prim"
#ifdef IEEE_FP
r = *sf_addr;
#else
!! sf@
#endif
#line 14377 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(s_f_fetch)
NAME1("l2-s_f_fetch")
NEXT_P1_5;
LABEL3(s_f_fetch)
NAME1("l3-s_f_fetch")
DO_GOTO;
}

LABEL(s_f_store) /* sf! ( r sf_addr -- ) S0 -- S0  */
/* Store @i{r} as single-precision IEEE floating-point value to the
address @i{sf-addr}. */
NAME("sf!")
ip += 1;
LABEL1(s_f_store)
{
DEF_CA
MAYBE_UNUSED Float r;
MAYBE_UNUSED SFloat * sf_addr;
NEXT_P0;
vm_Float2r(fp[0],r);
vm_Cell2sf_(sp[0],sf_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
}
#endif
sp += 1;
fp += 1;
{
#line 2636 "prim"
#ifdef IEEE_FP
*sf_addr = r;
#else
!! sf!
#endif
#line 14424 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(s_f_store)
NAME1("l2-s_f_store")
NEXT_P1_5;
LABEL3(s_f_store)
NAME1("l3-s_f_store")
DO_GOTO;
}

LABEL(f_plus) /* f+ ( r1 r2 -- r3 ) S0 -- S0  */
/*  */
NAME("f+")
ip += 1;
LABEL1(f_plus)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2643 "prim"
r3 = r1+r2;
#line 14464 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[0]);
LABEL2(f_plus)
NAME1("l2-f_plus")
NEXT_P1_5;
LABEL3(f_plus)
NAME1("l3-f_plus")
DO_GOTO;
}

LABEL(f_minus) /* f- ( r1 r2 -- r3 ) S0 -- S0  */
/*  */
NAME("f-")
ip += 1;
LABEL1(f_minus)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2646 "prim"
r3 = r1-r2;
#line 14506 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[0]);
LABEL2(f_minus)
NAME1("l2-f_minus")
NEXT_P1_5;
LABEL3(f_minus)
NAME1("l3-f_minus")
DO_GOTO;
}

LABEL(f_star) /* f* ( r1 r2 -- r3 ) S0 -- S0  */
/*  */
NAME("f*")
ip += 1;
LABEL1(f_star)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2649 "prim"
r3 = r1*r2;
#line 14548 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[0]);
LABEL2(f_star)
NAME1("l2-f_star")
NEXT_P1_5;
LABEL3(f_star)
NAME1("l3-f_star")
DO_GOTO;
}

LABEL(f_slash) /* f/ ( r1 r2 -- r3 ) S0 -- S0  */
/*  */
NAME("f/")
ip += 1;
LABEL1(f_slash)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2652 "prim"
r3 = r1/r2;
#line 14590 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[0]);
LABEL2(f_slash)
NAME1("l2-f_slash")
NEXT_P1_5;
LABEL3(f_slash)
NAME1("l3-f_slash")
DO_GOTO;
}

LABEL(f_star_star) /* f** ( r1 r2 -- r3 ) S0 -- S0  */
/* @i{r3} = @i{r1}@sup{@i{r2}} */
NAME("f**")
ip += 1;
LABEL1(f_star_star)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2656 "prim"
CLOBBER_TOS_WORKAROUND_START;
r3 = pow(r1,r2);
CLOBBER_TOS_WORKAROUND_END;
#line 14634 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[0]);
LABEL2(f_star_star)
NAME1("l2-f_star_star")
NEXT_P1_5;
LABEL3(f_star_star)
NAME1("l3-f_star_star")
DO_GOTO;
}

LABEL(fm_star) /* fm* ( r1 n -- r2 ) S0 -- S0  */
/*  */
NAME("fm*")
ip += 1;
LABEL1(fm_star)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Cell n;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
{
#line 2661 "prim"
r2 = r1*n;
#line 14676 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(fm_star)
NAME1("l2-fm_star")
NEXT_P1_5;
LABEL3(fm_star)
NAME1("l3-fm_star")
DO_GOTO;
}

LABEL(fm_slash) /* fm/ ( r1 n -- r2 ) S0 -- S0  */
/*  */
NAME("fm/")
ip += 1;
LABEL1(fm_slash)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Cell n;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
{
#line 2664 "prim"
r2 = r1/n;
#line 14718 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(fm_slash)
NAME1("l2-fm_slash")
NEXT_P1_5;
LABEL3(fm_slash)
NAME1("l3-fm_slash")
DO_GOTO;
}

LABEL(fm_star_slash) /* fmx/ ( r1 n1 n2 -- r2 ) S0 -- S0  */
/*  */
NAME("fm*/")
ip += 1;
LABEL1(fm_star_slash)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Cell n1;
MAYBE_UNUSED Cell n2;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
vm_Cell2n(sp[1],n1);
vm_Cell2n(sp[0],n2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" n1=", vm_out); printarg_n(n1);
fputs(" n2=", vm_out); printarg_n(n2);
}
#endif
sp += 2;
{
#line 2667 "prim"
r2 = (r1*n1)/n2;
#line 14763 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(fm_star_slash)
NAME1("l2-fm_star_slash")
NEXT_P1_5;
LABEL3(fm_star_slash)
NAME1("l3-fm_star_slash")
DO_GOTO;
}

LABEL(fm_square) /* f**2 ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("f**2")
ip += 1;
LABEL1(fm_square)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2670 "prim"
r2 = r1*r1;
#line 14801 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(fm_square)
NAME1("l2-fm_square")
NEXT_P1_5;
LABEL3(fm_square)
NAME1("l3-fm_square")
DO_GOTO;
}

LABEL(f_negate) /* fnegate ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fnegate")
ip += 1;
LABEL1(f_negate)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2673 "prim"
r2 = - r1;
#line 14839 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_negate)
NAME1("l2-f_negate")
NEXT_P1_5;
LABEL3(f_negate)
NAME1("l3-f_negate")
DO_GOTO;
}

LABEL(f_drop) /* fdrop ( r -- ) S0 -- S0  */
/*  */
NAME("fdrop")
ip += 1;
LABEL1(f_drop)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 2676 "prim"
ALIVE_DEBUGGING(r);
#line 14877 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(f_drop)
NAME1("l2-f_drop")
NEXT_P1_5;
LABEL3(f_drop)
NAME1("l3-f_drop")
DO_GOTO;
}

LABEL(f_dupe) /* fdup ( r -- r r ) S0 -- S0  */
/*  */
NAME("fdup")
ip += 1;
LABEL1(f_dupe)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += -1;
{
#line 2679 "prim"
#line 14912 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(f_dupe)
NAME1("l2-f_dupe")
NEXT_P1_5;
LABEL3(f_dupe)
NAME1("l3-f_dupe")
DO_GOTO;
}

LABEL(f_swap) /* fswap ( r1 r2 -- r2 r1 ) S0 -- S0  */
/*  */
NAME("fswap")
ip += 1;
LABEL1(f_swap)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
{
#line 2681 "prim"
#line 14950 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[1]);
vm_r2Float(r1,fp[0]);
LABEL2(f_swap)
NAME1("l2-f_swap")
NEXT_P1_5;
LABEL3(f_swap)
NAME1("l3-f_swap")
DO_GOTO;
}

LABEL(f_over) /* fover ( r1 r2 -- r1 r2 r1 ) S0 -- S0  */
/*  */
NAME("fover")
ip += 1;
LABEL1(f_over)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += -1;
{
#line 2683 "prim"
#line 14990 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r1,fp[0]);
LABEL2(f_over)
NAME1("l2-f_over")
NEXT_P1_5;
LABEL3(f_over)
NAME1("l3-f_over")
DO_GOTO;
}

LABEL(f_rote) /* frot ( r1 r2 r3 -- r2 r3 r1 ) S0 -- S0  */
/*  */
NAME("frot")
ip += 1;
LABEL1(f_rote)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
MAYBE_UNUSED Float r3;
NEXT_P0;
vm_Float2r(fp[2],r1);
vm_Float2r(fp[1],r2);
vm_Float2r(fp[0],r3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
fputs(" r3=", vm_out); printarg_r(r3);
}
#endif
{
#line 2685 "prim"
#line 15031 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[2]);
vm_r2Float(r3,fp[1]);
vm_r2Float(r1,fp[0]);
LABEL2(f_rote)
NAME1("l2-f_rote")
NEXT_P1_5;
LABEL3(f_rote)
NAME1("l3-f_rote")
DO_GOTO;
}

LABEL(f_nip) /* fnip ( r1 r2 -- r2 ) S0 -- S0  */
/*  */
NAME("fnip")
ip += 1;
LABEL1(f_nip)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2687 "prim"
#line 15072 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_nip)
NAME1("l2-f_nip")
NEXT_P1_5;
LABEL3(f_nip)
NAME1("l3-f_nip")
DO_GOTO;
}

LABEL(f_tuck) /* ftuck ( r1 r2 -- r2 r1 r2 ) S0 -- S0  */
/*  */
NAME("ftuck")
ip += 1;
LABEL1(f_tuck)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += -1;
{
#line 2689 "prim"
#line 15111 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[2]);
vm_r2Float(r1,fp[1]);
vm_r2Float(r2,fp[0]);
LABEL2(f_tuck)
NAME1("l2-f_tuck")
NEXT_P1_5;
LABEL3(f_tuck)
NAME1("l3-f_tuck")
DO_GOTO;
}

LABEL(float_plus) /* float+ ( f_addr1 -- f_addr2 ) S0 -- S0  */
/* @code{1 floats +}. */
NAME("float+")
ip += 1;
LABEL1(float_plus)
{
DEF_CA
MAYBE_UNUSED Float * f_addr1;
Float * f_addr2;
NEXT_P0;
vm_Cell2f_(sp[0],f_addr1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" f_addr1=", vm_out); printarg_f_(f_addr1);
}
#endif
{
#line 2692 "prim"
f_addr2 = f_addr1+1;
#line 15150 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f_addr2=", vm_out); printarg_f_(f_addr2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f_2Cell(f_addr2,sp[0]);
LABEL2(float_plus)
NAME1("l2-float_plus")
NEXT_P1_5;
LABEL3(float_plus)
NAME1("l3-float_plus")
DO_GOTO;
}

LABEL(floats) /* floats ( n1 -- n2 ) S0 -- S0  */
/* @i{n2} is the number of address units of @i{n1} floats. */
NAME("floats")
ip += 1;
LABEL1(floats)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 2696 "prim"
n2 = n1*sizeof(Float);
#line 15188 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(floats)
NAME1("l2-floats")
NEXT_P1_5;
LABEL3(floats)
NAME1("l3-floats")
DO_GOTO;
}

LABEL(floor) /* floor ( r1 -- r2 ) S0 -- S0  */
/* Round towards the next smaller integral value, i.e., round toward negative infinity. */
NAME("floor")
ip += 1;
LABEL1(floor)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2700 "prim"
/* !! unclear wording */
CLOBBER_TOS_WORKAROUND_START;
r2 = floor(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15229 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(floor)
NAME1("l2-floor")
NEXT_P1_5;
LABEL3(floor)
NAME1("l3-floor")
DO_GOTO;
}

LABEL(f_round) /* fround ( r1 -- r2 ) S0 -- S0  */
/* Round to the nearest integral value. */
NAME("fround")
ip += 1;
LABEL1(f_round)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2707 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = rint(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15269 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_round)
NAME1("l2-f_round")
NEXT_P1_5;
LABEL3(f_round)
NAME1("l3-f_round")
DO_GOTO;
}

LABEL(f_max) /* fmax ( r1 r2 -- r3 ) S0 -- S0  */
/*  */
NAME("fmax")
ip += 1;
LABEL1(f_max)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2712 "prim"
if (r1<r2)
  r3 = r2;
else
  r3 = r1;
#line 15314 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[0]);
LABEL2(f_max)
NAME1("l2-f_max")
NEXT_P1_5;
LABEL3(f_max)
NAME1("l3-f_max")
DO_GOTO;
}

LABEL(f_min) /* fmin ( r1 r2 -- r3 ) S0 -- S0  */
/*  */
NAME("fmin")
ip += 1;
LABEL1(f_min)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2718 "prim"
if (r1<r2)
  r3 = r1;
else
  r3 = r2;
#line 15359 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[0]);
LABEL2(f_min)
NAME1("l2-f_min")
NEXT_P1_5;
LABEL3(f_min)
NAME1("l3-f_min")
DO_GOTO;
}

LABEL(represent) /* represent ( r c_addr u -- n f1 f2 ) S0 -- S0  */
/* Convert the decimal significand (aka mantissa) of @i{r} into a
string in buffer @i{c-addr u}; @i{n} is the exponent, @i{f1} is true
if @i{r} is negative, and @i{f2} is true if @i{r} is valid (a finite
number in Gforth). */
NAME("represent")
ip += 1;
LABEL1(represent)
{
DEF_CA
MAYBE_UNUSED Float r;
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
Cell n;
Bool f1;
Bool f2;
NEXT_P0;
vm_Float2r(fp[0],r);
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += -1;
fp += 1;
{
#line 2728 "prim"
#ifdef ECVT_FLAG
char sig[0x40];
size_t siglen;
int flag;
int decpt=0;
switch (fpclassify(r)) {
 case FP_INFINITE:  strncpy(sig, "infinite", 0x3f);  break;
 case FP_NAN:       strncpy(sig, "NaN", 0x3f); break;
 case FP_ZERO:
 case FP_SUBNORMAL:
 case FP_NORMAL:
   ecvt_r(r, u, &decpt, &flag, sig, 0x3f);
}
n=(r==0. ? 1 : decpt);
flag=signbit(r); /* not all ecvt()s do this as desired */
f1=FLAG(flag!=0);
f2=FLAG(isdigit((unsigned)(sig[0]))!=0);
siglen=strlen((char *)sig);
if (siglen>u) /* happens in glibc-2.1.3 if 999.. is rounded up */
  siglen=u;
if (!f2) /* workaround Cygwin trailing 0s for Inf and Nan */
  for (; sig[siglen-1]=='0'; siglen--);
    ;
memmove(c_addr,sig,siglen);
memset(c_addr+siglen,f2?'0':' ',u-siglen);
#else
struct Cellpair fs = represent(r, c_addr, u, &n);
f1 = fs.n1;
f2 = fs.n2;
#endif
#line 15439 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputs(" f1=", vm_out); printarg_f(f1);
fputs(" f2=", vm_out); printarg_f(f2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[2]);
vm_f2Cell(f1,sp[1]);
vm_f2Cell(f2,sp[0]);
LABEL2(represent)
NAME1("l2-represent")
NEXT_P1_5;
LABEL3(represent)
NAME1("l3-represent")
DO_GOTO;
}

LABEL(to_float) /* >float ( c_addr u -- f:... flag ) S0 -- S0  */
/* Actual stack effect: ( c_addr u -- r t | f ).  Attempt to convert the
character string @i{c-addr u} to internal floating-point
representation. If the string represents a valid floating-point number,
@i{r} is placed on the floating-point stack and @i{flag} is
true. Otherwise, @i{flag} is false. A string of blanks is a special
case and represents the floating-point number 0. */
NAME(">float")
ip += 1;
LABEL1(to_float)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
Bool flag;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 2766 "prim"
Float r;
flag = to_float(c_addr, u, &r, '.');
if (flag) {
  fp--;
  fp[0]=r;
}
#line 15495 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" flag=", vm_out); printarg_f(flag);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(flag,sp[0]);
LABEL2(to_float)
NAME1("l2-to_float")
NEXT_P1_5;
LABEL3(to_float)
NAME1("l3-to_float")
DO_GOTO;
}

LABEL(f_abs) /* fabs ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fabs")
ip += 1;
LABEL1(f_abs)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2774 "prim"
r2 = fabs(r1);
#line 15533 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_abs)
NAME1("l2-f_abs")
NEXT_P1_5;
LABEL3(f_abs)
NAME1("l3-f_abs")
DO_GOTO;
}

LABEL(f_a_cos) /* facos ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("facos")
ip += 1;
LABEL1(f_a_cos)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2777 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = acos(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15573 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_a_cos)
NAME1("l2-f_a_cos")
NEXT_P1_5;
LABEL3(f_a_cos)
NAME1("l3-f_a_cos")
DO_GOTO;
}

LABEL(f_a_sine) /* fasin ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fasin")
ip += 1;
LABEL1(f_a_sine)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2782 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = asin(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15613 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_a_sine)
NAME1("l2-f_a_sine")
NEXT_P1_5;
LABEL3(f_a_sine)
NAME1("l3-f_a_sine")
DO_GOTO;
}

LABEL(f_a_tan) /* fatan ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fatan")
ip += 1;
LABEL1(f_a_tan)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2787 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = atan(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15653 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_a_tan)
NAME1("l2-f_a_tan")
NEXT_P1_5;
LABEL3(f_a_tan)
NAME1("l3-f_a_tan")
DO_GOTO;
}

LABEL(f_a_tan_two) /* fatan2 ( r1 r2 -- r3 ) S0 -- S0  */
/* @i{r1/r2}=tan(@i{r3}). Forth-2012 does not require, but probably
intends this to be the inverse of @code{fsincos}. In Gforth it is. */
NAME("fatan2")
ip += 1;
LABEL1(f_a_tan_two)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[1],r1);
vm_Float2r(fp[0],r2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
}
#endif
fp += 1;
{
#line 2794 "prim"
CLOBBER_TOS_WORKAROUND_START;
r3 = atan2(r1,r2);
CLOBBER_TOS_WORKAROUND_END;
#line 15698 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[0]);
LABEL2(f_a_tan_two)
NAME1("l2-f_a_tan_two")
NEXT_P1_5;
LABEL3(f_a_tan_two)
NAME1("l3-f_a_tan_two")
DO_GOTO;
}

LABEL(f_cos) /* fcos ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fcos")
ip += 1;
LABEL1(f_cos)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2799 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = cos(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15738 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_cos)
NAME1("l2-f_cos")
NEXT_P1_5;
LABEL3(f_cos)
NAME1("l3-f_cos")
DO_GOTO;
}

LABEL(f_e_x_p) /* fexp ( r1 -- r2 ) S0 -- S0  */
/* @i{r2} = e@sup{@i{r1}} */
NAME("fexp")
ip += 1;
LABEL1(f_e_x_p)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2805 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = exp(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15778 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_e_x_p)
NAME1("l2-f_e_x_p")
NEXT_P1_5;
LABEL3(f_e_x_p)
NAME1("l3-f_e_x_p")
DO_GOTO;
}

LABEL(f_e_x_p_m_one) /* fexpm1 ( r1 -- r2 ) S0 -- S0  */
/* @i{r2}=e@sup{@i{r1}}@minus{}1 */
NAME("fexpm1")
ip += 1;
LABEL1(f_e_x_p_m_one)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2811 "prim"
#ifdef HAVE_EXPM1
extern double
#ifdef NeXT
              const
#endif
                    expm1(double);
CLOBBER_TOS_WORKAROUND_START;
r2 = expm1(r1);
#else
r2 = exp(r1)-1.;
#endif
CLOBBER_TOS_WORKAROUND_END;
#line 15827 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_e_x_p_m_one)
NAME1("l2-f_e_x_p_m_one")
NEXT_P1_5;
LABEL3(f_e_x_p_m_one)
NAME1("l3-f_e_x_p_m_one")
DO_GOTO;
}

LABEL(f_l_n) /* fln ( r1 -- r2 ) S0 -- S0  */
/* Natural logarithm: @i{r1} = e@sup{@i{r2}} */
NAME("fln")
ip += 1;
LABEL1(f_l_n)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2826 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = log(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15867 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_l_n)
NAME1("l2-f_l_n")
NEXT_P1_5;
LABEL3(f_l_n)
NAME1("l3-f_l_n")
DO_GOTO;
}

LABEL(f_l_n_p_one) /* flnp1 ( r1 -- r2 ) S0 -- S0  */
/* Inverse of @code{fexpm1}: @i{r1}+1 = e@sup{r2} */
NAME("flnp1")
ip += 1;
LABEL1(f_l_n_p_one)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2832 "prim"
#ifdef HAVE_LOG1P
extern double
#ifdef NeXT
              const
#endif
                    log1p(double);
CLOBBER_TOS_WORKAROUND_START;
r2 = log1p(r1);
#else
r2 = log(r1+1.);
#endif
CLOBBER_TOS_WORKAROUND_END;
#line 15916 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_l_n_p_one)
NAME1("l2-f_l_n_p_one")
NEXT_P1_5;
LABEL3(f_l_n_p_one)
NAME1("l3-f_l_n_p_one")
DO_GOTO;
}

LABEL(f_log) /* flog ( r1 -- r2 ) S0 -- S0  */
/* The decimal logarithm: @i{r1} = 10@sup{@i{r2}} */
NAME("flog")
ip += 1;
LABEL1(f_log)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2847 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = log10(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15956 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_log)
NAME1("l2-f_log")
NEXT_P1_5;
LABEL3(f_log)
NAME1("l3-f_log")
DO_GOTO;
}

LABEL(f_a_log) /* falog ( r1 -- r2 ) S0 -- S0  */
/* @i{r2}=10@sup{@i{r1}} */
NAME("falog")
ip += 1;
LABEL1(f_a_log)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2853 "prim"
extern double exp10(double);
CLOBBER_TOS_WORKAROUND_START;
r2 = exp10(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 15997 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_a_log)
NAME1("l2-f_a_log")
NEXT_P1_5;
LABEL3(f_a_log)
NAME1("l3-f_a_log")
DO_GOTO;
}

LABEL(f_sine) /* fsin ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fsin")
ip += 1;
LABEL1(f_sine)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2859 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = sin(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16037 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_sine)
NAME1("l2-f_sine")
NEXT_P1_5;
LABEL3(f_sine)
NAME1("l3-f_sine")
DO_GOTO;
}

LABEL(f_sine_cos) /* fsincos ( r1 -- r2 r3 ) S0 -- S0  */
/* @i{r2}=sin(@i{r1}), @i{r3}=cos(@i{r1}) */
NAME("fsincos")
ip += 1;
LABEL1(f_sine_cos)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
Float r3;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
fp += -1;
{
#line 2865 "prim"
CLOBBER_TOS_WORKAROUND_START;
sincos(r1, &r2, &r3);
CLOBBER_TOS_WORKAROUND_END;
#line 16079 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputs(" r3=", vm_out); printarg_r(r3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[1]);
vm_r2Float(r3,fp[0]);
LABEL2(f_sine_cos)
NAME1("l2-f_sine_cos")
NEXT_P1_5;
LABEL3(f_sine_cos)
NAME1("l3-f_sine_cos")
DO_GOTO;
}

LABEL(f_square_root) /* fsqrt ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fsqrt")
ip += 1;
LABEL1(f_square_root)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2870 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = sqrt(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16121 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_square_root)
NAME1("l2-f_square_root")
NEXT_P1_5;
LABEL3(f_square_root)
NAME1("l3-f_square_root")
DO_GOTO;
}

LABEL(f_tan) /* ftan ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("ftan")
ip += 1;
LABEL1(f_tan)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2875 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = tan(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16161 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_tan)
NAME1("l2-f_tan")
NEXT_P1_5;
LABEL3(f_tan)
NAME1("l3-f_tan")
DO_GOTO;
}

LABEL(f_cinch) /* fsinh ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fsinh")
ip += 1;
LABEL1(f_cinch)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2882 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = sinh(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16201 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_cinch)
NAME1("l2-f_cinch")
NEXT_P1_5;
LABEL3(f_cinch)
NAME1("l3-f_cinch")
DO_GOTO;
}

LABEL(f_cosh) /* fcosh ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fcosh")
ip += 1;
LABEL1(f_cosh)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2889 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = cosh(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16241 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_cosh)
NAME1("l2-f_cosh")
NEXT_P1_5;
LABEL3(f_cosh)
NAME1("l3-f_cosh")
DO_GOTO;
}

LABEL(f_tan_h) /* ftanh ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("ftanh")
ip += 1;
LABEL1(f_tan_h)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2896 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = tanh(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16281 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_tan_h)
NAME1("l2-f_tan_h")
NEXT_P1_5;
LABEL3(f_tan_h)
NAME1("l3-f_tan_h")
DO_GOTO;
}

LABEL(f_a_cinch) /* fasinh ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fasinh")
ip += 1;
LABEL1(f_a_cinch)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2903 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = asinh(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16321 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_a_cinch)
NAME1("l2-f_a_cinch")
NEXT_P1_5;
LABEL3(f_a_cinch)
NAME1("l3-f_a_cinch")
DO_GOTO;
}

LABEL(f_a_cosh) /* facosh ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("facosh")
ip += 1;
LABEL1(f_a_cosh)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2910 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = acosh(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16361 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_a_cosh)
NAME1("l2-f_a_cosh")
NEXT_P1_5;
LABEL3(f_a_cosh)
NAME1("l3-f_a_cosh")
DO_GOTO;
}

LABEL(f_a_tan_h) /* fatanh ( r1 -- r2 ) S0 -- S0  */
/*  */
NAME("fatanh")
ip += 1;
LABEL1(f_a_tan_h)
{
DEF_CA
MAYBE_UNUSED Float r1;
Float r2;
NEXT_P0;
vm_Float2r(fp[0],r1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
}
#endif
{
#line 2917 "prim"
CLOBBER_TOS_WORKAROUND_START;
r2 = atanh(r1);
CLOBBER_TOS_WORKAROUND_END;
#line 16401 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r2=", vm_out); printarg_r(r2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r2,fp[0]);
LABEL2(f_a_tan_h)
NAME1("l2-f_a_tan_h")
NEXT_P1_5;
LABEL3(f_a_tan_h)
NAME1("l3-f_a_tan_h")
DO_GOTO;
}

LABEL(s_floats) /* sfloats ( n1 -- n2 ) S0 -- S0  */
/* @i{n2} is the number of address units of @i{n1}
single-precision IEEE floating-point numbers. */
NAME("sfloats")
ip += 1;
LABEL1(s_floats)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 2927 "prim"
n2 = n1*sizeof(SFloat);
#line 16440 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(s_floats)
NAME1("l2-s_floats")
NEXT_P1_5;
LABEL3(s_floats)
NAME1("l3-s_floats")
DO_GOTO;
}

LABEL(d_floats) /* dfloats ( n1 -- n2 ) S0 -- S0  */
/* @i{n2} is the number of address units of @i{n1}
double-precision IEEE floating-point numbers. */
NAME("dfloats")
ip += 1;
LABEL1(d_floats)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 2932 "prim"
n2 = n1*sizeof(DFloat);
#line 16479 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(d_floats)
NAME1("l2-d_floats")
NEXT_P1_5;
LABEL3(d_floats)
NAME1("l3-d_floats")
DO_GOTO;
}

LABEL(s_f_aligned) /* sfaligned ( c_addr -- sf_addr ) S0 -- S0  */
/* @i{sf-addr} is the first single-float-aligned address greater
than or equal to @i{c-addr}. */
NAME("sfaligned")
ip += 1;
LABEL1(s_f_aligned)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
SFloat * sf_addr;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
{
#line 2937 "prim"
sf_addr = (SFloat *)((((Cell)c_addr)+(sizeof(SFloat)-1))&(-sizeof(SFloat)));
#line 16518 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(s_f_aligned)
NAME1("l2-s_f_aligned")
NEXT_P1_5;
LABEL3(s_f_aligned)
NAME1("l3-s_f_aligned")
DO_GOTO;
}

LABEL(d_f_aligned) /* dfaligned ( c_addr -- df_addr ) S0 -- S0  */
/* @i{df-addr} is the first double-float-aligned address greater
than or equal to @i{c-addr}. */
NAME("dfaligned")
ip += 1;
LABEL1(d_f_aligned)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
DFloat * df_addr;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
{
#line 2944 "prim"
df_addr = (DFloat *)((((Cell)c_addr)+(sizeof(DFloat)-1))&(-sizeof(DFloat)));
#line 16557 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" df_addr=", vm_out); printarg_df_(df_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_df_2Cell(df_addr,sp[0]);
LABEL2(d_f_aligned)
NAME1("l2-d_f_aligned")
NEXT_P1_5;
LABEL3(d_f_aligned)
NAME1("l3-d_f_aligned")
DO_GOTO;
}

LABEL(v_star) /* v* ( f_addr1 nstride1 f_addr2 nstride2 ucount -- r ) S0 -- S0  */
/* dot-product: r=v1*v2.  The first element of v1 is at f_addr1, the
next at f_addr1+nstride1 and so on (similar for v2). Both vectors have
ucount elements. */
NAME("v*")
ip += 1;
LABEL1(v_star)
{
DEF_CA
MAYBE_UNUSED Float * f_addr1;
MAYBE_UNUSED Cell nstride1;
MAYBE_UNUSED Float * f_addr2;
MAYBE_UNUSED Cell nstride2;
MAYBE_UNUSED UCell ucount;
Float r;
NEXT_P0;
vm_Cell2f_(sp[4],f_addr1);
vm_Cell2n(sp[3],nstride1);
vm_Cell2f_(sp[2],f_addr2);
vm_Cell2n(sp[1],nstride2);
vm_Cell2u(sp[0],ucount);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" f_addr1=", vm_out); printarg_f_(f_addr1);
fputs(" nstride1=", vm_out); printarg_n(nstride1);
fputs(" f_addr2=", vm_out); printarg_f_(f_addr2);
fputs(" nstride2=", vm_out); printarg_n(nstride2);
fputs(" ucount=", vm_out); printarg_u(ucount);
}
#endif
sp += 5;
fp += -1;
{
#line 2952 "prim"
r = v_star(f_addr1, nstride1, f_addr2, nstride2, ucount);
#line 16611 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(v_star)
NAME1("l2-v_star")
NEXT_P1_5;
LABEL3(v_star)
NAME1("l3-v_star")
DO_GOTO;
}

LABEL(faxpy) /* faxpy ( ra f_x nstridex f_y nstridey ucount -- ) S0 -- S0  */
/* vy=ra*vx+vy, where @i{vy} is the vector starting at @i{f_y} with
stride @i{nstridey} bytes, and @i{vx} is the vector starting at
@i{f_x} with stride @i{nstridex}, and both vectors contain @i{ucount
elements}. */
NAME("faxpy")
ip += 1;
LABEL1(faxpy)
{
DEF_CA
MAYBE_UNUSED Float ra;
MAYBE_UNUSED Float * f_x;
MAYBE_UNUSED Cell nstridex;
MAYBE_UNUSED Float * f_y;
MAYBE_UNUSED Cell nstridey;
MAYBE_UNUSED UCell ucount;
NEXT_P0;
vm_Float2r(fp[0],ra);
vm_Cell2f_(sp[4],f_x);
vm_Cell2n(sp[3],nstridex);
vm_Cell2f_(sp[2],f_y);
vm_Cell2n(sp[1],nstridey);
vm_Cell2u(sp[0],ucount);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ra=", vm_out); printarg_r(ra);
fputs(" f_x=", vm_out); printarg_f_(f_x);
fputs(" nstridex=", vm_out); printarg_n(nstridex);
fputs(" f_y=", vm_out); printarg_f_(f_y);
fputs(" nstridey=", vm_out); printarg_n(nstridey);
fputs(" ucount=", vm_out); printarg_u(ucount);
}
#endif
sp += 5;
fp += 1;
{
#line 2963 "prim"
faxpy(ra, f_x, nstridex, f_y, nstridey, ucount);
#line 16668 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(faxpy)
NAME1("l2-faxpy")
NEXT_P1_5;
LABEL3(faxpy)
NAME1("l3-faxpy")
DO_GOTO;
}

LABEL(to_float1) /* >float1 ( c_addr u c -- f:... flag ) S0 -- S0  */
/* Actual stack effect: ( c_addr u c -- r t | f ).  Attempt to convert the
character string @i{c-addr u} to internal floating-point
representation, with @i{c} being the decimal separator.
If the string represents a valid floating-point number,
@i{r} is placed on the floating-point stack and @i{flag} is
true. Otherwise, @i{flag} is false. A string of blanks is a special
case and represents the floating-point number 0. */
NAME(">float1")
ip += 1;
LABEL1(to_float1)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Char c;
Bool flag;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr);
vm_Cell2u(sp[1],u);
vm_Cell2c(sp[0],c);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" c=", vm_out); printarg_c(c);
}
#endif
sp += 2;
{
#line 2977 "prim"
Float r;
flag = to_float(c_addr, u, &r, c);
if (flag) {
  fp--;
  fp[0]=r;
}
#line 16722 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" flag=", vm_out); printarg_f(flag);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(flag,sp[0]);
LABEL2(to_float1)
NAME1("l2-to_float1")
NEXT_P1_5;
LABEL3(to_float1)
NAME1("l3-to_float1")
DO_GOTO;
}

LABEL(float_divide) /* float/ ( n1 -- n2 ) S0 -- S0  */
/* @i{N2} is the number of floats that fit into @i{n1} aus, rounded
towards negative infinity. */
NAME("float/")
ip += 1;
LABEL1(float_divide)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 2987 "prim"
BUILD_BUG_ON(sizeof(Float)!=8);
n2 = n1 >> 3;
#line 16762 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(float_divide)
NAME1("l2-float_divide")
NEXT_P1_5;
LABEL3(float_divide)
NAME1("l3-float_divide")
DO_GOTO;
}

LABEL(d_float_divide) /* dfloat/ ( n1 -- n2 ) S0 -- S0  */
/* @i{N2} is the number of dfloats that fit into @i{n1} aus, rounded
towards negative infinity. */
NAME("dfloat/")
ip += 1;
LABEL1(d_float_divide)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 2993 "prim"
BUILD_BUG_ON(sizeof(DFloat)!=8);
n2 = n1 >> 3;
#line 16802 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(d_float_divide)
NAME1("l2-d_float_divide")
NEXT_P1_5;
LABEL3(d_float_divide)
NAME1("l3-d_float_divide")
DO_GOTO;
}

LABEL(s_float_divide) /* sfloat/ ( n1 -- n2 ) S0 -- S0  */
/* @i{N2} is the number of sfloats that fit into @i{n1} aus, rounded
towards negative infinity. */
NAME("sfloat/")
ip += 1;
LABEL1(s_float_divide)
{
DEF_CA
MAYBE_UNUSED Cell n1;
Cell n2;
NEXT_P0;
vm_Cell2n(sp[0],n1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n1=", vm_out); printarg_n(n1);
}
#endif
{
#line 2999 "prim"
BUILD_BUG_ON(sizeof(SFloat)!=4);
n2 = n1 >> 2;
#line 16842 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n2=", vm_out); printarg_n(n2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n2,sp[0]);
LABEL2(s_float_divide)
NAME1("l2-s_float_divide")
NEXT_P1_5;
LABEL3(s_float_divide)
NAME1("l3-s_float_divide")
DO_GOTO;
}

LABEL(f_not_rote) /* f-rot ( r1 r2 r3 -- r3 r1 r2 ) S0 -- S0  */
/*  */
NAME("f-rot")
ip += 1;
LABEL1(f_not_rote)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
MAYBE_UNUSED Float r3;
NEXT_P0;
vm_Float2r(fp[2],r1);
vm_Float2r(fp[1],r2);
vm_Float2r(fp[0],r3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
fputs(" r3=", vm_out); printarg_r(r3);
}
#endif
{
#line 3003 "prim"
#line 16884 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r3,fp[2]);
vm_r2Float(r1,fp[1]);
vm_r2Float(r2,fp[0]);
LABEL2(f_not_rote)
NAME1("l2-f_not_rote")
NEXT_P1_5;
LABEL3(f_not_rote)
NAME1("l3-f_not_rote")
DO_GOTO;
}

LABEL(flit) /* flit ( #w -- r ) S0 -- S0  */
/*  */
NAME("flit")
ip += 2;
LABEL1(flit)
{
DEF_CA
MAYBE_UNUSED Cell w;
Float r;
NEXT_P0;
vm_Cell2w(IMM_ARG(IP[-1],305397803 ),w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
fp += -1;
{
#line 3005 "prim"
/* For 64 bit systems: a float is just one word */
union { Cell u; Float r; } cv;
cv.u = w;
r = cv.r;
#line 16927 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(flit)
NAME1("l2-flit")
NEXT_P1_5;
LABEL3(flit)
NAME1("l3-flit")
DO_GOTO;
}

LABEL(flit0) /* flit0 ( #w0 #w1 -- r ) S0 -- S0  */
/*  */
NAME("flit0")
ip += 3;
LABEL1(flit0)
{
DEF_CA
MAYBE_UNUSED Cell w0;
MAYBE_UNUSED Cell w1;
Float r;
NEXT_P0;
vm_Cell2w(IMM_ARG(IP[-2],305397804 ),w0);
vm_Cell2w(IMM_ARG(IP[-1],305397805 ),w1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w0=", vm_out); printarg_w(w0);
fputs(" w1=", vm_out); printarg_w(w1);
}
#endif
fp += -1;
{
#line 3011 "prim"
/* For 32 bit systems: a float is two words */
union { struct { Cell a, b;} d; Float r; } cv;
cv.d.a = w0;
cv.d.b = w1;
r = cv.r;
#line 16973 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(flit0)
NAME1("l2-flit0")
NEXT_P1_5;
LABEL3(flit0)
NAME1("l3-flit0")
DO_GOTO;
}

LABEL(flit1) /* flit1 ( #wpadding #w0 #w1 -- r ) S0 -- S0  */
/*  */
NAME("flit1")
ip += 4;
LABEL1(flit1)
{
DEF_CA
MAYBE_UNUSED Cell wpadding;
MAYBE_UNUSED Cell w0;
MAYBE_UNUSED Cell w1;
Float r;
NEXT_P0;
vm_Cell2w(IMM_ARG(IP[-3],305397806 ),wpadding);
vm_Cell2w(IMM_ARG(IP[-2],305397807 ),w0);
vm_Cell2w(IMM_ARG(IP[-1],305397808 ),w1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" wpadding=", vm_out); printarg_w(wpadding);
fputs(" w0=", vm_out); printarg_w(w0);
fputs(" w1=", vm_out); printarg_w(w1);
}
#endif
fp += -1;
{
#line 3018 "prim"
/* For 32 bit systems: a float is two words, padded for alignment */
union { struct { Cell a, b;} d; Float r; } cv;
cv.d.a = w0;
cv.d.b = w1;
r = cv.r;
#line 17022 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(flit1)
NAME1("l2-flit1")
NEXT_P1_5;
LABEL3(flit1)
NAME1("l3-flit1")
DO_GOTO;
}

GROUPADD(83)
#endif
GROUPADD(0)
#ifdef HAS_GLOCALS
GROUPADD(0)
GROUP( locals, 378)
LABEL(fetch_local_n) /* @localn ( noffset -- w ) S0 -- S0  */
/*  */
NAME("@localn")
ip += 1;
LABEL1(fetch_local_n)
{
DEF_CA
MAYBE_UNUSED Cell noffset;
Cell w;
NEXT_P0;
vm_Cell2n(sp[0],noffset);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" noffset=", vm_out); printarg_n(noffset);
}
#endif
{
#line 3038 "prim"
w = *(Cell *)(lp+noffset);
#line 17066 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_n)
NAME1("l2-fetch_local_n")
NEXT_P1_5;
LABEL3(fetch_local_n)
NAME1("l3-fetch_local_n")
DO_GOTO;
}

LABEL(fetch_local_0) /* @local0 ( -- w ) S0 -- S0  */
/*  */
NAME("@local0")
ip += 1;
LABEL1(fetch_local_0)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3046 "prim"
w = ((Cell *)lp)[0];
#line 3045
#line 17103 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_0)
NAME1("l2-fetch_local_0")
NEXT_P1_5;
LABEL3(fetch_local_0)
NAME1("l3-fetch_local_0")
DO_GOTO;
}

LABEL(fetch_local_1) /* @local1 ( -- w ) S0 -- S0  */
/*  */
NAME("@local1")
ip += 1;
LABEL1(fetch_local_1)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3046 "prim"
w = ((Cell *)lp)[1];
#line 3045
#line 17140 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_1)
NAME1("l2-fetch_local_1")
NEXT_P1_5;
LABEL3(fetch_local_1)
NAME1("l3-fetch_local_1")
DO_GOTO;
}

LABEL(fetch_local_2) /* @local2 ( -- w ) S0 -- S0  */
/*  */
NAME("@local2")
ip += 1;
LABEL1(fetch_local_2)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3046 "prim"
w = ((Cell *)lp)[2];
#line 3045
#line 17177 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_2)
NAME1("l2-fetch_local_2")
NEXT_P1_5;
LABEL3(fetch_local_2)
NAME1("l3-fetch_local_2")
DO_GOTO;
}

LABEL(fetch_local_3) /* @local3 ( -- w ) S0 -- S0  */
/*  */
NAME("@local3")
ip += 1;
LABEL1(fetch_local_3)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3046 "prim"
w = ((Cell *)lp)[3];
#line 3045
#line 17214 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_3)
NAME1("l2-fetch_local_3")
NEXT_P1_5;
LABEL3(fetch_local_3)
NAME1("l3-fetch_local_3")
DO_GOTO;
}

LABEL(fetch_local_4) /* @local4 ( -- w ) S0 -- S0  */
/*  */
NAME("@local4")
ip += 1;
LABEL1(fetch_local_4)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3046 "prim"
w = ((Cell *)lp)[4];
#line 3045
#line 17251 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_4)
NAME1("l2-fetch_local_4")
NEXT_P1_5;
LABEL3(fetch_local_4)
NAME1("l3-fetch_local_4")
DO_GOTO;
}

LABEL(fetch_local_5) /* @local5 ( -- w ) S0 -- S0  */
/*  */
NAME("@local5")
ip += 1;
LABEL1(fetch_local_5)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3046 "prim"
w = ((Cell *)lp)[5];
#line 3045
#line 17288 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_5)
NAME1("l2-fetch_local_5")
NEXT_P1_5;
LABEL3(fetch_local_5)
NAME1("l3-fetch_local_5")
DO_GOTO;
}

LABEL(fetch_local_6) /* @local6 ( -- w ) S0 -- S0  */
/*  */
NAME("@local6")
ip += 1;
LABEL1(fetch_local_6)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3046 "prim"
w = ((Cell *)lp)[6];
#line 3045
#line 17325 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_6)
NAME1("l2-fetch_local_6")
NEXT_P1_5;
LABEL3(fetch_local_6)
NAME1("l3-fetch_local_6")
DO_GOTO;
}

LABEL(fetch_local_7) /* @local7 ( -- w ) S0 -- S0  */
/*  */
NAME("@local7")
ip += 1;
LABEL1(fetch_local_7)
{
DEF_CA
Cell w;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3046 "prim"
w = ((Cell *)lp)[7];
#line 3045
#line 17362 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_local_7)
NAME1("l2-fetch_local_7")
NEXT_P1_5;
LABEL3(fetch_local_7)
NAME1("l3-fetch_local_7")
DO_GOTO;
}

LABEL(store_local_n) /* !localn ( w noffset -- ) S0 -- S0  */
/*  */
NAME("!localn")
ip += 1;
LABEL1(store_local_n)
{
DEF_CA
MAYBE_UNUSED Cell w;
MAYBE_UNUSED Cell noffset;
NEXT_P0;
vm_Cell2w(sp[1],w);
vm_Cell2n(sp[0],noffset);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
fputs(" noffset=", vm_out); printarg_n(noffset);
}
#endif
sp += 2;
{
#line 3051 "prim"
*(Cell *)(lp+noffset) = w;
#line 17403 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_n)
NAME1("l2-store_local_n")
NEXT_P1_5;
LABEL3(store_local_n)
NAME1("l3-store_local_n")
DO_GOTO;
}

LABEL(store_local_0) /* !local0 ( w -- ) S0 -- S0  */
/*  */
NAME("!local0")
ip += 1;
LABEL1(store_local_0)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3052 "prim"
((Cell *)lp)[0] = w;
#line 3051
#line 17440 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_0)
NAME1("l2-store_local_0")
NEXT_P1_5;
LABEL3(store_local_0)
NAME1("l3-store_local_0")
DO_GOTO;
}

LABEL(store_local_1) /* !local1 ( w -- ) S0 -- S0  */
/*  */
NAME("!local1")
ip += 1;
LABEL1(store_local_1)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3052 "prim"
((Cell *)lp)[1] = w;
#line 3051
#line 17477 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_1)
NAME1("l2-store_local_1")
NEXT_P1_5;
LABEL3(store_local_1)
NAME1("l3-store_local_1")
DO_GOTO;
}

LABEL(store_local_2) /* !local2 ( w -- ) S0 -- S0  */
/*  */
NAME("!local2")
ip += 1;
LABEL1(store_local_2)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3052 "prim"
((Cell *)lp)[2] = w;
#line 3051
#line 17514 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_2)
NAME1("l2-store_local_2")
NEXT_P1_5;
LABEL3(store_local_2)
NAME1("l3-store_local_2")
DO_GOTO;
}

LABEL(store_local_3) /* !local3 ( w -- ) S0 -- S0  */
/*  */
NAME("!local3")
ip += 1;
LABEL1(store_local_3)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3052 "prim"
((Cell *)lp)[3] = w;
#line 3051
#line 17551 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_3)
NAME1("l2-store_local_3")
NEXT_P1_5;
LABEL3(store_local_3)
NAME1("l3-store_local_3")
DO_GOTO;
}

LABEL(store_local_4) /* !local4 ( w -- ) S0 -- S0  */
/*  */
NAME("!local4")
ip += 1;
LABEL1(store_local_4)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3052 "prim"
((Cell *)lp)[4] = w;
#line 3051
#line 17588 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_4)
NAME1("l2-store_local_4")
NEXT_P1_5;
LABEL3(store_local_4)
NAME1("l3-store_local_4")
DO_GOTO;
}

LABEL(store_local_5) /* !local5 ( w -- ) S0 -- S0  */
/*  */
NAME("!local5")
ip += 1;
LABEL1(store_local_5)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3052 "prim"
((Cell *)lp)[5] = w;
#line 3051
#line 17625 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_5)
NAME1("l2-store_local_5")
NEXT_P1_5;
LABEL3(store_local_5)
NAME1("l3-store_local_5")
DO_GOTO;
}

LABEL(store_local_6) /* !local6 ( w -- ) S0 -- S0  */
/*  */
NAME("!local6")
ip += 1;
LABEL1(store_local_6)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3052 "prim"
((Cell *)lp)[6] = w;
#line 3051
#line 17662 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_6)
NAME1("l2-store_local_6")
NEXT_P1_5;
LABEL3(store_local_6)
NAME1("l3-store_local_6")
DO_GOTO;
}

LABEL(store_local_7) /* !local7 ( w -- ) S0 -- S0  */
/*  */
NAME("!local7")
ip += 1;
LABEL1(store_local_7)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3052 "prim"
((Cell *)lp)[7] = w;
#line 3051
#line 17699 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_local_7)
NAME1("l2-store_local_7")
NEXT_P1_5;
LABEL3(store_local_7)
NAME1("l3-store_local_7")
DO_GOTO;
}

LABEL(plus_store_local_n) /* +!localn ( w noffset -- ) S0 -- S0  */
/*  */
NAME("+!localn")
ip += 1;
LABEL1(plus_store_local_n)
{
DEF_CA
MAYBE_UNUSED Cell w;
MAYBE_UNUSED Cell noffset;
NEXT_P0;
vm_Cell2w(sp[1],w);
vm_Cell2n(sp[0],noffset);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
fputs(" noffset=", vm_out); printarg_n(noffset);
}
#endif
sp += 2;
{
#line 3057 "prim"
*(Cell *)(lp+noffset) += w;
#line 17738 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(plus_store_local_n)
NAME1("l2-plus_store_local_n")
NEXT_P1_5;
LABEL3(plus_store_local_n)
NAME1("l3-plus_store_local_n")
DO_GOTO;
}

LABEL(lp_plus_n) /* lp+n ( noffset -- c_addr ) S0 -- S0  */
/*  */
NAME("lp+n")
ip += 1;
LABEL1(lp_plus_n)
{
DEF_CA
MAYBE_UNUSED Cell noffset;
Char * c_addr;
NEXT_P0;
vm_Cell2n(sp[0],noffset);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" noffset=", vm_out); printarg_n(noffset);
}
#endif
{
#line 3060 "prim"
c_addr = (Char *)(lp+noffset);
#line 17774 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr,sp[0]);
LABEL2(lp_plus_n)
NAME1("l2-lp_plus_n")
NEXT_P1_5;
LABEL3(lp_plus_n)
NAME1("l3-lp_plus_n")
DO_GOTO;
}

GROUPADD(20)
#ifdef HAS_FLOATING
LABEL(f_fetch_local_n) /* f@localn ( noffset -- r ) S0 -- S0  */
/*  */
NAME("f@localn")
ip += 1;
LABEL1(f_fetch_local_n)
{
DEF_CA
MAYBE_UNUSED Cell noffset;
Float r;
NEXT_P0;
vm_Cell2n(sp[0],noffset);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" noffset=", vm_out); printarg_n(noffset);
}
#endif
sp += 1;
fp += -1;
{
#line 3065 "prim"
r = *(Float *)(lp+noffset);
#line 17816 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(f_fetch_local_n)
NAME1("l2-f_fetch_local_n")
NEXT_P1_5;
LABEL3(f_fetch_local_n)
NAME1("l3-f_fetch_local_n")
DO_GOTO;
}

GROUPADD(1)
#endif
LABEL(lp_fetch) /* lp@ ( -- c_addr ) S0 -- S0  */
/* @i{C_addr} is the current value of the locals stack pointer. */
NAME("lp@")
ip += 1;
LABEL1(lp_fetch)
{
DEF_CA
Char * c_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3080 "prim"
c_addr = lp;
#line 17854 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr,sp[0]);
LABEL2(lp_fetch)
NAME1("l2-lp_fetch")
NEXT_P1_5;
LABEL3(lp_fetch)
NAME1("l3-lp_fetch")
DO_GOTO;
}

LABEL(lp_plus_store) /* lp+! ( noffset -- ) S0 -- S0  */
/* When used with negative @i{noffset} allocates memory on the
local stack; when used with a positive @i{noffset} drops memory from the local
stack */
NAME("lp+!")
ip += 1;
LABEL1(lp_plus_store)
{
DEF_CA
MAYBE_UNUSED Cell noffset;
NEXT_P0;
vm_Cell2n(sp[0],noffset);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" noffset=", vm_out); printarg_n(noffset);
}
#endif
sp += 1;
{
#line 3086 "prim"
lp += noffset;
ALIVE_DEBUGGING(lp[-1]);
#line 17895 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(lp_plus_store)
NAME1("l2-lp_plus_store")
NEXT_P1_5;
LABEL3(lp_plus_store)
NAME1("l3-lp_plus_store")
DO_GOTO;
}

LABEL(lp_minus) /* lp- ( -- ) S0 -- S0  */
/*  */
NAME("lp-")
ip += 1;
LABEL1(lp_minus)
{
DEF_CA
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 3090 "prim"
lp += -sizeof(Cell);
#line 17927 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(lp_minus)
NAME1("l2-lp_minus")
NEXT_P1_5;
LABEL3(lp_minus)
NAME1("l3-lp_minus")
DO_GOTO;
}

LABEL(lp_plus) /* lp+ ( -- ) S0 -- S0  */
/*  */
NAME("lp+")
ip += 1;
LABEL1(lp_plus)
{
DEF_CA
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 3093 "prim"
lp += sizeof(Float);
ALIVE_DEBUGGING(lp[-1]);
#line 17960 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(lp_plus)
NAME1("l2-lp_plus")
NEXT_P1_5;
LABEL3(lp_plus)
NAME1("l3-lp_plus")
DO_GOTO;
}

LABEL(lp_plus_two) /* lp+2 ( -- ) S0 -- S0  */
/*  */
NAME("lp+2")
ip += 1;
LABEL1(lp_plus_two)
{
DEF_CA
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 3097 "prim"
lp += 2*sizeof(Float);
ALIVE_DEBUGGING(lp[-1]);
#line 17993 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(lp_plus_two)
NAME1("l2-lp_plus_two")
NEXT_P1_5;
LABEL3(lp_plus_two)
NAME1("l3-lp_plus_two")
DO_GOTO;
}

LABEL(lp_store) /* lp! ( c_addr -- ) S0 -- S0  */
/*  */
NAME("lp!")
ip += 1;
LABEL1(lp_store)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
sp += 1;
{
#line 3101 "prim"
lp = (Address)c_addr;
#line 18029 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(lp_store)
NAME1("l2-lp_store")
NEXT_P1_5;
LABEL3(lp_store)
NAME1("l3-lp_store")
DO_GOTO;
}

LABEL(to_l) /* >l ( w -- ) S0 -- S0  */
/*  */
NAME(">l")
ip += 1;
LABEL1(to_l)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(sp[0],w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += 1;
{
#line 3104 "prim"
lp -= sizeof(Cell);
*(Cell *)lp = w;
#line 18066 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(to_l)
NAME1("l2-to_l")
NEXT_P1_5;
LABEL3(to_l)
NAME1("l3-to_l")
DO_GOTO;
}

GROUPADD(7)
#ifdef HAS_FLOATING
LABEL(f_to_l) /* f>l ( r -- ) S0 -- S0  */
/*  */
NAME("f>l")
ip += 1;
LABEL1(f_to_l)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3110 "prim"
lp -= sizeof(Float);
*(Float *)lp = r;
#line 18105 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(f_to_l)
NAME1("l2-f_to_l")
NEXT_P1_5;
LABEL3(f_to_l)
NAME1("l3-f_to_l")
DO_GOTO;
}

LABEL(fpick) /* fpick ( f:... u -- f:... r ) S0 -- S0  */
/* Actually the stack effect is @code{ r0 ... ru u -- r0 ... ru r0 }. */
NAME("fpick")
ip += 1;
LABEL1(fpick)
{
DEF_CA
MAYBE_UNUSED UCell u;
Float r;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3115 "prim"
r = fp[u];
#line 18142 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
fp += -1;
vm_r2Float(r,fp[0]);
LABEL2(fpick)
NAME1("l2-fpick")
NEXT_P1_5;
LABEL3(fpick)
NAME1("l3-fpick")
DO_GOTO;
}

LABEL(fthird) /* fthird ( r1 r2 r3 -- r1 r2 r3 r1 ) S0 -- S0  */
/*  */
NAME("fthird")
ip += 1;
LABEL1(fthird)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
MAYBE_UNUSED Float r3;
NEXT_P0;
vm_Float2r(fp[2],r1);
vm_Float2r(fp[1],r2);
vm_Float2r(fp[0],r3);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
fputs(" r3=", vm_out); printarg_r(r3);
}
#endif
fp += -1;
{
#line 3120 "prim"
#line 18186 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r1,fp[0]);
LABEL2(fthird)
NAME1("l2-fthird")
NEXT_P1_5;
LABEL3(fthird)
NAME1("l3-fthird")
DO_GOTO;
}

LABEL(ffourth) /* ffourth ( r1 r2 r3 r4 -- r1 r2 r3 r4 r1 ) S0 -- S0  */
/*  */
NAME("ffourth")
ip += 1;
LABEL1(ffourth)
{
DEF_CA
MAYBE_UNUSED Float r1;
MAYBE_UNUSED Float r2;
MAYBE_UNUSED Float r3;
MAYBE_UNUSED Float r4;
NEXT_P0;
vm_Float2r(fp[3],r1);
vm_Float2r(fp[2],r2);
vm_Float2r(fp[1],r3);
vm_Float2r(fp[0],r4);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r1=", vm_out); printarg_r(r1);
fputs(" r2=", vm_out); printarg_r(r2);
fputs(" r3=", vm_out); printarg_r(r3);
fputs(" r4=", vm_out); printarg_r(r4);
}
#endif
fp += -1;
{
#line 3122 "prim"
#line 18231 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r1,fp[0]);
LABEL2(ffourth)
NAME1("l2-ffourth")
NEXT_P1_5;
LABEL3(ffourth)
NAME1("l3-ffourth")
DO_GOTO;
}

GROUPADD(4)
#endif
GROUPADD(0)
#endif
GROUPADD(0)
#ifdef HAS_OS
GROUPADD(0)
GROUP( syslib, 410)
LABEL(open_lib) /* open-lib ( c_addr1 u1 -- u2 ) S0 -- S0  */
/*  */
NAME("open-lib")
ip += 1;
LABEL1(open_lib)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr1);
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
sp += 1;
{
#line 3131 "prim"
u2 = gforth_dlopen(c_addr1, u1);
#line 18280 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(open_lib)
NAME1("l2-open_lib")
NEXT_P1_5;
LABEL3(open_lib)
NAME1("l3-open_lib")
DO_GOTO;
}

LABEL(open_lib2) /* open-lib2 ( c_addr1 u1 -- u2 ) S0 -- S0  */
/*  */
NAME("open-lib2")
ip += 1;
LABEL1(open_lib2)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
UCell u2;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr1);
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
sp += 1;
{
#line 3134 "prim"
u2 = gforth_dlopen2(c_addr1, u1);
#line 18322 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(open_lib2)
NAME1("l2-open_lib2")
NEXT_P1_5;
LABEL3(open_lib2)
NAME1("l3-open_lib2")
DO_GOTO;
}

LABEL(lib_sym) /* lib-sym ( c_addr1 u1 u2 -- u3 ) S0 -- S0  */
/*  */
NAME("lib-sym")
ip += 1;
LABEL1(lib_sym)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UCell u3;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr1);
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 2;
{
#line 3137 "prim"
char * string = cstr(c_addr1, u1);
#ifdef HAVE_LIBLTDL
u3 = (UCell) lt_dlsym((lt_dlhandle)u2, string);
#elif defined(HAVE_LIBDL) || defined(HAVE_DLOPEN)
u3 = (UCell) dlsym((void*)u2,string);
#else
#  ifdef _WIN32
u3 = (Cell) GetProcAddress((HMODULE)u2, string);
#  else
#warning Define lib-sym!
u3 = 0;
#  endif
#endif
free_l(string);
#line 18380 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u3=", vm_out); printarg_u(u3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u3,sp[0]);
LABEL2(lib_sym)
NAME1("l2-lib_sym")
NEXT_P1_5;
LABEL3(lib_sym)
NAME1("l3-lib_sym")
DO_GOTO;
}

LABEL(lib_sym2) /* lib-sym2 ( c_addr1 u1 u2 -- u3 ) S0 -- S0  */
/*  */
NAME("lib-sym2")
ip += 1;
LABEL1(lib_sym2)
{
DEF_CA
MAYBE_UNUSED Char * c_addr1;
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED UCell u2;
UCell u3;
NEXT_P0;
vm_Cell2c_(sp[2],c_addr1);
vm_Cell2u(sp[1],u1);
vm_Cell2u(sp[0],u2);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" u2=", vm_out); printarg_u(u2);
}
#endif
sp += 2;
{
#line 3153 "prim"
u3 = gforth_dlsym2(c_addr1, u1, u2);
#line 18425 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u3=", vm_out); printarg_u(u3);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u3,sp[0]);
LABEL2(lib_sym2)
NAME1("l2-lib_sym2")
NEXT_P1_5;
LABEL3(lib_sym2)
NAME1("l3-lib_sym2")
DO_GOTO;
}

LABEL(wcall) /* wcall ( ... u -- ... ) S0 -- S0  */
/*  */
NAME("wcall")
ip += 1;
LABEL1(wcall)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3156 "prim"
gforth_FP=fp;
sp=(Cell*)(SYSCALL(Cell*(*)(Cell *, void *))u)(sp, &gforth_FP);
fp=gforth_FP;
#line 18465 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(wcall)
NAME1("l2-wcall")
NEXT_P1_5;
LABEL3(wcall)
NAME1("l3-wcall")
DO_GOTO;
}

LABEL(w_fetch) /* w@ ( c_addr -- u ) S0 -- S0  */
/* @i{u} is the zero-extended 16-bit value stored at @i{c_addr}. */
NAME("w@")
ip += 1;
LABEL1(w_fetch)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
UCell u;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
{
#line 3162 "prim"
#ifdef UNALIGNED_MEM
u = *(UWyde*)c_addr;
#else
UWyde wy;
memcpy((Char*)&wy, c_addr, 2);
u = wy;
#endif
#line 18507 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(w_fetch)
NAME1("l2-w_fetch")
NEXT_P1_5;
LABEL3(w_fetch)
NAME1("l3-w_fetch")
DO_GOTO;
}

LABEL(w_store) /* w! ( w c_addr -- ) S0 -- S0  */
/* Store the bottom 16 bits of @i{w} at @i{c_addr}. */
NAME("w!")
ip += 1;
LABEL1(w_store)
{
DEF_CA
MAYBE_UNUSED Cell w;
MAYBE_UNUSED Char * c_addr;
NEXT_P0;
vm_Cell2w(sp[1],w);
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
sp += 2;
{
#line 3172 "prim"
#ifdef UNALIGNED_MEM
*(UWyde*)c_addr = w;
#else
UWyde wy = w;
memcpy(c_addr, (Char*)&wy, 2);
#endif
#line 18553 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(w_store)
NAME1("l2-w_store")
NEXT_P1_5;
LABEL3(w_store)
NAME1("l3-w_store")
DO_GOTO;
}

LABEL(l_fetch) /* l@ ( c_addr -- u ) S0 -- S0  */
/* @i{u} is the zero-extended 32-bit value stored at @i{c_addr}. */
NAME("l@")
ip += 1;
LABEL1(l_fetch)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
UCell u;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
{
#line 3181 "prim"
#ifdef UNALIGNED_MEM
u = *(UTetrabyte*)c_addr;
#else
UTetrabyte tb;
memcpy((Char*)&tb, c_addr, 4);
u = tb;
#endif
#line 18595 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(l_fetch)
NAME1("l2-l_fetch")
NEXT_P1_5;
LABEL3(l_fetch)
NAME1("l3-l_fetch")
DO_GOTO;
}

LABEL(l_store) /* l! ( w c_addr -- ) S0 -- S0  */
/* Store the bottom 32 bits of @i{w} at @i{c_addr}. */
NAME("l!")
ip += 1;
LABEL1(l_store)
{
DEF_CA
MAYBE_UNUSED Cell w;
MAYBE_UNUSED Char * c_addr;
NEXT_P0;
vm_Cell2w(sp[1],w);
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
sp += 2;
{
#line 3191 "prim"
#ifdef UNALIGNED_MEM
*(UTetrabyte*)c_addr = w;
#else
UTetrabyte tb = w;
memcpy(c_addr, (Char*)&tb, 4);
#endif
#line 18641 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(l_store)
NAME1("l2-l_store")
NEXT_P1_5;
LABEL3(l_store)
NAME1("l3-l_store")
DO_GOTO;
}

LABEL(lib_error) /* lib-error ( -- c_addr u ) S0 -- S0  */
/* Error message for last failed @code{open-lib} or @code{lib-sym}. */
NAME("lib-error")
ip += 1;
LABEL1(lib_error)
{
DEF_CA
Char * c_addr;
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -2;
{
#line 3200 "prim"
#ifdef HAVE_LIBLTDL
c_addr = (Char *)lt_dlerror();
u = (c_addr == NULL) ? 0 : strlen((char *)c_addr);
#elif defined(HAVE_LIBDL) || defined(HAVE_DLOPEN)
c_addr = (Char *)dlerror();
u = strlen((char *)c_addr);
#else
c_addr = "libltdl is not configured";
u = strlen((char *)c_addr);
#endif
#line 18685 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr,sp[1]);
vm_u2Cell(u,sp[0]);
LABEL2(lib_error)
NAME1("l2-lib_error")
NEXT_P1_5;
LABEL3(lib_error)
NAME1("l3-lib_error")
DO_GOTO;
}

LABEL(close_lib) /* close-lib ( u -- ) S0 -- S0  */
/*  */
NAME("close-lib")
ip += 1;
LABEL1(close_lib)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3212 "prim"
gforth_dlclose(u);
#line 18725 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(close_lib)
NAME1("l2-close_lib")
NEXT_P1_5;
LABEL3(close_lib)
NAME1("l3-close_lib")
DO_GOTO;
}

LABEL(close_lib2) /* close-lib2 ( u -- ) S0 -- S0  */
/*  */
NAME("close-lib2")
ip += 1;
LABEL1(close_lib2)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3215 "prim"
gforth_dlclose2(u);
#line 18761 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(close_lib2)
NAME1("l2-close_lib2")
NEXT_P1_5;
LABEL3(close_lib2)
NAME1("l3-close_lib2")
DO_GOTO;
}

GROUPADD(12)
#endif
GROUPADD(0)
GROUP( 64bit, 422)
GROUPADD(0)
#ifdef HAS_64BIT
LABEL(x_store) /* x! ( w c_addr -- ) S0 -- S0  */
/* Store the bottom 64 bits of @i{w} at @i{c_addr}. */
NAME("x!")
ip += 1;
LABEL1(x_store)
{
DEF_CA
MAYBE_UNUSED Cell w;
MAYBE_UNUSED Char * c_addr;
NEXT_P0;
vm_Cell2w(sp[1],w);
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
sp += 2;
{
#line 3225 "prim"
#ifdef UNALIGNED_MEM
*(UOctabyte*)c_addr = w;
#else
UOctabyte ob = w;
memcpy(c_addr, (Char*)&ob, 8);
#endif
#line 18811 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(x_store)
NAME1("l2-x_store")
NEXT_P1_5;
LABEL3(x_store)
NAME1("l3-x_store")
DO_GOTO;
}

LABEL(x_fetch) /* x@ ( c_addr -- u ) S0 -- S0  */
/* @i{u} is the zero-extended 64-bit value stored at @i{c_addr}. */
NAME("x@")
ip += 1;
LABEL1(x_fetch)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
UCell u;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
{
#line 3234 "prim"
#ifdef UNALIGNED_MEM
u = *(UOctabyte*)c_addr;
#else
UOctabyte ob;
memcpy((Char*)&ob, c_addr, 8);
u = ob;
#endif
#line 18853 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(x_fetch)
NAME1("l2-x_fetch")
NEXT_P1_5;
LABEL3(x_fetch)
NAME1("l3-x_fetch")
DO_GOTO;
}

GROUPADD(2)
#endif
GROUPADD(0)
GROUP( memory, 424)
LABEL(x_d_store) /* xd! ( ud c_addr -- ) S0 -- S0  */
/* Store the bottom 64 bits of @i{ud} at @i{c_addr}. */
NAME("xd!")
ip += 1;
LABEL1(x_d_store)
{
DEF_CA
MAYBE_UNUSED UDCell ud;
MAYBE_UNUSED Char * c_addr;
NEXT_P0;
vm_twoCell2ud(sp[2], sp[1], ud)
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud=", vm_out); printarg_ud(ud);
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
sp += 3;
{
#line 3248 "prim"
#ifdef UNALIGNED_MEM
# if defined(BUGGY_LL_SIZE) || (SIZEOF_CHAR_P == 4)
#  ifdef WORDS_BIGENDIAN
((UTetrabyte*)c_addr)[0]=DHI(ud);
((UTetrabyte*)c_addr)[1]=DLO(ud);
#  else
((UTetrabyte*)c_addr)[1]=DHI(ud);
((UTetrabyte*)c_addr)[0]=DLO(ud);
#  endif
# else
*(UOctabyte*)c_addr = ud;
# endif
#else
# if defined(BUGGY_LL_SIZE) || (SIZEOF_CHAR_P == 4)
#  if (SIZEOF_CHAR_P == 4)
#   ifdef WORDS_BIGENDIAN
UTetrabyte tb[2];
tb[0]=DHI(ud);
tb[1]=DLO(ud);
memcpy(c_addr, (Char*)tb, 8);
#   else
UTetrabyte tb[2];
tb[1]=DHI(ud);
tb[0]=DLO(ud);
memcpy(c_addr, (Char*)tb, 8);
#   endif
#  else
UOctabyte ob=DLO(ud);
memcpy(c_addr, (Char*)&ob, 8);
#  endif
# else
UOctabyte ob=ud;
memcpy(c_addr, (Char*)&ob, 8);
# endif
#endif
#line 18932 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(x_d_store)
NAME1("l2-x_d_store")
NEXT_P1_5;
LABEL3(x_d_store)
NAME1("l3-x_d_store")
DO_GOTO;
}

LABEL(x_d_fetch) /* xd@ ( c_addr -- ud ) S0 -- S0  */
/* @i{ud} is the zero-extended 64-bit value stored at @i{c_addr}. */
NAME("xd@")
ip += 1;
LABEL1(x_d_fetch)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
UDCell ud;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
sp += -1;
{
#line 3286 "prim"
#ifdef UNALIGNED_MEM
# if defined(BUGGY_LL_SIZE) || (SIZEOF_CHAR_P == 4)
UTetrabyte tb[2];
tb[0] = ((UTetrabyte*)c_addr)[0];
tb[1] = ((UTetrabyte*)c_addr)[1];
#  ifdef WORDS_BIGENDIAN
D_IS(ud, tb[0], tb[1]);
#  else
D_IS(ud, tb[1], tb[0]);
#  endif
# else
ud = *(UOctabyte*)c_addr;
# endif
#else
# if defined(BUGGY_LL_SIZE) || (SIZEOF_CHAR_P == 4)
#  if (SIZEOF_CHAR_P == 4)
UTetrabyte tb[2];
memcpy((Char*)tb, c_addr, 8);
#   ifdef WORDS_BIGENDIAN
D_IS(ud, tb[0], tb[1]);
#   else
D_IS(ud, tb[1], tb[0]);
#   endif
#  else
UOctabyte ob;
memcpy((Char*)&ob, c_addr, 8);
D_IS(ud, 0, ob);
#  endif
# else
UOctabyte ob;
memcpy((Char*)&ob, c_addr, 8);
ud = ob;
# endif
#endif
#line 19002 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud=", vm_out); printarg_ud(ud);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud, sp[1], sp[0])
LABEL2(x_d_fetch)
NAME1("l2-x_d_fetch")
NEXT_P1_5;
LABEL3(x_d_fetch)
NAME1("l3-x_d_fetch")
DO_GOTO;
}

LABEL(wordswap) /* w>< ( u1 -- u2 ) S0 -- S0  */
/*  */
NAME("w><")
ip += 1;
LABEL1(wordswap)
{
DEF_CA
MAYBE_UNUSED UCell u1;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
{
#line 3322 "prim"
u2=BSWAP16(u1);
#line 19040 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(wordswap)
NAME1("l2-wordswap")
NEXT_P1_5;
LABEL3(wordswap)
NAME1("l3-wordswap")
DO_GOTO;
}

LABEL(longswap) /* l>< ( u1 -- u2 ) S0 -- S0  */
/*  */
NAME("l><")
ip += 1;
LABEL1(longswap)
{
DEF_CA
MAYBE_UNUSED UCell u1;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
{
#line 3325 "prim"
u2=BSWAP32(u1);
#line 19078 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(longswap)
NAME1("l2-longswap")
NEXT_P1_5;
LABEL3(longswap)
NAME1("l3-longswap")
DO_GOTO;
}

LABEL(extralongswap) /* x>< ( u1 -- u2 ) S0 -- S0  */
/*  */
NAME("x><")
ip += 1;
LABEL1(extralongswap)
{
DEF_CA
MAYBE_UNUSED UCell u1;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
{
#line 3328 "prim"
u2=BSWAP64((uint64_t)u1);
#line 19116 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(extralongswap)
NAME1("l2-extralongswap")
NEXT_P1_5;
LABEL3(extralongswap)
NAME1("l3-extralongswap")
DO_GOTO;
}

LABEL(extralongdswap) /* xd>< ( ud1 -- ud2 ) S0 -- S0  */
/*  */
NAME("xd><")
ip += 1;
LABEL1(extralongdswap)
{
DEF_CA
MAYBE_UNUSED UDCell ud1;
UDCell ud2;
NEXT_P0;
vm_twoCell2ud(sp[1], sp[0], ud1)
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" ud1=", vm_out); printarg_ud(ud1);
}
#endif
{
#line 3331 "prim"
#if SIZEOF_CHAR_P == 8
D_IS(ud2, 0LL, BSWAP64(DLO(ud1)));
#else
# ifdef BUGGY_LL_SWAP
D_IS(ud2, BSWAP32(DLO(ud1)), BSWAP32(DHI(ud1)));
# else
ud2=BSWAP64(ud1);
# endif
#endif
#line 19162 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" ud2=", vm_out); printarg_ud(ud2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_ud2twoCell(ud2, sp[1], sp[0])
LABEL2(extralongdswap)
NAME1("l2-extralongdswap")
NEXT_P1_5;
LABEL3(extralongdswap)
NAME1("l3-extralongdswap")
DO_GOTO;
}

LABEL(c_to_s) /* c>s ( x -- n ) S0 -- S0  */
/* Sign-extend the 8-bit value in @i{x} to cell @i{n}. */
NAME("c>s")
ip += 1;
LABEL1(c_to_s)
{
DEF_CA
MAYBE_UNUSED Cell x;
Cell n;
NEXT_P0;
vm_Cell2x(sp[0],x);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" x=", vm_out); printarg_x(x);
}
#endif
{
#line 3343 "prim"
n=(signed char)x;
#line 19200 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(c_to_s)
NAME1("l2-c_to_s")
NEXT_P1_5;
LABEL3(c_to_s)
NAME1("l3-c_to_s")
DO_GOTO;
}

LABEL(w_to_s) /* w>s ( x -- n ) S0 -- S0  */
/* Sign-extend the 16-bit value in @i{x} to cell @i{n}. */
NAME("w>s")
ip += 1;
LABEL1(w_to_s)
{
DEF_CA
MAYBE_UNUSED Cell x;
Cell n;
NEXT_P0;
vm_Cell2x(sp[0],x);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" x=", vm_out); printarg_x(x);
}
#endif
{
#line 3347 "prim"
n=(Wyde)x;
#line 19238 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(w_to_s)
NAME1("l2-w_to_s")
NEXT_P1_5;
LABEL3(w_to_s)
NAME1("l3-w_to_s")
DO_GOTO;
}

LABEL(l_to_s) /* l>s ( x -- n ) S0 -- S0  */
/* Sign-extend the 32-bit value in @i{x} to cell @i{n}. */
NAME("l>s")
ip += 1;
LABEL1(l_to_s)
{
DEF_CA
MAYBE_UNUSED Cell x;
Cell n;
NEXT_P0;
vm_Cell2x(sp[0],x);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" x=", vm_out); printarg_x(x);
}
#endif
{
#line 3351 "prim"
n=(Tetrabyte)x;
#line 19276 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(l_to_s)
NAME1("l2-l_to_s")
NEXT_P1_5;
LABEL3(l_to_s)
NAME1("l3-l_to_s")
DO_GOTO;
}

LABEL(to_pow2) /* >pow2 ( u1 -- u2 ) S0 -- S0  */
/* @i{u2} is the lowest power-of-2 number with @i{u2>=u1}. */
NAME(">pow2")
ip += 1;
LABEL1(to_pow2)
{
DEF_CA
MAYBE_UNUSED UCell u1;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[0],u1);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
}
#endif
{
#line 3355 "prim"
#ifdef HAVE___BUILTIN_CLZL
u2=(u1 == 1) ? u1 : // widely found bug for scanning 0
(((UCell)-1)>>__builtin_clzl(u1-1))+1;
#else
u1--;
u1 |= u1>>1;
u1 |= u1>>2;
u1 |= u1>>4;
u1 |= u1>>8;
u1 |= u1>>16;
#if SIZEOF_CHAR_P == 8
u1 |= u1>>32;
#endif
u2 = u1+1;
#endif
#line 19328 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(to_pow2)
NAME1("l2-to_pow2")
NEXT_P1_5;
LABEL3(to_pow2)
NAME1("l3-to_pow2")
DO_GOTO;
}

LABEL(log2) /* log2 ( u -- n ) S0 -- S0  */
/* @i{N} is the rounded-down binary logarithm of @i{u}, i.e., the index of
the first set bit; if @i{u}=0, @i{n}=-1. */
NAME("log2")
ip += 1;
LABEL1(log2)
{
DEF_CA
MAYBE_UNUSED UCell u;
Cell n;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
{
#line 3374 "prim"
#ifdef HAVE___BUILTIN_CLZL
if (u==0)
   n=-1;
else
   n=(8*sizeof(long)-1)-__builtin_clzl(u);
#else /* !defined(HAVE___BUILTIN_CLZL) */
UCell s;
n = -(u==0);
#if SIZEOF_CHAR_P == 8
s = (u>0xffffffff) ? 32 : 0; n |= s; u >>= s;
#endif
s = (u>0xffff)     ? 16 : 0; n |= s; u >>= s;
s = (u>0xff)       ?  8 : 0; n |= s; u >>= s;
s = (u>0xf)        ?  4 : 0; n |= s; u >>= s;
s = (u>0x3)        ?  2 : 0; n |= s; u >>= s;
s = (u>0x1)        ?  1 : 0; n |= s;
#endif /* !defined(HAVE___BUILTIN_CLZL) */
#line 19383 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" n=", vm_out); printarg_n(n);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_n2Cell(n,sp[0]);
LABEL2(log2)
NAME1("l2-log2")
NEXT_P1_5;
LABEL3(log2)
NAME1("l3-log2")
DO_GOTO;
}

LABEL(u8_fetch_plus_query) /* u8@+? ( c_addr u -- c_addr1 urest utfcp ) S0 -- S0  */
/* @i{utfcp} is the decoded UTF-8 codepoint (@code{$FFFD} if invalid); @i{c_addr1 urest} is the rest of the string. */
NAME("u8@+?")
ip += 1;
LABEL1(u8_fetch_plus_query)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED UCell u;
Char * c_addr1;
UCell urest;
UCell utfcp;
NEXT_P0;
vm_Cell2c_(sp[1],c_addr);
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += -1;
{
#line 3394 "prim"
DCell d1=utf8_fetch_plus(c_addr, u);
UCell u1 = DLO(d1);
c_addr1 = c_addr+u1;
urest = u-u1;
utfcp = DHI(d1);
#line 19431 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr1=", vm_out); printarg_c_(c_addr1);
fputs(" urest=", vm_out); printarg_u(urest);
fputs(" utfcp=", vm_out); printarg_u(utfcp);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr1,sp[2]);
vm_u2Cell(urest,sp[1]);
vm_u2Cell(utfcp,sp[0]);
LABEL2(u8_fetch_plus_query)
NAME1("l2-u8_fetch_plus_query")
NEXT_P1_5;
LABEL3(u8_fetch_plus_query)
NAME1("l3-u8_fetch_plus_query")
DO_GOTO;
}

GROUPADD(12)
GROUP( atomic, 436)
LABEL(store_fetch) /* !@ ( u1 a_addr -- u2 ) S0 -- S0  */
/* load @var{u2} from @var{a_addr}, and store @var{u1} there, as atomic operation */
NAME("!@")
ip += 1;
LABEL1(store_fetch)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell * a_addr;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 1;
{
#line 3404 "prim"
#ifdef HAS_ATOMIC
u2 = __atomic_exchange_n(a_addr, u1, __ATOMIC_SEQ_CST);
#elif defined(HAS_SYNC)
u2 = __sync_lock_test_and_set(a_addr, u1);
#else
u2 = *a_addr;
*a_addr = u1;
#endif
#line 19486 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(store_fetch)
NAME1("l2-store_fetch")
NEXT_P1_5;
LABEL3(store_fetch)
NAME1("l3-store_fetch")
DO_GOTO;
}

LABEL(add_store_fetch) /* +!@ ( u1 a_addr -- u2 ) S0 -- S0  */
/* load @var{u2} from @var{a_addr}, and increment this location by @var{u1}, as atomic operation */
NAME("+!@")
ip += 1;
LABEL1(add_store_fetch)
{
DEF_CA
MAYBE_UNUSED UCell u1;
MAYBE_UNUSED Cell * a_addr;
UCell u2;
NEXT_P0;
vm_Cell2u(sp[1],u1);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u1=", vm_out); printarg_u(u1);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 1;
{
#line 3415 "prim"
#ifdef HAS_ATOMIC
u2 = __atomic_fetch_add(a_addr, u1, __ATOMIC_SEQ_CST);
#elif defined(HAS_SYNC)
u2 = __sync_fetch_and_add(a_addr, u1);
#else
u2 = *a_addr;
*a_addr += u1;
#endif
#line 19535 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u2=", vm_out); printarg_u(u2);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u2,sp[0]);
LABEL2(add_store_fetch)
NAME1("l2-add_store_fetch")
NEXT_P1_5;
LABEL3(add_store_fetch)
NAME1("l3-add_store_fetch")
DO_GOTO;
}

LABEL(question_store_fetch) /* ?!@ ( unew uold a_addr -- uprev ) S0 -- S0  */
/* load @var{uprev} from @var{a_addr}, compare it to @var{uold}, and if equal, store @var{unew} there, as atomic operation */
NAME("?!@")
ip += 1;
LABEL1(question_store_fetch)
{
DEF_CA
MAYBE_UNUSED UCell unew;
MAYBE_UNUSED UCell uold;
MAYBE_UNUSED Cell * a_addr;
UCell uprev;
NEXT_P0;
vm_Cell2u(sp[2],unew);
vm_Cell2u(sp[1],uold);
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" unew=", vm_out); printarg_u(unew);
fputs(" uold=", vm_out); printarg_u(uold);
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
sp += 2;
{
#line 3426 "prim"
#ifdef HAS_ATOMIC
uprev = uold;
__atomic_compare_exchange_n(a_addr, &uprev, unew, 0,
			    __ATOMIC_SEQ_CST, __ATOMIC_SEQ_CST);
#elif defined(HAS_SYNC)
uprev = __sync_val_compare_and_swap(a_addr, uold, unew);
#else
uprev = *a_addr;
if(*a_addr == uold) *a_addr = unew;
#endif
#line 19589 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" uprev=", vm_out); printarg_u(uprev);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(uprev,sp[0]);
LABEL2(question_store_fetch)
NAME1("l2-question_store_fetch")
NEXT_P1_5;
LABEL3(question_store_fetch)
NAME1("l3-question_store_fetch")
DO_GOTO;
}

LABEL(barrier) /* barrier ( -- ) S0 -- S0  */
/* All memory operations before the barrier are performed
before any memory operation after the barrier. */
NAME("barrier")
ip += 1;
LABEL1(barrier)
{
DEF_CA
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
{
#line 3440 "prim"
#ifdef HAS_ATOMIC
__atomic_thread_fence(__ATOMIC_RELEASE);
#elif defined(HAS_SYNC)
__sync_synchronize();
#endif
#line 19628 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(barrier)
NAME1("l2-barrier")
NEXT_P1_5;
LABEL3(barrier)
NAME1("l3-barrier")
DO_GOTO;
}

GROUPADD(4)
GROUP( peephole, 440)
GROUPADD(0)
#ifdef HAS_PEEPHOLE
LABEL(forget_dyncode3) /* forget-dyncode3 ( a_tc -- f ) S0 -- S0  */
/*  */
NAME("forget-dyncode3")
ip += 1;
LABEL1(forget_dyncode3)
{
DEF_CA
MAYBE_UNUSED Cell * a_tc;
Bool f;
NEXT_P0;
vm_Cell2a_(sp[0],a_tc);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_tc=", vm_out); printarg_a_(a_tc);
}
#endif
{
#line 3451 "prim"
f = forget_dyncode3((Label *)a_tc);
#line 19668 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" f=", vm_out); printarg_f(f);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_f2Cell(f,sp[0]);
LABEL2(forget_dyncode3)
NAME1("l2-forget_dyncode3")
NEXT_P1_5;
LABEL3(forget_dyncode3)
NAME1("l3-forget_dyncode3")
DO_GOTO;
}

LABEL(decompile_prim3) /* decompile-prim3 ( a_tc -- useqlen ustart uend c_addr u nlen ) S0 -- S0  */
/* a_tc is a threaded-code address; the contents of the cell at a_tc is
the code address of machine code of nlen bytes, corresponding to
the primitive or primitive sequence with the name(s) c_addr u, with
start state ustart and end state uend, and useqlen basic primitives in
the sequence.  If a_tc does not point to a dynamically-compiled primitive,
useqlen is 0.  If there is no primitive for a_tc, nlen is negative. */
NAME("decompile-prim3")
ip += 1;
LABEL1(decompile_prim3)
{
DEF_CA
MAYBE_UNUSED Cell * a_tc;
UCell useqlen;
UCell ustart;
UCell uend;
Char * c_addr;
UCell u;
Cell nlen;
NEXT_P0;
vm_Cell2a_(sp[0],a_tc);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_tc=", vm_out); printarg_a_(a_tc);
}
#endif
sp += -5;
{
#line 3460 "prim"
DynamicInfo *di = decompile_prim3((Label *)a_tc);
const char *s = prim_names[di->prim];
useqlen = di->seqlen;
ustart = state_map(di->start_state);
uend = state_map(di->end_state);
c_addr = (Address)s;
u = strlen(s);
nlen = di->length;
#line 19724 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" useqlen=", vm_out); printarg_u(useqlen);
fputs(" ustart=", vm_out); printarg_u(ustart);
fputs(" uend=", vm_out); printarg_u(uend);
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" u=", vm_out); printarg_u(u);
fputs(" nlen=", vm_out); printarg_n(nlen);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(useqlen,sp[5]);
vm_u2Cell(ustart,sp[4]);
vm_u2Cell(uend,sp[3]);
vm_c_2Cell(c_addr,sp[2]);
vm_u2Cell(u,sp[1]);
vm_n2Cell(nlen,sp[0]);
LABEL2(decompile_prim3)
NAME1("l2-decompile_prim3")
NEXT_P1_5;
LABEL3(decompile_prim3)
NAME1("l3-decompile_prim3")
DO_GOTO;
}

LABEL(fetch_decompile_prim) /* @decompile-prim ( a_addr -- w ) S0 -- S0  */
/* w is the cell stored at a_addr, except if the cell at a_addr points to
dynamically generated native code or a static superinstruction; in that case
w is the static code address of the primitive at a_addr, i.e, what you would
get with neither dynamic native code generation nor static superinstructions. */
NAME("@decompile-prim")
ip += 1;
LABEL1(fetch_decompile_prim)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
Cell w;
NEXT_P0;
vm_Cell2a_(sp[0],a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
{
#line 3474 "prim"
w = (Cell)fetch_decompile_prim(a_addr);
#line 19775 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" w=", vm_out); printarg_w(w);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_w2Cell(w,sp[0]);
LABEL2(fetch_decompile_prim)
NAME1("l2-fetch_decompile_prim")
NEXT_P1_5;
LABEL3(fetch_decompile_prim)
NAME1("l3-fetch_decompile_prim")
DO_GOTO;
}

LABEL(tag_offsets) /* tag-offsets ( -- a_addr ) S0 -- S0  */
/*  */
NAME("tag-offsets")
ip += 1;
LABEL1(tag_offsets)
{
DEF_CA
Cell * a_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3477 "prim"
extern Cell groups[32];
a_addr = groups;
#line 19812 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(tag_offsets)
NAME1("l2-tag_offsets")
NEXT_P1_5;
LABEL3(tag_offsets)
NAME1("l3-tag_offsets")
DO_GOTO;
}

LABEL(compile_prims) /* compile-prims ( a_addr_code u c_addr_abits c_addr_tbits -- ) S0 -- S0  */
/*  */
NAME("compile-prims")
ip += 1;
LABEL1(compile_prims)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr_code;
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Char * c_addr_abits;
MAYBE_UNUSED Char * c_addr_tbits;
NEXT_P0;
vm_Cell2a_(sp[3],a_addr_code);
vm_Cell2u(sp[2],u);
vm_Cell2c_(sp[1],c_addr_abits);
vm_Cell2c_(sp[0],c_addr_tbits);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr_code=", vm_out); printarg_a_(a_addr_code);
fputs(" u=", vm_out); printarg_u(u);
fputs(" c_addr_abits=", vm_out); printarg_c_(c_addr_abits);
fputs(" c_addr_tbits=", vm_out); printarg_c_(c_addr_tbits);
}
#endif
sp += 4;
{
#line 3481 "prim"
gforth_compile_range(a_addr_code, u, c_addr_abits, c_addr_tbits);
#line 19859 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(compile_prims)
NAME1("l2-compile_prims")
NEXT_P1_5;
LABEL3(compile_prims)
NAME1("l3-compile_prims")
DO_GOTO;
}

GROUPADD(5)
#endif
GROUPADD(0)
GROUP( primitive_centric, 445)
LABEL(abi_call) /* abi-call ( #a_callee ... -- ... ) S0 -- S0  */
/*  */
NAME("abi-call")
ip += 2;
LABEL1(abi_call)
{
DEF_CA
MAYBE_UNUSED Cell * a_callee;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397809 ),a_callee);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_callee=", vm_out); printarg_a_(a_callee);
}
#endif
{
#line 3491 "prim"
/* primitive for compiled ABI-CODE words */
abifunc *f = (abifunc *)a_callee;
Float *fp_mem = fp;
sp = (*f)(sp, &fp_mem);
fp = fp_mem;
#line 19902 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(abi_call)
NAME1("l2-abi_call")
NEXT_P1_5;
LABEL3(abi_call)
NAME1("l3-abi_call")
DO_GOTO;
}

LABEL(semi_abi_code_exec) /* ;abi-code-exec ( #a_cfa ... -- ... ) S0 -- S0  */
/*  */
NAME(";abi-code-exec")
ip += 2;
LABEL1(semi_abi_code_exec)
{
DEF_CA
MAYBE_UNUSED Cell * a_cfa;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397810 ),a_cfa);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_cfa=", vm_out); printarg_a_(a_cfa);
}
#endif
{
#line 3498 "prim"
/* primitive for performing ;ABI-CODE words */
Float *fp_mem = fp;
semiabifunc *f = (semiabifunc *)EXTRA_CODE(a_cfa);
Address body = (Address)PFA(a_cfa);
sp = (*f)(sp, &fp_mem, body);
fp = fp_mem;
#line 19942 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(semi_abi_code_exec)
NAME1("l2-semi_abi_code_exec")
NEXT_P1_5;
LABEL3(semi_abi_code_exec)
NAME1("l3-semi_abi_code_exec")
DO_GOTO;
}

LABEL(lit_execute) /* lit-execute ( #a_addr -- ) S0 -- S0  */
/*  */
NAME("lit-execute")
ip += 2;
LABEL1(lit_execute)
{
DEF_CA
MAYBE_UNUSED Cell * a_addr;
NEXT_P0;
vm_Cell2a_(IMM_ARG(IP[-1],305397811 ),a_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" a_addr=", vm_out); printarg_a_(a_addr);
}
#endif
{
#line 3506 "prim"
/* for ;code and code words; a static superinstruction would be more general, 
   but VM_JUMP is currently not supported there */
ip=IP;
SUPER_END;
VM_JUMP(EXEC1((Xt)a_addr));
#line 19981 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(lit_execute)
LABEL3(lit_execute)
DO_GOTO;
}

GROUPADD(3)
GROUP( object_pointer, 448)
GROUPADD(0)
#ifdef HAS_OBJECTS
LABEL(to_o) /* >o ( c_addr -- r:c_old ) S0 -- S0  */
/* Set the current object to @var{c_addr}, the previous current object is pushed to the return stack */
NAME(">o")
ip += 1;
LABEL1(to_o)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
Char * c_old;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
sp += 1;
rp += -1;
{
#line 3518 "prim"
c_old = op;
op = c_addr;
#line 20020 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_old=", vm_out); printarg_c_(c_old);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_old,rp[0]);
LABEL2(to_o)
NAME1("l2-to_o")
NEXT_P1_5;
LABEL3(to_o)
NAME1("l3-to_o")
DO_GOTO;
}

LABEL(o_restore) /* o> ( r:c_addr -- ) S0 -- S0  */
/* Restore the previous current object from the return stack */
NAME("o>")
ip += 1;
LABEL1(o_restore)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
NEXT_P0;
vm_Cell2c_(rp[0],c_addr);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
}
#endif
rp += 1;
{
#line 3523 "prim"
op = c_addr;
#line 20058 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(o_restore)
NAME1("l2-o_restore")
NEXT_P1_5;
LABEL3(o_restore)
NAME1("l3-o_restore")
DO_GOTO;
}

LABEL(o_lit_exec) /* o#exec ( #w -- ) S0 -- S0  */
/* method invocation, use index -1 of current op as vtable */
NAME("o#exec")
ip += 2;
LABEL1(o_lit_exec)
{
DEF_CA
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2w(IMM_ARG(IP[-1],305397812 ),w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" w=", vm_out); printarg_w(w);
}
#endif
{
#line 3527 "prim"
ip=IP;
SUPER_END;
VM_JUMP(EXEC1(((Xt**)op)[-1][w]));
#line 20095 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(o_lit_exec)
LABEL3(o_lit_exec)
DO_GOTO;
}

LABEL(x_lit_exec) /* x#exec ( c_addr #w -- c_addr ) S0 -- S0  */
/* method invocation using the stack */
NAME("x#exec")
ip += 2;
LABEL1(x_lit_exec)
{
DEF_CA
MAYBE_UNUSED Char * c_addr;
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2c_(sp[0],c_addr);
vm_Cell2w(IMM_ARG(IP[-1],305397813 ),w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputs(" w=", vm_out); printarg_w(w);
}
#endif
{
#line 3533 "prim"
#ifdef DEBUG
	   debugp(stderr,"%08lx: x#exec %08lx %04lx\n",(Cell)ip,(Cell)c_addr,(Cell)w);
#endif
ip=IP;
SUPER_END;
VM_JUMP(EXEC1(((Xt**)c_addr)[-1][w]));
#line 20134 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(x_lit_exec)
LABEL3(x_lit_exec)
DO_GOTO;
}

LABEL(u_lit_exec) /* u#exec ( #n #w -- ) S0 -- S0  */
/* method invocation using a user address as current object */
NAME("u#exec")
ip += 3;
LABEL1(u_lit_exec)
{
DEF_CA
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell w;
NEXT_P0;
vm_Cell2n(IMM_ARG(IP[-2],305397814 ),n);
vm_Cell2w(IMM_ARG(IP[-1],305397815 ),w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
fputs(" w=", vm_out); printarg_w(w);
}
#endif
{
#line 3542 "prim"
ip=IP;
SUPER_END;
VM_JUMP(EXEC1((*(Xt***)(((Address)up)+n))[-1][w]));
#line 20170 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
LABEL2(u_lit_exec)
LABEL3(u_lit_exec)
DO_GOTO;
}

LABEL(u_lit_plus) /* u#+ ( #n #w -- c_addr ) S0 -- S0  */
/* instance variable using a user address as current object */
NAME("u#+")
ip += 3;
LABEL1(u_lit_plus)
{
DEF_CA
MAYBE_UNUSED Cell n;
MAYBE_UNUSED Cell w;
Char * c_addr;
NEXT_P0;
vm_Cell2n(IMM_ARG(IP[-2],305397816 ),n);
vm_Cell2w(IMM_ARG(IP[-1],305397817 ),w);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
fputs(" w=", vm_out); printarg_w(w);
}
#endif
sp += -1;
{
#line 3548 "prim"
c_addr = (*(Address*)(((Address)up)+n))+w;
#line 20206 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr,sp[0]);
LABEL2(u_lit_plus)
NAME1("l2-u_lit_plus")
NEXT_P1_5;
LABEL3(u_lit_plus)
NAME1("l3-u_lit_plus")
DO_GOTO;
}

LABEL(up_fetch) /* up@ ( -- a_addr ) S0 -- S0  */
/* @i{Addr} is the start of the user area of the current task (@i{addr} also
serves as the @i{task} identifier of the current task). */
NAME("up@")
ip += 1;
LABEL1(up_fetch)
{
DEF_CA
Cell * a_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3553 "prim"
a_addr = (Cell*)up;
#line 20243 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(up_fetch)
NAME1("l2-up_fetch")
NEXT_P1_5;
LABEL3(up_fetch)
NAME1("l3-up_fetch")
DO_GOTO;
}

LABEL(o) /* o ( -- a_addr ) S0 -- S0  */
/*  */
NAME("o")
ip += 1;
LABEL1(o)
{
DEF_CA
Cell * a_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3556 "prim"
a_addr = (Cell*)op;
#line 20279 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" a_addr=", vm_out); printarg_a_(a_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_a_2Cell(a_addr,sp[0]);
LABEL2(o)
NAME1("l2-o")
NEXT_P1_5;
LABEL3(o)
NAME1("l3-o")
DO_GOTO;
}

LABEL(o_plus) /* o+ ( n -- c_addr ) S0 -- S0  */
/*  */
NAME("o+")
ip += 1;
LABEL1(o_plus)
{
DEF_CA
MAYBE_UNUSED Cell n;
Char * c_addr;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 3559 "prim"
c_addr = ((Char*)op)+n;
#line 20317 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" c_addr=", vm_out); printarg_c_(c_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_c_2Cell(c_addr,sp[0]);
LABEL2(o_plus)
NAME1("l2-o_plus")
NEXT_P1_5;
LABEL3(o_plus)
NAME1("l3-o_plus")
DO_GOTO;
}

LABEL(store_o_plus) /* !o+ ( u n -- ) S0 -- S0  */
/*  */
NAME("!o+")
ip += 1;
LABEL1(store_o_plus)
{
DEF_CA
MAYBE_UNUSED UCell u;
MAYBE_UNUSED Cell n;
NEXT_P0;
vm_Cell2u(sp[1],u);
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 2;
{
#line 3562 "prim"
*(Cell*)(((Char*)op)+n) = u;
#line 20358 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_plus)
NAME1("l2-store_o_plus")
NEXT_P1_5;
LABEL3(store_o_plus)
NAME1("l3-store_o_plus")
DO_GOTO;
}

LABEL(fetch_o_plus) /* @o+ ( n -- u ) S0 -- S0  */
/*  */
NAME("@o+")
ip += 1;
LABEL1(fetch_o_plus)
{
DEF_CA
MAYBE_UNUSED Cell n;
UCell u;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
{
#line 3565 "prim"
u = *(Cell*)(((Char*)op)+n);
#line 20394 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_plus)
NAME1("l2-fetch_o_plus")
NEXT_P1_5;
LABEL3(fetch_o_plus)
NAME1("l3-fetch_o_plus")
DO_GOTO;
}

LABEL(sf_store_o_plus) /* sf!o+ ( r n -- ) S0 -- S0  */
/*  */
NAME("sf!o+")
ip += 1;
LABEL1(sf_store_o_plus)
{
DEF_CA
MAYBE_UNUSED Float r;
MAYBE_UNUSED Cell n;
NEXT_P0;
vm_Float2r(fp[0],r);
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
fp += 1;
{
#line 3568 "prim"
*(SFloat*)(((Char*)op)+n) = r;
#line 20436 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_plus)
NAME1("l2-sf_store_o_plus")
NEXT_P1_5;
LABEL3(sf_store_o_plus)
NAME1("l3-sf_store_o_plus")
DO_GOTO;
}

LABEL(sf_fetch_o_plus) /* sf@o+ ( n -- r ) S0 -- S0  */
/*  */
NAME("sf@o+")
ip += 1;
LABEL1(sf_fetch_o_plus)
{
DEF_CA
MAYBE_UNUSED Cell n;
Float r;
NEXT_P0;
vm_Cell2n(sp[0],n);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" n=", vm_out); printarg_n(n);
}
#endif
sp += 1;
fp += -1;
{
#line 3571 "prim"
r = *(SFloat*)(((Char*)op)+n);
#line 20474 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_plus)
NAME1("l2-sf_fetch_o_plus")
NEXT_P1_5;
LABEL3(sf_fetch_o_plus)
NAME1("l3-sf_fetch_o_plus")
DO_GOTO;
}

LABEL(o_0) /* o0 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o0")
ip += 1;
LABEL1(o_0)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+0;
#line 3571
#line 20511 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_0)
NAME1("l2-o_0")
NEXT_P1_5;
LABEL3(o_0)
NAME1("l3-o_0")
DO_GOTO;
}

LABEL(o_1) /* o1 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o1")
ip += 1;
LABEL1(o_1)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+1;
#line 3571
#line 20548 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_1)
NAME1("l2-o_1")
NEXT_P1_5;
LABEL3(o_1)
NAME1("l3-o_1")
DO_GOTO;
}

LABEL(o_2) /* o2 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o2")
ip += 1;
LABEL1(o_2)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+2;
#line 3571
#line 20585 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_2)
NAME1("l2-o_2")
NEXT_P1_5;
LABEL3(o_2)
NAME1("l3-o_2")
DO_GOTO;
}

LABEL(o_3) /* o3 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o3")
ip += 1;
LABEL1(o_3)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+3;
#line 3571
#line 20622 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_3)
NAME1("l2-o_3")
NEXT_P1_5;
LABEL3(o_3)
NAME1("l3-o_3")
DO_GOTO;
}

LABEL(o_4) /* o4 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o4")
ip += 1;
LABEL1(o_4)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+4;
#line 3571
#line 20659 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_4)
NAME1("l2-o_4")
NEXT_P1_5;
LABEL3(o_4)
NAME1("l3-o_4")
DO_GOTO;
}

LABEL(o_5) /* o5 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o5")
ip += 1;
LABEL1(o_5)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+5;
#line 3571
#line 20696 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_5)
NAME1("l2-o_5")
NEXT_P1_5;
LABEL3(o_5)
NAME1("l3-o_5")
DO_GOTO;
}

LABEL(o_6) /* o6 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o6")
ip += 1;
LABEL1(o_6)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+6;
#line 3571
#line 20733 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_6)
NAME1("l2-o_6")
NEXT_P1_5;
LABEL3(o_6)
NAME1("l3-o_6")
DO_GOTO;
}

LABEL(o_7) /* o7 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o7")
ip += 1;
LABEL1(o_7)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+7;
#line 3571
#line 20770 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_7)
NAME1("l2-o_7")
NEXT_P1_5;
LABEL3(o_7)
NAME1("l3-o_7")
DO_GOTO;
}

LABEL(o_8) /* o8 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o8")
ip += 1;
LABEL1(o_8)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+8;
#line 3571
#line 20807 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_8)
NAME1("l2-o_8")
NEXT_P1_5;
LABEL3(o_8)
NAME1("l3-o_8")
DO_GOTO;
}

LABEL(o_9) /* o9 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o9")
ip += 1;
LABEL1(o_9)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+9;
#line 3571
#line 20844 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_9)
NAME1("l2-o_9")
NEXT_P1_5;
LABEL3(o_9)
NAME1("l3-o_9")
DO_GOTO;
}

LABEL(o_10) /* o10 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o10")
ip += 1;
LABEL1(o_10)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+10;
#line 3571
#line 20881 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_10)
NAME1("l2-o_10")
NEXT_P1_5;
LABEL3(o_10)
NAME1("l3-o_10")
DO_GOTO;
}

LABEL(o_11) /* o11 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o11")
ip += 1;
LABEL1(o_11)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+11;
#line 3571
#line 20918 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_11)
NAME1("l2-o_11")
NEXT_P1_5;
LABEL3(o_11)
NAME1("l3-o_11")
DO_GOTO;
}

LABEL(o_12) /* o12 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o12")
ip += 1;
LABEL1(o_12)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+12;
#line 3571
#line 20955 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_12)
NAME1("l2-o_12")
NEXT_P1_5;
LABEL3(o_12)
NAME1("l3-o_12")
DO_GOTO;
}

LABEL(o_13) /* o13 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o13")
ip += 1;
LABEL1(o_13)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+13;
#line 3571
#line 20992 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_13)
NAME1("l2-o_13")
NEXT_P1_5;
LABEL3(o_13)
NAME1("l3-o_13")
DO_GOTO;
}

LABEL(o_14) /* o14 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o14")
ip += 1;
LABEL1(o_14)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+14;
#line 3571
#line 21029 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_14)
NAME1("l2-o_14")
NEXT_P1_5;
LABEL3(o_14)
NAME1("l3-o_14")
DO_GOTO;
}

LABEL(o_15) /* o15 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o15")
ip += 1;
LABEL1(o_15)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+15;
#line 3571
#line 21066 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_15)
NAME1("l2-o_15")
NEXT_P1_5;
LABEL3(o_15)
NAME1("l3-o_15")
DO_GOTO;
}

LABEL(o_16) /* o16 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o16")
ip += 1;
LABEL1(o_16)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+16;
#line 3571
#line 21103 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_16)
NAME1("l2-o_16")
NEXT_P1_5;
LABEL3(o_16)
NAME1("l3-o_16")
DO_GOTO;
}

LABEL(o_17) /* o17 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o17")
ip += 1;
LABEL1(o_17)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+17;
#line 3571
#line 21140 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_17)
NAME1("l2-o_17")
NEXT_P1_5;
LABEL3(o_17)
NAME1("l3-o_17")
DO_GOTO;
}

LABEL(o_18) /* o18 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o18")
ip += 1;
LABEL1(o_18)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+18;
#line 3571
#line 21177 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_18)
NAME1("l2-o_18")
NEXT_P1_5;
LABEL3(o_18)
NAME1("l3-o_18")
DO_GOTO;
}

LABEL(o_19) /* o19 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o19")
ip += 1;
LABEL1(o_19)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+19;
#line 3571
#line 21214 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_19)
NAME1("l2-o_19")
NEXT_P1_5;
LABEL3(o_19)
NAME1("l3-o_19")
DO_GOTO;
}

LABEL(o_20) /* o20 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o20")
ip += 1;
LABEL1(o_20)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+20;
#line 3571
#line 21251 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_20)
NAME1("l2-o_20")
NEXT_P1_5;
LABEL3(o_20)
NAME1("l3-o_20")
DO_GOTO;
}

LABEL(o_21) /* o21 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o21")
ip += 1;
LABEL1(o_21)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+21;
#line 3571
#line 21288 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_21)
NAME1("l2-o_21")
NEXT_P1_5;
LABEL3(o_21)
NAME1("l3-o_21")
DO_GOTO;
}

LABEL(o_22) /* o22 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o22")
ip += 1;
LABEL1(o_22)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+22;
#line 3571
#line 21325 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_22)
NAME1("l2-o_22")
NEXT_P1_5;
LABEL3(o_22)
NAME1("l3-o_22")
DO_GOTO;
}

LABEL(o_23) /* o23 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o23")
ip += 1;
LABEL1(o_23)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+23;
#line 3571
#line 21362 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_23)
NAME1("l2-o_23")
NEXT_P1_5;
LABEL3(o_23)
NAME1("l3-o_23")
DO_GOTO;
}

LABEL(o_24) /* o24 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o24")
ip += 1;
LABEL1(o_24)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+24;
#line 3571
#line 21399 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_24)
NAME1("l2-o_24")
NEXT_P1_5;
LABEL3(o_24)
NAME1("l3-o_24")
DO_GOTO;
}

LABEL(o_25) /* o25 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o25")
ip += 1;
LABEL1(o_25)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+25;
#line 3571
#line 21436 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_25)
NAME1("l2-o_25")
NEXT_P1_5;
LABEL3(o_25)
NAME1("l3-o_25")
DO_GOTO;
}

LABEL(o_26) /* o26 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o26")
ip += 1;
LABEL1(o_26)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+26;
#line 3571
#line 21473 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_26)
NAME1("l2-o_26")
NEXT_P1_5;
LABEL3(o_26)
NAME1("l3-o_26")
DO_GOTO;
}

LABEL(o_27) /* o27 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o27")
ip += 1;
LABEL1(o_27)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+27;
#line 3571
#line 21510 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_27)
NAME1("l2-o_27")
NEXT_P1_5;
LABEL3(o_27)
NAME1("l3-o_27")
DO_GOTO;
}

LABEL(o_28) /* o28 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o28")
ip += 1;
LABEL1(o_28)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+28;
#line 3571
#line 21547 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_28)
NAME1("l2-o_28")
NEXT_P1_5;
LABEL3(o_28)
NAME1("l3-o_28")
DO_GOTO;
}

LABEL(o_29) /* o29 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o29")
ip += 1;
LABEL1(o_29)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+29;
#line 3571
#line 21584 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_29)
NAME1("l2-o_29")
NEXT_P1_5;
LABEL3(o_29)
NAME1("l3-o_29")
DO_GOTO;
}

LABEL(o_30) /* o30 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o30")
ip += 1;
LABEL1(o_30)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+30;
#line 3571
#line 21621 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_30)
NAME1("l2-o_30")
NEXT_P1_5;
LABEL3(o_30)
NAME1("l3-o_30")
DO_GOTO;
}

LABEL(o_31) /* o31 ( -- sf_addr ) S0 -- S0  */
/*  */
NAME("o31")
ip += 1;
LABEL1(o_31)
{
DEF_CA
SFloat * sf_addr;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3572 "prim"
sf_addr = ((SFloat *)op)+31;
#line 3571
#line 21658 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" sf_addr=", vm_out); printarg_sf_(sf_addr);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_sf_2Cell(sf_addr,sp[0]);
LABEL2(o_31)
NAME1("l2-o_31")
NEXT_P1_5;
LABEL3(o_31)
NAME1("l3-o_31")
DO_GOTO;
}

LABEL(store_o_0) /* !o0 ( u -- ) S0 -- S0  */
/*  */
NAME("!o0")
ip += 1;
LABEL1(store_o_0)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[0] = u;
#line 3574
#line 21697 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_0)
NAME1("l2-store_o_0")
NEXT_P1_5;
LABEL3(store_o_0)
NAME1("l3-store_o_0")
DO_GOTO;
}

LABEL(store_o_1) /* !o1 ( u -- ) S0 -- S0  */
/*  */
NAME("!o1")
ip += 1;
LABEL1(store_o_1)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[1] = u;
#line 3574
#line 21734 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_1)
NAME1("l2-store_o_1")
NEXT_P1_5;
LABEL3(store_o_1)
NAME1("l3-store_o_1")
DO_GOTO;
}

LABEL(store_o_2) /* !o2 ( u -- ) S0 -- S0  */
/*  */
NAME("!o2")
ip += 1;
LABEL1(store_o_2)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[2] = u;
#line 3574
#line 21771 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_2)
NAME1("l2-store_o_2")
NEXT_P1_5;
LABEL3(store_o_2)
NAME1("l3-store_o_2")
DO_GOTO;
}

LABEL(store_o_3) /* !o3 ( u -- ) S0 -- S0  */
/*  */
NAME("!o3")
ip += 1;
LABEL1(store_o_3)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[3] = u;
#line 3574
#line 21808 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_3)
NAME1("l2-store_o_3")
NEXT_P1_5;
LABEL3(store_o_3)
NAME1("l3-store_o_3")
DO_GOTO;
}

LABEL(store_o_4) /* !o4 ( u -- ) S0 -- S0  */
/*  */
NAME("!o4")
ip += 1;
LABEL1(store_o_4)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[4] = u;
#line 3574
#line 21845 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_4)
NAME1("l2-store_o_4")
NEXT_P1_5;
LABEL3(store_o_4)
NAME1("l3-store_o_4")
DO_GOTO;
}

LABEL(store_o_5) /* !o5 ( u -- ) S0 -- S0  */
/*  */
NAME("!o5")
ip += 1;
LABEL1(store_o_5)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[5] = u;
#line 3574
#line 21882 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_5)
NAME1("l2-store_o_5")
NEXT_P1_5;
LABEL3(store_o_5)
NAME1("l3-store_o_5")
DO_GOTO;
}

LABEL(store_o_6) /* !o6 ( u -- ) S0 -- S0  */
/*  */
NAME("!o6")
ip += 1;
LABEL1(store_o_6)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[6] = u;
#line 3574
#line 21919 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_6)
NAME1("l2-store_o_6")
NEXT_P1_5;
LABEL3(store_o_6)
NAME1("l3-store_o_6")
DO_GOTO;
}

LABEL(store_o_7) /* !o7 ( u -- ) S0 -- S0  */
/*  */
NAME("!o7")
ip += 1;
LABEL1(store_o_7)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[7] = u;
#line 3574
#line 21956 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_7)
NAME1("l2-store_o_7")
NEXT_P1_5;
LABEL3(store_o_7)
NAME1("l3-store_o_7")
DO_GOTO;
}

LABEL(store_o_8) /* !o8 ( u -- ) S0 -- S0  */
/*  */
NAME("!o8")
ip += 1;
LABEL1(store_o_8)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[8] = u;
#line 3574
#line 21993 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_8)
NAME1("l2-store_o_8")
NEXT_P1_5;
LABEL3(store_o_8)
NAME1("l3-store_o_8")
DO_GOTO;
}

LABEL(store_o_9) /* !o9 ( u -- ) S0 -- S0  */
/*  */
NAME("!o9")
ip += 1;
LABEL1(store_o_9)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[9] = u;
#line 3574
#line 22030 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_9)
NAME1("l2-store_o_9")
NEXT_P1_5;
LABEL3(store_o_9)
NAME1("l3-store_o_9")
DO_GOTO;
}

LABEL(store_o_10) /* !o10 ( u -- ) S0 -- S0  */
/*  */
NAME("!o10")
ip += 1;
LABEL1(store_o_10)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[10] = u;
#line 3574
#line 22067 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_10)
NAME1("l2-store_o_10")
NEXT_P1_5;
LABEL3(store_o_10)
NAME1("l3-store_o_10")
DO_GOTO;
}

LABEL(store_o_11) /* !o11 ( u -- ) S0 -- S0  */
/*  */
NAME("!o11")
ip += 1;
LABEL1(store_o_11)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[11] = u;
#line 3574
#line 22104 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_11)
NAME1("l2-store_o_11")
NEXT_P1_5;
LABEL3(store_o_11)
NAME1("l3-store_o_11")
DO_GOTO;
}

LABEL(store_o_12) /* !o12 ( u -- ) S0 -- S0  */
/*  */
NAME("!o12")
ip += 1;
LABEL1(store_o_12)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[12] = u;
#line 3574
#line 22141 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_12)
NAME1("l2-store_o_12")
NEXT_P1_5;
LABEL3(store_o_12)
NAME1("l3-store_o_12")
DO_GOTO;
}

LABEL(store_o_13) /* !o13 ( u -- ) S0 -- S0  */
/*  */
NAME("!o13")
ip += 1;
LABEL1(store_o_13)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[13] = u;
#line 3574
#line 22178 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_13)
NAME1("l2-store_o_13")
NEXT_P1_5;
LABEL3(store_o_13)
NAME1("l3-store_o_13")
DO_GOTO;
}

LABEL(store_o_14) /* !o14 ( u -- ) S0 -- S0  */
/*  */
NAME("!o14")
ip += 1;
LABEL1(store_o_14)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[14] = u;
#line 3574
#line 22215 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_14)
NAME1("l2-store_o_14")
NEXT_P1_5;
LABEL3(store_o_14)
NAME1("l3-store_o_14")
DO_GOTO;
}

LABEL(store_o_15) /* !o15 ( u -- ) S0 -- S0  */
/*  */
NAME("!o15")
ip += 1;
LABEL1(store_o_15)
{
DEF_CA
MAYBE_UNUSED UCell u;
NEXT_P0;
vm_Cell2u(sp[0],u);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" u=", vm_out); printarg_u(u);
}
#endif
sp += 1;
{
#line 3575 "prim"
((Cell *)op)[15] = u;
#line 3574
#line 22252 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(store_o_15)
NAME1("l2-store_o_15")
NEXT_P1_5;
LABEL3(store_o_15)
NAME1("l3-store_o_15")
DO_GOTO;
}

LABEL(fetch_o_0) /* @o0 ( -- u ) S0 -- S0  */
/*  */
NAME("@o0")
ip += 1;
LABEL1(fetch_o_0)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[0];
#line 3577
#line 22287 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_0)
NAME1("l2-fetch_o_0")
NEXT_P1_5;
LABEL3(fetch_o_0)
NAME1("l3-fetch_o_0")
DO_GOTO;
}

LABEL(fetch_o_1) /* @o1 ( -- u ) S0 -- S0  */
/*  */
NAME("@o1")
ip += 1;
LABEL1(fetch_o_1)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[1];
#line 3577
#line 22324 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_1)
NAME1("l2-fetch_o_1")
NEXT_P1_5;
LABEL3(fetch_o_1)
NAME1("l3-fetch_o_1")
DO_GOTO;
}

LABEL(fetch_o_2) /* @o2 ( -- u ) S0 -- S0  */
/*  */
NAME("@o2")
ip += 1;
LABEL1(fetch_o_2)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[2];
#line 3577
#line 22361 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_2)
NAME1("l2-fetch_o_2")
NEXT_P1_5;
LABEL3(fetch_o_2)
NAME1("l3-fetch_o_2")
DO_GOTO;
}

LABEL(fetch_o_3) /* @o3 ( -- u ) S0 -- S0  */
/*  */
NAME("@o3")
ip += 1;
LABEL1(fetch_o_3)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[3];
#line 3577
#line 22398 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_3)
NAME1("l2-fetch_o_3")
NEXT_P1_5;
LABEL3(fetch_o_3)
NAME1("l3-fetch_o_3")
DO_GOTO;
}

LABEL(fetch_o_4) /* @o4 ( -- u ) S0 -- S0  */
/*  */
NAME("@o4")
ip += 1;
LABEL1(fetch_o_4)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[4];
#line 3577
#line 22435 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_4)
NAME1("l2-fetch_o_4")
NEXT_P1_5;
LABEL3(fetch_o_4)
NAME1("l3-fetch_o_4")
DO_GOTO;
}

LABEL(fetch_o_5) /* @o5 ( -- u ) S0 -- S0  */
/*  */
NAME("@o5")
ip += 1;
LABEL1(fetch_o_5)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[5];
#line 3577
#line 22472 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_5)
NAME1("l2-fetch_o_5")
NEXT_P1_5;
LABEL3(fetch_o_5)
NAME1("l3-fetch_o_5")
DO_GOTO;
}

LABEL(fetch_o_6) /* @o6 ( -- u ) S0 -- S0  */
/*  */
NAME("@o6")
ip += 1;
LABEL1(fetch_o_6)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[6];
#line 3577
#line 22509 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_6)
NAME1("l2-fetch_o_6")
NEXT_P1_5;
LABEL3(fetch_o_6)
NAME1("l3-fetch_o_6")
DO_GOTO;
}

LABEL(fetch_o_7) /* @o7 ( -- u ) S0 -- S0  */
/*  */
NAME("@o7")
ip += 1;
LABEL1(fetch_o_7)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[7];
#line 3577
#line 22546 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_7)
NAME1("l2-fetch_o_7")
NEXT_P1_5;
LABEL3(fetch_o_7)
NAME1("l3-fetch_o_7")
DO_GOTO;
}

LABEL(fetch_o_8) /* @o8 ( -- u ) S0 -- S0  */
/*  */
NAME("@o8")
ip += 1;
LABEL1(fetch_o_8)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[8];
#line 3577
#line 22583 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_8)
NAME1("l2-fetch_o_8")
NEXT_P1_5;
LABEL3(fetch_o_8)
NAME1("l3-fetch_o_8")
DO_GOTO;
}

LABEL(fetch_o_9) /* @o9 ( -- u ) S0 -- S0  */
/*  */
NAME("@o9")
ip += 1;
LABEL1(fetch_o_9)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[9];
#line 3577
#line 22620 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_9)
NAME1("l2-fetch_o_9")
NEXT_P1_5;
LABEL3(fetch_o_9)
NAME1("l3-fetch_o_9")
DO_GOTO;
}

LABEL(fetch_o_10) /* @o10 ( -- u ) S0 -- S0  */
/*  */
NAME("@o10")
ip += 1;
LABEL1(fetch_o_10)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[10];
#line 3577
#line 22657 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_10)
NAME1("l2-fetch_o_10")
NEXT_P1_5;
LABEL3(fetch_o_10)
NAME1("l3-fetch_o_10")
DO_GOTO;
}

LABEL(fetch_o_11) /* @o11 ( -- u ) S0 -- S0  */
/*  */
NAME("@o11")
ip += 1;
LABEL1(fetch_o_11)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[11];
#line 3577
#line 22694 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_11)
NAME1("l2-fetch_o_11")
NEXT_P1_5;
LABEL3(fetch_o_11)
NAME1("l3-fetch_o_11")
DO_GOTO;
}

LABEL(fetch_o_12) /* @o12 ( -- u ) S0 -- S0  */
/*  */
NAME("@o12")
ip += 1;
LABEL1(fetch_o_12)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[12];
#line 3577
#line 22731 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_12)
NAME1("l2-fetch_o_12")
NEXT_P1_5;
LABEL3(fetch_o_12)
NAME1("l3-fetch_o_12")
DO_GOTO;
}

LABEL(fetch_o_13) /* @o13 ( -- u ) S0 -- S0  */
/*  */
NAME("@o13")
ip += 1;
LABEL1(fetch_o_13)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[13];
#line 3577
#line 22768 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_13)
NAME1("l2-fetch_o_13")
NEXT_P1_5;
LABEL3(fetch_o_13)
NAME1("l3-fetch_o_13")
DO_GOTO;
}

LABEL(fetch_o_14) /* @o14 ( -- u ) S0 -- S0  */
/*  */
NAME("@o14")
ip += 1;
LABEL1(fetch_o_14)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[14];
#line 3577
#line 22805 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_14)
NAME1("l2-fetch_o_14")
NEXT_P1_5;
LABEL3(fetch_o_14)
NAME1("l3-fetch_o_14")
DO_GOTO;
}

LABEL(fetch_o_15) /* @o15 ( -- u ) S0 -- S0  */
/*  */
NAME("@o15")
ip += 1;
LABEL1(fetch_o_15)
{
DEF_CA
UCell u;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
sp += -1;
{
#line 3578 "prim"
u = ((Cell *)op)[15];
#line 3577
#line 22842 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" u=", vm_out); printarg_u(u);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_u2Cell(u,sp[0]);
LABEL2(fetch_o_15)
NAME1("l2-fetch_o_15")
NEXT_P1_5;
LABEL3(fetch_o_15)
NAME1("l3-fetch_o_15")
DO_GOTO;
}

LABEL(sf_store_o_0) /* sf!o0 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o0")
ip += 1;
LABEL1(sf_store_o_0)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[0] = r;
#line 3580
#line 22881 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_0)
NAME1("l2-sf_store_o_0")
NEXT_P1_5;
LABEL3(sf_store_o_0)
NAME1("l3-sf_store_o_0")
DO_GOTO;
}

LABEL(sf_store_o_1) /* sf!o1 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o1")
ip += 1;
LABEL1(sf_store_o_1)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[1] = r;
#line 3580
#line 22918 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_1)
NAME1("l2-sf_store_o_1")
NEXT_P1_5;
LABEL3(sf_store_o_1)
NAME1("l3-sf_store_o_1")
DO_GOTO;
}

LABEL(sf_store_o_2) /* sf!o2 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o2")
ip += 1;
LABEL1(sf_store_o_2)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[2] = r;
#line 3580
#line 22955 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_2)
NAME1("l2-sf_store_o_2")
NEXT_P1_5;
LABEL3(sf_store_o_2)
NAME1("l3-sf_store_o_2")
DO_GOTO;
}

LABEL(sf_store_o_3) /* sf!o3 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o3")
ip += 1;
LABEL1(sf_store_o_3)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[3] = r;
#line 3580
#line 22992 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_3)
NAME1("l2-sf_store_o_3")
NEXT_P1_5;
LABEL3(sf_store_o_3)
NAME1("l3-sf_store_o_3")
DO_GOTO;
}

LABEL(sf_store_o_4) /* sf!o4 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o4")
ip += 1;
LABEL1(sf_store_o_4)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[4] = r;
#line 3580
#line 23029 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_4)
NAME1("l2-sf_store_o_4")
NEXT_P1_5;
LABEL3(sf_store_o_4)
NAME1("l3-sf_store_o_4")
DO_GOTO;
}

LABEL(sf_store_o_5) /* sf!o5 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o5")
ip += 1;
LABEL1(sf_store_o_5)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[5] = r;
#line 3580
#line 23066 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_5)
NAME1("l2-sf_store_o_5")
NEXT_P1_5;
LABEL3(sf_store_o_5)
NAME1("l3-sf_store_o_5")
DO_GOTO;
}

LABEL(sf_store_o_6) /* sf!o6 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o6")
ip += 1;
LABEL1(sf_store_o_6)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[6] = r;
#line 3580
#line 23103 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_6)
NAME1("l2-sf_store_o_6")
NEXT_P1_5;
LABEL3(sf_store_o_6)
NAME1("l3-sf_store_o_6")
DO_GOTO;
}

LABEL(sf_store_o_7) /* sf!o7 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o7")
ip += 1;
LABEL1(sf_store_o_7)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[7] = r;
#line 3580
#line 23140 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_7)
NAME1("l2-sf_store_o_7")
NEXT_P1_5;
LABEL3(sf_store_o_7)
NAME1("l3-sf_store_o_7")
DO_GOTO;
}

LABEL(sf_store_o_8) /* sf!o8 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o8")
ip += 1;
LABEL1(sf_store_o_8)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[8] = r;
#line 3580
#line 23177 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_8)
NAME1("l2-sf_store_o_8")
NEXT_P1_5;
LABEL3(sf_store_o_8)
NAME1("l3-sf_store_o_8")
DO_GOTO;
}

LABEL(sf_store_o_9) /* sf!o9 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o9")
ip += 1;
LABEL1(sf_store_o_9)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[9] = r;
#line 3580
#line 23214 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_9)
NAME1("l2-sf_store_o_9")
NEXT_P1_5;
LABEL3(sf_store_o_9)
NAME1("l3-sf_store_o_9")
DO_GOTO;
}

LABEL(sf_store_o_10) /* sf!o10 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o10")
ip += 1;
LABEL1(sf_store_o_10)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[10] = r;
#line 3580
#line 23251 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_10)
NAME1("l2-sf_store_o_10")
NEXT_P1_5;
LABEL3(sf_store_o_10)
NAME1("l3-sf_store_o_10")
DO_GOTO;
}

LABEL(sf_store_o_11) /* sf!o11 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o11")
ip += 1;
LABEL1(sf_store_o_11)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[11] = r;
#line 3580
#line 23288 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_11)
NAME1("l2-sf_store_o_11")
NEXT_P1_5;
LABEL3(sf_store_o_11)
NAME1("l3-sf_store_o_11")
DO_GOTO;
}

LABEL(sf_store_o_12) /* sf!o12 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o12")
ip += 1;
LABEL1(sf_store_o_12)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[12] = r;
#line 3580
#line 23325 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_12)
NAME1("l2-sf_store_o_12")
NEXT_P1_5;
LABEL3(sf_store_o_12)
NAME1("l3-sf_store_o_12")
DO_GOTO;
}

LABEL(sf_store_o_13) /* sf!o13 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o13")
ip += 1;
LABEL1(sf_store_o_13)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[13] = r;
#line 3580
#line 23362 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_13)
NAME1("l2-sf_store_o_13")
NEXT_P1_5;
LABEL3(sf_store_o_13)
NAME1("l3-sf_store_o_13")
DO_GOTO;
}

LABEL(sf_store_o_14) /* sf!o14 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o14")
ip += 1;
LABEL1(sf_store_o_14)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[14] = r;
#line 3580
#line 23399 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_14)
NAME1("l2-sf_store_o_14")
NEXT_P1_5;
LABEL3(sf_store_o_14)
NAME1("l3-sf_store_o_14")
DO_GOTO;
}

LABEL(sf_store_o_15) /* sf!o15 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o15")
ip += 1;
LABEL1(sf_store_o_15)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[15] = r;
#line 3580
#line 23436 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_15)
NAME1("l2-sf_store_o_15")
NEXT_P1_5;
LABEL3(sf_store_o_15)
NAME1("l3-sf_store_o_15")
DO_GOTO;
}

LABEL(sf_store_o_16) /* sf!o16 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o16")
ip += 1;
LABEL1(sf_store_o_16)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[16] = r;
#line 3580
#line 23473 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_16)
NAME1("l2-sf_store_o_16")
NEXT_P1_5;
LABEL3(sf_store_o_16)
NAME1("l3-sf_store_o_16")
DO_GOTO;
}

LABEL(sf_store_o_17) /* sf!o17 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o17")
ip += 1;
LABEL1(sf_store_o_17)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[17] = r;
#line 3580
#line 23510 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_17)
NAME1("l2-sf_store_o_17")
NEXT_P1_5;
LABEL3(sf_store_o_17)
NAME1("l3-sf_store_o_17")
DO_GOTO;
}

LABEL(sf_store_o_18) /* sf!o18 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o18")
ip += 1;
LABEL1(sf_store_o_18)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[18] = r;
#line 3580
#line 23547 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_18)
NAME1("l2-sf_store_o_18")
NEXT_P1_5;
LABEL3(sf_store_o_18)
NAME1("l3-sf_store_o_18")
DO_GOTO;
}

LABEL(sf_store_o_19) /* sf!o19 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o19")
ip += 1;
LABEL1(sf_store_o_19)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[19] = r;
#line 3580
#line 23584 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_19)
NAME1("l2-sf_store_o_19")
NEXT_P1_5;
LABEL3(sf_store_o_19)
NAME1("l3-sf_store_o_19")
DO_GOTO;
}

LABEL(sf_store_o_20) /* sf!o20 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o20")
ip += 1;
LABEL1(sf_store_o_20)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[20] = r;
#line 3580
#line 23621 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_20)
NAME1("l2-sf_store_o_20")
NEXT_P1_5;
LABEL3(sf_store_o_20)
NAME1("l3-sf_store_o_20")
DO_GOTO;
}

LABEL(sf_store_o_21) /* sf!o21 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o21")
ip += 1;
LABEL1(sf_store_o_21)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[21] = r;
#line 3580
#line 23658 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_21)
NAME1("l2-sf_store_o_21")
NEXT_P1_5;
LABEL3(sf_store_o_21)
NAME1("l3-sf_store_o_21")
DO_GOTO;
}

LABEL(sf_store_o_22) /* sf!o22 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o22")
ip += 1;
LABEL1(sf_store_o_22)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[22] = r;
#line 3580
#line 23695 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_22)
NAME1("l2-sf_store_o_22")
NEXT_P1_5;
LABEL3(sf_store_o_22)
NAME1("l3-sf_store_o_22")
DO_GOTO;
}

LABEL(sf_store_o_23) /* sf!o23 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o23")
ip += 1;
LABEL1(sf_store_o_23)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[23] = r;
#line 3580
#line 23732 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_23)
NAME1("l2-sf_store_o_23")
NEXT_P1_5;
LABEL3(sf_store_o_23)
NAME1("l3-sf_store_o_23")
DO_GOTO;
}

LABEL(sf_store_o_24) /* sf!o24 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o24")
ip += 1;
LABEL1(sf_store_o_24)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[24] = r;
#line 3580
#line 23769 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_24)
NAME1("l2-sf_store_o_24")
NEXT_P1_5;
LABEL3(sf_store_o_24)
NAME1("l3-sf_store_o_24")
DO_GOTO;
}

LABEL(sf_store_o_25) /* sf!o25 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o25")
ip += 1;
LABEL1(sf_store_o_25)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[25] = r;
#line 3580
#line 23806 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_25)
NAME1("l2-sf_store_o_25")
NEXT_P1_5;
LABEL3(sf_store_o_25)
NAME1("l3-sf_store_o_25")
DO_GOTO;
}

LABEL(sf_store_o_26) /* sf!o26 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o26")
ip += 1;
LABEL1(sf_store_o_26)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[26] = r;
#line 3580
#line 23843 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_26)
NAME1("l2-sf_store_o_26")
NEXT_P1_5;
LABEL3(sf_store_o_26)
NAME1("l3-sf_store_o_26")
DO_GOTO;
}

LABEL(sf_store_o_27) /* sf!o27 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o27")
ip += 1;
LABEL1(sf_store_o_27)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[27] = r;
#line 3580
#line 23880 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_27)
NAME1("l2-sf_store_o_27")
NEXT_P1_5;
LABEL3(sf_store_o_27)
NAME1("l3-sf_store_o_27")
DO_GOTO;
}

LABEL(sf_store_o_28) /* sf!o28 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o28")
ip += 1;
LABEL1(sf_store_o_28)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[28] = r;
#line 3580
#line 23917 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_28)
NAME1("l2-sf_store_o_28")
NEXT_P1_5;
LABEL3(sf_store_o_28)
NAME1("l3-sf_store_o_28")
DO_GOTO;
}

LABEL(sf_store_o_29) /* sf!o29 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o29")
ip += 1;
LABEL1(sf_store_o_29)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[29] = r;
#line 3580
#line 23954 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_29)
NAME1("l2-sf_store_o_29")
NEXT_P1_5;
LABEL3(sf_store_o_29)
NAME1("l3-sf_store_o_29")
DO_GOTO;
}

LABEL(sf_store_o_30) /* sf!o30 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o30")
ip += 1;
LABEL1(sf_store_o_30)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[30] = r;
#line 3580
#line 23991 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_30)
NAME1("l2-sf_store_o_30")
NEXT_P1_5;
LABEL3(sf_store_o_30)
NAME1("l3-sf_store_o_30")
DO_GOTO;
}

LABEL(sf_store_o_31) /* sf!o31 ( r -- ) S0 -- S0  */
/*  */
NAME("sf!o31")
ip += 1;
LABEL1(sf_store_o_31)
{
DEF_CA
MAYBE_UNUSED Float r;
NEXT_P0;
vm_Float2r(fp[0],r);
#ifdef VM_DEBUG
if (vm_debug) {
fputs(" r=", vm_out); printarg_r(r);
}
#endif
fp += 1;
{
#line 3581 "prim"
((SFloat *)op)[31] = r;
#line 3580
#line 24028 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputc('\n', vm_out);
}
#endif
NEXT_P1;
LABEL2(sf_store_o_31)
NAME1("l2-sf_store_o_31")
NEXT_P1_5;
LABEL3(sf_store_o_31)
NAME1("l3-sf_store_o_31")
DO_GOTO;
}

LABEL(sf_fetch_o_0) /* sf@o0 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o0")
ip += 1;
LABEL1(sf_fetch_o_0)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[0];
#line 3583
#line 24063 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_0)
NAME1("l2-sf_fetch_o_0")
NEXT_P1_5;
LABEL3(sf_fetch_o_0)
NAME1("l3-sf_fetch_o_0")
DO_GOTO;
}

LABEL(sf_fetch_o_1) /* sf@o1 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o1")
ip += 1;
LABEL1(sf_fetch_o_1)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[1];
#line 3583
#line 24100 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_1)
NAME1("l2-sf_fetch_o_1")
NEXT_P1_5;
LABEL3(sf_fetch_o_1)
NAME1("l3-sf_fetch_o_1")
DO_GOTO;
}

LABEL(sf_fetch_o_2) /* sf@o2 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o2")
ip += 1;
LABEL1(sf_fetch_o_2)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[2];
#line 3583
#line 24137 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_2)
NAME1("l2-sf_fetch_o_2")
NEXT_P1_5;
LABEL3(sf_fetch_o_2)
NAME1("l3-sf_fetch_o_2")
DO_GOTO;
}

LABEL(sf_fetch_o_3) /* sf@o3 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o3")
ip += 1;
LABEL1(sf_fetch_o_3)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[3];
#line 3583
#line 24174 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_3)
NAME1("l2-sf_fetch_o_3")
NEXT_P1_5;
LABEL3(sf_fetch_o_3)
NAME1("l3-sf_fetch_o_3")
DO_GOTO;
}

LABEL(sf_fetch_o_4) /* sf@o4 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o4")
ip += 1;
LABEL1(sf_fetch_o_4)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[4];
#line 3583
#line 24211 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_4)
NAME1("l2-sf_fetch_o_4")
NEXT_P1_5;
LABEL3(sf_fetch_o_4)
NAME1("l3-sf_fetch_o_4")
DO_GOTO;
}

LABEL(sf_fetch_o_5) /* sf@o5 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o5")
ip += 1;
LABEL1(sf_fetch_o_5)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[5];
#line 3583
#line 24248 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_5)
NAME1("l2-sf_fetch_o_5")
NEXT_P1_5;
LABEL3(sf_fetch_o_5)
NAME1("l3-sf_fetch_o_5")
DO_GOTO;
}

LABEL(sf_fetch_o_6) /* sf@o6 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o6")
ip += 1;
LABEL1(sf_fetch_o_6)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[6];
#line 3583
#line 24285 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_6)
NAME1("l2-sf_fetch_o_6")
NEXT_P1_5;
LABEL3(sf_fetch_o_6)
NAME1("l3-sf_fetch_o_6")
DO_GOTO;
}

LABEL(sf_fetch_o_7) /* sf@o7 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o7")
ip += 1;
LABEL1(sf_fetch_o_7)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[7];
#line 3583
#line 24322 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_7)
NAME1("l2-sf_fetch_o_7")
NEXT_P1_5;
LABEL3(sf_fetch_o_7)
NAME1("l3-sf_fetch_o_7")
DO_GOTO;
}

LABEL(sf_fetch_o_8) /* sf@o8 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o8")
ip += 1;
LABEL1(sf_fetch_o_8)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[8];
#line 3583
#line 24359 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_8)
NAME1("l2-sf_fetch_o_8")
NEXT_P1_5;
LABEL3(sf_fetch_o_8)
NAME1("l3-sf_fetch_o_8")
DO_GOTO;
}

LABEL(sf_fetch_o_9) /* sf@o9 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o9")
ip += 1;
LABEL1(sf_fetch_o_9)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[9];
#line 3583
#line 24396 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_9)
NAME1("l2-sf_fetch_o_9")
NEXT_P1_5;
LABEL3(sf_fetch_o_9)
NAME1("l3-sf_fetch_o_9")
DO_GOTO;
}

LABEL(sf_fetch_o_10) /* sf@o10 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o10")
ip += 1;
LABEL1(sf_fetch_o_10)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[10];
#line 3583
#line 24433 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_10)
NAME1("l2-sf_fetch_o_10")
NEXT_P1_5;
LABEL3(sf_fetch_o_10)
NAME1("l3-sf_fetch_o_10")
DO_GOTO;
}

LABEL(sf_fetch_o_11) /* sf@o11 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o11")
ip += 1;
LABEL1(sf_fetch_o_11)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[11];
#line 3583
#line 24470 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_11)
NAME1("l2-sf_fetch_o_11")
NEXT_P1_5;
LABEL3(sf_fetch_o_11)
NAME1("l3-sf_fetch_o_11")
DO_GOTO;
}

LABEL(sf_fetch_o_12) /* sf@o12 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o12")
ip += 1;
LABEL1(sf_fetch_o_12)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[12];
#line 3583
#line 24507 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_12)
NAME1("l2-sf_fetch_o_12")
NEXT_P1_5;
LABEL3(sf_fetch_o_12)
NAME1("l3-sf_fetch_o_12")
DO_GOTO;
}

LABEL(sf_fetch_o_13) /* sf@o13 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o13")
ip += 1;
LABEL1(sf_fetch_o_13)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[13];
#line 3583
#line 24544 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_13)
NAME1("l2-sf_fetch_o_13")
NEXT_P1_5;
LABEL3(sf_fetch_o_13)
NAME1("l3-sf_fetch_o_13")
DO_GOTO;
}

LABEL(sf_fetch_o_14) /* sf@o14 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o14")
ip += 1;
LABEL1(sf_fetch_o_14)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[14];
#line 3583
#line 24581 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_14)
NAME1("l2-sf_fetch_o_14")
NEXT_P1_5;
LABEL3(sf_fetch_o_14)
NAME1("l3-sf_fetch_o_14")
DO_GOTO;
}

LABEL(sf_fetch_o_15) /* sf@o15 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o15")
ip += 1;
LABEL1(sf_fetch_o_15)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[15];
#line 3583
#line 24618 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_15)
NAME1("l2-sf_fetch_o_15")
NEXT_P1_5;
LABEL3(sf_fetch_o_15)
NAME1("l3-sf_fetch_o_15")
DO_GOTO;
}

LABEL(sf_fetch_o_16) /* sf@o16 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o16")
ip += 1;
LABEL1(sf_fetch_o_16)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[16];
#line 3583
#line 24655 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_16)
NAME1("l2-sf_fetch_o_16")
NEXT_P1_5;
LABEL3(sf_fetch_o_16)
NAME1("l3-sf_fetch_o_16")
DO_GOTO;
}

LABEL(sf_fetch_o_17) /* sf@o17 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o17")
ip += 1;
LABEL1(sf_fetch_o_17)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[17];
#line 3583
#line 24692 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_17)
NAME1("l2-sf_fetch_o_17")
NEXT_P1_5;
LABEL3(sf_fetch_o_17)
NAME1("l3-sf_fetch_o_17")
DO_GOTO;
}

LABEL(sf_fetch_o_18) /* sf@o18 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o18")
ip += 1;
LABEL1(sf_fetch_o_18)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[18];
#line 3583
#line 24729 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_18)
NAME1("l2-sf_fetch_o_18")
NEXT_P1_5;
LABEL3(sf_fetch_o_18)
NAME1("l3-sf_fetch_o_18")
DO_GOTO;
}

LABEL(sf_fetch_o_19) /* sf@o19 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o19")
ip += 1;
LABEL1(sf_fetch_o_19)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[19];
#line 3583
#line 24766 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_19)
NAME1("l2-sf_fetch_o_19")
NEXT_P1_5;
LABEL3(sf_fetch_o_19)
NAME1("l3-sf_fetch_o_19")
DO_GOTO;
}

LABEL(sf_fetch_o_20) /* sf@o20 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o20")
ip += 1;
LABEL1(sf_fetch_o_20)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[20];
#line 3583
#line 24803 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_20)
NAME1("l2-sf_fetch_o_20")
NEXT_P1_5;
LABEL3(sf_fetch_o_20)
NAME1("l3-sf_fetch_o_20")
DO_GOTO;
}

LABEL(sf_fetch_o_21) /* sf@o21 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o21")
ip += 1;
LABEL1(sf_fetch_o_21)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[21];
#line 3583
#line 24840 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_21)
NAME1("l2-sf_fetch_o_21")
NEXT_P1_5;
LABEL3(sf_fetch_o_21)
NAME1("l3-sf_fetch_o_21")
DO_GOTO;
}

LABEL(sf_fetch_o_22) /* sf@o22 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o22")
ip += 1;
LABEL1(sf_fetch_o_22)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[22];
#line 3583
#line 24877 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_22)
NAME1("l2-sf_fetch_o_22")
NEXT_P1_5;
LABEL3(sf_fetch_o_22)
NAME1("l3-sf_fetch_o_22")
DO_GOTO;
}

LABEL(sf_fetch_o_23) /* sf@o23 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o23")
ip += 1;
LABEL1(sf_fetch_o_23)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[23];
#line 3583
#line 24914 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_23)
NAME1("l2-sf_fetch_o_23")
NEXT_P1_5;
LABEL3(sf_fetch_o_23)
NAME1("l3-sf_fetch_o_23")
DO_GOTO;
}

LABEL(sf_fetch_o_24) /* sf@o24 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o24")
ip += 1;
LABEL1(sf_fetch_o_24)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[24];
#line 3583
#line 24951 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_24)
NAME1("l2-sf_fetch_o_24")
NEXT_P1_5;
LABEL3(sf_fetch_o_24)
NAME1("l3-sf_fetch_o_24")
DO_GOTO;
}

LABEL(sf_fetch_o_25) /* sf@o25 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o25")
ip += 1;
LABEL1(sf_fetch_o_25)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[25];
#line 3583
#line 24988 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_25)
NAME1("l2-sf_fetch_o_25")
NEXT_P1_5;
LABEL3(sf_fetch_o_25)
NAME1("l3-sf_fetch_o_25")
DO_GOTO;
}

LABEL(sf_fetch_o_26) /* sf@o26 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o26")
ip += 1;
LABEL1(sf_fetch_o_26)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[26];
#line 3583
#line 25025 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_26)
NAME1("l2-sf_fetch_o_26")
NEXT_P1_5;
LABEL3(sf_fetch_o_26)
NAME1("l3-sf_fetch_o_26")
DO_GOTO;
}

LABEL(sf_fetch_o_27) /* sf@o27 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o27")
ip += 1;
LABEL1(sf_fetch_o_27)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[27];
#line 3583
#line 25062 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_27)
NAME1("l2-sf_fetch_o_27")
NEXT_P1_5;
LABEL3(sf_fetch_o_27)
NAME1("l3-sf_fetch_o_27")
DO_GOTO;
}

LABEL(sf_fetch_o_28) /* sf@o28 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o28")
ip += 1;
LABEL1(sf_fetch_o_28)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[28];
#line 3583
#line 25099 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_28)
NAME1("l2-sf_fetch_o_28")
NEXT_P1_5;
LABEL3(sf_fetch_o_28)
NAME1("l3-sf_fetch_o_28")
DO_GOTO;
}

LABEL(sf_fetch_o_29) /* sf@o29 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o29")
ip += 1;
LABEL1(sf_fetch_o_29)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[29];
#line 3583
#line 25136 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_29)
NAME1("l2-sf_fetch_o_29")
NEXT_P1_5;
LABEL3(sf_fetch_o_29)
NAME1("l3-sf_fetch_o_29")
DO_GOTO;
}

LABEL(sf_fetch_o_30) /* sf@o30 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o30")
ip += 1;
LABEL1(sf_fetch_o_30)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[30];
#line 3583
#line 25173 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_30)
NAME1("l2-sf_fetch_o_30")
NEXT_P1_5;
LABEL3(sf_fetch_o_30)
NAME1("l3-sf_fetch_o_30")
DO_GOTO;
}

LABEL(sf_fetch_o_31) /* sf@o31 ( -- r ) S0 -- S0  */
/*  */
NAME("sf@o31")
ip += 1;
LABEL1(sf_fetch_o_31)
{
DEF_CA
Float r;
NEXT_P0;
#ifdef VM_DEBUG
if (vm_debug) {
}
#endif
fp += -1;
{
#line 3584 "prim"
r = ((SFloat *)op)[31];
#line 3583
#line 25210 "prim.i"
}

#ifdef VM_DEBUG
if (vm_debug) {
fputs(" -- ", vm_out); fputs(" r=", vm_out); printarg_r(r);
fputc('\n', vm_out);
}
#endif
NEXT_P1;
vm_r2Float(r,fp[0]);
LABEL2(sf_fetch_o_31)
NAME1("l2-sf_fetch_o_31")
NEXT_P1_5;
LABEL3(sf_fetch_o_31)
NAME1("l3-sf_fetch_o_31")
DO_GOTO;
}

GROUPADD(141)
#endif
GROUPADD(0)
GROUP( static_super, 589)
GROUPADD(0)
GROUP( end, 589)
