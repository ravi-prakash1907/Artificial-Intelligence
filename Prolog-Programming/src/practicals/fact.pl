/*  Calculator  */
find_fact(Num, Fact) :-
    Num > 1 -> (
        Temp is Num-1,
        find_fact(Temp, NewFact),
        Fact is Num*NewFact
    );
    Fact is 1.
	
/*  Main Function   */
factorial(Val) :-
    find_fact(Val, Fact),
    format("~w! = ~w", [Val, Fact]).