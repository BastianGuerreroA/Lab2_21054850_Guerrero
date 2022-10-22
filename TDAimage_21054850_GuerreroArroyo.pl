%domains
/*
Dato: Hay dominios en el cual pueden tener el mismo nombre pero con un numero agregado al final, se hace con la finalidad de diferenciarlos, pero tienen el mismo significado.

Pixeles: Lista que contiene todos los pixeles, en el cual cada pixel es otra lista.
AltoImage: Es un numero Mayor o igual que 0, el cual representa la coordenada Y o al alto de la imagen.
AnchoImage: Es un numero Mayor o igual que 0, el cual representa la coordenada X o al Ancho de la imagen.
Cabeza: La lista se puede ver como un predicado que tiene 2 partes ,[Cabeza|Cola] , en el cual la Cabeza es el primer contenido de la lista.
Cola : La lista se puede ver como un predicado que tiene 2 partes ,[Cabeza|Cola] , en el cual la cola es una lista.
Contenido: Hace referencia a lo que se obtiene en la posicion pedida de una lista, en el cual esta puede ser otra lista, un numero , un string ,etc.
Contador: Como su mismo nombre lo dice, esta servira para ir incrementando o disminuyendo para finalmente hacer uso de este.
RespContador: Es lo que sale de haber contado alguna cosa en el particular, en el cual este un numero, generalmente este puede representar el largo de una lista.
RespSig: Hace referencia a que esta es lo que devuelve el siguiente caso de la recursion, en el cual esta se esta esperando para usarse.
AltoPixel: Es un numero Mayor o igual que 0, el cual representa la coordenada Y o al alto de un Pixel.
AnchoPixel: Es un numero Mayor o igual que 0, el cual representa la coordenada X o al Ancho de un Pixel.
Bit: Es un numero , en el cual puede ser 0 o 1 , que representa el bit de un Pixel Bit.
Depth: Numero >= 0 , en el cual representa la profundidad de un Pixel.
Pixel: Es un lista, en el cual contiene su Alto , Ancho , Color y profundidad.
Hex: Es un String, en el cual representa el color en Hexadecimal de un pixel  hex.
ColorR: Numero >= o  y <= 255 , en el cual representa el Color R de un Pixel RGB.
ColorG: Numero >= o  y <= 255 , en el cual representa el Color G de un Pixel RGB.
ColorB: Numero >= o  y <= 255 , en el cual representa el Color B de un Pixel RGB.
Imagen: Es una lista en el cual contiene su Ancho , Alto , y los Pixeles.

*/

%----------------------------------------------------------------------

%predicates
/*
TDA pixbit:
	pixbit_d(AltoPixel,AnchoPixel,Bit,Depth,[AltoPixel,AnchoPixel,Bit,Depth]).
    getbit(Pixel,Bit).
    bit(Bit).
    pixbit(Pixel).

TDA pixhex:
	pixhex_d(AltoPixel,AnchoPixel,Hex,Depth,[AltoPixel,AnchoPixel,Hex,Depth]).
    getHex(Pixel,Hex).
    pixhex(Pixel).

TDA pixrgb:
	pixrgb_d(AltoPixel,AnchoPixel,ColorR,ColorG,ColorB,Depth,[AltoPixel,AnchoPixel,ColorR,ColorG,ColorB,Depth]).
    getR(Pixel,ColorR).
    getG(Pixel,ColorG).
    getB(Pixel,ColorB).
    pixRGB(Pixel).

TDA image:
	image(AnchoImage , AltoImage , [Cabeza|Cola] , Imagen).
    imageIsBitmap(Imagen).
    imageIsPixmap(Imagen).
    imageIsHexmap(Imagen).
    imageIsCompressed(Imagen).
*/

%----------------------------------------------------------------------

%goals
/*
Principales:
	pixbit_d , pixhex_d , image , imageIsBitmap ,  imageIsPixmap ,  imageIsHexmap , imageIsCompressed.

Segundarias:
	pixeles , obtposicion , contador , getbit , bit, pixbit, getHex, pixhex, pixRGB , getR, getG, getB ,pixelesbit ,
    pixelesRGB , pixelesHex , contadorpixeles.
*/


%----------------------------------------------------------------------


/*
 * ----------------------------------------------------------------------
 * -----------------Predicados Generales---------------------------------
 * ----------------------------------------------------------------------
*/


%Predicados selectoras:


/*
Predicado: pixeles
Descripción: Busca el ultimo elemento de la lista , en el cual este seria la lista de pixeles de la imagen.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Imagen(Lista).
Recorrido(Retorno): Pixeles(Lista).
*/
pixeles( [Pixeles] , Pixeles):- true , !.
pixeles( [_|AltoImage], Pixeles):- pixeles(AltoImage,Pixeles).

