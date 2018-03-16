%close Relation Any;accept Relation Any Any Any;open Relation Any Any Any;listen Relation Any Any;bind Relation Any Any;socket Relation Any
:- style_check([-singleton,-no_effect]), ensure_loaded("core.pl").
net_socket(Env0,_s) :- socket(_s).
net_bind(Env0,_s,_h) :- socket_bind(_s,_h).
net_listen(Env0,_s,_b) :- socket_listen(_s,_b).
net_open(Env0,_s,_i,_o) :- socket_open(_s,_i,_o).
net_accept(Env0,_s,_l,_p) :- socket_accept(_s,_l,_p).
net_close(Env0,_s) :- socket_close(_s).
net_env(X) :- new(X0),set(X0,"close",net_close,X1),set(X1,"accept",net_accept,X2),set(X2,"open",net_open,X3),set(X3,"listen",net_listen,X4),set(X4,"bind",net_bind,X5),set(X5,"socket",net_socket,X6),table_env(Y6),set(X6,"table",Y6,X7),list_env(Y7),set(X7,"list",Y7,X8),string_env(Y8),set(X8,"string",Y8,X9),math_env(Y9),set(X9,"math",Y9,X10),io_env(Y10),set(X10,"io",Y10,X11),logic_env(Y11),set(X11,"logic",Y11,X12),set(X12,"Cons",net_Cons,X13),set(X13,"Some",net_Some,X14),set(X14,"None",net_None,X15),set(X15,"Left",net_Left,X16),set(X16,"Right",net_Right,X17),X=X17.