/*  Que = 4  */

noFib(X, Temp) :-
  X > 1 -> (
        Y is X-1,
        Z is X-2,
        noFib(Y, T1),
        noFib(Z, T2),
        Temp is T1+T2
  );
  Temp is X.

fibTerms(N, Index) :-
   Index < N -> (
        noFib(Index, T),
        format("~w ", [T]),
        I2 is Index+1,
        fibTerms(N, I2)
   );
   format("~n").

fibonacci(N) :-
   N > 0 -> (
        format("First ~w elements of Fibonacci Series: ~n", [N]),
        fibTerms(N, 0)
   );
   write("Invalid no. of terms!!").
