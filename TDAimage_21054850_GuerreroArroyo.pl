lista([A|L] , X):-
    A > 0,
    append([A],L,X).

pixeles( [X] , X):- true , !.
pixeles( [_|Y], X):- pixeles(Y,X).

/*
 * ----------------------------------------------------------------------
 * -----------------CONSTRUCTORES DE PIXEL-------------------------------
 * ----------------------------------------------------------------------
*/

%Constructor de pixel bit
pixbit_d(Alto,Ancho,Bit,D,[Alto,Ancho,Bit,D]):-
    number(Alto),
    number(Ancho),
    number(Bit),
    number(D),
    Alto >= 0,
    Ancho >= 0,
    bit(Bit),
    D >= 0 .

%Constructor de pixel hex
pixhex_d(Alto,Ancho,Hex,D,[Alto,Ancho,Hex,D]):-
    number(Alto),
    number(Ancho),
    string(Hex),
    number(D),
    Alto >= 0,
    Ancho >= 0,
    D >= 0 .

%Constructor de pixel RGB
pixrgb_d(Alto,Ancho,R,G,B,D,[Alto,Ancho,R,G,B,D]):-
    number(Alto),
    number(Ancho),
    number(R),
    number(G),
    number(B),
    number(D),
    Alto >= 0,
    Ancho >= 0,
    R >= 0 ,  R =< 255,
    G >= 0 ,  G =< 255,
    B >= 0 ,  B =< 255,
    D >= 0 .
