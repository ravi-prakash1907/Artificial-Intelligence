/*  Que = 1  */

sum(X, Y) :-
    Total is X+Y,
    format("~w + ~w = ~w", [X, Y, Total]).
