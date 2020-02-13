/* X^Y */
power(X, X2, Y, Result) :-
    Y > 1 -> (
        Temp is X*X2,
        Val is Y-1,
        power(X, Temp, Val, Res),
        Result is Res
    );
    Y = 1 -> 
        Result is X2;
    Result is 1.

getPow(X, Y) :-
    X2 is X,
    power(X, X2, Y, Res),
    format("~w^~w = ~w", [X, Y, Res]), nl.