/*  Que = 9  */

/*  Route for a Cyclic Directed Graph  */
edge(p,q).
edge(q,r).
edge(q,s).
edge(s,t).
    
path(X,Y):-
    edge(X,Y).
    
path(X,Y):-
    edge(X,Z),
    path(Z,Y).