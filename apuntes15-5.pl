% Predicado visitado en grafos dirigidos: pag-95 manual //http://www.uhu.es/jose.carpio/N_95.pdf


dato(grafo([madrid, cordoba, sevilla, jaen, granada,
huelva, cadiz],
         [arista(huelva, sevilla, a49, 94),
          arista(sevilla, cadiz,ap4, 125),
          arista(sevilla, granada, a92, 256),
          arista(granada, jaen,a44, 97),
          arista(sevilla, cordoba, a4, 138),
          arista(jaen,madrid, a4, 335),
          arista(cordoba, madrid, a4, 400)]
)).

% visitado(+Inicio, +Fin, +Visitados)
visitado(Inicio, Fin, Aristas):- member(arista(Inicio, Fin), Visitados).
visitado(Inicio, Fin, Aristas):- member(arista(Fin, Inicio), Visitados).

% conectado(+Inicio, +Fin, +Aristas,-Carretera, -Kilometros)
conectado(Inicio, Fin, Aristas, C, K):-member(arista(Inicio, Fin,C,K), Aristas).
conectado(Inicio, Fin, Aristas, C, K):-member(arista(Fin, Inicio,C,K), Aristas).

% visitado(+Inicio, +Fin, +Visitados)
visitado(Inicio, Fin, Visitados):-member(arista(Inicio, Fin,_,_), Visitados).
visitado(Inicio, Fin, Visitados):- member(arista(Fin,Inicio,_,_), Visitados).

% camino(Inicio, Fin, Grafo, Visitados, Ciudades,Carreteras, Kilometros)
camino(Fin, Fin, _, _, [Fin], [], 0).
camino(Inicio, Fin, G, Visitados, [Inicio|Ciudades],[Carretera|Carreteras],K2):-  G = grafo(_, Aristas),  conectado(Inicio, TMP, Aristas, Carretera, K),  \+ visitado(Inicio, TMP, Visitados),  camino(TMP, Fin, G, [arista(Inicio,TMP,_,_)|Visitados], Ciudades, Carrete-ras, Kilometros),  K2 is Kilometros + K.

10950