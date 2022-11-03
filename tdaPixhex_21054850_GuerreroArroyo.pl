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
Hex: Es un String, en el cual representa el color en Hexadecimal de un pixel  hex.

*/


%----------------------------------------------------------------------

%predicates
/*

TDA pixhex:
    pixhex(AltoPixel,AnchoPixel,Hex,Depth,[AltoPixel,AnchoPixel,Hex,Depth]).
    getHex(Pixel,Hex).
    pixhex(Pixel).
*/

%----------------------------------------------------------------------

%goals
/*
Principales:
     pixhex.

secundario:
     obtposicion2 , contador2, getHex, pixhex.

*/


/*
 * ----------------------------------------------------------------------
 *
 * ----------------------[ TDA pixhex ]----------------------------------
 *
 * ----------------------------------------------------------------------
*/

%Constructor de pixel hex
/*
Predicado: pixhex
Descripción: Predicado contructor, en el cual verifica las condiciones para un pixhex y te entrega su representación(lista).
Dominio(Argumento de entrada): Numero(Alto) , Numero(Ancho) , String , Numero , Lista (representación del pixHex).
*/
pixhex(AltoPixel,AnchoPixel,Hex,Depth,[AltoPixel,AnchoPixel,Hex,Depth]):-
    number(AltoPixel),
    number(AnchoPixel),
    string(Hex),
    number(Depth),
    AltoPixel >= 0,
    AnchoPixel >= 0,
    Depth >= 0 .

%Predicados selectoras

/*
Predicado: getHex
Descripción: Entrega el Hexadecimal de un pixel.
Dominio(Argumento de entrada): Lista (pixel) , String.
*/
getHex(Pixel,Hex):-
    obtposicion2(3,Pixel,Hex).

%Predicados de pertencia
/*
Predicado: pixhex
Descripción: Verifica si el pixel ingresado es un pixhex.
Dominio(Argumento de entrada): Lista(Pixel).
Recorrido(Retorno): Booleano.
*/
pixhex(Pixel):-
    contador2(Pixel, RespContador),
    RespContador == 4,
    getHex(Pixel,Hex),
    string(Hex).


%otros predicados:

/*
Predicado: obtposicion
Descripción: Te entrega el contenido que se encuentra en la pisicion pedida de una lista.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Numero(Posicion pedida) , Lista , Contenido que se encontraba en la posicion pedida.
*/
obtposicion2(1,[Contenido|_],Contenido):- !.
obtposicion2(Contador,[_|Cola],Contenido):-
    Contador1 is Contador-1,
    obtposicion2(Contador1,Cola,Contenido).



%Otros predicados:

/*
Predicado: contador
Descripción: Entrega el largo de una lista.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Lista , Numero.
*/
contador2([],0):- !.
contador2([_|Cola],Contador):- contador2(Cola,RespSig), Contador is RespSig+1.
