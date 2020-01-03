/* fact(atom, atom) */
loves(romeo, juliet).

/* rules are defined using   :- */
loves(juliet, romeo) :- loves(romeo, juliet).

/*

listing(male)   

lists -->
all male predicate..

*/
 male(albert).
 male(bob).
 male(charles).
 male(charlie).
 male(dan).

 female(alice).
 female(charlet).
 female(diana).

/************************/
/* few other PREDICATES */


/* 

alice is happy
charlie is with charlet

*/
 happy(alice).
 happy(charlet).
 happy(diana).
 happy(charlie).
 
 with_charlie(charlet).
 with_charlie(alice).

/*

charlie runs if
        he is happy

*/
 runs(charlet) :-
    happy(charlie).

 dances(charlet) :-
    happy(charlet),
    with_charlie(charlet).

 dances(alice) :-
    happy(alice),
    with_charlie(alice).


 does_alice_dances :- dances(alice),
    write("Alice happy when she\'s with Charlie and dances!").


 swims(bob) :-
    happy(bob).

 swims(bob) :-
    near_pool(bob).

/* End of Predicate Examples */
/*****************************/


/*******************/
/* few other RULES */

