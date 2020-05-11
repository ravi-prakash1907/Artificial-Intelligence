/*  Que = 8  */

power(Num,1,Num).

power(Num,Pow,Ans):-
    Pow1 is Pow-1,
	power(Num,Pow1,Ans1),
	Ans is Ans1*Num.
    
toh(N):-
    power(2,N,Ans1),
	Ans is Ans1-1,
	format("Total steps: ~w", [Ans]).