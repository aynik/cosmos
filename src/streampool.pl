%loop Relation;delete Relation Any;add Relation Any Any
:- style_check([-singleton,-no_effect]), ensure_loaded("core.pl").
streampool_add(Env0,_s,_g) :- add_stream(_s,_g).
streampool_delete(Env0,_s) :- delete_stream(_s).
streampool_loop(Env0) :- main_loop.
streampool_env(X) :- new(X0),set(X0,"loop",streampool_loop,X1),set(X1,"delete",streampool_delete,X2),set(X2,"add",streampool_add,X3),set(X3,"Cons",streampool_Cons,X4),set(X4,"Some",streampool_Some,X5),set(X5,"None",streampool_None,X6),set(X6,"Left",streampool_Left,X7),set(X7,"Right",streampool_Right,X8),X=X8.