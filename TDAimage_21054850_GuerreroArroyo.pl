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

%Constructor de la lista imagen
image(Ancho , Alto , [C|L] , I):-
    number(Ancho),
    number(Alto),
    append([C],L,X),
    I = [Ancho , Alto , X].

%-------------------------------------------------

obtposicion(1,[X|_],X):- !.
obtposicion(N,[_|L],X):-
    N1 is N-1,
    obtposicion(N1,L,X).

contador([],0):- !.
contador([_|L],C):- contador(L,M), C is M+1.

%---------------------------------------------------

bit(X):-
    number(X),
    X = 0, ! ; X = 1.

pixbit(P):-
    contador(P , C),
    C == 4,
    obtposicion(3,P,X),
    bit(X).

pixelesbit([]).
pixelesbit([X|Y]):-
    pixbit(X),
    pixelesbit(Y).

%imageIsBitmmap

imageIsBitmap(I):-
    pixeles(I,P),
    pixelesbit(P).
%-------------------------------------------------------

pixRGB(P):-
    contador(P, C),
    C == 6.

pixelesRGB([]).
pixelesRGB([X|Y]):-
    pixRGB(X),
    pixelesRGB(Y).

imageIsPixmap(I):-
    pixeles(I,P),
    pixelesRGB(P).


%-------------------------------------------------------------
pixhex(P):-
    contador(P, C),
    C == 4,
    obtposicion(3,P,X),
    string(X).

pixelesHex([]).
pixelesHex([X|Y]):-
    pixhex(X),
    pixelesHex(Y).

imageIsHexmap(I):-
    pixeles(I,P),
    pixelesHex(P).
