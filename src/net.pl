%close Relation Any;accept Relation Any Any Any;open Relation Any Any Any;listen Relation Any Any;bind Relation Any Any;socket Relation Any
:- style_check([-singleton,-no_effect]), ensure_loaded("core.pl").
net_socket(Env0,_s) :- tcp_socket(_s).
net_bind(Env0,_s,_h) :- tcp_bind(_s,_h).
net_listen(Env0,_s,_b) :- tcp_listen(_s,_b).
net_open(Env0,_s,_i,_o) :- tcp_open_socket(_s,_i,_o).
net_accept(Env0,_s,_l,_p) :- tcp_accept(_s,_l,_p).
net_close(Env0,_s) :- tcp_close_socket(_s).
net_env(X) :- new(X0),set(X0,"close",net_close,X1),set(X1,"accept",net_accept,X2),set(X2,"open",net_open,X3),set(X3,"listen",net_listen,X4),set(X4,"bind",net_bind,X5),set(X5,"socket",net_socket,X6),set(X6,"Cons",net_Cons,X7),set(X7,"Some",net_Some,X8),set(X8,"None",net_None,X9),set(X9,"Left",net_Left,X10),set(X10,"Right",net_Right,X11),X=X11.