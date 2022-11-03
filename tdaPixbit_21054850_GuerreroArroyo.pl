%domains
/*
Dato: Hay dominios en el cual pueden tener el mismo nombre pero con un numero agregado al final, se hace con la finalidad de diferenciarlos, pero tienen el mismo significado.

AltoPixel: Es un numero Mayor o igual que 0, el cual representa la coordenada Y o al alto de un Pixel.
AnchoPixel: Es un numero Mayor o igual que 0, el cual representa la coordenada X o al Ancho de un Pixel.
Bit: Es un numero , en el cual puede ser 0 o 1 , que representa el bit de un Pixel Bit.
Depth: Numero >= 0 , en el cual representa la profundidad de un Pixel.
Cola : La lista se puede ver como un predicado que tiene 2 partes ,[Cabeza|Cola] , en el cual la cola es una lista.
Contenido: Hace referencia a lo que se obtiene en la posicion pedida de una lista, en el cual esta puede ser otra lista, un numero , un string ,etc.
Contador: Como su mismo nombre lo dice, esta servira para ir incrementando o disminuyendo para finalmente hacer uso de este.
RespContador: Es lo que sale de haber contado alguna cosa en el particular, en el cual este un numero. Generalmente este puede representar el largo de una lista.
RespSig: Hace referencia a que esta es lo que devuelve el siguiente caso de la recursion, en el cual esta se esta esperando para usarse.
Pixel: Es un lista, en el cual contiene su Alto , Ancho , Color y profundidad.
*/

%----------------------------------------------------------------------

%predicates
/*
TDA pixbit:
    pixbit(AltoPixel,AnchoPixel,Bit,Depth,[AltoPixel,AnchoPixel,Bit,Depth]).
    getbit(Pixel,Bit).
    bit(Bit).
    pixbit(Pixel).
*/

%----------------------------------------------------------------------

%goals
/*
Principales:
    pixbit.

Secundario:
	getbit,bit,pixbit,obtposicion1, contador1.
*/

/*
 * ----------------------------------------------------------------------
 *
 * ---------------------[ TDA pixbit ]-----------------------------------
 *
 * ----------------------------------------------------------------------
*/

%Constructor de pixel bit
/*
Predicado: pixbit
Descripción: Predicado contructor, en el cual verifica las condiciones para un pixbit y te entrega su representación(lista).
Dominio(Argumento de entrada): Numero(Alto) , Numero(Ancho) , Numero, Numero.
Recorrido(Retorno): Lista (representación del pixbit).
*/
pixbit(AltoPixel,AnchoPixel,Bit,Depth,[AltoPixel,AnchoPixel,Bit,Depth]):-
    number(AltoPixel),
    number(AnchoPixel),
    number(Bit),
    number(Depth),
    AltoPixel >= 0,
    AnchoPixel >= 0,
    bit(Bit),
    Depth >= 0.

%Predicados selectoras

/*
Predicado: getbit
Descripción: Entrega el bit de un pixel.
Dominio(Argumento de entrada): Lista (pixel).
Recorrido(Retorno): Numero ( 0 o 1).
*/
getbit(Pixel,Bit):-
    obtposicion1(3,Pixel,Bit).


%Predicados de pertencia

/*
Predicado: bit
Descripción: Verifica si el numero ingresado es un bit.
Dominio(Argumento de entrada): numero.
Recorrido(Retorno): Booleano.
*/
bit(Bit):-
    number(Bit),
    Bit = 0, ! ; Bit = 1.

/*
Predicado: pixbit
Descripción: Verifica si el pixel ingresado es un pixbit.
Dominio(Argumento de entrada): Lista(Pixel).
Recorrido(Retorno): Booleano.
*/

pixbit(Pixel):-
    contador1(Pixel , RespContador),
    RespContador == 4,
    getbit(Pixel,Bit),
    bit(Bit).

%Otros predicados:

/*
Predicado: obtposicion
Descripción: Te entrega el contenido que se encuentra en la pisicion pedida de una lista.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Numero(Posicion pedida) , Lista.
Recorrido(Retorno): Contenido que se encontraba en la posicion pedida.
*/
obtposicion1(1,[Contenido|_],Contenido):- !.
obtposicion1(Contador,[_|Cola],Contenido):-
    Contador1 is Contador-1,
    obtposicion1(Contador1,Cola,Contenido).



/*
Predicado: contador
Descripción: Entrega el largo de una lista.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Lista.
Recorrido(Retorno): Numero.
*/
contador1([],0):- !.
contador1([_|Cola],Contador):- contador1(Cola,RespSig), Contador is RespSig+1.
