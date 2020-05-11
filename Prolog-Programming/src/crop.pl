/*  from index 1 to N  */
tillN(1, [H|T], H).

tillN(N, [H|T], Final):-
    N2 is N-1,
    tillN(N2, T, Val),
    append(H, Val, Temp),
    Final is Temp.

/*   from index N+1 to End   */
beyondN(1, [H|T], T).

beyondN(N, [H|T], Final):-
    N2 is N-1,
    beyondN(N2, T, Temp),
    Final is Temp.




before(N, L, F):-
    tillN(N, L, F).

after(N, L, F):-
    beyondN(N, L, F).