/*
Predicado: obtposicion
Descripción: Te entrega el contenido que se encuentra en la pisicion pedida de una lista.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Numero(Posicion pedida) , Lista.
Recorrido(Retorno): Contenido que se encontraba en la posicion pedida.
*/
obtposicion(1,[Contenido|_],Contenido):- !.
obtposicion(Contador,[_|Cola],Contenido):-
    Contador1 is Contador-1,
    obtposicion(Contador1,Cola,Contenido).



%Otros predicados:

/*
Predicado: contador
Descripción: Entrega el largo de una lista.
Tipo de algoritmo/estrategia: Recursión.
Dominio(Argumento de entrada): Lista.
Recorrido(Retorno): Numero.
*/
contador([],0):- !.
contador([_|Cola],Contador):- contador(Cola,RespSig), Contador is RespSig+1.


/*
 * ----------------------------------------------------------------------
 *
 * ---------------------[ TDA pixbit ]-----------------------------------
 *
 * ----------------------------------------------------------------------
*/

%Constructor de pixel bit
/*
Predicado: pixbit_d
Descripción: Predicado contructor, en el cual verifica las condiciones para un pixbit y te entrega su representación(lista).
Dominio(Argumento de entrada): Numero(Alto) , Numero(Ancho) , Numero, Numero.
Recorrido(Retorno): Lista (representación del pixbit).
*/
pixbit_d(AltoPixel,AnchoPixel,Bit,Depth,[AltoPixel,AnchoPixel,Bit,Depth]):-
    number(AltoPixel),
    number(AnchoPixel),
    number(Bit),
    number(Depth),
    AltoPixel >= 0,
    AnchoPixel >= 0,
    bit(Bit),
    Depth >= 0 .

%Predicados selectoras

/*
Predicado: getbit
Descripción: Entrega el bit de un pixel.
Dominio(Argumento de entrada): Lista (pixel).
Recorrido(Retorno): Numero ( 0 o 1).
*/
getbit(Pixel,Bit):-
    obtposicion(3,Pixel,Bit).

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
    contador(Pixel , RespContador),
    RespContador == 4,
    getbit(Pixel,Bit),
    bit(Bit).


/*
 * ----------------------------------------------------------------------
 *
 * ----------------------[ TDA pixhex ]----------------------------------
 *
 * ----------------------------------------------------------------------
*/

%Constructor de pixel hex
/*
Predicado: pixhex_d
Descripción: Predicado contructor, en el cual verifica las condiciones para un pixhex y te entrega su representación(lista).
Dominio(Argumento de entrada): Numero(Alto) , Numero(Ancho) , String , Numero.
Recorrido(Retorno): Lista (representación del pixHex).
*/
pixhex_d(AltoPixel,AnchoPixel,Hex,Depth,[AltoPixel,AnchoPixel,Hex,Depth]):-
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
Dominio(Argumento de entrada): Lista (pixel).
Recorrido(Retorno): String.
*/
getHex(Pixel,Hex):-
    obtposicion(3,Pixel,Hex).

%Predicados de pertencia
/*
Predicado: pixhex
Descripción: Verifica si el pixel ingresado es un pixhex.
Dominio(Argumento de entrada): Lista(Pixel).
Recorrido(Retorno): Booleano.
*/
pixhex(Pixel):-
    contador(Pixel, RespContador),
    RespContador == 4,
    getHex(Pixel,Hex),
    string(Hex).

/*
 * ----------------------------------------------------------------------
 *
 * ---------------------[ TDA pixrgb ]-----------------------------------
 *
 * ----------------------------------------------------------------------
*/

%Constructor de pixel RGB
/*
Predicado: pixrgb_d
Descripción: Predicado contructor, en el cual verifica las condiciones para un pixrgb y te entrega su representación(lista).
Dominio(Argumento de entrada): Numero(Alto) , Numero(Ancho) , Numero(Color R) , Numero(Color G) , Numero(Color B) , Numero.
Recorrido(Retorno): Lista (representación del pixrgb).
*/
pixrgb_d(AltoPixel,AnchoPixel,ColorR,ColorG,ColorB,Depth,[AltoPixel,AnchoPixel,ColorR,ColorG,ColorB,Depth]):-
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
    obtposicion(3,Pixel,ColorR).
/*
Predicado: getG
Descripción: Entrega el Color G de un pixel.
Dominio(Argumento de entrada): Lista (pixel).
Recorrido(Retorno): Numero.
*/
getG(Pixel,ColorG):-
    obtposicion(4,Pixel,ColorG).

