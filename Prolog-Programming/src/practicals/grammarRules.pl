/*  Que = 24  */

/*  Grammar rules  */
remove_dupnoun([dog|X],X).
remove_dupnoun([cat|X],X).
remove_dupnoun([mouse|X],X).

remove_dupverb([ate|X],X).
remove_dupverb([chases|X],X).

remove_dupadjective([big|X],X).
remove_dupadjective([brown|X],X).
remove_dupadjective([lazy|X],X).

remove_dupdeterminer([the|X],X):-!.


remove_dupnounphrase(NP,X):- determiner(NP,R),
				noun(R,X).
remove_dupnounphrase(NP,X):- determiner(NP,R),
				adjective(R,S2),
				noun(S2,X).

remove_dupverbphrase(VP,X):- verb(VP,R),
				nounphrase(R,X).

remove_dupsentence(I,O):- nounphrase(I,R),
				verbphrase(R,O).