open Printf
open Pretty
open Phases
open Exprs
open Errors
open LlvmConstructs

type 'a envt = (string * 'a) list

(* Represents the kinds of variables of the program, each are allocated differently. *)
type llvm_val =
  | ParamRegister of Llvm.llvalue (* Parameters are allocated in virtual registers. *)
  | StackPointer of Llvm.llvalue (* Bindings are allocated in the stack *)
  | Function of Llvm.llvalue (* Functions and lambda definitions are allocated in global memory? *)
  | HeapPtr of Llvm.llvalue (* Lambda free variables are allocated in the heap. *)

let const_true       = 0xFFFFFFFFFFFFFFFFL
let const_false      = 0x7FFFFFFFFFFFFFFFL
let bool_mask        = 0x8000000000000000L
let bool_tag         = 0x0000000000000007L
let bool_tag_mask    = 0x0000000000000007L
let num_tag          = 0x0000000000000000L
let num_tag_mask     = 0x0000000000000001L
let tuple_tag        = 0x0000000000000001L
let tuple_tag_mask   = 0x0000000000000007L
let nil_val = tuple_tag
let closure_tag      = 0x0000000000000005L
let closure_tag_mask = 0x0000000000000007L

let err_COMP_NOT_NUM     = 1L
let err_ARITH_NOT_NUM    = 2L
let err_LOGIC_NOT_BOOL   = 3L
let err_IF_NOT_BOOL      = 4L
let err_OVERFLOW         = 5L
let err_GET_NOT_TUPLE    = 6L
let err_GET_LOW_INDEX    = 7L
let err_GET_HIGH_INDEX   = 8L
let err_GET_NOT_NUM      = 9L
let err_NIL_DEREF        = 10L
let err_OUT_OF_MEMORY    = 11L
let err_SET_NOT_TUPLE    = 12L
let err_SET_LOW_INDEX    = 13L
let err_SET_NOT_NUM      = 14L
let err_SET_HIGH_INDEX   = 15L
let err_CALL_NOT_CLOSURE = 16L
let err_CALL_ARITY_ERR   = 17L
let err_INDEX_NOT_NUMBER = 18L
let err_LET_TUPLE_MISMATCH = 19L

module StringSet = Set.Make(String)

(* You may find some of these helpers useful *)

let rec find ls x =
  match ls with
  | [] -> raise (InternalCompilerError (sprintf "Name %s not found" x))
  | (y,v)::rest ->
     if y = x then v else find rest x

let initial_fun_env : (call_type * int) envt =
  [ ("print", (Native, 1));
    ("input", (Native, 0));
    ("equal", (Native, 2)) ]
;;

