/*  Que = 20  */

sublist([],L):-
    write("It is a sublist.").

sublist(S,[]):-
    write("Not a sublist!").

sublist([H1|T1],[H1|T2]):-
    sublist(T1,T2).
    
sublist([H1|T1],[H2|T2]):-
    sublist([H1|T1],T2).