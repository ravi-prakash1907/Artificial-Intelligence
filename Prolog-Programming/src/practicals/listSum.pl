adder([], Sum) :-
    Sum is 0.

adder([H | []], Sum) :-
    Sum is H.

adder([H|T], Sum) :-
    adder(T, Sum1),
    Sum is (Sum1+H).

addList(L) :-
    adder(L, Sigma),
    format("Sum of the list is: ~w ~n", [Sigma]).