let rename_and_tag (p : tag program) : tag program =
  let rec rename env p =
    match p with
    | Program(decls, body, tag) ->
       Program(List.map (fun group -> List.map (helpD env) group) decls, helpE env body, tag)
  and helpD env decl =
    match decl with
    | DFun(name, args, body, tag) ->
       let (newArgs, env') = helpBS env args in
       DFun(name, newArgs, helpE env' body, tag)
  and helpB env b =
    match b with
    | BBlank tag -> (b, env)
    | BName(name, allow_shadow, tag) ->
       let name' = sprintf "%s_%d" name tag in
       (BName(name', allow_shadow, tag), (name, name') :: env)
    | BTuple(binds, tag) ->
       let (binds', env') = helpBS env binds in
       (BTuple(binds', tag), env')
  and helpBS env (bs : tag bind list) =
    match bs with
    | [] -> ([], env)
    | b::bs ->
       let (b', env') = helpB env b in
       let (bs', env'') = helpBS env' bs in
       (b'::bs', env'')
  and helpBG env (bindings : tag binding list) =
    match bindings with
    | [] -> ([], env)
    | (b, e, a)::bindings ->
       let (b', env') = helpB env b in
       let e' = helpE env e in
       let (bindings', env'') = helpBG env' bindings in
       ((b', e', a)::bindings', env'')
  and helpE env e =
    match e with
    | ESeq(e1, e2, tag) -> ESeq(helpE env e1, helpE env e2, tag)
    | ETuple(es, tag) -> ETuple(List.map (helpE env) es, tag)
    | EGetItem(e, idx, tag) -> EGetItem(helpE env e, helpE env idx, tag)
    | ESetItem(e, idx, newval, tag) -> ESetItem(helpE env e, helpE env idx, helpE env newval, tag)
    | EPrim1(op, arg, tag) -> EPrim1(op, helpE env arg, tag)
    | EPrim2(op, left, right, tag) -> EPrim2(op, helpE env left, helpE env right, tag)
    | EIf(c, t, f, tag) -> EIf(helpE env c, helpE env t, helpE env f, tag)
    | ENumber _ -> e
    | EBool _ -> e
    | ENil _ -> e
    | EId(name, tag) ->
       (try
         EId(find env name, tag)
       with InternalCompilerError _ -> e)
    | EApp(func, args, call_t, tag) ->
       let func = helpE env func in
       let _ =
         Snake in
       EApp(func, List.map (helpE env) args, call_t, tag)
    | ELet(binds, body, tag) ->
       let (binds', env') = helpBG env binds in
       let body' = helpE env' body in
       ELet(binds', body', tag)
    | ELetRec(bindings, body, tag) ->
       let (revbinds, env) = List.fold_left (fun (revbinds, env) (b, e, t) ->
                                 let (b, env) = helpB env b in ((b, e, t)::revbinds, env)) ([], env) bindings in
       let bindings' = List.fold_left (fun bindings (b, e, tag) -> (b, helpE env e, tag)::bindings) [] revbinds in
       let body' = helpE env body in
       ELetRec(bindings', body', tag)
    | ELambda(binds, body, tag) ->
       let (binds', env') = helpBS env binds in
       let body' = helpE env' body in
       ELambda(binds', body', tag)
  in (rename [] p)
;;

(* IMPLEMENT EVERYTHING BELOW *)
type 'a anf_bind =
  | BSeq of 'a cexpr
  | BLet of string * 'a cexpr
  | BLetRec of (string * 'a cexpr) list

let anf (p : tag program) : unit aprogram =
  let rec helpP (p : tag program) : unit aprogram =
    match p with
    | Program([], body, _) -> AProgram(helpA body, ())
    | _ -> raise (InternalCompilerError "Top-level declarations should have been desugared away")
  and helpA e : unit aexpr = 
    let (ans, ans_setup) = helpC e in
    List.fold_right
      (fun bind body ->
        match bind with
        | BSeq(exp) -> ASeq(exp, body, ())
        | BLet(name, exp) -> ALet(name, exp, body, ())
        | BLetRec(names) -> ALetRec(names, body, ()))
      ans_setup (ACExpr ans)
  and helpC (e : tag expr) : (unit cexpr * unit anf_bind list) = 
    match e with
    | EPrim1(op, arg, _) ->
       let (arg_imm, arg_setup) = helpI arg in
       (CPrim1(op, arg_imm, ()), arg_setup)
    | EPrim2(op, left, right, _) ->
       let (left_imm, left_setup) = helpI left in
       let (right_imm, right_setup) = helpI right in
       (CPrim2(op, left_imm, right_imm, ()), left_setup @ right_setup)
    | EIf(cond, _then, _else, _) ->
       let (cond_imm, cond_setup) = helpI cond in
       (CIf(cond_imm, helpA _then, helpA _else, ()), cond_setup)
    | ELet([], body, _) -> helpC body
    | ELet((BBlank _, exp, _)::rest, body, pos) ->
       let (exp_ans, exp_setup) = helpC exp in
       let (body_ans, body_setup) = helpC (ELet(rest, body, pos)) in
       (body_ans, exp_setup @ [BSeq(exp_ans)] @ body_setup)
    | ELet((BName(bind, _, _), exp, _)::rest, body, pos) ->
       let (exp_ans, exp_setup) = helpC exp in
       let (body_ans, body_setup) = helpC (ELet(rest, body, pos)) in
       (body_ans, exp_setup @ [BLet(bind, exp_ans)] @ body_setup)
    | ELet((BTuple(binds, _), exp, _)::rest, body, pos) ->
       raise (InternalCompilerError("Tuple bindings should have been desugared away"))
    | ESeq(e1, e2, _) ->
       let (e1_ans, e1_setup) = helpC e1 in
       let (e2_ans, e2_setup) = helpC e2 in
       (e2_ans, e1_setup @ [BSeq e1_ans] @ e2_setup)
    | EApp(func, args, ct, _) ->
      let (imm_func, setup_func) = helpI func in
      let new_args, setup_args = List.split (List.map helpI args) in
      (CApp (imm_func, new_args, ct, ()), setup_func @ List.concat setup_args)
    | ETuple (tups, _) ->
        let tup_imms, tups_setup =
          List.fold_right
            (fun e (imms, setups) ->
              let imm, setup = helpI e in
              (imm :: imms, setup @ setups) )
            tups ([], [])
        in
        (CTuple (tup_imms, ()), tups_setup)
    | EGetItem (tup, index, _) ->
        let tup_imm, tup_setup = helpI tup in
        let index_imm, index_setup = helpI index in
        (CGetItem (tup_imm, index_imm, ()), tup_setup @ index_setup)
    | ESetItem (tup, index, new_val, _) ->
        let tup_imm, tup_setup = helpI tup in
        let index_imm, index_setup = helpI index in
        let new_val_imm, new_val_setup = helpI new_val in
        (CSetItem (tup_imm, index_imm, new_val_imm, ()), tup_setup @ index_setup @ new_val_setup)
    | ELambda(binds, body, _) ->
      let body_a = helpA body in
      let bind_strs = List.map (fun bind -> 
        match bind with 
      | BName(str, _, _) -> str 
      | BBlank(_) -> (raise (InternalCompilerError "CANF: Blank binds should be desugared away in lambda binds"))
      | BTuple(_,_) -> raise (InternalCompilerError "CANF: Tuple binds should be desugared away in lambda binds"))
      binds in
      (CLambda(bind_strs, body_a, ()), [])
    | ELetRec(binds, body, _) ->
     let (body_ans, body_setup) = helpC body in
      let (new_binds, new_binds_setup) = List.fold_right (fun (bind, exp, _) (binds, setup) ->
        match bind with
        | BName(str, _, _) -> let (exp_ans, exp_setup) = helpC exp in 
        ((str, exp_ans)::binds, exp_setup @ setup)
        | _ -> raise (InternalCompilerError("Blanks and tuples should be desugared away in let rec"))) binds ([], []) in
      (body_ans, new_binds_setup @ [BLetRec(new_binds)] @ body_setup)
    | _ -> let (imm, setup) = helpI e in (CImmExpr imm, setup)
  and helpI (e : tag expr) : (unit immexpr * unit anf_bind list) =
    match e with
    | ENumber(n, _) -> (ImmNum(n, ()), [])
    | EBool(b, _) -> (ImmBool(b, ()), [])
    | EId(name, _) -> (ImmId(name, ()), [])
    | ENil _ -> (ImmNil(), [])

    | ESeq(e1, e2, _) ->
       let (e1_imm, e1_setup) = helpI e1 in
       let (e2_imm, e2_setup) = helpI e2 in
       (e2_imm, e1_setup @ e2_setup)
    | ETuple (tups, tag) ->
        let tup_imms, tups_setup =
          List.fold_right
            (fun e (imms, setups) ->
              let imm, setup = helpI e in
              (imm :: imms, setup @ setups) )
            tups ([], [])
        in
        let tmp = sprintf "tuple_%d" tag in
        (ImmId (tmp, ()), tups_setup @ [BLet(tmp, CTuple (tup_imms, ()))])
    | EGetItem (tup, index, tag) ->
        let tup_imm, tup_setup = helpI tup in
        let index_imm, index_setup = helpI index in
        let tmp = sprintf "getitem_%d" tag in
        (ImmId (tmp, ()), tup_setup @ index_setup @ [BLet(tmp, CGetItem (tup_imm, index_imm, ()))])
    | ESetItem (tup, index, new_val, tag) ->
        let tup_imm, tup_setup = helpI tup in
        let index_imm, index_setup = helpI index in
        let new_val_imm, new_val_setup = helpI new_val in
        let tmp = sprintf "setitem_%d" tag in
        ( ImmId (tmp, ()),
          tup_setup @ index_setup @ new_val_setup
          @ [BLet(tmp, CSetItem (tup_imm, index_imm, new_val_imm, ()))] )
    | EPrim1(op, arg, tag) ->
       let tmp = sprintf "unary_%d" tag in
       let (arg_imm, arg_setup) = helpI arg in
       (ImmId(tmp, ()), arg_setup @ [BLet(tmp, CPrim1(op, arg_imm, ()))])
    | EPrim2(op, left, right, tag) ->
       let tmp = sprintf "binop_%d" tag in
       let (left_imm, left_setup) = helpI left in
       let (right_imm, right_setup) = helpI right in
       (ImmId(tmp, ()), left_setup @ right_setup @ [BLet(tmp, CPrim2(op, left_imm, right_imm, ()))])
    | EIf(cond, _then, _else, tag) ->
       let tmp = sprintf "if_%d" tag in
       let (cond_imm, cond_setup) = helpI cond in
       (ImmId(tmp, ()), cond_setup @ [BLet(tmp, CIf(cond_imm, helpA _then, helpA _else, ()))])
    | EApp(func, args, ct, tag) ->
      let tmp = sprintf "app_%d" tag in
      let (imm_func, setup_func) = helpI func in
      let new_args, setup_args = List.split (List.map helpI args) in
      (ImmId (tmp, ()), setup_func @ List.concat setup_args @ [BLet(tmp, CApp (imm_func, new_args, ct, ()))])
    | ELet([], body, _) -> helpI body
    | ELet((BBlank _, exp, _)::rest, body, pos) ->
       let (_, exp_setup) = helpI exp in (* MUST BE helpI, to avoid any missing final steps *)
       let (body_ans, body_setup) = helpI (ELet(rest, body, pos)) in
       (body_ans, exp_setup @ body_setup)
    | ELambda(binds, body, tag) ->
      let tmp = sprintf "lambda_%d" tag in
      let body_a = helpA body in
      let bind_strs = List.map (fun bind -> 
        match bind with 
      | BName(str, _, _) -> str 
      | BBlank(_) -> (raise (InternalCompilerError "ImmANF: Blank binds should be desugared away in lambda binds"))
      | BTuple(_,_) -> raise (InternalCompilerError "ImmANF: Tuple binds should be desugared away in lambda binds"))
      binds in
      (ImmId (tmp, ()), [BLet(tmp, CLambda(bind_strs, body_a, ()))])
    | ELet((BName(bind, _, _), exp, _)::rest, body, pos) ->
       let (exp_ans, exp_setup) = helpC exp in
       let (body_ans, body_setup) = helpI (ELet(rest, body, pos)) in
       (body_ans, exp_setup @ [BLet(bind, exp_ans)] @ body_setup)
    | ELet((BTuple(binds, _), exp, _)::rest, body, pos) ->
       raise (InternalCompilerError("Tuple bindings should have been desugared away"))
    | ELetRec(binds, body, _) ->
      let (body_ans, body_setup) = helpI body in
      let (new_binds, new_binds_setup) = List.fold_right (fun (bind, exp, _) (binds, setup) ->
        match bind with
        | BName(str, _, _) -> let (exp_ans, exp_setup) = helpC exp in 
        ((str, exp_ans)::binds, exp_setup @ setup)
        | _ -> raise (InternalCompilerError("Blanks and tuples should be desugared away in let rec"))) binds ([], []) in
      (body_ans, new_binds_setup @ [BLetRec(new_binds)] @ body_setup)
       (* Hint: use BLetRec for each of the binds, and BLet for the final answer *)
  in
  helpP p
;;


let is_well_formed (p : sourcespan program) : sourcespan program fallible =
  let rec wf_E
      (bindings : (string * sourcespan) list)
      (functions : (string * (sourcespan * int)) list)
      (e : sourcespan expr) : exn list =
    match e with
    | ENumber (n, s) ->
        if n > Int64.div Int64.max_int 2L || n < Int64.div Int64.min_int 2L then
          [Overflow (n, s)]
        else
          []
    | EBool (_, _) -> []
    | EId (x, s) -> (
      try
        ignore (List.assoc x bindings);
        []
      with Not_found -> [UnboundId (x, s)] )
    | EApp (funname, args, call_t, _) -> 
      let arg_exn_list = List.concat_map (wf_E bindings functions) args in
      let funname_list = wf_E bindings functions funname in
      if call_t = Native then arg_exn_list else 
      arg_exn_list @ funname_list
    | ELet (tree_binds, body, _) ->
        let binds =
          List.fold_right
            (fun (bind, exp, _) so_far ->
              match bind with
              | BBlank _ -> so_far
              | BName (str, shadow, loc) -> (str, shadow, exp, loc) :: so_far
              | BTuple (bind_li, _) -> flatten_binds bind_li exp @ so_far )
            tree_binds []
        in
        let exn2, env2, _ =
          List.fold_left
            (fun (exn_list, scope_env, shadow_env) (x, _, e, loc) ->
              try
                let existing = List.assoc x shadow_env in
                ( wf_E scope_env functions e @ [DuplicateId (x, loc, existing)] @ exn_list,
                  scope_env,
                  shadow_env )
              with Not_found ->
                ( wf_E scope_env functions e @ exn_list,
                  (x, loc) :: scope_env,
                  (x, loc) :: shadow_env ) )
            ([], bindings, []) binds
        in
        let shadow_exn = List.fold_left (fun so_far (x, shadow, _, loc) -> if List.mem_assoc x bindings && (not shadow) then let old_loc = List.assoc x bindings in (ShadowId(x, loc, old_loc))::so_far else so_far) [] binds in
        shadow_exn @ exn2 @ wf_E env2 functions body
    | EPrim1 (_, e, _) -> wf_E bindings functions e
    | EPrim2 (_, l, r, _) -> wf_E bindings functions l @ wf_E bindings functions r
    | EIf (cond, thn, els, _) ->
        let function_app = wf_E bindings functions in
        function_app cond @ function_app thn @ function_app els
    | ETuple (exprs, _) -> List.concat (List.map (wf_E bindings functions) exprs)
    | EGetItem (tup, index, _) ->
        let tup_wf = wf_E bindings functions tup in
        let index_wf = wf_E bindings functions index in
        tup_wf @ index_wf
    | ESetItem (tup, index, new_expr, _) ->
        let tup_wf = wf_E bindings functions tup in
        let index_wf = wf_E bindings functions index in
        let expr_wf = wf_E bindings functions new_expr in
        tup_wf @ index_wf @ expr_wf
    | ESeq (fst, snd, _) ->
        let fst_wf = wf_E bindings functions fst in
        let snd_wf = wf_E bindings functions snd in
        fst_wf @ snd_wf
    | ENil _ -> []
    | ELetRec(tree_binds, body, _) -> 
      let (binds, binds_exn) =
          List.fold_right
            (fun (bind, exp, _) (binds_so_far, exn_so_far) ->
              match bind with
              | BName (str, shadow, loc) -> 
                (match exp with
                  | ELambda(params, body, _) -> ((str, shadow, exp, loc) :: binds_so_far, exn_so_far)
                  | _ -> (binds_so_far, exn_so_far @ [LetRecNonFunction (bind, loc)]))
              | _ -> raise (InternalCompilerError "Well formed: Tuples and Blanks should be desugared away"))
            tree_binds ([], [])
        in
        let new_env = List.fold_right (fun (bind, exp, _) so_far -> match bind with
        | BName (str, _, loc) -> (str, loc)::so_far
        | _ -> raise (InternalCompilerError "Well formed: Tuples and Blanks should be desugared away")) tree_binds []
      in
        let exn2, env2, _ =
          List.fold_left
            (fun (exn_list, scope_env, shadow_env) (x, _, e, loc) ->
              try
                let existing = List.assoc x shadow_env in
                ( wf_E new_env functions e @ [DuplicateId (x, loc, existing)] @ exn_list,
                  scope_env,
                  shadow_env )
              with Not_found ->
                ( wf_E (new_env @ bindings) functions e @ exn_list,
                  (x, loc) :: scope_env,
                  (x, loc) :: shadow_env ) )
            (binds_exn, bindings, []) (binds)
        in
        let shadow_exn = List.fold_left (fun so_far (x, shadow, _, loc) -> 
          if List.mem_assoc x bindings && (not shadow) 
            then let old_loc = List.assoc x bindings in (ShadowId(x, loc, old_loc))::so_far 
            else so_far) [] binds 
        in
        shadow_exn @ exn2 @ wf_E (new_env @ bindings) functions body
    | ELambda(bind_li, body, _) ->
      let args = flatten_args bind_li in
        let exn_list, new_args =
          List.fold_left
            (fun (exn_list, new_args) (x, loc) ->
              try
                let existing = List.assoc x new_args in
                (DuplicateId (x, loc, existing) :: exn_list, new_args)
              with Not_found -> (exn_list, (x, loc) :: new_args) )
            ([], []) args
        in
        exn_list @ wf_E (args @ bindings) functions body
  and flatten_binds (binds : sourcespan bind list) (exp : sourcespan expr) :
      (string * bool * sourcespan expr * sourcespan) list =
    match binds with
    | BBlank _ :: rest -> flatten_binds rest exp
    | BName (str, shadow, loc) :: rest -> (str, shadow, exp, loc) :: flatten_binds rest exp
    | BTuple (bind_li, _) :: rest -> flatten_binds bind_li exp @ flatten_binds rest exp
    | [] -> []
  and flatten_args (binds : sourcespan bind list) : (string * sourcespan) list =
    match binds with
    | BBlank _ :: rest -> flatten_args rest
    | BName (str, _, loc) :: rest -> (str, loc) :: flatten_args rest
    | BTuple (bind_li, _) :: rest -> flatten_args bind_li @ flatten_args rest
    | [] -> []
  in
  match p with
  | Program (decls_all, body, _) ->
    let body_exn_list = wf_E [] [] body in
    if decls_all != [] then raise (InternalCompilerError "Decls should be desugared away")
    else 
    if List.length body_exn_list = 0 then
        Ok p
      else
        Error body_exn_list
;;

let desugar (p : sourcespan program) : sourcespan program =
  let gensym =
    let next = ref 0 in
    (fun name ->
      next := !next + 1;
      sprintf "%s_%d" name (!next)) in

  let rec help (e : sourcespan expr) (* other parameters may be needed here *) =
    match e with
    | EId (x, s) -> EId (x, s)
    | EBool (x, s) -> EBool (x, s)
    | ENil s -> ENil s
    | ELet (x, b, s) ->
        let new_binds =
          List.fold_right
            (fun (bind, exp, s) so_far ->
              match bind with
              | BBlank _ -> (bind, help exp, s) :: so_far
              | BName (_, _, _) -> (bind, help exp, s) :: so_far
              | BTuple (bind_li, s) ->
                  let tmp = gensym "let_tuple" in
                  let new_id = EId (tmp, s) in
                  let tuple_bindings = tuple_helper bind_li new_id in
                  let tuple_size = List.length tuple_bindings in
                  let new_binding = (BName (tmp, false, s), EPrim2(CheckSize, help exp, ENumber(Int64.of_int tuple_size, s), s), s) in
                  [new_binding] @ tuple_bindings @ so_far )
            x []
        in
        ELet (new_binds, help b, s)
    | ENumber (n, s) -> ENumber (n, s)
    | EPrim2 (And, e1, e2, s) ->
        EIf
          (EPrim1 (Not, help e1, s), EBool (false, s), EPrim1 (Not, EPrim1 (Not, help e2, s), s), s)
    | EPrim2 (Or, e1, e2, s) ->
        EIf (EPrim1 (Not, help e1, s), EPrim1 (Not, EPrim1 (Not, help e2, s), s), EBool (true, s), s)
    | EPrim2 (op, e1, e2, s) -> EPrim2 (op, help e1, help e2, s)
    | EPrim1 (op, e, s) -> (
      match op with
      | Print -> EApp (EId("print", s), [help e], Snake, s)
      | _ -> EPrim1 (op, help e, s) )
    | EIf (cond, thn, els, s) -> EIf (help cond, help thn, help els, s)
    | EApp (funname, args, call_t, s) -> EApp (help funname, List.map help args, call_t, s)
    | ESeq (e1, e2, s) -> ELet ([(BBlank s, help e1, s)], help e2, s)
    | ETuple (es, s) -> ETuple (List.map help es, s)
    | EGetItem (e, idx, s) -> EGetItem (help e, help idx, s)
    | ESetItem (e, idx, newval, s) -> ESetItem (help e, help idx, help newval, s)
    | ELambda (bind_li, body, s) -> 
        let new_args, let_binds =
          List.fold_right
            (fun arg (args, let_binds) ->
              match arg with
              | BBlank _ -> (arg :: args, let_binds)
              | BName (_, _, _) -> (arg :: args, let_binds)
              | BTuple (bind_li, s) ->
                  let tmp = gensym "let_tuple" in
                  let new_id = EId (tmp, s) in
                  let new_arg = BName (tmp, false, s) in
                  (new_arg :: args, tuple_helper bind_li new_id @ let_binds) )
            bind_li ([], [])
        in
        if List.length let_binds = 0 then
          ELambda (new_args, help body, s)
        else
          let new_body = ELet (let_binds, help body, s) in
          ELambda (new_args, new_body, s)
    | ELetRec (binding_li, exp, s) -> 
      let new_binds =
          List.fold_right
            (fun (bind, exp, s) so_far ->
              match bind with
              | BBlank _ -> (bind, help exp, s) :: so_far
              | BName (_, _, _) -> (bind, help exp, s) :: so_far
              | BTuple (bind_li, s) ->
                  let tmp = gensym "letrec_tuple" in
                  let new_id = EId (tmp, s) in
                  let new_binding = (BName (tmp, false, s), help exp, s) in
                  [new_binding] @ tuple_helper bind_li new_id @ so_far )
            binding_li []
        in
        ELetRec (new_binds, help exp, s)
  and tuple_helper (bind_li : sourcespan bind list) (exp : sourcespan expr) :
      sourcespan binding list =
    List.concat
      (List.mapi
         (fun i bind ->
           match bind with
           | BTuple (li, s) -> tuple_helper li (EGetItem (exp, ENumber (Int64.of_int i, s), s))
           | BBlank s -> [(bind, EGetItem (exp, ENumber (Int64.of_int i, s), s), s)]
           | BName (_, _, s) -> [(bind, EGetItem (exp, ENumber (Int64.of_int i, s), s), s)] )
         bind_li )
  and helpD (d : sourcespan decl) : (sourcespan bind * sourcespan expr * sourcespan) =
    match d with
    | DFun(funname, bind_li, body, s) -> 
      (BName(funname, false, s), help (ELambda(bind_li, body, s)), s)
  in

  match p with
  | Program(decls, body, t) ->
    let new_body = List.fold_right (fun decl_li let_body -> 
      ELetRec(List.map helpD decl_li, let_body, t)) decls (help body) in
    let rec gen_args arity = 
      if arity = 0 then [] else (let temp = gensym "arg_" in (EId(temp, t), BName(temp, false, t))::(gen_args (arity - 1))) 
    in
    let binds_for_runtime = List.map (fun (funname, (call_t, arity)) -> 
                                        let runtime_lambda = 
                                          let expr_args, bind_args = List.split (gen_args arity) in 
                                          ELambda(bind_args, EApp(EId(funname, t), expr_args, call_t, t), t) 
                                        in
                                        (BName (funname, false, t), runtime_lambda, t)) initial_fun_env 
    in
    let runtime_let = (ELet(binds_for_runtime, new_body, t)) in
    Program([], runtime_let, t)
;;

let free_vars (e: 'a aexpr) : StringSet.t =
  let rec helpA (e: 'a aexpr) =
    match e with
    | ALet (str, cexp, aexp, _) ->  (StringSet.union (helpC cexp) (StringSet.remove str (helpA aexp)))
    | ACExpr cexp -> helpC cexp
    | ASeq (cexp, aexp, _) -> (StringSet.union (helpC cexp) (helpA aexp))
    | ALetRec (binds, aexp, _) ->
      let strs, _ = List.split binds in
      let cexp_set = List.fold_right (fun bind set -> 
                                        match bind with 
                                        | (str, cexp) -> 
                                              StringSet.union (StringSet.remove str (helpC cexp)) set) binds StringSet.empty in
      let aexp_set = helpA aexp in
      let aexp_set_without_strs = List.fold_right (fun str set -> StringSet.remove str set) strs aexp_set in
      StringSet.union aexp_set_without_strs cexp_set
  
  and helpC (e: 'a cexpr) = 
    match e with
    | CIf (_, thn, els, _) -> StringSet.union (helpA thn) (helpA els)
    | CLambda (strs, aexp, _) -> let frees = helpA aexp in List.fold_right (fun str set -> StringSet.remove str set) strs frees
    | CPrim1 (_, imm, _) -> helpI imm 
    | CPrim2 (_, imm1, imm2, _) -> StringSet.union (helpI imm1) (helpI imm2)
    | CApp (imm, imm_li, _, _) -> StringSet.union (helpI imm) 
                                                  (List.fold_right (fun imm set -> 
                                                                        StringSet.union (helpI imm) set) imm_li StringSet.empty)
    | CTuple (imm_li, _) -> (List.fold_right (fun imm set -> StringSet.union (helpI imm) set) imm_li StringSet.empty)
    | CGetItem (imm_tup, imm_idx, _) -> StringSet.union (helpI imm_tup) (helpI imm_idx)
    | CSetItem (imm_tup, imm_idx, imm_set, _) -> StringSet.union (helpI imm_set) (StringSet.union (helpI imm_tup) (helpI imm_idx))
    | CImmExpr imm -> helpI imm 

  and helpI (e: 'a immexpr) = 
    match e with
    | ImmNum(i, _) -> StringSet.empty
    | ImmBool(b, _) -> StringSet.empty
    | ImmId(x, _) -> StringSet.add x StringSet.empty
    | ImmNil(_) -> StringSet.empty

  in
  helpA e
;;

(* Compiling lamba : 
1) get list of free variables
2) get parameters. 
3) Define the lambda function, where first parameter is a closure object, and 2nd to n+1th parameter are the regular parameters. 
      a) Extend the environment with the parameters by adding mapping of (param name, argument) for each parameter. 
      b) Extend the environment with free vars by unloading the free variables pointers from the closure object, and then for each free variable 
         add mapping of (free var name , free var value). 
      c) Compile the body of the lambda function with the parameter&free var extended environment.  
4) Create and return the closure object: (lambda function code pointer, arity, free var 1 ptr, …, free var m ptr). (We don’t need to put the parameters 
   in the closure, because we can directly provide the arguments to the lambda function when we call it.)
      a) Store the lambda function into the code ptr. 
      b) For each ‘free var i ptr’, if free var is in the current look-up env (again, this env is referring to the outer scope look-up env, 
         not the internal scope param & free-vars extended env used to compile lambda function body), store that value into into the free var ptr. 
         Else if free var is not in the current look-up env (e.g. if it is a mutually recursive lambda that is defined after this lambda), just 
         store a dummy value in the free var ptr. We will perform ‘free-var patching’ in the compilation process of ‘let rec’. 


Compiling lambda call :
1) Look-up the name of lambda from the look-up env (compile time env) to retrieve the closure of the lambda.
2) Call the first element of the closure object which is the lambda function code pointer, passing the closure itself and and arguments.

Compiling let and let rec: 
1) After compiling all the lambda functions in the 'let rec' expression, patch the free variables in the closures by updating the 
   pointers to the correct values.
