peano2dec(0,0).
peano2dec(s(Z),P) :- peano2dec(Z,P2),P is P2 + 1.

dec2peano(0,0).
dec2peano(N,s(Z)) :- N > 0 , N2 is N - 1 , dec2peano(N2,Z).

% Multiplicacion mult(?X, ?Y, ?Z)
% Es cierto cuando Z unifica con
% el producto de X por Y

suma(0,Y,Y).
suma(s(X),Y,s(Z)) :- suma(X,Y,Z).

mult(X,0,0).
mult(X,s(Y),Z2) :- mult(X,Y,Z), suma(Z, X, Z2).

% 3 * 2 
% 3 * 1 = 3 