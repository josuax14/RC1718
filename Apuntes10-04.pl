comprime([], []).
comprime([Ca],[(Ca,1)]).
comprime( [Ca,Ca|Resto] , [(Ca|N2)|R] ) :- comprime( [Ca|Resto] , [(Ca,N)|R] ), N2 is N+1 .
comprime( [Ca1,Ca2|Resto] , [(Ca1,1)|R] ) :- Ca1 \= Ca2 , comprime( [Ca2|Resto] , R ). 

