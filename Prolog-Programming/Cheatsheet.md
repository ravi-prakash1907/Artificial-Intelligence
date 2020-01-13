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