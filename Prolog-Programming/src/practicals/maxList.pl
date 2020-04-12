maxlist([H],H).

maxlist([H|T],M):-
    maxlist(T,M1),
	H < M1 -> M is M1;
	M is H.

max(L):-
    maxlist(L, Max),
    format("Maximum element in list is: ~w", [Max]).