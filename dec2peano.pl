dec2peano(0,0).
dec2peano(N,s(Z)) :- N > 0 , N2 is N - 1 , dec2peano(N2,Z).