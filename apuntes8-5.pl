%Camino(+ini,+fin,+visitados,-caminos).
camino(ini,ini,_,[ini]).
//grado[a,b,c].
camino(g,ini,fin,visitados,[ini]):- conectado(g,ini,fin),\+ member(a(ini,fin),visitados).

camino(_,ini,ini,_,[ini]).
camino(g(_,A),ini,fin,visitados,[ini|camino]):- member(a(ini,tmp),A), \+member(tmp,visitados),camino(tmp,fin,[tmp|visitados],camino).
grafo(g[a,b,c,d],[a(a,b),a(b,c),a(c,d),a(d,b)]).

conectado(g(_,a),ini,fin):-member(a(ini,fin),A).
conectado(g(_,a),ini,fin):-member(a(fin,ini),A).