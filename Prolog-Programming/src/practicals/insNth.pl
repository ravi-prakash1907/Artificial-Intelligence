/*  Que = 19  */

/*  Insert nth element  */
nextToN(0,L,L).

nextToN(N,[H|T],Temp):-
    N1 is N-1,
    nextToN(N1,T,Temp).



uptoN(0, [H|T], Empty, Empty).

uptoN(N,[H|T],Empty,Temp):-
    append(Empty, H, Temp),
    Empty is Temp,
    N1 is N-1,
    uptoN(N1,T,Empty,Temp).



insert_nth(I, N, L, R):-
    Val is I,
    uptoN(N, L, [], Before),
    nextToN(N, L, After),
    append(Before, Val, Head),
    append(Head, After, New),
    R is New.