/*  Que = 16  */

/*  Remone nth element  */
getNth(1, [H|T], Empty, Element):-
    Element is H.

getNth(N,[H|T],Empty,Element):-
    append(Empty, H, Temp),
    Empty2 is Temp,
    N1 is N-1,
    getNth(N1,T,Empty2,Element).



nth_element(N, L, X):-
    getNth(N, L, [], New),
    X is New.