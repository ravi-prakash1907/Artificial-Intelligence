/* X^Y */
power(X, X2, Y, Result) :-
    Y = 0 ->
        Result is 1;
    Y = 1 -> 
        Result is X2;
    Y > 1 -> (
        Temp is X*X2,
        Val is Y-1,
        power(X, Temp, Val, Res),
        Result is Res
    );
    Y < 0 -> (
        Temp is X*X2,
        Val is Y-1,
        power(X, Temp, Val, Res),
        Result is 1/Res
    ).

getPow(X, Y) :-
    X2 is X,
    power(X, X2, Y, Res),
    format("~w^~w = ~w", [X, Y, Res]), nl.