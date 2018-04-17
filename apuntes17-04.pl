% cuenta_nodos(+A,-N)
% es cierto cuando N unifica con el numero
% de nodos del arbol A

cuenta_nodos(nil, 0).
cuenta_nodos(a(_,HI,HD), R) :- cuenta_nodos(HI,RI), ceunta_nodos(HD, RD), R is RI + RD + 1.

arbol( a(a, a(b,a(c,nil,nil),nil) , nil), R).


% lista_hojas(+A, -L)
% es cierto cuando L unifica con una lista
% que contiene las etiquetas de las hojas
% de arbol A

lista_hojas(nil,[]).
lista_hojas(a(E,nil,nil),[E]).
lista_hojas(a(E, nil, HD), RD):- HD \= nil, lista_hojas(HD,RD).
lista_hojas(a(E, nil, HI), RD):- HI \= nil, lista_hojas(HI,RD).
lista_hojas(a(E, HI, HD), R):- HD \= nil, HI \= nill, lista_hojas(HD,RD),lista_hojas(HI,RI), append(RD,RI,R).


% cuenta_internos(+A,-R)
% es cierto cuando R unifica
% de nodos internos del arbol A (todos los nodos menos las hojas)

cuenta_internos(a,r):- cuenta_nodos(a,NumNodos),cuenta_nodos(a,numhojas), r is NumNodos - NumHojas.


% suma_nodos(+a,-r)
% es cierto cuando r unifica con la suma de todos las etiquetas de arbol a



% iguales(+A,+B)
% Es cierto si los arboles A y B son iguales


% invertir(+A,-R)
% Es cierto si R es el arbol A invertido. Para todo nodo,
% lo que en A esta a la izquierda en R aparece a la derecha.

invertir(nil,nil).
invertir(a(E,HI,HD),R) , a(E,RD,RI):- invertir(HI,RI),invertir(HD,RD).


