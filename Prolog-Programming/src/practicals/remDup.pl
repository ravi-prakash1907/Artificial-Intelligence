/*  Que = 17  */

/*  removes the duplicate element from list */
member(X, [X|_]).

member(X, [_|T]):-
    member(X,T).

remove_dup([], []).

remove_dup([H|T], R):-
    is_member(H, T),
    remove_dup(T, R).

remove_dup([H|T], [H|R]):-
    not(is_member(H, T)),
    remove_dup(T, R).
