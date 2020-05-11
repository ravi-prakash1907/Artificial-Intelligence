/*  Que = 12  */

/*  TO BE EDITED    */
revList([]) :-
    write("List is Empty!!"), nl.

revList(L) :-
    reverse(L,N),
    write("Reversed list: "), write(N).

revListTwo(A, B) :-
    append(A, B, L),
    revList(L).

