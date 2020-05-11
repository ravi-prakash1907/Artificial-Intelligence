## Intro  to Prolog

### Loading a prolog database/knowledgebase:
1. ```[dbname].```
2. ```consult('dbname.pl').```

### Tracing or Debugging:
*Steps:-*
1. load the database
2. run ```trace.```
3. run commands normally
4. run ```notrace.``` or ```nodebug.``` to go normally

### Importent terms:
> 1. Pradicates:
>           A fact/prodicate is a type of the _clause_ that defines a over 2 given atoms. Simply a fact is a relationship of atom1 with atom2
>           **Syntax:** ``` pradicate(atom1, atom2). ```
> 2. Atom:
>           An atom **starts** with *lower case letter*
>           Can contain - Alphabets, Numbers, + - _ * / < >
>           White space are effective if put into quotes eg. ``` 'romeo juliet' ```
> 3. Rule:
>           Comes into play when a fact is depends upon some other facts
>           A rule is used to defile a condition.
>           **Syntax:** ``` <condition> :- <action> ```
> 4. Variables: 
>           A variable stores a value like atoms
>           **starts** with *upper case letter*
>           Eg. ``` afact(first, second).
>
>                   afact(first, X).```
>                   it returns ---->   X = second
> 5. Operators: 
>           **=** _Equals_ : alice = alice    (TRUE)
>           **\+** _Not-Equals_ : \+ (3 = 4)    (TRUE)
>           **>** _Greater_ : 3 > 15    (FALSE)
>           **<**, **=<**, **>=**
>           **one(X, q) = one(r, Y)** : Gives ->  X = r, Y = q
>           **=:=** _Equality of Expression_ : 5+4 =:= 4+5.  (TRUE)
>           **=\=** _Non-Equality of Expression_ : 5+4 =:= 4+5.  (False)
>           **;** _OR_ : 5 > 100 ; 10 < 100>.  (TRUE)
>           **,** _AND_ : 5 > 100 , 10 < 100>.  (FALSE)
> 6. Others: 
>           **is** _Assignment_ : Var is 10  (assigns 10 to Var)
>           **+**, **-**, 
>           **/** _Devision_ : gives decimal result
>           **//** _Devision_ : gives result without decimal
>           __*__, __**__
> 7. Functions: 
>           **mod(A, B)** _Remainder_ : mod(7, 5)    (gives 2)
>           **random(A, B, X)** : generates a random b/w A and B (including A and B), and stores in X
>           **between(A, B, X)** : generates all possible from A to B, and stores in X
>           **succ(A, X)** _Increment by one_: similar to X = A++; in C++
>           **abs()** _Absolute val._ : X is abs(-4) (assigns 4 to X)
>           **max(A, B)** : max val b/w A and B
>           **min(A, B)** : min val b/w A and B
>           **round(Num)** _For floats_ :  round(12.763) gives 13
>           **truncate(Num)** _Remove Decimal_ : truncate(12.98) gives 12
>           **floor()**, **ceiling()**, **sqrt()**, **sin()** ...., **asin()** ...., **log()**, **log10()**, **exp**, **pi**, **e**

### Interacton:
>  ```
>  write()         --->    outputs
>  writeq()        --->    outputs in ""
>  format()        --->    formatted output
>  read(Var)       --->    reads (any) input into Var
>  get(Var)        --->    SINGLE CHAR input & stores ASCII val into Var
>  ```

### File Handling:
_Writing_ :
>  ```
>  open(File, write, Stream),
>  write(Stream, Text),
>  close(Stream).
>  ```

_Reading_ :
>  ```
>  open(File, read, Stream),
>  get_char(Stream, Char),
>  /*   function below ain't inbuilt    */
>  process_stream(Char, Stream),   
>  close(Stream).


>  /*   defining process_stream(Char, Stream)   */

>  /*   if file has ended   */
>  process_stream(end_of_file, _) :-
>      !.

>  /*   what to do after reading char??   */
>  process_stream(Char, Stream) :-
>      write(Char),
>      get_char(Stream, Char),
>      process_stream(Char, Stream).
>  ```

>  **File** : file name in quotes
>  **write/read** : mode of opening
>  **Stream** : kinda buffer or connection esteblisher with flie
>  **get_char()** : takes one char from file
>  **!** : stops back-tracking

### Misllenious: 
>  **:- dynamic(predicate/Num).** :
>          _:- dynamic()._ : makes a database's predicate changable while using same \[database]
>          _predicate_ : name of predicate to make it dynamic
>          _Num_ : number of occurances of that pradicate in database

_After that, following can be used to change/add pradicates:_
>  **assertz()** _adds at End_ : eg. ```assertz(happy(person))```
>  **asserta()** _adds at Beg._ : eg. ```asserta(happy(person))```
>  **retract()** _removes_ : eg. ```retract(happy(person))```
>  **retractall()** _removes All those predicates_ : eg. ```retractall(parent(_,_))```

### List & Strings:
>  _Lists_ can have any no. of data in them.
>  **member(element, List)** : TRUE, if element belongs to the List
>  also -->  ```member(Ele, List)``` : Ele cycles through all elements in List
>  **reverse(List, X)** : Reverses List and stores in X
>  **append(List1, List2, X)** : X = [<List1_ele>, <List2_ele>]
>  **atom_length(Str, Len)**
>  **name()** : String <--> List
>  **join_str(A, B, ...)** : joins any no. of str.
