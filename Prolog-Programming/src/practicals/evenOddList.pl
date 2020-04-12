/*  List is Even or Odd -- T/F  */
evenLen([]).
    
evenLen([_|T]):- oddLen(T).

oddLen([_]).

oddLen([_|T]):- evenLen(T).