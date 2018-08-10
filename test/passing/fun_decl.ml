[@@@ocamlformat "wrap-fun-args=false"]

class t =
  object
    method meth
          aaaaaaaaaaa
          bbbbbbbbbbbbbb
          ccccccccccccccccccc
          ddddddddddddddddddddd
          eeeeeeeeeeeeeee =
      body
  end

let func
    aaaaaaaaaaa
    bbbbbbbbbbbbbb
    ccccccccccccccccccc
    ddddddddddddddddddddd
    eeeeeeeeeeeeeee =
  body

let rec func
    aaaaaaaaaaa
    bbbbbbbbbbbbbb
    ccccccccccccccccccc
    ddddddddddddddddddddd
    eeeeeeeeeeeeeee =
  body

let to_loc_trace
    ?(desc_of_source=
      fun source ->
        let callsite = Source.call_site source in
        Format.asprintf
          "return from %a"
          Typ.Procname.pp
          (CallSite.pname callsite))
    ?(source_should_nest= fun _ -> true)
    ?(desc_of_sink=
      fun sink ->
        let callsite = Sink.call_site sink in
        Format.asprintf
          "call to %a"
          Typ.Procname.pp
          (CallSite.pname callsite))
    ?(sink_should_nest= fun _ -> true)
    (passthroughs, sources, sinks) =
  ()

let translate_captured
    { Clang_ast_t.lci_captured_var
    ; lci_init_captured_vardecl
    ; lci_capture_this
    ; lci_capture_kind }
    ((trans_results_acc, captured_vars_acc) as acc) =
  ()

[@@@ocamlformat "wrap-fun-args=true"]

class t =
  object
    method meth aaaaaaaaaaa bbbbbbbbbbbbbb ccccccccccccccccccc
        ddddddddddddddddddddd eeeeeeeeeeeeeee =
      body
  end

let func aaaaaaaaaaa bbbbbbbbbbbbbb ccccccccccccccccccc
    ddddddddddddddddddddd eeeeeeeeeeeeeee =
  body

let rec func aaaaaaaaaaa bbbbbbbbbbbbbb ccccccccccccccccccc
    ddddddddddddddddddddd eeeeeeeeeeeeeee =
  body

let to_loc_trace
    ?(desc_of_source=
      fun source ->
        let callsite = Source.call_site source in
        Format.asprintf "return from %a" Typ.Procname.pp
          (CallSite.pname callsite)) ?(source_should_nest= fun _ -> true)
    ?(desc_of_sink=
      fun sink ->
        let callsite = Sink.call_site sink in
        Format.asprintf "call to %a" Typ.Procname.pp
          (CallSite.pname callsite)) ?(sink_should_nest= fun _ -> true)
    (passthroughs, sources, sinks) =
  ()

let translate_captured
    { Clang_ast_t.lci_captured_var
    ; lci_init_captured_vardecl
    ; lci_capture_this
    ; lci_capture_kind } ((trans_results_acc, captured_vars_acc) as acc) =
  ()