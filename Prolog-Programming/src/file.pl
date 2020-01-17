create_file(File, Text) :- 
    open(File, write, Streem),
    write(Streem, Text),
    close(Streem).

read_file(File) :- 
    open(File, read, Streem),
    get_char(Streem, Char1),
    process_file(Char1, Streem),
    close(Streem).

process_file(end_of_file, _) :- !.

process_file(Char1, Streem) :- 
    write(Char1),
    get_char(Streem, Char1),
    process_file(Char1, Streem).