*)


let rec compile_aexpr (e : tag aexpr) (env : llvm_val envt) (is_tail : bool)
                      (ctx: compile_context) (llbuilder : Llvm.llbuilder) (llfun : Llvm.llvalue) : Llvm.llvalue =
  match e with
  | ALet (x, exp, body, tag) -> 
    (* print_endline(sprintf "bind name: %s" x); *)
    let e_value = compile_cexpr exp env false ctx llbuilder llfun in 

    let let_bb = Llvm.append_block ctx.context (sprintf "let_%d" tag) llfun in
    let _ = Llvm.build_br let_bb llbuilder in 

    Llvm.position_at_end let_bb llbuilder;
    let id_var = Llvm.build_alloca (Llvm.i64_type ctx.context) x llbuilder in
    let _ = Llvm.build_store e_value id_var llbuilder in
    let extended_env = env @ [(x, StackPointer id_var)] in 
    compile_aexpr body extended_env is_tail ctx llbuilder llfun

  | ASeq (cexp, aexp, _) -> 
    let _ = compile_cexpr cexp env false ctx llbuilder llfun in 
    compile_aexpr aexp env true ctx llbuilder llfun

  | ALetRec (binds, body, tag) ->
    let let_rec_bb = Llvm.append_block ctx.context (sprintf "let_rec_%d" tag) llfun in
    
    let _ = Llvm.build_br let_rec_bb llbuilder in

    Llvm.position_at_end let_rec_bb llbuilder;
    (* First allocate stack memory for each closure. Then extend the env with mapping of funname and stack pointers.  *)
    let stack_ptrs_of_closures = List.map (fun (fun_name, _) -> Llvm.build_alloca (Llvm.i64_type ctx.context) fun_name llbuilder ) binds in 
    let fun_names = List.map (fun (fun_name, _) -> fun_name) binds in 
    let extended_env = List.fold_left2 (fun accum fun_name closure_stack_ptr -> 
                                           accum @ [(fun_name, StackPointer closure_stack_ptr)]) env fun_names stack_ptrs_of_closures in
    (* Finally compile closures in the extended env. Then store the closures into the allocated stack slots. Technically, I don't have
       to use the extended-env to construct the closures since we have a patching process later, but if I don't I have to make another variant
       in the llval type to denote let rec bindings and then add all pattern matches for llval type.  *)
    let closures = List.map (fun (_, lambda_exp) -> compile_cexpr lambda_exp extended_env false ctx llbuilder llfun) binds in 

    let patch_let_rec_closures_bb = Llvm.append_block ctx.context (sprintf "patch_let_rec_closures_%d" tag) llfun in
    let _ = Llvm.build_br patch_let_rec_closures_bb llbuilder in 

    (* At this point, we have created the closures for each lambda, and we have put these closures in the stack. And our look-up 
        environment has been extended to have mappings of (fun_name, closure). 
        Now, patch the free variables of each closure by:
        1) Getting list of free vars for each closure. 
        2) for each closure and its list of free vars, look-up each free var from extended_env, and place the free var value
            into the closure in alphabetic order by name of free var, starting at index 2, since index 0 is function code ptr and index 1 is arity. *)
    
    Llvm.position_at_end patch_let_rec_closures_bb llbuilder;
    let _ = List.map2 (fun closure stack_ptr_of_closure -> Llvm.build_store closure stack_ptr_of_closure llbuilder) closures stack_ptrs_of_closures in
    let lambdas_free_vars = List.map (fun (_, lambda_exp) -> List.sort String.compare (StringSet.elements (free_vars (ACExpr(lambda_exp))))) binds in 
    let patch_free_vars = List.map2 (fun closure lambda_free_vars -> 
          List.mapi (fun i lambda_free_var -> 
                      let free_var_val = match (find extended_env lambda_free_var) with
                                          | StackPointer(llval) -> Llvm.build_load llval lambda_free_var llbuilder 
                                          (* | HeapPtr(llval) -> Llvm.build_load llval lambda_free_var llbuilder  *)
                                          | _ -> raise (InternalCompilerError "free var should only be on stack ") in

                      let llvm_index = Llvm.const_int (Llvm.i64_type ctx.context) (i + 2) in
                      let untagged_closure = Llvm.build_sub closure (snake_val_as_llvalue closure_tag ctx) "untagged_closure_addr" llbuilder in 
                      let generic_closure_ptr_type = Llvm.pointer_type (Llvm.i64_type ctx.context) in
                      let generic_closure_ptr =  Llvm.build_inttoptr untagged_closure generic_closure_ptr_type "closure_ptr" llbuilder in
                      let free_var_ptr = Llvm.build_gep generic_closure_ptr [| llvm_index |] "" llbuilder in
                      Llvm.build_store free_var_val free_var_ptr llbuilder) lambda_free_vars) closures lambdas_free_vars
    in 
       (* Finally, compile the body expression in the extended_env *)
    compile_aexpr body extended_env is_tail ctx llbuilder llfun

  | ACExpr cexp -> compile_cexpr cexp env is_tail ctx llbuilder llfun

