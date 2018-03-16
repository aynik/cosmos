%loop Relation;delete Relation Any;add Relation Any Any
:- style_check([-singleton,-no_effect]), ensure_loaded("core.pl").
streampool_add(Env0,_s,_g) :- add_stream(_s,_g).
streampool_delete(Env0,_s) :- delete_stream(_s).
streampool_loop(Env0) :- main_loop.
streampool_env(X) :- new(X0),set(X0,"loop",streampool_loop,X1),set(X1,"delete",streampool_delete,X2),set(X2,"add",streampool_add,X3),table_env(Y3),set(X3,"table",Y3,X4),list_env(Y4),set(X4,"list",Y4,X5),string_env(Y5),set(X5,"string",Y5,X6),math_env(Y6),set(X6,"math",Y6,X7),io_env(Y7),set(X7,"io",Y7,X8),logic_env(Y8),set(X8,"logic",Y8,X9),set(X9,"Cons",streampool_Cons,X10),set(X10,"Some",streampool_Some,X11),set(X11,"None",streampool_None,X12),set(X12,"Left",streampool_Left,X13),set(X13,"Right",streampool_Right,X14),X=X14.