/*  Que = 11  */

concat(L1, L2):-
    append(L1, L2, L),
    write("Joined list: "),
    write(L), nl.