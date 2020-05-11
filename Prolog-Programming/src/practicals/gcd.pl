/*  Que = 5  */

/*  GCD  */

arrange(A, B, Val1, Val2) :-
    B > A -> (
        Val1 is B,
        Val2 is A
    );
    Val1 is A,
    Val2 is B.


findgcd(X,Y,Z) :-
    Rem is mod(X,Y),
    Rem > 0 -> (
        NewY is Rem,
        findgcd(Y, NewY, Z2),
        Z is Z2
    );
    Z is Y.

gcd(Num1, Num2) :-
    arrange(Num1, Num2, V1, V2),
    Num1 is V1,   Num2 is V2,
    
    Num2 = 0 -> (
        format("GCD for ~w & ~w is: ~w~n", [Num1, Num2, Num2])
    );
    findgcd(Num1, Num2, Ans),
    format("GCD for ~w & ~w is: ~w~n", [Num1, Num2, Ans]).