peano2dec(0,0).
peano2dec(s(Z),P) :- peano2dec(Z,P2),P is P2 + 1.
