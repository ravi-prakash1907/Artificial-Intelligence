/*  Pradicates, Atoms, Rules & Clauses*/

/* fact(atom, atom) */
loves(romeo, juliet).

/* rules are defined using   :- */
loves(juliet, romeo) :-
    loves(romeo, juliet).

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
    happy(bob),
    write("Alice is Swiming!").

 swims(bob) :-
    near_pool(bob),
    write("Alice is Swiming!").

 swims(alice) :-
    happy(alice),
    write("Alice is Swiming!").

/* End of Predicate Examples */
/*****************************/


/*******************/
/* few other RULES */

parent(albert, bob).
parent(albert, charles).
parent(albert, dan).

parent(alice, bob).
parent(alice, charles).
parent(alice, dan).

parent(dan, charlie).
parent(dan, charlet).

parent(diana, charlie).
parent(diana, charlet).

get_grandchild :-
   parent(albert, X),
   parent(X, Y),
   write("Grandchild of Albert is "),
   write(Y), nl.

/*
   ~w  : variable
   ~s  : string
   ~n  : new line
*/

/* Axioms & Derived facts  */
get_shibling :-
   with_charlie(Y),
   swims(X),
   parent(X, Y),
   parent(X, charlie),
   format("~w ~s sister of charlie~n", [Y, "is the"]).


/***********************************/
/************ Conditions ***********/

what_grade(5) :-
   write("Go to KG").
what_grade(Rest) :-
   Gread is Rest-5,
   format("Go to gread ~w", [Gread]).

/*    Structure     */
owns(albert, pet(dog, tiger)).

customer(tom, smith, 20.33).
customer(her, smith, 740.59).

get_bal :-
   customer(Name, _, Bal),
   format("~w has $ ~2f ~n", [Name, Bal]).

get_cust_info(FName, LName) :-
   customer(FName, LName, B),
   write(FName), tab(1),
   format('~w owes me $~2f ~n', [LName, B]).

/************/

line(point(X,Y), point(X, Y2)) :-
   vertical.

vertical :-
   write("Given points belong to a Vertical line.").

line(point(X,Y), point(X2, Y)) :-
   horizontal.

horizontal :-
   write("Given points belong to a Horizontal line.").

line(point(X,Y), point(X2, Y2)) :-
   write("Given points belong to just a bloody line.").

/***********/


warm_blooded(whale).
warm_blooded(human).

have_lungs(whale).
have_lungs(human).

carnivorous(whale).
omnivorous(human).

mammal(X) :-
   warm_blooded(X),
   have_lungs(X),
   write(X), tab(1), write(" are mammals").

people(X) :-
   warm_blooded(X),
   have_lungs(X),
   omnivorous(X),
   format("~w may wear hat", [X]).


/************************************/

/**   Recursion   **/

/*non recursive*/
related(X, Y) :- 
   parent(X, Y)

/*recursive*/
related(X, Y) :-
   parent(X, Z),
   related(Z, Y)


/*****   Lists   *****/

/*
  used if has unknown no. of elements
  
    | used to add
*/
add_albert_in_list :-
    write([albert|[bob, michel]]), nl.


List is ["male", "female", "other"].
get_len_of_list(List) :-
    length(List, X),
    write(X).

/*
    H = "male"
    T = ["female", "other"]
*/
print_head_tail(List) :-
    [H|T] = List,
    write(H), nl, write(T).

add_to_tail(List) :-
    [A, B, C|T] = ["me", "you", "none"],
    write(A), nl, write(B), nl, write(C).

/*   using anonymus var in lists   */
/*
    List = ["male", "female", "other"]
*/
use_ann(List) :-
    [_, Y, _|T] = List,
    write(Y).


/*******************************/
/**     Strings     **/

/*  makes a list of len 4 having ASCII val for char in 'Ravi'   */
X = name('Ravi').


/*  

    as above X is a list of ASCII char,
    to pring the string...
*/
name(Stringgg, X).
/* Stringgg = 'Ravi' */


/*  Joining/Appending strings  */
Str1 is 'Ravi'.
Str2 is 'Prakash'.
Str3 is 'Tripathi'.

Str is join_str(Str1, Str2, Str3).
write(Str).

/* stores length (here 4) into Len */
write(atom_length('Ravi', Len)).