/*
Predicado: getB
Descripción: Entrega el Color B de un pixel.
Dominio(Argumento de entrada): Lista (pixel).
Recorrido(Retorno): Numero.
*/
getB(Pixel,ColorB):-
    obtposicion(5,Pixel,ColorB).

%Predicados de pertencia

/*
Predicado: pixRGB
Descripción: Verifica si el pixel ingresado es un pixRGB.
Dominio(Argumento de entrada): Lista(Pixel).
Recorrido(Retorno): Booleano.
*/
pixRGB(Pixel):-
    contador(Pixel, RespContador),
    RespContador == 6.


/*
 * ----------------------------------------------------------------------
 *
 * ---------------------[ TDA image ]------------------------------------
 *
 * ----------------------------------------------------------------------
*/


/*
 * ----------------------------------------------------------------------
 * -----------------------------Image------------------------------------
 * ----------------------------------------------------------------------
*/

%Constructor de la lista imagen

/*
Predicado: image
Descripcion: Predicado contructora de imágenes, en el cual crea una imagen, verificando las condiciones
             para que esta sea retornada de manera representativa en forma de lista.
Dominio(Argumento de entrada): Width (int) X Height (int) X Pixeles (pixbit-d |  pixrgb-d | pixhex-d) .
Recorrido(Retorno): lista (De la forma: [2,2,[[0,0,1,10], [0,1,0,20], [1,0 ,1 ,30], [1,1,0, 40]]] ) .
*/
image(AnchoImage , AltoImage , [Cabeza|Cola] , Imagen):-
    number(AnchoImage),
    number(AltoImage),
    append([Cabeza],Cola,Pixeles),
    Imagen = [AnchoImage , AltoImage , Pixeles].



/*
 * ----------------------------------------------------------------------
 * -------------------------imageIsBitmap--------------------------------
 * ----------------------------------------------------------------------
*/

/*
Predicado: pixelesbit
Descripcion: Función que permite determinar si la imagen corresponde a un bitmap-d.
Tipo de algoritmo/estrategia: Fuerza bruta, ya que Su fundamento es muy simple, probar todas las posibles combinaciones,
                              recorrer todos los caminos hasta dar con la situación que es igual que la solución.
Dominio(Argumento de entrada): lista ( La representación  de la imagen, ej : (1 1 ((0 0 1 10))) ).
Recorrido(Retorno): Booleano.
*/
pixelesbit([]).
pixelesbit([Pixel|Pixeles]):-
    pixbit(Pixel),
    pixelesbit(Pixeles).

/*
Predicado: imageIsBitmap
Descripcion: Función que permite determinar si la imagen corresponde a un Bitmap
Dominio(Argumento de entrada): lista ( La representación  de la imagen, ej : [1,1 ,[[0,0,1,10]]] ).
Recorrido(Retorno): Booleano.
*/
imageIsBitmap(Imagen):-
    pixeles(Imagen,Pixeles),
    pixelesbit(Pixeles).

/*
 * ----------------------------------------------------------------------
 * -------------------------imageIsPixmap--------------------------------
 * ----------------------------------------------------------------------
*/

pixelesRGB([]).
pixelesRGB([Pixel|Pixeles]):-
    pixRGB(Pixel),
    pixelesRGB(Pixeles).

imageIsPixmap(Imagen):-
    pixeles(Imagen,Pixeles),
    pixelesRGB(Pixeles).


/*
 * ----------------------------------------------------------------------
 * -------------------------imageIsHexmap--------------------------------
 * ----------------------------------------------------------------------
*/

pixelesHex([]).
pixelesHex([Pixel|Pixeles]):-
    pixhex(Pixel),
    pixelesHex(Pixeles).

imageIsHexmap(Imagen):-
    pixeles(Imagen,Pixeles),
    pixelesHex(Pixeles).


/*
 * ----------------------------------------------------------------------
 * -------------------------imageIsCompressed----------------------------
 * ----------------------------------------------------------------------
*/

contadorpixeles([],0):- !.
contadorpixeles([Pixel|Pixeles],RespContador):-
    contador(Pixel , RespContador1),
    RespContador1 == 1,
    contadorpixeles(Pixeles,RespSig), RespContador is RespSig , !;
    contador(Pixel , RespContador2),
    RespContador2 > 1,
    contadorpixeles(Pixeles,RespSig), RespContador is RespSig+1.


imageIsCompressed(Imagen):-
    pixeles(Imagen,Pixeles),
    contadorpixeles(Pixeles,RespContador),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    RespContador < (AnchoImage*AltoImage) .
