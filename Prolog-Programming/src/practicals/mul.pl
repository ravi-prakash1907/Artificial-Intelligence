/*  Que = 7  */

multiply(X, Y):-
    Sol is X*Y,
    format("~wX~w = ~w", [X, Y, Sol]).