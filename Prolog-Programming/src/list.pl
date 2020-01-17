write_list([]).

write_list([Head|Tail]) :-
/* output */
    write(Head), nl,
    write_list(Tail).