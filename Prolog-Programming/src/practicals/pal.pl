/*  Palindrome  */

pal(L) :-
    reverse(L, Reversed),
    check(L, Reversed).

check([], []) :-
    write("Given list is Palindrome!"), nl.

check([H|T1], [H|T2]) :-
    check(T1, T2).

check([_|_], [_|_]) :-
    write("Given list is not Palindrome!!"), nl.