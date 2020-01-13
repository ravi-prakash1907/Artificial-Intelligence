max(X, Y) :-
    (
        (X > Y) ->
            Max is X;
        (X =< Y) ->
            Max is Y
    ),
    write(Max), tab(1), write("is largest"), nl.