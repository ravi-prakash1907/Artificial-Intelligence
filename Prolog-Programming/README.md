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
>           A fact/prodicate is a type of the _clause_ that defines a over 2 given atoms. Simply a fact is a relationship of atom1 with atom2 <br />
>           **Syntax:** ``` pradicate(atom1, atom2). ``` <br />
> 2. Atom:
>           An atom **starts** with *lower case letter* <br />
>           Can contain - Alphabets, Numbers, + - _ * / < >  <br />
>           White space are effective if put into quotes eg. ``` 'romeo juliet' ``` <br />
> 3. Rule:
>           Comes into play when a fact is depends upon some other facts <br />
>           A rule is used to defile a condition. <br />
>           **Syntax:** ``` <condition> :- <action> ``` <br />
> 4. Variables: 
>           A variable stores a value like atoms <br />
>           **starts** with *upper case letter* <br />
>           Eg. ``` afact(first, second). <br />
> <br />
>                   afact(first, X).``` <br />
>                   it returns ---->   X = second <br />
> 5. Operators: 
>           **=** _Equals_ : alice = alice    (TRUE) <br />
>           **\+** _Not-Equals_ : \+ (3 = 4)    (TRUE) <br />
>           **>** _Greater_ : 3 > 15    (FALSE) <br />
>           **<**, **=<**, **>=** <br />
>           **one(X, q) = one(r, Y)** : Gives ->  X = r, Y = q <br />
>           **=:=** _Equality of Expression_ : 5+4 =:= 4+5.  (TRUE) <br />
>           **=\=** _Non-Equality of Expression_ : 5+4 =:= 4+5.  (False) <br />
>           **;** _OR_ : 5 > 100 ; 10 < 100>.  (TRUE) <br />
>           **,** _AND_ : 5 > 100 , 10 < 100>.  (FALSE) <br />
> 6. Others: 
>           **is** _Assignment_ : Var is 10  (assigns 10 to Var) <br />
>           **+**, **-**,  <br />
>           **/** _Devision_ : gives decimal result <br />
>           **//** _Devision_ : gives result without decimal <br />
>           __*__, __**__ <br />
> 7. Functions: 
>           **mod(A, B)** _Remainder_ : mod(7, 5)    (gives 2) <br />
>           **random(A, B, X)** : generates a random b/w A and B (including A and B), and stores in X <br />
>           **between(A, B, X)** : generates all possible from A to B, and stores in X <br />
>           **succ(A, X)** _Increment by one_: similar to X = A++; in C++ <br />
>           **abs()** _Absolute val._ : X is abs(-4) (assigns 4 to X) <br />
>           **max(A, B)** : max val b/w A and B <br />
>           **min(A, B)** : min val b/w A and B <br />
>           **round(Num)** _For floats_ :  round(12.763) gives 13 <br />
>           **truncate(Num)** _Remove Decimal_ : truncate(12.98) gives 12 <br />
>           **floor()**, **ceiling()**, **sqrt()**, **sin()** ...., **asin()** ...., **log()**, **log10()**, **exp**, **pi**, **e**
  
<hr />

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

 <br />

>  /*   defining process_stream(Char, Stream)   */

 <br />
 
>  /*   if file has ended   */
>  process_stream(end_of_file, _) :-
>      !.

>  /*   what to do after reading char??   */
>  process_stream(Char, Stream) :-
>      write(Char),
>      get_char(Stream, Char),
>      process_stream(Char, Stream).
>  ```

>  **File** : file name in quotes <br />
>  **write/read** : mode of opening <br />
>  **Stream** : kinda buffer or connection esteblisher with flie <br />
>  **get_char()** : takes one char from file <br />
>  **!** : stops back-tracking <br />

### Misllenious: 
>  **:- dynamic(predicate/Num).** :
>          _:- dynamic()._ : makes a database's predicate changable while using same \[database] <br />
>          _predicate_ : name of predicate to make it dynamic <br />
>          _Num_ : number of occurances of that pradicate in database <br />

 <br />
 
_After that, following can be used to change/add pradicates:_ <br />
>  **assertz()** _adds at End_ : eg. ```assertz(happy(person))``` <br />
>  **asserta()** _adds at Beg._ : eg. ```asserta(happy(person))``` <br />
>  **retract()** _removes_ : eg. ```retract(happy(person))``` <br />
>  **retractall()** _removes All those predicates_ : eg. ```retractall(parent(_,_))``` <br />

### List & Strings:
>  _Lists_ can have any no. of data in them. <br />
>  **member(element, List)** : TRUE, if element belongs to the List <br />
>  also -->  ```member(Ele, List)``` : Ele cycles through all elements in List <br />
>  **reverse(List, X)** : Reverses List and stores in X <br />
>  **append(List1, List2, X)** : X = [<List1_ele>, <List2_ele>] <br />
>  **atom_length(Str, Len)** <br />
>  **name()** : String <--> List <br />
>  **join_str(A, B, ...)** : joins any no. of str. <br />

<hr />

[_home_](../)
