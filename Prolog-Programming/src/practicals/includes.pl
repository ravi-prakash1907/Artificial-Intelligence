/*  Que = 10  */

/* list L includes Num 

L be [H|T] 

*/

incl(Num, []):-
    format("~w is NOT a member of given list.", [Num]).


incl(Num, [H|T]):-
    Num = H ->
        format("~w is a member of given list.", [Num]);
    incl(Num, T).
