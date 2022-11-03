%domains
/*
Dato: Hay dominios en el cual pueden tener el mismo nombre pero con un numero agregado al final, se hace con la finalidad de diferenciarlos, pero tienen el mismo significado.


Cola : La lista se puede ver como un predicado que tiene 2 partes ,[Cabeza|Cola] , en el cual la cola es una lista.
Contenido: Hace referencia a lo que se obtiene en la posicion pedida de una lista, en el cual esta puede ser otra lista, un numero , un string ,etc.
Contador: Como su mismo nombre lo dice, esta servira para ir incrementando o disminuyendo para finalmente hacer uso de este.
RespContador: Es lo que sale de haber contado alguna cosa en el particular, en el cual este un numero. Generalmente este puede representar el largo de una lista.
RespSig: Hace referencia a que esta es lo que devuelve el siguiente caso de la recursion, en el cual esta se esta esperando para usarse.
AltoPixel: Es un numero Mayor o igual que 0, el cual representa la coordenada Y o al alto de un Pixel.
AnchoPixel: Es un numero Mayor o igual que 0, el cual representa la coordenada X o al Ancho de un Pixel.
Depth: Numero >= 0 , en el cual representa la profundidad de un Pixel.
Pixel: Es un lista, en el cual contiene su Alto , Ancho , Color y profundidad.
ColorR: Numero >= o  y <= 255 , en el cual representa el Color R de un Pixel RGB.
ColorG: Numero >= o  y <= 255 , en el cual representa el Color G de un Pixel RGB.
ColorB: Numero >= o  y <= 255 , en el cual representa el Color B de un Pixel RGB.

*/


%----------------------------------------------------------------------

%predicates
/*

TDA pixrgb:
    pixrgb(AltoPixel,AnchoPixel,ColorR,ColorG,ColorB,Depth,[AltoPixel,AnchoPixel,ColorR,ColorG,ColorB,Depth]).
    getR(Pixel,ColorR).
    getG(Pixel,ColorG).
    getB(Pixel,ColorB).
    pixRGB(Pixel).
*/

%----------------------------------------------------------------------

%goals
/*
Principales:
    pixrgb.
secundario:
    obtposicion3 , contador3, pixRGB , getR, getG, getB.
*/




/*
 * ----------------------------------------------------------------------
 *
 * ---------------------[ TDA pixrgb ]-----------------------------------
 *
 * ----------------------------------------------------------------------
*/

%Constructor de pixel RGB
/*
Predicado: pixrgb
Descripción: Predicado contructor, en el cual verifica las condiciones para un pixrgb y te entrega su representación(lista).
Dominio(Argumento de entrada): Numero(Alto) , Numero(Ancho) , Numero(Color R) , Numero(Color G) , Numero(Color B) , Numero.
Recorrido(Retorno): Lista (representación del pixrgb).
*/
pixrgb(AltoPixel,AnchoPixel,ColorR,ColorG,ColorB,Depth,[AltoPixel,AnchoPixel,ColorR,ColorG,ColorB,Depth]):-
    number(AltoPixel),
    number(AnchoPixel),
    number(ColorR),
    number(ColorG),
    number(ColorB),
    number(Depth),
    AltoPixel >= 0,
    AnchoPixel >= 0,
    ColorR >= 0 ,  ColorR =< 255,
    ColorG >= 0 ,  ColorG =< 255,
    ColorB >= 0 ,  ColorB =< 255,
    Depth >= 0 .

%Predicados selectoras
/*
Predicado: getR
Descripción: Entrega el Color R de un pixel.
Dominio(Argumento de entrada): Lista (pixel).
Recorrido(Retorno): Numero.
*/
getR(Pixel,ColorR):-
    obtposicion3(3,Pixel,ColorR).
/*
Predicado: getG
Descripción: Entrega el Color G de un pixel.
Dominio(Argumento de entrada): Lista (pixel).
Recorrido(Retorno): Numero.
*/
getG(Pixel,ColorG):-
    obtposicion3(4,Pixel,ColorG).

/*
Predicado: getB
Descripción: Entrega el Color B de un pixel.
Dominio(Argumento de entrada): Lista (pixel).
Recorrido(Retorno): Numero.
*/
getB(Pixel,ColorB):-
    obtposicion3(5,Pixel,ColorB).

%Predicados de pertencia

/*
Predicado: pixRGB
Descripción: Verifica si el pixel ingresado es un pixRGB.
Dominio(Argumento de entrada): Lista(Pixel).
Recorrido(Retorno): Booleano.
*/
pixRGB(Pixel):-
    contador3(Pixel, RespContador),
    RespContador == 6.


%Otros predicados:


/*
Predicado: obtposicion
Descripción: Te entrega el contenido que se encuentra en la pisicion pedida de una lista.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Numero(Posicion pedida) , Lista.
Recorrido(Retorno): Contenido que se encontraba en la posicion pedida.
*/
obtposicion3(1,[Contenido|_],Contenido):- !.
obtposicion3(Contador,[_|Cola],Contenido):-
    Contador1 is Contador-1,
    obtposicion3(Contador1,Cola,Contenido).





/*
Predicado: contador
Descripción: Entrega el largo de una lista.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Lista.
Recorrido(Retorno): Numero.
*/
contador3([],0):- !.
contador3([_|Cola],Contador):- contador3(Cola,RespSig), Contador is RespSig+1.
