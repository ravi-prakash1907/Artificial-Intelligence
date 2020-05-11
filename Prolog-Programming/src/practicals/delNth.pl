/*  Que = 21  */

/*  Remone nth element  */
trimN(1, [H|T], Empty, Temp):-
    append(Empty, T, Temp).

trimN(N,[H|T],Empty,Temp):-
    append(Empty, H, Temp),
    Empty is Temp,
    N1 is N-1,
    trimN(N1,T,Empty,Temp).



delete_nth(N, L, R):-
    trimN(N, L, [], New),
    R is New.