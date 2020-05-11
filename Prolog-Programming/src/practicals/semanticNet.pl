/*      Semantic Net.       */


/*******************/
/* few other RULES */


is_a(albert, male).
is_a(bob, male).
is_a(charles, male).
is_a(charlie, male).
is_a(dan, male).

is_a(alice, female).
is_a(diana, female).
is_a(charlet, female).


/*******************/

has_a(albert, stick).
has_a(alice, stick).

has_a(bob, smartphone).
has_a(charles, smartphone).
has_a(dan, smartphone).
has_a(diana, smartphone).

has_a(charlie, lollypop).
has_a(charlet, lollypop).


/*******************/

gender(Name) :-  
   is_a(Name, Gender),
   format("~w is a ~w.~n", [Name, Gender]).

owns(Name) :-
   has_a(Name, Utility),
   format("~w has a ~w.~n", [Name, Utility]).
