/*        
NOT WORKING
*/



/*

After = [1,2,3,4,5]
Before = [7,6,4,9,2]

n = 3
New = [After|Before]

    Steps:
      1. After = [1,2,4,5]
      2. Before = [7,6,9,2]
      N2 = [1,2,4,5,7,6,9,2]
      New = [1,2,5,7,6,9,2]

*/

/////////////////////////////////////////////


/*delete a number in the list. */
delte(1,[_|T],T).
delte(P,[X|Y],[X|R]):-
 P1 is P-1,
 delte(P1,Y,R).

/* delete before and after. */
daltob(P,L,R):-
    P1 is P-1,
    delte(P1,L,R1),
    
/* delete before. */
    delte(P,R1,R).
 /* delete after. */

 /*delete a number in the list. */
delte(1,[_|T],T).
delte(P,[X|Y],[X|R]):-
 P1 is P-1,
 delte(P1,Y,R).

/* delete before and after. */

% Its also working for first and last positions.
% Used nested if else conditions.

daltob(P,L,R):-
 length(L,L1),
 (
 P=:=1 ->
  P3 is P+1,
  delte(P3,L,R)
  ;
 P=:=L1 ->
  P3 is P-1,
  delte(P3,L,R)
  ;
  P1 is P-1,
  delte(P1,L,R1),
  /* delete before. */
  delte(P,R1,R)
  /* delete after. */
 ).


