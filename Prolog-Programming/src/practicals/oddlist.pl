/*   finds length   */
size([], N, Len) :-
    Len is N.

size([H|T], N, Len) :-
    size(T, N, L2),
    Len is 1+L2.

/*   check for even or odd list   */
test(Num, S) :-
    S is mod(Num, 2),
    (
        S = 0 -> (
            write("List is even!!")
        );
        write("List is odd!!")
    ).

/*  main  */
check(L) :-
    L = [] -> (
        write("List is empty!")
    );
    size(L,0,Sz),
    test(Sz, S).    