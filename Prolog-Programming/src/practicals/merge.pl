/*  Que = 23  */

/* merge lists */
mergeAll(L1, L2, L):-
    sort(L1, A),
    sort(L2, B),
    write("Merged list: "),
    append(A,B,L).



mergeOnce(L1, L2, L):-
    append(L1,L2,Temp),
    write("Merged list: "),
    sort(Temp, L).