and compile_cexpr (e : tag cexpr) (env : llvm_val envt) (is_tail : bool)
                  (ctx: compile_context) (llbuilder : Llvm.llbuilder) (llfun : Llvm.llvalue) : Llvm.llvalue =
  match e with

  | CIf (cond, thn, els, tag) -> 
      let if_else_bb = Llvm.append_block ctx.context (sprintf "if_else_%d" tag) llfun in
      let _ = Llvm.build_br if_else_bb llbuilder in
      
      Llvm.position_at_end if_else_bb llbuilder;
      let cond_val = compile_imm cond env ctx llbuilder llfun in
      
      let bool_tag_mask = (snake_val_as_llvalue bool_tag_mask ctx) in
      let tag_bits_of_cond_val = Llvm.build_and cond_val bool_tag_mask "tag_bits_of_cond_val" llbuilder in
      let type_is_bool = Llvm.build_icmp Llvm.Icmp.Eq tag_bits_of_cond_val (snake_val_as_llvalue bool_tag ctx) "type_is_bool" llbuilder in
      let continue_if_else_bb = Llvm.append_block ctx.context (sprintf "continue_if_else_%d" tag) llfun in

      let _ = helper_check_error type_is_bool continue_if_else_bb cond_val err_IF_NOT_BOOL env ctx llbuilder llfun in

      Llvm.position_at_end continue_if_else_bb llbuilder;
      let then_bb = Llvm.append_block ctx.context (sprintf "then_%d" tag) llfun in
      let else_bb = Llvm.append_block ctx.context (sprintf "else_%d" tag) llfun in
      let merge_bb = Llvm.append_block ctx.context (sprintf "merge_then_else_%d" tag) llfun in
      let is_cond_true = Llvm.build_icmp Llvm.Icmp.Eq cond_val (snake_val_as_llvalue const_true ctx) "is_cond_true" llbuilder in
      let _ = Llvm.build_cond_br is_cond_true then_bb else_bb llbuilder in

      Llvm.position_at_end then_bb llbuilder;
      let thn_val = compile_aexpr thn env is_tail ctx llbuilder llfun in (* Place the compilation of thn argument in the then_bb *)
      let cur_descendent_of_then_bb = Llvm.insertion_block llbuilder in (* Get the current descendent of the then_bb*)
      let _ = Llvm.build_br merge_bb llbuilder in (* the current descendent of the then_bb then directly branches to merge_bb *)

      Llvm.position_at_end else_bb llbuilder;
      let els_val = compile_aexpr els env is_tail ctx llbuilder llfun in 
      let cur_descendent_of_else_bb = Llvm.insertion_block llbuilder in
      let _ = Llvm.build_br merge_bb llbuilder in

      Llvm.position_at_end merge_bb llbuilder;
      let result = Llvm.build_phi [(thn_val, cur_descendent_of_then_bb); (els_val, cur_descendent_of_else_bb)] (sprintf "if/else_snake_result_%d" tag) llbuilder in
      result
  
  | CImmExpr e -> compile_imm e env ctx llbuilder llfun
  | CPrim1 (Add1, arg, tag) -> 
      let add1_bb = Llvm.append_block ctx.context (sprintf "add1_%d" tag) llfun in
      let _ = Llvm.build_br add1_bb llbuilder in

      Llvm.position_at_end add1_bb llbuilder;
      let arg_value = compile_imm arg env ctx llbuilder llfun in
      let one = snake_val_as_llvalue 2L ctx in
      let type_mask = snake_val_as_llvalue num_tag_mask ctx in

      let continue_add1_bb = Llvm.append_block ctx.context (sprintf "continue_add1_bb_%d" tag) llfun in
      let type_is_num = helper_get_type_check_pred arg_value type_mask num_tag "arg" "int" ctx llbuilder llfun in 
      let _ = helper_check_error type_is_num continue_add1_bb arg_value err_ARITH_NOT_NUM env ctx llbuilder llfun in 

      Llvm.position_at_end continue_add1_bb llbuilder;
      let current_result = Llvm.build_add arg_value one (sprintf "add_%d" tag) llbuilder in
      let final_bb_of_current_result = Llvm.insertion_block llbuilder in
      let continue2_add1_bb = Llvm.append_block ctx.context (sprintf "continue2_add1_bb_%d" tag) llfun in
      let is_overflow = Llvm.build_icmp Llvm.Icmp.Sle current_result arg_value "is_overflow" llbuilder in 
      let is_not_overflow = Llvm.build_not is_overflow "not_overflow" llbuilder in 
      
      let _ = helper_check_error is_not_overflow continue2_add1_bb current_result err_OVERFLOW env ctx llbuilder llfun in 
      
      Llvm.position_at_end continue2_add1_bb llbuilder;
      let result = Llvm.build_phi [(current_result, final_bb_of_current_result)] (sprintf "add1_snake_result_%d" tag) llbuilder in
      result
  | CPrim1 (Sub1, arg, tag) -> 
      let sub1_bb = Llvm.append_block ctx.context (sprintf "sub1_%d" tag) llfun in
      let _ = Llvm.build_br sub1_bb llbuilder in

      Llvm.position_at_end sub1_bb llbuilder;
      let arg_value = compile_imm arg env ctx llbuilder llfun in
      let one = snake_val_as_llvalue 2L ctx in
      let type_mask = snake_val_as_llvalue num_tag_mask ctx in

      let continue_sub1_bb = Llvm.append_block ctx.context (sprintf "continue_sub1_bb_%d" tag) llfun in
      let type_is_num = helper_get_type_check_pred arg_value type_mask num_tag "arg" "int" ctx llbuilder llfun in 
      let _ = helper_check_error type_is_num continue_sub1_bb arg_value err_ARITH_NOT_NUM env ctx llbuilder llfun in

      Llvm.position_at_end continue_sub1_bb llbuilder;
      let current_result = Llvm.build_sub arg_value one (sprintf "add_%d" tag) llbuilder in
      let final_bb_of_current_result = Llvm.insertion_block llbuilder in
      let continue2_sub1_bb = Llvm.append_block ctx.context (sprintf "continue2_sub1_bb_%d" tag) llfun in
      let is_overflow = Llvm.build_icmp Llvm.Icmp.Sge current_result arg_value "is_overflow" llbuilder in 
      let is_not_overflow = Llvm.build_not is_overflow "is_not_overflow" llbuilder in 

      let _ = helper_check_error is_not_overflow continue2_sub1_bb current_result err_OVERFLOW env ctx llbuilder llfun in
      
      Llvm.position_at_end continue2_sub1_bb llbuilder;
      let result = Llvm.build_phi [(current_result, final_bb_of_current_result)] (sprintf "sub1_snake_result_%d" tag) llbuilder in
      result
  | CPrim1 (Print, arg, tag) -> 
      let print_bb = Llvm.append_block ctx.context (sprintf "print_%d" tag) llfun in
      let _ = Llvm.build_br print_bb llbuilder in

      Llvm.position_at_end print_bb llbuilder;
      let arg_value = compile_imm arg env ctx llbuilder llfun in
      let _ = Llvm.build_store arg_value ctx.glob_vars.current_answer llbuilder in
      let _ = Llvm.build_call ctx.ext_funcs.print_func [|loaded_current_answer ctx llbuilder|] "" llbuilder in
      arg_value
  | CPrim1 (IsBool, arg, tag) -> 
      let isbool_bb = Llvm.append_block ctx.context (sprintf "isbool_%d" tag) llfun in
      let _ = Llvm.build_br isbool_bb llbuilder in

      Llvm.position_at_end isbool_bb llbuilder;
      let arg_value = compile_imm arg env ctx llbuilder llfun in
      let type_mask = snake_val_as_llvalue bool_tag_mask ctx in
      let tag_bits_of_arg = Llvm.build_and arg_value type_mask "tag_bits_of_arg" llbuilder in
      let isbool = Llvm.build_icmp Llvm.Icmp.Eq tag_bits_of_arg (snake_val_as_llvalue 7L ctx) "isbool" llbuilder in
      let yes_isbool_bb =  Llvm.append_block ctx.context (sprintf "yes_isbool_%d" tag) llfun in
      let no_isbool_bb =  Llvm.append_block ctx.context (sprintf "no_isbool_%d" tag) llfun in
      let merged_isbool_bb = Llvm.append_block ctx.context (sprintf "merged_isbool_%d" tag) llfun in
      let _ = Llvm.build_cond_br isbool yes_isbool_bb no_isbool_bb llbuilder in
      
      Llvm.position_at_end yes_isbool_bb llbuilder;
      let _ = Llvm.build_br merged_isbool_bb llbuilder in
      
      Llvm.position_at_end no_isbool_bb llbuilder;
      let _ = Llvm.build_br merged_isbool_bb llbuilder in

      Llvm.position_at_end merged_isbool_bb llbuilder; 
      let snake_true = (snake_val_as_llvalue const_true ctx) in
      let snake_false = (snake_val_as_llvalue const_false ctx) in
      let result = Llvm.build_phi [(snake_true, yes_isbool_bb); (snake_false, no_isbool_bb)] (sprintf "isbool_snake_result_%d" tag) llbuilder in
      result
  | CPrim1 (IsNum, arg, tag) -> 
      let isnum_bb = Llvm.append_block ctx.context (sprintf "isnum_%d" tag) llfun in
      let _ = Llvm.build_br isnum_bb llbuilder in

      Llvm.position_at_end isnum_bb llbuilder;
      let arg_value = compile_imm arg env ctx llbuilder llfun in
      let type_mask = snake_val_as_llvalue num_tag_mask ctx in
      let tag_bits_of_arg = Llvm.build_and arg_value type_mask "tag_bits_of_arg" llbuilder in
      let isnum = Llvm.build_icmp Llvm.Icmp.Eq tag_bits_of_arg (snake_val_as_llvalue 0L ctx) "is_bool" llbuilder in
      let yes_isnum_bb =  Llvm.append_block ctx.context (sprintf "yes_isnum_%d" tag) llfun in
      let no_isnum_bb =  Llvm.append_block ctx.context (sprintf "not_isnum_%d" tag) llfun in
      let merged_isnum_bb = Llvm.append_block ctx.context (sprintf "merged_num_%d" tag) llfun in
      let _ = Llvm.build_cond_br isnum yes_isnum_bb no_isnum_bb llbuilder in
      
      Llvm.position_at_end yes_isnum_bb llbuilder;
      let _ = Llvm.build_br merged_isnum_bb llbuilder in
      
      Llvm.position_at_end no_isnum_bb llbuilder;
      let _ = Llvm.build_br merged_isnum_bb llbuilder in

      Llvm.position_at_end merged_isnum_bb llbuilder;
      let snake_true = (snake_val_as_llvalue const_true ctx) in
      let snake_false = (snake_val_as_llvalue const_false ctx)in
      let result = Llvm.build_phi [(snake_true, yes_isnum_bb); (snake_false, no_isnum_bb)] (sprintf "isnum_snake_result_%d" tag) llbuilder in
      result
  | CPrim1 (IsTuple, arg, tag) -> 
      let istuple_bb = Llvm.append_block ctx.context (sprintf "istuple_%d" tag) llfun in
      let _ = Llvm.build_br istuple_bb llbuilder in

      Llvm.position_at_end istuple_bb llbuilder;
      let arg_value = compile_imm arg env ctx llbuilder llfun in
      let type_mask = snake_val_as_llvalue tuple_tag_mask ctx in
      let tag_bits_of_arg = Llvm.build_and arg_value type_mask "tag_bits_of_arg" llbuilder in
      let istuple = Llvm.build_icmp Llvm.Icmp.Eq tag_bits_of_arg (snake_val_as_llvalue tuple_tag ctx) "is_bool" llbuilder in
      let yes_istuple_bb =  Llvm.append_block ctx.context (sprintf "yes_istuple_%d" tag) llfun in
      let no_istuple_bb =  Llvm.append_block ctx.context (sprintf "not_istuple_%d" tag) llfun in
      let merged_istuple_bb = Llvm.append_block ctx.context (sprintf "merged_istuple_%d" tag) llfun in
      let _ = Llvm.build_cond_br istuple yes_istuple_bb no_istuple_bb llbuilder in
      
      Llvm.position_at_end yes_istuple_bb llbuilder;
      let _ = Llvm.build_br merged_istuple_bb llbuilder in
      
      Llvm.position_at_end no_istuple_bb llbuilder;
      let _ = Llvm.build_br merged_istuple_bb llbuilder in

      Llvm.position_at_end merged_istuple_bb llbuilder;
      let snake_true = (snake_val_as_llvalue const_true ctx) in
      let snake_false = (snake_val_as_llvalue const_false ctx)in
      let result = Llvm.build_phi [(snake_true, yes_istuple_bb); (snake_false, no_istuple_bb)] (sprintf "istuple_snake_result_%d" tag) llbuilder in
      result
  | CPrim1 (Not, arg, tag) -> 
      let logical_not_bb = Llvm.append_block ctx.context (sprintf "logical_not_%d" tag) llfun in
      let _ = Llvm.build_br logical_not_bb llbuilder in 

      Llvm.position_at_end logical_not_bb llbuilder;
      let arg_value = compile_imm arg env ctx llbuilder llfun in
      let type_mask = snake_val_as_llvalue bool_tag_mask ctx in

      let continue_logical_not_bb = Llvm.append_block ctx.context (sprintf "continue_logical_not_%d" tag) llfun in
      let arg_type_is_bool = helper_get_type_check_pred arg_value type_mask bool_tag "arg" "bool" ctx llbuilder llfun in
      let _ = helper_check_error arg_type_is_bool continue_logical_not_bb arg_value err_LOGIC_NOT_BOOL env ctx llbuilder llfun in

      Llvm.position_at_end continue_logical_not_bb llbuilder;
      let result = Llvm.build_xor arg_value (snake_val_as_llvalue bool_mask ctx) (sprintf "logical_not_snake_result_%d" tag) llbuilder in
      result
  | CPrim1 (PrintStack, arg, _) -> raise (InternalCompilerError "Not Applicable for LLVM")
  | CPrim2 (Plus, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "plus" l r env num_tag num_tag_mask err_ARITH_NOT_NUM "int" tag ctx llbuilder llfun in
      let sum = Llvm.build_add l_val r_val (sprintf "plus_snake_result_%d" tag) llbuilder in 
      let plus_final_bb = Llvm.insertion_block llbuilder in
      
      (* Check for positive overflow *)
      let positive_overflow =
        Llvm.build_and
          (Llvm.build_icmp Llvm.Icmp.Sge l_val (snake_val_as_llvalue 0L ctx) "l_ge_0" llbuilder)
          (Llvm.build_icmp Llvm.Icmp.Sge r_val (snake_val_as_llvalue 0L ctx) "r_ge_0" llbuilder)
          "positive_overflow" llbuilder in
      let sum_lt_l = Llvm.build_icmp Llvm.Icmp.Slt sum l_val "sum_lt_l" llbuilder in
      let sum_lt_r = Llvm.build_icmp Llvm.Icmp.Slt sum r_val "sum_lt_r" llbuilder in
      let overflow_on_positive = Llvm.build_or sum_lt_l sum_lt_r "overflow_on_positive" llbuilder in
      (* Check for negative overflow *)
      let negative_overflow =
        Llvm.build_and
          (Llvm.build_icmp Llvm.Icmp.Slt l_val (snake_val_as_llvalue 0L ctx) "l_lt_0" llbuilder)
          (Llvm.build_icmp Llvm.Icmp.Slt r_val (snake_val_as_llvalue 0L ctx) "l_lt_0" llbuilder)
          "negative_overflow" llbuilder in
      let sum_gt_l = Llvm.build_icmp Llvm.Icmp.Sgt sum l_val "sum_gt_l" llbuilder in
      let sum_gt_r = Llvm.build_icmp Llvm.Icmp.Sgt sum r_val "sum_gt_r" llbuilder in
      let overflow_on_negative = Llvm.build_or sum_gt_l sum_gt_r "overflow_on_negative" llbuilder in
      (* Combine the overflow conditions *)
      let is_overflow =
        Llvm.build_or
          (Llvm.build_and positive_overflow overflow_on_positive "positive_check" llbuilder)
          (Llvm.build_and negative_overflow overflow_on_negative "negative_check" llbuilder)
          "overflow" llbuilder in
      (* Now, 'overflow' is an i1 value that indicates whether the addition resulted in an overflow *)
      let is_not_overflow = Llvm.build_not is_overflow "is_not_overflow" llbuilder in 
      let continue_no_overflow_bb = Llvm.append_block ctx.context (sprintf "continue_no_overflow_%d" tag) llfun in
      let _ = helper_check_error is_not_overflow continue_no_overflow_bb sum err_OVERFLOW env ctx llbuilder llfun in

      Llvm.position_at_end continue_no_overflow_bb llbuilder;
      let result = Llvm.build_phi [(sum, plus_final_bb)] (sprintf "plus_snake_result_%d" tag) llbuilder in
      result
  | CPrim2 (Minus, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "minus" l r env num_tag num_tag_mask err_ARITH_NOT_NUM "int" tag ctx llbuilder llfun in
      let minus = Llvm.build_sub l_val r_val (sprintf "minus_snake_result_%d" tag) llbuilder in
      let minus_final_bb = Llvm.insertion_block llbuilder in

      let sub_overflow x y sub_res =
        let x_sign = Llvm.build_ashr x (snake_val_as_llvalue 63L ctx) "x_sign" llbuilder in
        let y_sign = Llvm.build_ashr y (snake_val_as_llvalue 63L ctx) "y_sign" llbuilder in
        let res_sign = Llvm.build_ashr sub_res (snake_val_as_llvalue 63L ctx) "res_sign" llbuilder in
        
        let x_sign_neq_y_sign = Llvm.build_icmp Llvm.Icmp.Ne x_sign y_sign "x_sign_neq_y_sign" llbuilder in
        let res_sign_neq_x_sign = Llvm.build_icmp Llvm.Icmp.Ne res_sign x_sign "res_sign_neq_x_sign" llbuilder in
        Llvm.build_and x_sign_neq_y_sign res_sign_neq_x_sign "overflow" llbuilder
      in
      let is_overflow = sub_overflow l_val r_val minus in

      let is_not_overflow = Llvm.build_not is_overflow "is_not_overflow" llbuilder in 
      let continue_no_overflow_bb = Llvm.append_block ctx.context (sprintf "continue_no_overflow_%d" tag) llfun in
      let _ = helper_check_error is_not_overflow continue_no_overflow_bb minus err_OVERFLOW env ctx llbuilder llfun in

      Llvm.position_at_end continue_no_overflow_bb llbuilder;
      let result = Llvm.build_phi [(minus, minus_final_bb)] (sprintf "minus_snake_result_%d" tag) llbuilder in
      result
  | CPrim2 (Times, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "times" l r env num_tag num_tag_mask err_ARITH_NOT_NUM "int" tag ctx llbuilder llfun in
      let l_lshr_val = Llvm.build_lshr l_val (snake_val_as_llvalue 1L ctx) "logical_shift_right" llbuilder in 
      let times = Llvm.build_mul l_lshr_val r_val (sprintf "times_snake_result_%d" tag) llbuilder in
      let times_final_bb = Llvm.insertion_block llbuilder in

      let mul_overflow x y mul_res =
        let div_res = Llvm.build_sdiv mul_res x "div_res" llbuilder in
        let div_res_shift_left_1_bit = Llvm.build_shl div_res (snake_val_as_llvalue 1L ctx) "shl_adjusted" llbuilder in
        let is_overflow = Llvm.build_icmp Llvm.Icmp.Ne div_res_shift_left_1_bit y "is_overflow" llbuilder in
        is_overflow
      in
      let is_overflow = mul_overflow l_val r_val times in

      let is_not_overflow = Llvm.build_not is_overflow "is_not_overflow" llbuilder in 
      let continue_no_overflow_bb = Llvm.append_block ctx.context (sprintf "continue_no_overflow_%d" tag) llfun in
      let _ = helper_check_error is_not_overflow continue_no_overflow_bb times err_OVERFLOW env ctx llbuilder llfun in

      Llvm.position_at_end continue_no_overflow_bb llbuilder;
      let result = Llvm.build_phi [(times, times_final_bb)] (sprintf "times_snake_result_%d" tag) llbuilder in
      result
  | CPrim2 (And, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "logical_and" l r env bool_tag bool_tag_mask err_LOGIC_NOT_BOOL "bool" tag ctx llbuilder llfun in
      let result = Llvm.build_and l_val r_val (sprintf "logical_and_snake_result_%d" tag) llbuilder in
      result
  | CPrim2 (Or, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "logical_or" l r env bool_tag bool_tag_mask err_LOGIC_NOT_BOOL "bool" tag ctx llbuilder llfun in
      let result = Llvm.build_or l_val r_val (sprintf "logical_or_snake_result_%d" tag) llbuilder in
      result 
  | CPrim2 (Greater, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "greater" l r env num_tag num_tag_mask err_COMP_NOT_NUM "int" tag ctx llbuilder llfun in
      let llvm_result  = Llvm.build_icmp Llvm.Icmp.Sgt l_val r_val (sprintf "greater_llvm_result_%d" tag) llbuilder in
      helper_prim2_logic_comp "greater" llvm_result tag ctx llbuilder llfun
  | CPrim2 (GreaterEq, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "greater_eq" l r env num_tag num_tag_mask err_COMP_NOT_NUM "int" tag ctx llbuilder llfun in 
      let llvm_result  = Llvm.build_icmp Llvm.Icmp.Sge l_val r_val (sprintf "greater_eq_llvm_result_%d" tag) llbuilder in
      helper_prim2_logic_comp "greater_eq" llvm_result tag ctx llbuilder llfun
  | CPrim2 (Less, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "less" l r env num_tag num_tag_mask err_COMP_NOT_NUM "int" tag ctx llbuilder llfun in 
      let llvm_result  = Llvm.build_icmp Llvm.Icmp.Slt l_val r_val (sprintf "less_llvm_result_%d" tag) llbuilder in
      helper_prim2_logic_comp "less" llvm_result tag ctx llbuilder llfun
  | CPrim2 (LessEq, l, r, tag) -> 
      let (l_val, r_val) = helper_prim2_type_check "less_eq" l r env num_tag num_tag_mask err_COMP_NOT_NUM "int" tag ctx llbuilder llfun in 
      let llvm_result  = Llvm.build_icmp Llvm.Icmp.Sle l_val r_val (sprintf "less_eq_llvm_result_%d" tag) llbuilder in
      helper_prim2_logic_comp "less_eq" llvm_result tag ctx llbuilder llfun
  | CPrim2 (Eq, l, r, tag) -> 
      let equal_bb = Llvm.append_block ctx.context (sprintf "equal_%d" tag) llfun in
      let _ = Llvm.build_br equal_bb llbuilder in

      Llvm.position_at_end equal_bb llbuilder;
      let l_val = compile_imm l env ctx llbuilder llfun in
      let r_val = compile_imm r env ctx llbuilder llfun in
      let llvm_result = Llvm.build_icmp Llvm.Icmp.Eq l_val r_val (sprintf "equal_llvm_result_%d" tag) llbuilder in
      helper_prim2_logic_comp "equal" llvm_result tag ctx llbuilder llfun
  | CTuple (immexpr_li, tag) -> 
      let construct_tuple_bb =  Llvm.append_block ctx.context (sprintf "construct_tuple_%d" tag) llfun in
      let _ = Llvm.build_br construct_tuple_bb llbuilder in

      Llvm.position_at_end construct_tuple_bb llbuilder;
      (* 1. Compile the tuple elements first. Add number of elements as first element. *)
      let compiled_elements = List.map (fun element -> compile_imm element env ctx llbuilder llfun) immexpr_li in
      let number_of_elements_as_snake_int = (Int64.shift_left (Int64.of_int (List.length immexpr_li)) 1)   in 
      let tuple_elements = [(snake_val_as_llvalue number_of_elements_as_snake_int ctx)] @ compiled_elements in 

      (* 2. Construct the tuple. *)
        (* First define the tuple type.*)
      let n_list_of_i64_type = List.map (fun element -> Llvm.i64_type ctx.context) immexpr_li in
      let list_of_i64_type = n_list_of_i64_type @ [Llvm.i64_type ctx.context] in (* We need the tuple_tag as first element, so length is n + 1. *)
      let array_of_164_type = Array.of_list list_of_i64_type in 
      let tuple_type = Llvm.struct_type ctx.context array_of_164_type in
      
      let tuple_ptr = Llvm.build_malloc tuple_type (sprintf "tuple_ptr_%d" tag) llbuilder in
        (* For each element in the tuple, get the list of element pointers. Note each element is also a heap pointer that is
          ith offset of the tuple_ptr. Use List.mapi to do this, use any list that is length n for number of element. *)
      let element_ptrs_list = List.mapi (fun i element -> Llvm.build_struct_gep tuple_ptr i "" llbuilder) list_of_i64_type in
        (* For each element_ptr in element_ptrs_list, store the corresponding value in tuple_elements *)
      let _ = List.map2 (fun element_ptr element_val -> 
                                      Llvm.build_store element_val element_ptr llbuilder) element_ptrs_list tuple_elements in
      (* Return the tuple address as its word. This is because the return type of ocsh is i64. 
        Tag it with tuple tag (note: this is dangerous since I am assuming at least 8 byte aligned heap pointers, but this
        might not always be the case). *)
      let tuple_addr_i64 = Llvm.build_ptrtoint tuple_ptr (Llvm.i64_type ctx.context) (sprintf "tuple_addr_%d" tag) llbuilder in
      let tuple_tagged_tuple_addr_164 = Llvm.build_add tuple_addr_i64 (snake_val_as_llvalue tuple_tag ctx) 
                                                                (sprintf "tuple_tagged_tuple_addr_word_%d" tag) llbuilder in 
      tuple_tagged_tuple_addr_164
  | CSetItem (tup, index, new_val, tag) -> 
      let set_item_bb =  Llvm.append_block ctx.context (sprintf "set_item_%d" tag) llfun in
      let _ = Llvm.build_br set_item_bb llbuilder in

      (* 0) Check if tup is a nil. *)
      (* 1) Check if tup is a tuple. *)
      Llvm.position_at_end set_item_bb llbuilder;
      let tup_val = compile_imm tup env ctx llbuilder llfun in 
      let is_not_nil = Llvm.build_icmp Llvm.Icmp.Ne tup_val (snake_val_as_llvalue nil_val ctx) "is_not_nil" llbuilder in
      let is_not_nil_bb = Llvm.append_block ctx.context (sprintf "it_not_nil_%d" tag) llfun in
      let _ = helper_check_error is_not_nil is_not_nil_bb tup_val err_NIL_DEREF env ctx llbuilder llfun in

      Llvm.position_at_end is_not_nil_bb llbuilder;
      let type_mask = snake_val_as_llvalue tuple_tag_mask ctx in 
      let is_tuple = helper_get_type_check_pred tup_val type_mask tuple_tag "tup_val" "tuple" ctx llbuilder llfun in 
      let it_is_tuple_bb = Llvm.append_block ctx.context (sprintf "it_is_tuple_%d" tag) llfun in
      let _ = helper_check_error is_tuple it_is_tuple_bb tup_val err_SET_NOT_TUPLE env ctx llbuilder llfun in

      (* 2) Check if index is a number *)
      Llvm.position_at_end it_is_tuple_bb llbuilder;
      let index_val = compile_imm index env ctx llbuilder llfun in 
      let type_mask = snake_val_as_llvalue num_tag_mask ctx in 
      let is_number = helper_get_type_check_pred index_val type_mask num_tag "index_val" "int" ctx llbuilder llfun in 
      let it_is_integer_bb = Llvm.append_block ctx.context (sprintf "it_is_integer_%d" tag) llfun in
      let _ = helper_check_error is_number it_is_integer_bb index_val err_INDEX_NOT_NUMBER env ctx llbuilder llfun in

      (* 3) Check if index is in valid range. First convert tuple address back into a pointer, then load the first element to get the
        number of elements, and then check whether index is less than number of elements. Then check that it is not a negative number.*)
      Llvm.position_at_end it_is_integer_bb llbuilder;
      let untagged_tuple_addr = Llvm.build_sub tup_val (snake_val_as_llvalue tuple_tag ctx) "untagged_tuple_addr" llbuilder in 
      let generic_tuple_ptr_type = Llvm.pointer_type (Llvm.i64_type ctx.context) in
      let generic_tuple_ptr = Llvm.build_inttoptr untagged_tuple_addr generic_tuple_ptr_type "tuple_ptr" llbuilder in
      let num_elements_ptr = Llvm.build_gep generic_tuple_ptr [| Llvm.const_int (Llvm.i64_type ctx.context) 0 |] "num_elements_ptr" llbuilder in
      let num_elements = Llvm.build_load num_elements_ptr "num_elements" llbuilder in
      let index_is_less_than_n = Llvm.build_icmp Llvm.Icmp.Slt index_val num_elements "index_is_less_than_n" llbuilder in
      let index_is_less_than_n_bb =  Llvm.append_block ctx.context (sprintf "index_is_less_tha_n_%d" tag) llfun in
      let _ = helper_check_error index_is_less_than_n index_is_less_than_n_bb index_val err_SET_HIGH_INDEX env ctx llbuilder llfun in

      Llvm.position_at_end index_is_less_than_n_bb llbuilder;
      let index_is_not_negative = Llvm.build_icmp Llvm.Icmp.Sge index_val (snake_val_as_llvalue 0L ctx) "index_is_not_negative" llbuilder in
      let index_is_not_negative_bb = Llvm.append_block ctx.context (sprintf "index_is_not_negative_%d" tag) llfun in
      let _ = helper_check_error index_is_not_negative index_is_not_negative_bb index_val err_SET_LOW_INDEX env ctx llbuilder llfun in

      (* 4 & 5) Store the new val in the tuple heap position specified by the index. Return the new element. *)
      Llvm.position_at_end index_is_not_negative_bb llbuilder;
      let new_val_compiled = compile_imm new_val env ctx llbuilder llfun in
        (* Do some processing so that when indexing we are indexing with "logical" number, not snake number which is double in size. *)
      let llvm_index = Llvm.build_ashr index_val (snake_val_as_llvalue 1L ctx) "llvm_index" llbuilder in 
      let llvm_index = Llvm.build_add llvm_index (snake_val_as_llvalue 1L ctx) "llvm_index" llbuilder in 
      let index_element_ptr = Llvm.build_gep generic_tuple_ptr [| llvm_index |] "index_element_ptr" llbuilder in
      let _ = Llvm.build_store new_val_compiled index_element_ptr llbuilder in 
      new_val_compiled
  | CGetItem (tup, index, tag) ->
      let get_item_bb =  Llvm.append_block ctx.context (sprintf "get_item_%d" tag) llfun in
      let _ = Llvm.build_br get_item_bb llbuilder in

      Llvm.position_at_end get_item_bb llbuilder;
      let tup_val = compile_imm tup env ctx llbuilder llfun in 
      let is_not_nil = Llvm.build_icmp Llvm.Icmp.Ne tup_val (snake_val_as_llvalue nil_val ctx) "is_not_nil" llbuilder in
      let is_not_nil_bb = Llvm.append_block ctx.context (sprintf "it_not_nil_%d" tag) llfun in
      let _ = helper_check_error is_not_nil is_not_nil_bb tup_val err_NIL_DEREF env ctx llbuilder llfun in

      Llvm.position_at_end is_not_nil_bb llbuilder;
      let type_mask = snake_val_as_llvalue tuple_tag_mask ctx in 
      let is_tuple = helper_get_type_check_pred tup_val type_mask tuple_tag "tup_val" "tuple" ctx llbuilder llfun in 
      let it_is_tuple_bb = Llvm.append_block ctx.context (sprintf "it_is_tuple_%d" tag) llfun in
      let _ = helper_check_error is_tuple it_is_tuple_bb tup_val err_GET_NOT_TUPLE env ctx llbuilder llfun in

      Llvm.position_at_end it_is_tuple_bb llbuilder;
      let index_val = compile_imm index env ctx llbuilder llfun in 
      let type_mask = snake_val_as_llvalue num_tag_mask ctx in 
      let is_number = helper_get_type_check_pred index_val type_mask num_tag "index_val" "int" ctx llbuilder llfun in 
      let it_is_integer_bb = Llvm.append_block ctx.context (sprintf "it_is_integer_%d" tag) llfun in
      let _ = helper_check_error is_number it_is_integer_bb index_val err_INDEX_NOT_NUMBER env ctx llbuilder llfun in

      Llvm.position_at_end it_is_integer_bb llbuilder;
      let untagged_tuple_addr = Llvm.build_sub tup_val (snake_val_as_llvalue tuple_tag ctx) "untagged_tuple_addr" llbuilder in 
      let generic_tuple_ptr_type = Llvm.pointer_type (Llvm.i64_type ctx.context) in
      let generic_tuple_ptr = Llvm.build_inttoptr untagged_tuple_addr generic_tuple_ptr_type "tuple_ptr" llbuilder in
      let num_elements_ptr = Llvm.build_gep generic_tuple_ptr [| Llvm.const_int (Llvm.i64_type ctx.context) 0 |] "num_elements_ptr" llbuilder in
      let num_elements = Llvm.build_load num_elements_ptr "num_elements" llbuilder in
      let index_is_less_than_n = Llvm.build_icmp Llvm.Icmp.Slt index_val num_elements "index_is_less_than_n" llbuilder in
      let index_is_less_than_n_bb =  Llvm.append_block ctx.context (sprintf "index_is_less_tha_n_%d" tag) llfun in
      let _ = helper_check_error index_is_less_than_n index_is_less_than_n_bb index_val err_GET_HIGH_INDEX env ctx llbuilder llfun in

      Llvm.position_at_end index_is_less_than_n_bb llbuilder;
      let index_is_not_negative = Llvm.build_icmp Llvm.Icmp.Sge index_val (snake_val_as_llvalue 0L ctx) "index_is_not_negative" llbuilder in
      let index_is_not_negative_bb = Llvm.append_block ctx.context (sprintf "index_is_not_negative_%d" tag) llfun in
      let _ = helper_check_error index_is_not_negative index_is_not_negative_bb index_val err_GET_LOW_INDEX env ctx llbuilder llfun in

      (* Return the accessed element *)
      Llvm.position_at_end index_is_not_negative_bb llbuilder;
      let llvm_index = Llvm.build_ashr index_val (snake_val_as_llvalue 1L ctx) "llvm_index" llbuilder in 
      let llvm_index = Llvm.build_add llvm_index (snake_val_as_llvalue 1L ctx) "llvm_index" llbuilder in 
      let index_element_ptr = Llvm.build_gep generic_tuple_ptr [| llvm_index |] "index_element_ptr" llbuilder in
      let accessed_element = Llvm.build_load index_element_ptr "accessed_element" llbuilder in 
      accessed_element
  | CPrim2 (CheckSize, e1, e2, tag) -> 
      let check_size_bb =  Llvm.append_block ctx.context (sprintf "check_size_%d" tag) llfun in
      let _ = Llvm.build_br check_size_bb llbuilder in

      Llvm.position_at_end check_size_bb llbuilder;
      let e1_val = compile_imm e1 env ctx llbuilder llfun in
      let e2_val = compile_imm e2 env ctx llbuilder llfun in
      let type_mask = snake_val_as_llvalue tuple_tag_mask ctx in 
      let e1_is_tuple = helper_get_type_check_pred e1_val type_mask tuple_tag "e1_val" "tuple" ctx llbuilder llfun in 
      let e1_is_tuple_bb = Llvm.append_block ctx.context (sprintf "e1_is_tuple_%d" tag) llfun in
      let _ = helper_check_error e1_is_tuple e1_is_tuple_bb e1_val err_GET_NOT_TUPLE env ctx llbuilder llfun in

      Llvm.position_at_end e1_is_tuple_bb llbuilder;
      let untagged_tuple_addr = Llvm.build_sub e1_val (snake_val_as_llvalue tuple_tag ctx) "untagged_tuple_addr" llbuilder in 
      let generic_tuple_ptr_type = Llvm.pointer_type (Llvm.i64_type ctx.context) in
      let generic_tuple_ptr = Llvm.build_inttoptr untagged_tuple_addr generic_tuple_ptr_type "tuple_ptr" llbuilder in
      let num_elements_ptr = Llvm.build_gep generic_tuple_ptr [| Llvm.const_int (Llvm.i64_type ctx.context) 0 |] "num_elements_ptr" llbuilder in
      let num_elements = Llvm.build_load num_elements_ptr "num_elements" llbuilder in
      let arity_is_matching = Llvm.build_icmp Llvm.Icmp.Eq num_elements e2_val "" llbuilder in
      let arity_is_matching_bb = Llvm.append_block ctx.context (sprintf "arity_is_matching_%d" tag) llfun in
      let _ = helper_check_error arity_is_matching arity_is_matching_bb num_elements err_LET_TUPLE_MISMATCH env ctx llbuilder llfun in

      Llvm.position_at_end arity_is_matching_bb llbuilder;
      let result = Llvm.build_phi [(e1_val, e1_is_tuple_bb)] "result" llbuilder in
      result 
    
  | CApp (funname, args, call_t, tag) -> 
      let fun_call_bb = Llvm.append_block ctx.context "function_call" llfun in
      let _ = Llvm.build_br fun_call_bb llbuilder in
      (* Look-up the name of lambda from the look-up env (compile time env) to retrieve the closure of the lambda. *)
      Llvm.position_at_end fun_call_bb llbuilder;

      if call_t = Native then 
        let native_funname = match funname with
                               | ImmId (x, _) -> x 
                               | _ -> raise (InternalCompilerError "should only be identifier")
        in
        let func_to_call = match find env native_funname with
            | Function(function_llval) -> function_llval 
            | _ -> raise (InternalCompilerError "should only be a Function value.")
        in
        let compiled_args = List.map (fun arg -> compile_imm arg env ctx llbuilder llfun) args in
        let compiled_args_to_array= Array.of_list compiled_args in
        (* Use built-in tail-call optimization for LLVM IR. *)
        let result = 
            if is_tail then
              let tail_call = Llvm.build_call func_to_call compiled_args_to_array (sprintf "%s_tail_call_result_%d" native_funname tag) llbuilder in
              let _ = Llvm.set_tail_call true tail_call in
              tail_call
            else 
              let regular_call = Llvm.build_call func_to_call compiled_args_to_array (sprintf "%s_call_result_%d" native_funname tag) llbuilder in
              regular_call
        in
        result

      else
        (* Look-up the name of lambda from the look-up env (compile time env) to retrieve the closure of the lambda. *)
        let closure_of_func_to_call = compile_imm funname env ctx llbuilder llfun in 
         
        (* Type check closure. If closure, then untag it and turn it into a heap pointer and then load its first element. *)
        let type_mask = snake_val_as_llvalue closure_tag_mask ctx in 
        let is_closure = helper_get_type_check_pred closure_of_func_to_call type_mask closure_tag "closure_of_func_to_call" "closure" ctx llbuilder llfun in 
        let is_closure_bb = Llvm.append_block ctx.context (sprintf "is_closure_%d" tag) llfun in
        let _ = helper_check_error is_closure is_closure_bb closure_of_func_to_call err_CALL_NOT_CLOSURE env ctx llbuilder llfun in
        
        
        Llvm.position_at_end is_closure_bb llbuilder;
        (* First load the function from the 1st element of the closure which is function pointer. *)
        let untagged_closure = Llvm.build_sub closure_of_func_to_call (snake_val_as_llvalue closure_tag ctx) "untagged_closure_addr" llbuilder in 
        let generic_closure_ptr_type = Llvm.pointer_type (Llvm.i64_type ctx.context) in
        let generic_closure_ptr = Llvm.build_inttoptr untagged_closure generic_closure_ptr_type "closure_ptr" llbuilder in
        let function_code_ptr_as_i64 = Llvm.build_load generic_closure_ptr "function_code_ptr_as_i64" llbuilder in
        let arg_types = Array.make ((List.length args) + 1) (Llvm.i64_type ctx.context) in
        let func_ptr_type = Llvm.pointer_type (Llvm.function_type (Llvm.i64_type ctx.context) arg_types) in
        let func = Llvm.build_inttoptr function_code_ptr_as_i64 func_ptr_type "function" llbuilder in
 
        
        (* Check arity. *)
        let arity_ptr = Llvm.build_gep generic_closure_ptr [| Llvm.const_int (Llvm.i64_type ctx.context) 1 |] "arity_ptr" llbuilder in
        let arity = Llvm.build_load arity_ptr "arity" llbuilder in (* Assume arity is a snake val. *)
        let numb_args_as_snake_int = (Int64.shift_left (Int64.of_int (List.length args)) 1)   in 
        let is_correct_arity = Llvm.build_icmp Llvm.Icmp.Eq arity (snake_val_as_llvalue numb_args_as_snake_int ctx) "" llbuilder in 
        let is_correct_arity_bb = Llvm.append_block ctx.context (sprintf "is_correct_arity_%d" tag) llfun in
        let _ = helper_check_error is_correct_arity is_correct_arity_bb arity err_CALL_ARITY_ERR env ctx llbuilder llfun in
        
        (* Make an array of arguments by compiling args and also adding closure as the first argument. *)
        Llvm.position_at_end is_correct_arity_bb llbuilder;
        let compiled_args = List.map (fun arg -> compile_imm arg env ctx llbuilder llfun) args in
        let all_args = closure_of_func_to_call::compiled_args in 
        let all_args_to_array= Array.of_list all_args in
        (* Make the function call. Use built-in tail-call optimization for LLVM IR. *)
        let result = if is_tail then
                        let tail_call = Llvm.build_call func all_args_to_array "lambda_tail_call_result" llbuilder in
                        let _ = Llvm.set_tail_call true tail_call in
                        tail_call
                    else 
                      let regular_call = Llvm.build_call func all_args_to_array "lambda_non_tail_call_result" llbuilder in
                      regular_call
        in
        result 

  (* Part 1: Define the lambda as a function.
     1) Define the lambda function where there are n + 1 parameters, one for closure.
     2) Extend the internal env with the mappings of parameters to their values.
     3) Unpack free vars from the closure and extend the internal env with mappings of free vars to their values.
     3) Compile the body expression with this extended internal env. 

     Part 2: Construct the closure of the lambda.
     1) Mallocate space on the heap, with a struct of: (function pointer, arity, free var1, ..., free var m). 
     2) Perform an initial patch of the free vars. I.e. look up free vars from the env, and if in env, use that value. Else use some dummy value.
     3) Store the function pointer (we get this from defining the function before), arity (length of arguments), and free vars (mix of 
        closed over values and dummy values) in the closure.
     4) return the closure object. *)
  | CLambda (str_li, body, tag) -> 
      (* *************** FIRST DEFINE THE LAMBDA FUNCTION ***************** *)
      (* Our parameters are: closure, regular param 1, ..., regular param n. *)
      let arg_types = Array.make ((List.length str_li) + 1) (Llvm.i64_type ctx.context) in
      let this_fun = Llvm.define_function (sprintf "lambda_%d_" tag) (Llvm.function_type (Llvm.i64_type ctx.context) arg_types) ctx.the_module in

      let fun_builder = Llvm.builder ctx.context in
      
      let entry_block = Llvm.entry_block this_fun in
      let params_set_up_bb = Llvm.append_block ctx.context "params_set_up" this_fun in
      let fun_body_bb = Llvm.append_block ctx.context "lambda_body" this_fun in
      let return_bb = Llvm.append_block ctx.context "return" this_fun in

      Llvm.position_at_end entry_block fun_builder;
      let _ = Llvm.build_br params_set_up_bb fun_builder in 
      
      Llvm.position_at_end params_set_up_bb fun_builder;

      (* Note in evaluating the function body, the closure parameter is never used, so don't need to extend the internal env with a mapping
         for the closure parameter. *)

      let param_values = Llvm.params this_fun in
      let param_extended_env = 
      List.fold_left2 (fun env param_name param_value -> 
                        env @ [(param_name, ParamRegister(param_value))]) env ("dummy"::str_li) (Array.to_list param_values) in 
                  (*  ("dummy"::str_li) to match the length of the entire parameters which is n + 1 (1 for closure). *)
        
      (* Get list of free variables. And further extend the env with their mappings. *)
      let lambda_free_vars = List.sort String.compare (StringSet.elements (free_vars (ACExpr(e)))) in 
      let closure = Array.get param_values 0 in 
      let untagged_closure = Llvm.build_sub closure (snake_val_as_llvalue closure_tag ctx) "untagged_closure_addr" fun_builder in 
      let generic_closure_ptr_type = Llvm.pointer_type (Llvm.i64_type ctx.context) in
      let generic_closure_ptr =  Llvm.build_inttoptr untagged_closure generic_closure_ptr_type "closure_ptr" fun_builder in
      let lambda_free_vars_ptrs = List.mapi (fun i fv ->  Llvm.build_gep generic_closure_ptr [|Llvm.const_int (Llvm.i64_type ctx.context) (i + 2)|] 
                                            (sprintf "free_var_'%s'_ptr" fv) fun_builder) lambda_free_vars in

      let free_vars_extended_env = 
        List.fold_left2 (fun env lambda_free_var lambda_free_var_ptr -> 
          (* let _ = print_endline (sprintf "%s  %s\n" lambda_free_var (Llvm.string_of_llvalue lambda_free_var_ptr)) in *)
          match find env lambda_free_var with
            | Function(_) -> env (* If mapping to a function already exists, don't extend it with HeapPtr version of it, because
                                    Calling a function from HeapPtr is a lot messier since it is cast into i64 
                                    instead of a directly callable function. *)
            | _ -> [(lambda_free_var, HeapPtr(lambda_free_var_ptr))] @ env
          ) param_extended_env lambda_free_vars lambda_free_vars_ptrs in 
      
      (* Use this to see what the extended environment is. 
      let _ = List.map (fun (x, y) -> match y with 
          | HeapPtr (llval) -> print_endline("Name: "^ x ^ " " ^ "HeapPtr Value: " ^ (Llvm.string_of_llvalue llval))
          | ParamRegister(llval) -> print_endline("Name: " ^ x ^ " " ^ "ParamReg Value: " ^ (Llvm.string_of_llvalue llval)) 
          | StackPointer(llval) -> print_endline("Name: "^ x ^ " " ^ "StackPointer Value: " ^ (Llvm.string_of_llvalue llval))
          | Function(llval) -> print_endline("Name: "^ x ^ " " ^ "Function Value: " ^ (Llvm.string_of_llvalue llval))
      ) free_vars_extended_env in *)

      let _ = Llvm.build_br fun_body_bb fun_builder in 

      Llvm.position_at_end fun_body_bb fun_builder;
      (* Finally we compile the lambda body with the extended environment which closes over all the free variables: parameters and 
         let/let-rec bound free variables. *)
      let compiled_fun_body = compile_aexpr body free_vars_extended_env true ctx fun_builder this_fun in
      let _ = Llvm.build_br return_bb fun_builder in
      
      Llvm.position_at_end return_bb fun_builder;
      let _ = Llvm.build_ret compiled_fun_body fun_builder in

      (* *************** END OF DEFINING THE LAMBDA FUNCTION ***************** *)

      (* ******************* CREATE CLOSURE OF LAMBDA ************************ *)
      (* Our closure is: (function code ptr, arity n, free var 1, free var 2, ..., free var m)*)
      let create_lambda_closure_bb = Llvm.append_block ctx.context (sprintf "create_lambda_closure_%d" tag) llfun in
      let _ = Llvm.build_br create_lambda_closure_bb llbuilder in

      Llvm.position_at_end create_lambda_closure_bb llbuilder;
      (* 1.Make a list of closure elements first. Patch vars bound in outer let bindings. If I don't do this initial patch here, 
           I have to add patching functionality in the ALet, which I don't want to do. *)
      let arity_as_snake_int = (Int64.shift_left (Int64.of_int (List.length str_li)) 1) in
      let initial_patched_free_var_vals = List.map (fun free_var -> try
                                                                      match find env free_var with
                                                                        | StackPointer(llval) -> Llvm.build_load llval free_var llbuilder   
                                                                        | ParamRegister(llval) -> llval
                                                                        | _ -> (snake_val_as_llvalue 1234L ctx)
                                                                    with Not_found -> (snake_val_as_llvalue 1234L ctx)) lambda_free_vars in 

      let closure_elements = [this_fun] @ [(snake_val_as_llvalue arity_as_snake_int ctx)] @ initial_patched_free_var_vals in 

      (* 3. Construct the closure. *)
        (* First define the closure type.*)
      let list_of_i64_type1 = List.map (fun element -> Llvm.i64_type ctx.context) ([(snake_val_as_llvalue arity_as_snake_int ctx)] 
                                                                                  @ initial_patched_free_var_vals) in
      let list_of_i64_type = [Llvm.type_of this_fun] @ list_of_i64_type1 in 
      let array_of_164_type = Array.of_list list_of_i64_type in 
      let closure_type = Llvm.struct_type ctx.context array_of_164_type in
      
      let closure_ptr = Llvm.build_malloc closure_type (sprintf "closure_ptr_%d" tag) llbuilder in
        (* For each element in the closure, get the list of element pointers. Note each element is also a heap pointer that is
          ith offset of the closure_ptr. Use List.mapi to do this, use any list that is length n for number of element. *)
      let element_ptrs_list = List.mapi (fun i element -> Llvm.build_struct_gep closure_ptr i "" llbuilder) list_of_i64_type in
        (* For each element_ptr in element_ptrs_list, store the corresponding value in closure_elements *)
      let _ = List.map2 (fun element_ptr element_val -> 
                                      Llvm.build_store element_val element_ptr llbuilder) element_ptrs_list closure_elements in

      (* Return the tuple address as its word. This is because the return type of ocsh is i64. 
        Tag it with tuple tag (note: this is dangerous since I am assuming at least 8 byte aligned heap pointers, but this
        might not always be the case). *)
      let closure_addr_i64 = Llvm.build_ptrtoint closure_ptr (Llvm.i64_type ctx.context) (sprintf "closure_addr_%d" tag) llbuilder in
      let closure_tagged_tuple_addr_164 = Llvm.build_add closure_addr_i64 (snake_val_as_llvalue closure_tag ctx) 
                                                                (sprintf "closure_tagged_tuple_addr_word_%d" tag) llbuilder in 
      closure_tagged_tuple_addr_164


and compile_imm (e : tag immexpr) (env : llvm_val envt) 
                (ctx: compile_context) (llbuilder : Llvm.llbuilder) (llfun : Llvm.llvalue) : Llvm.llvalue =
  match e with
  | ImmNum (n, _) -> snake_val_as_llvalue (Int64.shift_left n 1) ctx
  | ImmBool (true, _) -> snake_val_as_llvalue const_true ctx
  | ImmBool (false, _) -> snake_val_as_llvalue const_false ctx
  | ImmId (x, _) -> 
    (match find env x with
        | ParamRegister(llval) -> (*let _ = print_endline (Llvm.string_of_llvalue llval) in *) llval
        | StackPointer(llval) -> Llvm.build_load llval x llbuilder 
        | Function(llval) -> llval 
        | HeapPtr(llval) -> Llvm.build_load llval x llbuilder)
  | ImmNil _ -> snake_val_as_llvalue nil_val ctx 

(* helper_get_type_check_pred: This is a predicate that checks if an argument is a particular type or not. *)
and helper_get_type_check_pred arg type_mask type_tag arg_name type_name ctx llbuilder llfun =
  let tag_bits_of_arg = Llvm.build_and arg type_mask (sprintf "tag_bits_of_%s" arg_name) llbuilder in
  let is_arg_type = Llvm.build_icmp Llvm.Icmp.Eq tag_bits_of_arg (snake_val_as_llvalue type_tag ctx) (sprintf "is_%s_%s" arg_name type_name) llbuilder in
  is_arg_type 

  (* helper_check_error: This helper takes in the error predicate result, i.e "is not error", and a "continue block".
  It branches to continue block if predicate value is true, else it branches to error block which calls error function. *)
and helper_check_error is_not_error continue_block current_result err_val env ctx llbuilder llfun =
  let call_error_bb = Llvm.append_block ctx.context "call_error_func" llfun in
  let _ = Llvm.build_cond_br is_not_error continue_block call_error_bb llbuilder in

  Llvm.position_at_end call_error_bb llbuilder;
  let _ = Llvm.build_store current_result ctx.glob_vars.current_answer llbuilder in
  let error_func = match find env "error_func" with
                      | Function (err_fun) -> err_fun
                      | _ -> raise (InternalCompilerError "Should have error function in initial env")
  in 
  let callee_args_array = Array.of_list [(snake_val_as_llvalue err_val ctx)] in
  let _ = Llvm.build_call error_func callee_args_array "error_call_return_val" llbuilder in
  Llvm.build_unreachable llbuilder 

(* helper_prim2_type_check: This is a high level function that performs the set up of type checking two arguments for prim2 operations. 
 It uses the above two helpers - helper_get_type_check_pred and helper_check_error - in combination.  *)
and helper_prim2_type_check op_name arg1 arg2 env type_tag type_tag_mask err_val type_name tag ctx llbuilder llfun = 
  let op_bb = Llvm.append_block ctx.context (sprintf "%s_%d" op_name tag) llfun in
  let _ = Llvm.build_br op_bb llbuilder in

  Llvm.position_at_end op_bb llbuilder;
  let arg1_val = compile_imm arg1 env ctx llbuilder llfun in
  let arg2_val = compile_imm arg2 env ctx llbuilder llfun in
  let type_mask = snake_val_as_llvalue type_tag_mask ctx in

  let arg1_type_check_passed_bb = Llvm.append_block ctx.context (sprintf "arg1_type_check_passed_%d" tag) llfun in
  let type_for_arg1_is_valid = helper_get_type_check_pred arg1_val type_mask type_tag "arg1" type_name ctx llbuilder llfun in
  let _ = helper_check_error type_for_arg1_is_valid arg1_type_check_passed_bb arg1_val err_val env ctx llbuilder llfun in

  Llvm.position_at_end arg1_type_check_passed_bb llbuilder;
  let arg2_type_check_passed_bb = Llvm.append_block ctx.context (sprintf "arg2_type_check_passed_%d" tag) llfun in
  let type_for_arg2_is_valid = helper_get_type_check_pred arg2_val type_mask type_tag "arg2" type_name ctx llbuilder llfun in
  let _ = helper_check_error type_for_arg2_is_valid arg2_type_check_passed_bb arg2_val err_val env ctx llbuilder llfun in

  Llvm.position_at_end arg2_type_check_passed_bb llbuilder;
  (arg1_val, arg2_val)

(* helper_prim2_logic_comp: An abstraction of returning 'snake value true' if the result of logical comparison operation that
  occurred before the call of this function is 'llvalue true', else returning 'snake value false' if the result is 'llvalue false'. *)
and helper_prim2_logic_comp op_name llvm_result tag ctx llbuilder llfun = 
  let true_bb = Llvm.append_block ctx.context (sprintf "comp_is_true_%d" tag) llfun in
  let false_bb = Llvm.append_block ctx.context (sprintf "comp_is_false_%d" tag) llfun in
  let merge_bb = Llvm.append_block ctx.context (sprintf "merge_%d" tag)llfun in
  let _ = Llvm.build_cond_br llvm_result true_bb false_bb llbuilder in

  Llvm.position_at_end true_bb llbuilder;
  let _ = Llvm.build_br merge_bb llbuilder in

  Llvm.position_at_end false_bb llbuilder;
  let _ = Llvm.build_br merge_bb llbuilder in

  Llvm.position_at_end merge_bb llbuilder;
  let snake_true = (snake_val_as_llvalue const_true ctx) in
  let snake_false = (snake_val_as_llvalue const_false ctx) in
  let result = Llvm.build_phi [(snake_true, true_bb); (snake_false, false_bb)] (sprintf "%s_snake_result_%d" op_name tag) llbuilder in
  result 
;;


let compile_prog (anfed : tag aprogram) : string =
  match anfed with
  | AProgram (body, _) ->
    (********************************PRELUDE*****************************)
      (* Load Llvm constructs *)
    let compile_ctx = create_compile_context () in

      (* Define an error handling function. *)
    let arg_types = Array.make 1 (Llvm.i64_type compile_ctx.context) in
    let error_func = Llvm.define_function "error_func" (Llvm.function_type (Llvm.i64_type compile_ctx.context) arg_types) compile_ctx.the_module in
    let error_fun_builder = Llvm.builder compile_ctx.context in

    let entry_block = Llvm.entry_block error_func in
    let error_code_param = Llvm.param error_func 0 in

    Llvm.position_at_end entry_block error_fun_builder;
    let _ = Llvm.build_call compile_ctx.ext_funcs.error_func 
                            [|error_code_param; loaded_current_answer compile_ctx error_fun_builder|] "" error_fun_builder in
    let _ = Llvm.build_ret (snake_val_as_llvalue 0L compile_ctx) error_fun_builder 
    in

    let initial_env = [("error_func", Function error_func)] in
      (* Add native functions: print, equal, input to initial env*)
    let initial_env = initial_env @ [("print", Function compile_ctx.ext_funcs.print_func); 
                                     ("equal", Function compile_ctx.ext_funcs.equal_func);
                                     ("input", Function compile_ctx.ext_funcs.input_func)] in 
    (********************************************************************)
    (******************************* MAIN *************************************)

      (* Compile declarations and extend the initial env with mapping of function name to its llvalue. *)
    let compiled_value = compile_aexpr body initial_env true compile_ctx compile_ctx.ocsh_builder compile_ctx.ocsh_func in
      (* Add a return instruction to the compiled_expr function *)
    let result_bb = Llvm.append_block compile_ctx.context (sprintf "result") compile_ctx.ocsh_func in
    let _ = Llvm.build_br result_bb compile_ctx.ocsh_builder in (* Make the final bb of the compiled expression branch to the result_bb *)
    Llvm.position_at_end result_bb compile_ctx.ocsh_builder;
    let _ = Llvm.build_ret compiled_value compile_ctx.ocsh_builder in

    (* Generate the LLVM IR *) 

    let ir_string = Llvm.string_of_llmodule compile_ctx.the_module in
    ir_string
      
;;
           
(* Feel free to add additional phases to your pipeline.
   The final pipeline phase needs to return a string,
   but everything else is up to you. *)


let run_if should_run f =
  if should_run then f else no_op_phase
;;

(* Add at least one desugaring phase somewhere in here *)
let compile_to_string (prog : sourcespan program pipeline) : string pipeline =
  prog
  |> (add_phase desugared desugar)
  |> (add_err_phase well_formed is_well_formed)
  |> (add_phase tagged tag)
  |> (add_phase renamed rename_and_tag)
  |> (add_phase anfed (fun p -> atag (anf p)))
  |> (add_phase result compile_prog)
;;
