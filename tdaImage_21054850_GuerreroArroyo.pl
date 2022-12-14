:- include(tdaPixbit_21054850_GuerreroArroyo).
:- include(tdaPixhex_21054850_GuerreroArroyo).
:- include(tdaPixrgb_21054850_GuerreroArroyo).


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
RespContador: Es lo que sale de haber contado alguna cosa en el particular, en el cual este un numero. Generalmente este puede representar el largo de una lista.
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
NewImagen: Lista que contiene Ancho, Alto, lista de pixeles . Esta fue el resultado de aplicarle una modificacion a la imagen principal.
NewPixeles: Lista que contiene pixeles, en el cual fue el resultado de una modificacion de la lista de pixeles principal.
NewPixel: Lista que contiene Alto, Ancho , color y profundidad del pixel. Esta surge de la modificacion de un pixel principal.
NewAnchoPixel: Numero , en el cual surge de la modificacion del ancho de un pixel.
NweAltoPixel: Numero , en el cual surge de la modificacion del Alto de un pixel.
NewAnchoImage: Numero positivo, en el cual hace referencia al nuevo ancho de la imagen que se retornara.
NewAltoImage: Numero positivo, en el cual hace referencia al nuevo alto de la imagen que se retornara.
X1: Numero >=0 , Representa la coordenada x (ancho) de una primera posici?n.
Y1: Numero >=0 , Representa la coordenada y (alto) de una primera posici?n.
X2: Numero >=0 , Representa la coordenada x (ancho) de una segunda posici?n.
Y2: Numero >=0 , Representa la coordenada y (alto) de una segunda posici?n.
AnchoTemp: Numero , en el cual este sera nuevamente modificado.
AltoTemp: Numero , en el cual este sera nuevamente modificado.
MenorX: Numero >= 0 , representa al menor ancho entre 2 entregados.
MenorY: Numero >= 0 , representa al menor alto entre 2 entregados.
Numero: Numero entero
MenorNumero: Es el menor numero entero , entre 2 numeros.
NumeroAbs: Numero >=0 , representa el valor obsoluto de un numero.
RestR: Lista que contiene numeros mayor o igual que 0.
RestG: Lista que contiene numeros mayor o igual que 0.
RestB: Lista que contiene numeros mayor o igual que 0.
RestX: Lista que contiene numeros mayor o igual que 0.
StringR: String, representa el numero del color R , en Hexadecimal.
StringG: String, representa el numero del color G , en Hexadecimal.
StringB: String, representa el numero del color B , en Hexadecimal.
StringX: String, representa el numero de un color , en Hexadecimal.
UnionString: String , representa la union de 2 string.
NumeroPos: Numero >= 0.
StringNumeroPos: String , en cual representa un numero en hexadecimal.
Resto: Numero >= 0.
RestoList: Lista, en el cual contiene un Numero >= 0.
Histogram:	Lista , en el cual contiene los histogram de cada color perteneciente a la imagen.
HistoColor: Lista , en el cual contiene el color y su frecuencia en la imagen.
color: Es el color de un pixel Bit o Hex, por ende este puede ser un numero o String.
ImagenFlip: Lista , en el cual hace refencia al resultado de aplicarle un Flip a un imagen.
MayorHistogram: Lista , que contiene el un color y su frecuencia en la imagen.
Colorf: Lista , que contiene el un color y su frecuencia en la imagen.
ListColor: Lista , en el que cuantiene los colores de un Alto en especifica.
ListsColor: Lista ,  en el cual contiene todos los colores de la imagen, todos los Altos estan separado en listas y ordenados creciente.
Acum: Numero , en el cual se ocupara para ir incrementando su valor.
ListDL: lista , contiene listas de imagenes separados por profundidad.
listPixelxdepth: lista, el cual contiene los pixeles separados por profundidad.
listPixelDepth: lista , el cual contiene pixeles en una profundidad.
Posicion: Lista, el cual solo da prioridad a las posiciones de ancho y alto.
PixelCompress: Lista , en el cual contiene un pixel.

*/


%----------------------------------------------------------------------

%predicates
/*

TDA image:
    image(AnchoImage , AltoImage , [Cabeza|Cola] , Imagen).
    imageIsBitmap(Imagen).
    imageIsPixmap(Imagen).
    imageIsHexmap(Imagen).
    imageIsCompressed(Imagen).
    imageFlipH(Imagen, NewImagen).
    imageFlipV(Imagen, NewImagen).
    imageCrop(Imagen , X1 , Y1 , X2 , Y2 , NewImagen).
    imageRGBToHex(Imagen, NewImagen).
    imageToHistogram(Imagen,Histogram).
    imageRotate90(Imagen,NewImagen).
    imageCompress(Imagen , NewImagen).
    imageChangePixel( Imagen , Pixel , NewImagen).
    imageInvertColorRGB(Pixel , NewPixel).
    imageToString(Imagen , String).
    imageDepthLayers(Imagen,ListDL).
    imageDecompress(Imagen , NewImagen).
*/

%----------------------------------------------------------------------

%goals
/*
Principales:
    image , imageIsBitmap , imageIsPixmap ,imageIsHexmap , imageIsCompressed , imageFlipH , imageFlipV,
    imageCrop,imageRGBToHex , imageToHistogram ,imageRotate90, imageCompress , imageChangePixel,imageInvertColorRGB ,imageToString,
    ,imageDepthLayers , imageDecompress.

secundario:
    pixeles , obtposicion , contador, pixelesbit , pixelesRGB , pixelesHex , contadorpixeles , pixflipH ,
    flipH ,pixflipV , flipV ,crop_pixels , cambiocrop ,between , getmenor , valorabsoluto, pixstring ,
    pixelstring , numberstring , numberstring2 , divbase16 , num_string , histogram , limpieza ,
    conteopixe , histogramRGB , limpieza2 ,conteopixelRGB ,cambiaparametros , cambiopix ,
    myreplaceC1 , myreplaceC2 ,getmayorhistogram ,  myreplacepixel,invertirRGB , setpixelalto , setpixelancho,
    igualpixel , listasString ,listString , listasString2 ,listString2 ,xprofundidad , profundi , profundi2 , getpixel ,
    imagenes , imagenes2 , imagenes3 , getpixelalto1 , getpixelalto2 , getpixelalto3 ,getpixelancho1 , getpixelancho2 , getpixelancho3,
    myreplaceDeCom .

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
Descripci?n: Busca el ultimo elemento de la lista , en el cual este seria la lista de pixeles de la imagen.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): Imagen(Lista), Pixeles(Lista) .
*/
pixeles( [Pixeles] , Pixeles):- true , !.
pixeles( [_|AltoImage], Pixeles):- pixeles(AltoImage,Pixeles).

/*
Predicado: obtposicion
Descripci?n: Te entrega el contenido que se encuentra en la pisicion pedida de una lista.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): Numero(Posicion pedida) , Lista , Contenido que se encontraba en la posicion pedida.
*/
obtposicion(1,[Contenido|_],Contenido):- !.
obtposicion(Contador,[_|Cola],Contenido):-
    Contador1 is Contador-1,
    obtposicion(Contador1,Cola,Contenido).



%Otros predicados:

/*
Predicado: contador
Descripci?n: Entrega el largo de una lista.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): Lista,Numero.
*/
contador([],0):- !.
contador([_|Cola],Contador):- contador(Cola,RespSig), Contador is RespSig+1.

/*
 * ----------------------------------------------------------------------
 *
 * -----------------------------[ TDA image ]----------------------------
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
Descripcion: Predicado contructora de im?genes, en el cual crea una imagen, verificando las condiciones
             para que esta sea retornada de manera representativa en forma de lista.
Dominio(Argumento de entrada): Width (int) X Height (int) X Pixeles (pixbit-d |  pixrgb-d | pixhex-d) X Image(De la forma: [2,2,[[0,0,1,10], [0,1,0,20], [1,0 ,1 ,30], [1,1,0, 40]]] ).
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
Descripcion: Predicado que revisa pixel por pixel, verificando que esta correspondan a un pixbit.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): lista (Pixeles).
Recorrido(Retorno): Booleano.
*/

pixelesbit([]).
pixelesbit([Pixel|Pixeles]):-
    pixbit(Pixel),
    pixelesbit(Pixeles).

/*
Predicado: imageIsBitmap
Descripcion: Predicado que permite determinar si la imagen corresponde a un bitmap-d
Dominio(Argumento de entrada): lista ( La representaci?n  de la imagen, ej : [1,1 ,[[0,0,1,10]]] ).
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

/*
Predicado: pixelesRGB
Descripcion: Predicado que revisa pixel por pixel, verificando que esta correspondan a un pixrgb.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): lista (Pixeles).
Recorrido(Retorno): Booleano.
*/
pixelesRGB([]).
pixelesRGB([Pixel|Pixeles]):-
    pixRGB(Pixel),
    pixelesRGB(Pixeles).

/*
Predicado: imageIsPixmap
Descripcion: Predicado que permite determinar si la imagen corresponde a un pixmap-d.
Dominio(Argumento de entrada): lista ( La representaci?n  de la imagen, ej : [1,1 ,[[0,0,1,10]]] ).
Recorrido(Retorno): Booleano.
*/
imageIsPixmap(Imagen):-
    pixeles(Imagen,Pixeles),
    pixelesRGB(Pixeles).


/*
 * ----------------------------------------------------------------------
 * -------------------------imageIsHexmap--------------------------------
 * ----------------------------------------------------------------------
*/

/*
Predicado: pixelesHex
Descripcion: Predicado que revisa pixel por pixel, verificando que esta correspondan a un pixhex.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): lista (Pixeles).
Recorrido(Retorno): Booleano.
*/
pixelesHex([]).
pixelesHex([Pixel|Pixeles]):-
    pixhex(Pixel),
    pixelesHex(Pixeles).

/*
Predicado: imageIsHexmap
Descripcion: Predicado que permite determinar si la imagen corresponde a un pixhex-d.
Dominio(Argumento de entrada): lista ( La representaci?n  de la imagen, ej : [1,1 ,[[0,0,1,10]]] ).
Recorrido(Retorno): Booleano.
*/
imageIsHexmap(Imagen):-
    pixeles(Imagen,Pixeles),
    pixelesHex(Pixeles).


/*
 * ----------------------------------------------------------------------
 * -------------------------imageIsCompressed----------------------------
 * ----------------------------------------------------------------------
*/


/*
Predicado: contadorpixeles
Descripcion: Cuenta los pixeles que no estan comprimidos, osea que no esten dentro de otra lista.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): lista ( Pixeles), Numero.
*/
contadorpixeles([],0):- !.
contadorpixeles([Pixel|Pixeles],RespContador):-
    contador(Pixel , RespContador1),
    RespContador1 == 1,
    contadorpixeles(Pixeles,RespSig), RespContador is RespSig , !;
    contador(Pixel , RespContador2),
    RespContador2 > 1,
    contadorpixeles(Pixeles,RespSig), RespContador is RespSig+1.



/*
Predicado: imageIsCompressed
Descripcion: Predicado que determina si una imagen est? comprimida, a trav?s
             de la comporaci?n entre el area de la imagen con la cantidad de pixeles de esta.
Dominio(Argumento de entrada): lista ( La representaci?n  de la imagen, ej : [1,1 ,[[0,0,1,10]]] ).
Recorrido(Retorno): Booleano.
*/
imageIsCompressed(Imagen):-
    pixeles(Imagen,Pixeles),
    contadorpixeles(Pixeles,RespContador),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    RespContador < (AnchoImage*AltoImage) .


/*
 * ----------------------------------------------------------------------
 * -------------------------imageFlipH-----------------------------------
 * ----------------------------------------------------------------------
*/

/*
Predicado: flipH
Descripcion: Invierte horizontalmente un pixel , cambiando su ancho.
Dominio(Argumento de entrada): lista (Pixel) , Numero(Ancho de la imagen) , Lista(Nuevo pixel invertido horizontalmente).
*/
flipH([AltoPixel, AnchoPixel|Cola],AnchoImage,NewPixel):-
    NewAnchoPixel is ((AnchoImage-1)- AnchoPixel),
    append([AltoPixel,NewAnchoPixel],Cola,NewPixel).

/*
Predicado: pixflipH
Descripcion: Predicado que invierte horizonalmente pixel por pixel , cambiando su ancho.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): lista ( Pixeles) , Numero(Ancho de la imagen) , lista(Nueva lista de pixeles).
*/

pixflipH([],_,[]).
pixflipH([Pixel|Pixeles],AnchoImage,[NewPixel|RespSig]):-
    pixflipH(Pixeles,AnchoImage,RespSig),
    flipH(Pixel,AnchoImage,NewPixel).



/*
Predicado: imageFlipH
Descripcion: Predicado que permite invertir una im?gen horizontalmente, a traves del cambio de la variable ancho.
Dominio(Argumento de entrada): lista ( image ) , lista (la representaci?n de la imagen invertida horizontalmente) .
*/
imageFlipH(Imagen , NewImagen):-
    pixeles(Imagen,Pixeles),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    pixflipH(Pixeles,AnchoImage,NewPixeles),
    NewImagen = [AnchoImage , AltoImage , NewPixeles].


/*
 * ----------------------------------------------------------------------
 * -------------------------imageFlipV-----------------------------------
 * ----------------------------------------------------------------------
*/


/*
Predicado: flipV
Descripcion: Invierte verticalmente un pixel , cambiando su alto.
Dominio(Argumento de entrada): lista (Pixel) , Numero(Alto de la imagen) , Lista(Nuevo pixel invertido horizontalmente).
*/

flipV([AltoPixel|Cola],AltoImage,NewPixel):-
    AltoPixel2 is ((AltoImage-1)-AltoPixel),
    append([AltoPixel2],Cola,NewPixel).


/*
Predicado: pixflipV
Descripcion: Predicado que invierte verticalmente pixel por pixel , cambiando su alto.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): lista ( Pixeles) , Numero(Alto de la imagen) , lista(Nueva lista de pixeles).
*/
pixflipV([],_,[]).
pixflipV([Pixel|Pixeles],AltoImage,[NewPixel|RespSig]):-
    pixflipV(Pixeles,AltoImage,RespSig),
    flipV(Pixel,AltoImage,NewPixel).

/*
Predicado: imageFlipV
Descripcion: Predicado que permite invertir una im?gen Verticalmente, a traves del cambio de la variable alto.
Dominio(Argumento de entrada): lista ( image ) , lista (la representaci?n de la imagen invertida verticalmente).
*/
imageFlipV(Imagen , NewImagen):-
    pixeles(Imagen,Pixeles),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    pixflipV(Pixeles,AltoImage,NewPixeles),
    NewImagen = [AnchoImage , AltoImage , NewPixeles].


/*
 * ----------------------------------------------------------------------
 * -------------------------imageCrop------------------------------------
 * ----------------------------------------------------------------------
*/

/*
Predicado: between
Descripcion: Predicado que verifica si el pixel esta dentro del cuadrante dado.
Dominio(Argumento de entrada): Numero(X1), Numero(Y1),Numero(X2), Numero(Y2), Lista(Pixel).
Recorrido(Retorno): Booleano.
*/
between(X1,Y1,X2,Y2,[AltoPixel , AnchoPixel|_]):-
    AltoPixel >= Y1 , AltoPixel =< Y2 , AnchoPixel >= X1 , AnchoPixel =< X2 , ! ;
    AltoPixel =< Y1 , AltoPixel >= Y2 , AnchoPixel =< X1 , AnchoPixel >= X2.

/*
Predicado: getmenor
Descripcion: Predicado que retorna el menor numero , entre 2 valores de entrada.
Dominio(Argumento de entrada): Numero(entero), Numero(entero) , Numero(entero).
*/
getmenor(Numero1 , Numero2 , MenorNumero):-
    Numero1 >= Numero2 , MenorNumero = Numero2 , ! ; Numero1 =< Numero2 , MenorNumero = Numero1.

/*
Predicado: valorabsoluto
Descripcion: Predicado que toma un numero y lo combierte a positivo en caso de ser negativo.
Dominio(Argumento de entrada): Numero(entero) , Numero >= 0.
*/
valorabsoluto(Numero1 , NumeroAbs ):-
    Numero1 >= 0 , NumeroAbs = Numero1  , ! ; Numero1 =< 0 , NumeroAbs is  -1 * Numero1.

/*
Predicado: cambiocrop
Descripcion: Predicado que toma un pixel y cambia sus parametros de ancho y alto.
Dominio(Argumento de entrada): Numero(MenorX) ,Numero(Menory) ,lista ( Pixel), lista(Nuevo Pixel).
*/
cambiocrop(MenorX,MenorY,[AltoPixel , AnchoPixel|Cola],NewPixel):-
    NewAltoPixel is AltoPixel - MenorY,
    NewAnchoPixel is AnchoPixel - MenorX,
    append([NewAltoPixel , NewAnchoPixel] , Cola , NewPixel).

/*
Predicado: crop_pixels
Descripcion: Predicado que va pixel por pixel , cambiando sus parametros de ancho y alto.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): Numero(MenorX) ,Numero(Menory) ,lista ( Pixeles), lista(Nueva lista de pixeles).
*/
crop_pixels(_,_,[],[]):- !.
crop_pixels(MenorX , MenorY , [Pixel|Pixeles],[NewPixel|RespSig]):-
    crop_pixels(MenorX ,MenorY, Pixeles ,RespSig),
    cambiocrop(MenorX, MenorY , Pixel ,NewPixel).

/*
Predicado: imageCrop
Descripcion: Predicado que permite recortar una im?gen a partir de un cuadrante, entregado por coordenadas(2 puntos).
Dominio(Argumento de entrada): lista ( image ) ,  x1  ,  Y1  ,  x2  , y2 , lista (NewImagen).
*/
imageCrop(Imagen , X1 , Y1 , X2 , Y2 , NewImagen):-
    AnchoTemp is X2-X1,
    AltoTemp is Y2-Y1,
    valorabsoluto(AnchoTemp , AnchoTemp2),
    valorabsoluto(AltoTemp , AltoTemp2),
    NewAnchoImage is AnchoTemp2+1,
    NewAltoImage is AltoTemp2+1,
    obtposicion(3,Imagen,Pixeles),
    include(between(X1,Y1,X2,Y2) , Pixeles , NewPixeles),
    getmenor(X1,X2,MenorX),
    getmenor(Y1,Y2,MenorY),
    crop_pixels(MenorX , MenorY , NewPixeles , NewPixeles2),
    NewImagen = [NewAnchoImage , NewAltoImage, NewPixeles2].


/*
 * ----------------------------------------------------------------------
 * -------------------------imageRGBToHex--------------------------------
 * ----------------------------------------------------------------------
*/

%Hechos
num_string(0,"0").
num_string(1,"1").
num_string(2,"2").
num_string(3,"3").
num_string(4,"4").
num_string(5,"5").
num_string(6,"6").
num_string(7,"7").
num_string(8,"8").
num_string(9,"9").
num_string(10,"A").
num_string(11,"B").
num_string(12,"C").
num_string(13,"D").
num_string(14,"E").
num_string(15,"F").
%-----------------


/*
Predicado: divbase16
Descripcion: Predicado en el que se divide un numero entre 16 , se conserva el resto en una lista y se vuelve a dividir el cociente,
			 Hasta que este sea menor que 16 y se guarda en la lista.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): Numero>=0 , lista.
*/
divbase16(NumeroPos , [NumeroPos]):- NumeroPos < 16 , !.
divbase16(NumeroPos , RestX):-
    NumeroPos1 is NumeroPos//16,
    divbase16(NumeroPos1 , RespSig),
    Resto is NumeroPos mod 16,
    RestoList = [Resto],
    append(RespSig,RestoList,RestX).

/*
Predicado: numberstring
Descripcion: Predicado que te tranforma un numero a su representacion en Hexadecimal.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): lista , String.
*/
numberstring2([],""):- !.
numberstring2([NumeroPos,NumeroPos2|Cola],StringX):-
    num_string(NumeroPos,StringNumeroPos1),
    num_string(NumeroPos2,StringNumeroPos2),
    numberstring2(Cola,RespSig),
    string_concat(StringNumeroPos1, StringNumeroPos2, UnionString),
    string_concat(UnionString, RespSig, StringX).

/*
Predicado: numberstring
Descripcion: Predicado que te tranforma un numero a su representacion en Hexadecimal.
Dominio(Argumento de entrada): lista , String.
*/
numberstring(RestX,StringX):-
    contador(RestX,RespContador), RespContador == 1 , obtposicion(1,RestX,NumeroPos),
    num_string(NumeroPos , StringNumeroPos), string_concat("0", StringNumeroPos, StringX), ! ;
    contador(RestX,RespContador2),  RespContador2 > 1 , numberstring2(RestX,StringX).

/*
Predicado: pixstring
Descripcion: Predicado en el cual transforma la representacion de un pixel RGB a HEX.
Dominio(Argumento de entrada): lista ( Pixel) , lista(Nuevo Pixel).
*/
pixelstring(Pixel,NewPixel):-
    obtposicion(1,Pixel,AltoPixel),
    obtposicion(2,Pixel,AnchoPixel),
    getR(Pixel,ColorR),
    getG(Pixel,ColorG),
    getB(Pixel,ColorB),
    obtposicion(6,Pixel,Depth),
    divbase16(ColorR,RestR),
    divbase16(ColorG,RestG),
    divbase16(ColorB,RestB),
    numberstring(RestR,StringR),
    numberstring(RestG,StringG),
    numberstring(RestB,StringB),
    string_concat(StringR, StringG, UnionString),
    string_concat(UnionString, StringB, UnionString1),
    string_concat("#", UnionString1, UnionString2),
    NewPixel = [AltoPixel , AnchoPixel , UnionString2 , Depth].

/*
Predicado: pixstring
Descripcion: Predicado que va pixel por pixel , en el cual transforma la representacion de un pixel RGB a HEX.
Tipo de algoritmo/estrategia: Recursi?n.
Dominio(Argumento de entrada): lista ( Pixeles) , lista(Nueva lista de pixeles).
*/
pixstring([],[]).
pixstring([Pixel|Pixeles],[NewPixel|RespSig]):-
    pixstring(Pixeles,RespSig),
    pixelstring(Pixel,NewPixel).

/*
Predicado: imageRGBToHex
Descripcion: Predicado que permite transformar una imagen desde una representaci?n RGB a una representaci?n HEX.
Dominio(Argumento de entrada): lista ( image ) , lista (la imagen con la nueva representaci?n).
*/
imageRGBToHex(Imagen, NewImagen):-
    imageIsPixmap(Imagen),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    pixeles(Imagen,Pixeles),
    pixstring(Pixeles,NewPixeles),
    NewImagen = [AnchoImage , AltoImage ,NewPixeles].



/*
 * ----------------------------------------------------------------------
 * -------------------------imageToHistogram-----------------------------
 * ----------------------------------------------------------------------
*/

%----------Histogram Caso Bit - Hex

/*
Predicado: conteopixel
Descripcion: Predicado que cuenta la frecuencia de un color en una lista de pixeles.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista ( Pixel) ,lista ( Pixeles) , Numero(entero).
*/
conteopixel(_,[],1):- !.
conteopixel(Pixel,[Pixel2|Pixeles],RespContador):-
    obtposicion(3,Pixel,Color1),
    obtposicion(3,Pixel2,Color2),
    Color1 == Color2,
    conteopixel(Pixel , Pixeles , RespSig),
    RespContador is RespSig+1, ! ;
    conteopixel(Pixel, Pixeles,RespSig),
    RespContador is RespSig.

/*
Predicado: limpieza
Descripcion: Predicado en el cual compara los colores de los pixeles ingresados para verificar si son iguales o no.
Dominio(Argumento de entrada): lista ( Pixel) , lista ( Pixel).
Recorrido(Retorno): Booleano.
*/
limpieza(Pixel,Pixel2):-
    obtposicion(3,Pixel,Color1),
    obtposicion(3,Pixel2,Color2),
    Color1 == Color2.

/*
Predicado: histogram
Descripcion: Predicado que toma un pixel, cuenta la frecuencia de su color en la lista de pixeles y sucesivamente se elimina los pixeles
             que contengan el mismo color del pixel de la lista de pixeles, con la finalidad de que no se repita el color y finalmente se hace la recursi?n.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista ( Pixeles) , lista(Histograma de frecuencia de cada color).
*/
histogram([],[]):- !.
histogram([Pixel|Pixeles],[HistoColor|RespSig]):-
    obtposicion(3,Pixel,Color),
    conteopixel(Pixel,Pixeles, RespContador ),
    exclude(limpieza(Pixel),Pixeles,NewPixeles),
    histogram(NewPixeles,RespSig),
    HistoColor = [Color, RespContador ] .

%----------Histogram Caso RGB

/*
Predicado: conteopixelRGB
Descripcion: Predicado que cuenta la frecuencia de un color en una lista de pixeles.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista ( Pixel) ,lista ( Pixeles) , Numero(entero).
*/
conteopixelRGB(_,[],1):- !.
conteopixelRGB(Pixel,[Pixel2|Pixeles],RespContador):-
    getR(Pixel,ColorR1),
    getG(Pixel,ColorG1),
    getB(Pixel,ColorB1),
    getR(Pixel2,ColorR2),
    getG(Pixel2,ColorG2),
    getB(Pixel2,ColorB2),
    ColorR1 == ColorR2,
    ColorG1 == ColorG2,
    ColorB1 == ColorB2,
    conteopixelRGB(Pixel , Pixeles , RespSig),
    RespContador is RespSig+1, ! ;
    conteopixelRGB(Pixel,Pixeles,RespSig),
    RespContador is RespSig.

/*
Predicado: limpieza
Descripcion: Predicado en el cual compara los colores de los pixeles ingresados para verificar si son iguales o no.
Dominio(Argumento de entrada): lista ( Pixel) , lista ( Pixel).
Recorrido(Retorno): Booleano.
*/
limpieza2(Pixel,Pixel2):-
    getR(Pixel,ColorR1),
    getG(Pixel,ColorG1),
    getB(Pixel,ColorB1),
    getR(Pixel2,ColorR2),
    getG(Pixel2,ColorG2),
    getB(Pixel2,ColorB2),
    ColorR1 == ColorR2,
    ColorG1 == ColorG2,
    ColorB1 == ColorB2.

/*
Predicado: histogramRGB
Descripcion: Predicado que toma un pixel, cuenta la frecuencia de su color en la lista de pixeles y sucesivamente se elimina los pixeles
             que contengan el mismo color del pixel de la lista de pixeles, con la finalidad de que no se repita el color y finalmente se hace la recursi?n.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista ( Pixeles) , lista(Histograma de frecuencia de cada color).
*/
histogramRGB([],[]):- !.
histogramRGB([Pixel|Pixeles],[HistoColor|RespSig]):-
    getR(Pixel,ColorR),
    getG(Pixel,ColorG),
    getB(Pixel,ColorB),
    conteopixelRGB(Pixel,Pixeles,RespContador),
    exclude(limpieza2(Pixel),Pixeles,NewPixeles),
    histogramRGB(NewPixeles,RespSig),
    HistoColor = [[ColorR,ColorG,ColorB],RespContador].


/*
Predicado: imageToHistogram
Descripcion: Predicado que retorna un histograma de frecuencias a partir de los colores en cada una de las im?genes.
Dominio(Argumento de entrada): lista ( image ), lista (lista con la cantidad de frecuencia de cada color , ej: [[1, 2], [0, 2]] ) .
*/
imageToHistogram(Imagen,Histogram):-
    imageIsHexmap(Imagen),
    pixeles(Imagen,Pixeles),
    histogram(Pixeles,Histogram), !;
    imageIsBitmap(Imagen),
    pixeles(Imagen,Pixeles1),
    histogram(Pixeles1,Histogram), !;
    imageIsPixmap(Imagen),
    pixeles(Imagen,Pixeles2),
    histogramRGB(Pixeles2,Histogram).



/*
 * ----------------------------------------------------------------------
 * -------------------------imageRotate90--------------------------------
 * ----------------------------------------------------------------------
*/


/*
Predicado: cambiopix
Descripcion: Predicado que toma un pixel y realiza un intercambio entre su ancho y alto.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista ( Pixel) , lista(Nuevo Pixel).
*/
cambiopix([AltoPixel,AnchoPixel|Cola],NewPixel):-
    append([AnchoPixel,AltoPixel],Cola,NewPixel).


/*
Predicado: cambiaparametros
Descripcion: Predicado que va pixel por pixel , cambiando el ancho y alto de estos.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista ( Pixeles), lista(Nueva lista de Pixeles).
*/
cambiaparametros([],[]):- !.
cambiaparametros([Pixel|Pixeles],[NewPixel|RespSig]):-
    cambiaparametros(Pixeles,RespSig),
    cambiopix(Pixel,NewPixel).

/*
Predicado: imageRotate90
Descripcion: Predicado que permite rotar la imagen 90? a la derecha.
Dominio(Argumento de entrada): lista ( image ) , lista (la imagen rotada 90? a la derecha).
*/
imageRotate90(Imagen,NewImagen):-
    imageFlipV(Imagen,ImagenFlip),
    obtposicion(1,ImagenFlip,AnchoImage),
    obtposicion(2,ImagenFlip,AltoImage),
    pixeles(ImagenFlip , Pixeles),
    cambiaparametros(Pixeles,NewPixeles),
    NewImagen = [AnchoImage , AltoImage , NewPixeles].


/*
 * ----------------------------------------------------------------------
 * -------------------------imageCompress--------------------------------
 * ----------------------------------------------------------------------
*/

/*
Predicado: getmayorhistogram
Descripcion: Predicado que te entrega el color con mayor frecuencia obtenido del predicado Histogram.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista ( Histogram) , lista([color,frecuencia]).
*/
getmayorhistogram([Colorf|Histogram],MayorHistogram1):- [] == Histogram ,MayorHistogram1 = Colorf, !.
getmayorhistogram([Colorf|Histogram],MayorHistogram):-
    obtposicion(2,Colorf,Numero1),
    getmayorhistogram(Histogram , RespSig),
    obtposicion(2,RespSig,Numero2),
    Numero1 >= Numero2,
    MayorHistogram = Colorf, !;
    obtposicion(2,Colorf,Numero2),
    getmayorhistogram(Histogram , RespSig2),
    obtposicion(2,RespSig2,Numero3),
    Numero2 < Numero3,
    MayorHistogram = RespSig2.


/*
Predicado: myreplaceC1
Descripcion: Predicado que encierra con corchete el pixel que contenga el color con mayor frecuencia en la imagen.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): Color (Bit o Hex) , lista (Pixeles) , lista(Nueva lista de Pixeles).
*/
myreplaceC1(_, [], []):- !.%caso base
myreplaceC1(Color, [Pixel|Pixeles], [[Pixel]|RespSig]) :- obtposicion(3,Pixel,Color2), Color2 == Color ,myreplaceC1(Color,Pixeles, RespSig), !. %Donde se remplaza
myreplaceC1(Color, [Pixel|Pixeles], [Pixel|RespSig]) :- obtposicion(3,Pixel,Color2), Color2 \= Color, myreplaceC1(Color, Pixeles, RespSig), !.


/*
Predicado: myreplaceC2
Descripcion: Predicado que encierra con corchete el pixel que contenga el color con mayor frecuencia en la imagen.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): Color ( lista con el color RGB) , lista (Pixeles) , lista(Nueva lista de Pixeles).
*/
myreplaceC2(_, [], []):- !.%caso base
myreplaceC2(Color, [Pixel|Pixeles], [[Pixel]|RespSig]) :-
    getR(Pixel,ColorR),
    getG(Pixel,ColorG),
    getB(Pixel,ColorB),
    Color2 = [ColorR,ColorG,ColorB],
    Color2 == Color,
    myreplaceC2(Color,Pixeles, RespSig), !. %en donde se remplaza
myreplaceC2(Color, [Pixel|Pixeles], [Pixel|RespSig]) :-
    getR(Pixel,ColorR),
    getG(Pixel,ColorG),
    getB(Pixel,ColorB),
    Color2 = [ColorR,ColorG,ColorB],
    Color2 \= Color,
    myreplaceC2(Color, Pixeles, RespSig), !. % avanza nomas

/*
Predicado: imageCompress
Descripcion: Predicado que comprime una imagen eliminando aquellos p?xeles con el color m?s frecuente, la eliminaci?n
             se representa con el doble corchete, esto se hace de tal manera de poder conservar los p?xeles eliminados.
Dominio(Argumento de entrada): lista ( image ) , lista (la imagen comprimida).
*/
imageCompress(Imagen , NewImagen):-
    imageIsHexmap(Imagen),
    imageToHistogram(Imagen , Histogram),
    getmayorhistogram(Histogram, MayorHistogram),
    obtposicion(1,MayorHistogram, Color),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    pixeles(Imagen , Pixeles),
    myreplaceC1(Color , Pixeles , NewPixeles),
    NewImagen = [AnchoImage , AltoImage , NewPixeles] ,! ;
    imageIsBitmap(Imagen),
    imageToHistogram(Imagen , Histogram1),
    getmayorhistogram(Histogram1, MayorHistogram1),
    obtposicion(1,MayorHistogram1,Color1),
    obtposicion(1,Imagen,AnchoImage1),
    obtposicion(2,Imagen,AltoImage1),
    pixeles(Imagen , Pixeles1),
    myreplaceC1(Color1 , Pixeles1 , NewPixeles1),
    NewImagen = [AnchoImage1, AltoImage1 , NewPixeles1] ,! ;
    imageIsPixmap(Imagen),
    imageToHistogram(Imagen , Histogram2),
    getmayorhistogram(Histogram2, MayorHistogram2),
    obtposicion(1,MayorHistogram2,Color2),
    obtposicion(1,Imagen,AnchoImage2),
    obtposicion(2,Imagen,AltoImage2),
    pixeles(Imagen , Pixeles2),
    myreplaceC2( Color2, Pixeles2 , NewPixeles2),
    NewImagen = [AnchoImage2, AltoImage2 , NewPixeles2].

/*
 * ----------------------------------------------------------------------
 * -------------------------imageChangePixel-----------------------------
 * ----------------------------------------------------------------------
*/


/*
Predicado: myreplacepixel
Descripcion: Predicado que busca el pixel que se quiere remplazar por medio de su posici?n y se sustituye por el nuevo pixel.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista(Pixel) , lista (Pixeles) , lista(Nueva lista de Pixeles).
*/
myreplacepixel(_, [], []):- !. %caso base 1
myreplacepixel(Pixel, [Pixel2|Pixeles], [Pixel|Pixeles]) :- % caso base 2 ,Donde se remplaza
    obtposicion(1,Pixel,AltoPixel1),
    obtposicion(2,Pixel,AnchoPixel1),
    obtposicion(1,Pixel2,AltoPixel2),
    obtposicion(2,Pixel2,AnchoPixel2),
    AltoPixel1 == AltoPixel2 ,
    AnchoPixel1 == AnchoPixel2,!.
myreplacepixel(Pixel, [Pixel2|Pixeles], [Pixel2|RespSig]) :-
    obtposicion(1,Pixel,AltoPixel1),
    obtposicion(1,Pixel2,AltoPixel2),
    AltoPixel1 \= AltoPixel2 ,
    myreplacepixel(Pixel, Pixeles, RespSig) ,!;
    obtposicion(2,Pixel,AnchoPixel1),
    obtposicion(2,Pixel2,AnchoPixel2),
    AnchoPixel1 \= AnchoPixel2 ,
    myreplacepixel(Pixel, Pixeles, RespSig).


/*
Predicado: imageChangePixel
Descripcion: Predicado permite reemplazar un p?xel en una imagen.
Dominio(Argumento de entrada): lista ( image ) , lista ( Pixel), lista (Nueva imagen con el pixel reemplazado).
*/
imageChangePixel( Imagen , Pixel , NewImagen):-
    obtposicion(1,Imagen,AnchoImagen),
    obtposicion(2,Imagen,AltoImagen),
    pixeles(Imagen , Pixeles),
    myreplacepixel(Pixel , Pixeles , Newpixeles),
    NewImagen = [AnchoImagen , AltoImagen , Newpixeles].


/*
 * ----------------------------------------------------------------------
 * -------------------------imageInvertColorRGB--------------------------
 * ----------------------------------------------------------------------
*/


/*
Predicado: invertirRGB
Descripcion: Predicado que permite cambiar un color a su opuesto.
Dominio(Argumento de entrada): Numero , Numero.
*/
invertirRGB(Numero , Numero2):-
    Numero2 is 255-Numero.


/*
Predicado: imageInvertColorRGB
Descripcion: Predicado que permite obtener el color sim?tricamente opuesto en cada canal dentro de un pixel.
Dominio(Argumento de entrada): lista ( Pixel) , lista (Nuevo Pixel).
*/
imageInvertColorRGB(Pixel , NewPixel):-
    obtposicion(1,Pixel,AltoPixel),
    obtposicion(2,Pixel,AnchoPixel),
    getR(Pixel,ColorR),
    getG(Pixel,ColorG),
    getB(Pixel,ColorB),
    obtposicion(6,Pixel,Depth),
    invertirRGB(ColorR , ColorR2),
    invertirRGB(ColorG , ColorG2),
    invertirRGB(ColorB , ColorB2),
    NewPixel = [AltoPixel , AnchoPixel  , ColorR2 , ColorG2 ,ColorB2 , Depth].

/*
 * ----------------------------------------------------------------------
 * -------------------------imageToString--------------------------------
 * ----------------------------------------------------------------------
*/

/*
Predicado: igualpixel
Descripcion: Predicado que retorna True si el pixel tiene el mismo ancho y alto ingresado.
Dominio(Argumento de entrada): Numero(Alto),Numero(Ancho),lista (Pixel).
Recorrido(Retorno): Booleano.
*/
igualpixel(AltoPixel,AnchoPixel , Pixel):-
    obtposicion(1,Pixel,AltoPixel2),
    obtposicion(2,Pixel,AnchoPixel2),
    AltoPixel == AltoPixel2,
    AnchoPixel == AnchoPixel2.

/*
Predicado: setpixelancho
Descripcion: Predicado que permite ir avanzando el parametro de ancho y por ende obtiene los colores de una fila(alto).
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Numero (Alto fijo), Numero(AnchoImage) , Numero (Acum) , Lista( ListColor).
*/
setpixelancho(_,_,AnchoImage,Acum , [] ):- AnchoImage == Acum ,!.
setpixelancho(Pixeles , Alto , AnchoImage , Acum , [Color|RespSig]):-
    Acum2 is Acum+1,
    setpixelancho(Pixeles , Alto , AnchoImage , Acum2 , RespSig),
    include(igualpixel(Alto,Acum) , Pixeles , Pixeles2 ),
    obtposicion(1,Pixeles2, Pixel),
    obtposicion(3,Pixel, Color).

/*
Predicado: setpixelalto
Descripcion: Predicado que permite ir avanzando el parametro de alto , permite obtener todos los colores de un alto en especifico.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Numero(AnchoImage) , Numero(AltoImage) , Numero (Acum) , Lista( ListsColor).
*/
setpixelalto(_,_,AltoImage,Acum,[]):- AltoImage == Acum ,!.
setpixelalto(Pixeles, AnchoImage , AltoImage , Acum , [ListColor|RespSig]):-
    Acum2 is Acum+1,
    setpixelalto(Pixeles , AnchoImage , AltoImage , Acum2 , RespSig),
    setpixelancho(Pixeles,Acum,AnchoImage,0,ListColor).

/*
Predicado: listString
Descripcion: Predicado que toma una lista de colores ( bit ) y los transforma a la representacion string.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (ListColor) , String.
*/
liststring([],""):- !.
liststring([Color|ListColor], String):-
    number_string(Color ,String2),
    string_concat(String2 , " " , String3),
    liststring(ListColor, RespSig),
    string_concat(String3 , RespSig , String).

/*
Predicado: listasString
Descripcion: Predicado que permite ir avanzando entre las listas de los colores , con la finalidad de ir tranformandolos a la representacion String.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (ListsColor) , String.
*/
listasString([],""):- !.
listasString([ListColor|ListsColor] , String):-
    liststring(ListColor, String1),
    listasString(ListsColor , RespSig),
    string_concat(String1 , "\n" , String2),
    string_concat(String2 , RespSig , String).

%------------------------------------------------

/*
Predicado: listString2
Descripcion: Predicado que toma una lista de colores ( Hexadecimal ) y los transforma a la representacion string.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (ListColor) , String.
*/
liststring2([],""):- !.
liststring2([Color|ListColor], String):-
    string_concat(Color , " " , String3),
    liststring2(ListColor, RespSig),
    string_concat(String3 , RespSig , String).

/*
Predicado: listasString2
Descripcion: Predicado que permite ir avanzando entre las listas de los colores , con la finalidad de ir tranformandolos a la representacion String.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (ListsColor) , String.
*/
listasString2([],""):- !.
listasString2([ListColor|ListsColor] , String):-
    liststring2(ListColor, String1),
    listasString2(ListsColor , RespSig),
    string_concat(String1 , "\n" , String2),
    string_concat(String2 , RespSig , String).


/*
Predicado: imageToString
Descripcion: Predicado que transforma una imagen a una representaci?n string.
Dominio(Argumento de entrada): lista(Imagen) , String.
*/
imageToString(Imagen , String):-
    imageIsHexmap(Imagen),
    obtposicion(1,Imagen, AnchoImage),
    obtposicion(2,Imagen, AltoImage),
    pixeles(Imagen,Pixeles),
    setpixelalto(Pixeles, AnchoImage , AltoImage , 0 , ListsColor),
    listasString2(ListsColor , String), ! ;
    imageIsBitmap(Imagen),
    obtposicion(1,Imagen, Ancho1),
    obtposicion(2,Imagen, Alto1),
    pixeles(Imagen,Pixeles1),
    setpixelalto(Pixeles1, Ancho1 , Alto1 , 0 , ListsColor1),
    listasString(ListsColor1 , String), !;
    imageIsPixmap(Imagen),
    imageRGBToHex(Imagen , Imagen2),
    obtposicion(1,Imagen2, Ancho2),
    obtposicion(2,Imagen2, Alto2),
    pixeles(Imagen2,Pixeles2),
    setpixelalto(Pixeles2, Ancho2 , Alto2 , 0 , ListsColor2),
    listasString2(ListsColor2 , String).


/*
 * ----------------------------------------------------------------------
 * -------------------------imageDepthLayers-----------------------------
 * ----------------------------------------------------------------------
*/

/*
Predicado: profundi
Descripcion: Predicado que retorna true si el pixel bit o hex esta en una profundidad ingresada.
Dominio(Argumento de entrada): Numero ,lista (Pixel).
Recorrido(Retorno): Booleano.
*/

profundi(P , Pixel):-
    obtposicion(4,Pixel, Profundidad),
    P == Profundidad.

/*
Predicado: profundi2
Descripcion: Predicado que retorna true si el pixel RGB esta en una profundidad ingresada.
Dominio(Argumento de entrada): Numero ,lista (Pixel).
Recorrido(Retorno): Booleano.
*/
profundi2(P , Pixel):-
    obtposicion(6,Pixel, Profundidad),
    P == Profundidad.

/*
Predicado: xprofundidad
Descripcion: Predicado que permite separar los pixeles por lista dependiendo de su profundidad.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Lista.
*/
xprofundidad([] , []):- !.
xprofundidad(Pixeles , [Pixeles2|RespSig]):-
    obtposicion(1,Pixeles, Pixel),
    pixRGB(Pixel),
    obtposicion(6,Pixel, Depth),
    exclude(profundi2(Depth) , Pixeles , Pixeles1),
    xprofundidad(Pixeles1, RespSig),
    include(profundi2(Depth) , Pixeles , Pixeles2), !;
    obtposicion(1,Pixeles, Pixel1),
    obtposicion(4,Pixel1, Depth1),
    exclude(profundi(Depth1) , Pixeles , Pixeles3),
    xprofundidad(Pixeles3, RespSig),
    include(profundi(Depth1) , Pixeles , Pixeles2).

/*
Predicado: getpixel
Descripcion: Predicado que permite obtener el pixel que se encuentra en un alto y ancho especifico.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Posicion a buscar ej: [1, 0 , _ , _ ]) , lista (Pixeles) , Lista(Pixel).
*/
getpixel(_, [], []):- !.
getpixel(Posicion, [Pixel|_], R) :- Posicion =Pixel , R = Pixel, !.
getpixel(Posicion, [Pixel|Pixeles], R) :- Posicion \= Pixel, getpixel(Posicion, Pixeles, R), !.

%-----------------------------------------------------------------

%caso para bit

/*
Predicado: getpixelancho1
Descripcion: Predicado que permite avanzar el parametro del ancho, permite rellenar los espacios con el pixel de color blanco.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Numero (Alto pixel) , Numero(Ancho imagen) , Numero(Acum) , Lista(Pixel).
*/
getpixelancho1(_,_,AnchoImage,Acum , [] ):- AnchoImage == Acum ,!.
getpixelancho1(Pixeles , AltoPixel , AnchoImage , Acum , [Pixel3|RespSig]):-
    obtposicion(1,Pixeles,Pixel),
    obtposicion(4,Pixel,Depth),
    not(member([AltoPixel , Acum ,_ , _ ] , Pixeles)),
    Acum2 is Acum+1,
    getpixelancho1(Pixeles , AltoPixel , AnchoImage , Acum2 , RespSig),
    Pixel3 = [AltoPixel , Acum , 1 , Depth] , !;
    member([AltoPixel , Acum ,_ , _ ] , Pixeles),
    Acum2 is Acum+1,
    getpixelancho1(Pixeles , AltoPixel ,  AnchoImage , Acum2 , RespSig),
    getpixel([AltoPixel,Acum,_,_] , Pixeles, Pixel3), !.

/*
Predicado: getpixelalto1
Descripcion: Predicado que permite avanzar el parametro del alto, para ir rellenando en el orden adecuado.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Numero(Ancho imagen) , Numero (Alto Imagen) , Numero(Acum) , Lista(Pixeles).
*/

getpixelalto1(_,_,AltoImage,Acum,[]):- AltoImage == Acum ,!.
getpixelalto1(Pixeles, AnchoImage , AltoImage , Acum , ListPixelDepth):-
    Acum2 is Acum+1,
    getpixelalto1(Pixeles , AnchoImage , AltoImage , Acum2 , RespSig),
    getpixelancho1(Pixeles,Acum,AnchoImage,0,Pixeles2),
    append(Pixeles2, RespSig , ListPixelDepth).

/*
Predicado: imagenes
Descripcion: Predicado que va lista x lista de los pixeles por profundidades , el cual rellena las posiciones vacias con el pixel de color blanco y completa la imagen.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (PixelesXprofundidades) , Numero(Ancho imagen) , Numero (Alto Imagen) , Lista(Imagenes).
*/

imagenes([],_,_,[]):- !.
imagenes([ListPixelDepth|ListPixelxdepth],AnchoImage, AltoImage, [Imagen|RespSig]):-
    getpixelalto1(ListPixelDepth, AnchoImage ,AltoImage ,0 , ListPixelDepth2),
    imagenes(ListPixelxdepth , AnchoImage , AltoImage , RespSig),
    Imagen = [AnchoImage , AltoImage , ListPixelDepth2].

%-----------------------------------------------------------------


%caso para RGB
/*
Predicado: getpixelancho2
Descripcion: Predicado que permite avanzar el parametro del ancho, permite rellenar los espacios con el pixel de color blanco.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Numero (Alto pixel) , Numero(Ancho imagen) , Numero(Acum) , Lista(Pixel).
*/
getpixelancho2(_,_,AnchoImage,Acum , [] ):- AnchoImage == Acum ,!.
getpixelancho2(Pixeles , AltoPixel , AnchoImage , Acum , [Pixel3|RespSig]):-
    obtposicion(1,Pixeles,Pixel),
    obtposicion(6,Pixel,Depth),
    not(member([AltoPixel , Acum ,_ , _ ,_,_] , Pixeles)),
    Acum2 is Acum+1,
    getpixelancho2(Pixeles , AltoPixel , AnchoImage , Acum2 , RespSig),
    Pixel3 = [AltoPixel , Acum , 255, 255, 255 , Depth] , !;
    member([AltoPixel , Acum ,_ , _ ,_,_] , Pixeles),
    Acum2 is Acum+1,
    getpixelancho2(Pixeles , AltoPixel , AnchoImage , Acum2 , RespSig),
    getpixel([AltoPixel,Acum,_,_,_,_] , Pixeles, Pixel3), !.


/*
Predicado: getpixelalto2
Descripcion: Predicado que permite avanzar el parametro del alto, para ir rellenando en el orden adecuado.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Numero(Ancho imagen) , Numero (Alto Imagen) , Numero(Acum) , Lista(Pixeles).
*/
getpixelalto2(_,_,AltoImage,Acum,[]):- AltoImage == Acum ,!.
getpixelalto2(Pixeles, AnchoImage , AltoImage , Acum , ListPixelDepth):-
    Acum2 is Acum+1,
    getpixelalto2(Pixeles , AnchoImage , AltoImage , Acum2 , RespSig),
    getpixelancho2(Pixeles,Acum,AnchoImage,0,Pixeles2),
    append(Pixeles2, RespSig , ListPixelDepth).


/*
Predicado: imagenes2
Descripcion: Predicado que va lista x lista de los pixeles por profundidades , el cual rellena las posiciones vacias con el pixel de color blanco y completa la imagen.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (PixelesXprofundidades) , Numero(Ancho imagen) , Numero (Alto Imagen) , Lista(Imagenes).
*/
imagenes2([],_,_,[]):- !.
imagenes2([ListPixelDepth|ListPixelxdepth],AnchoImage, AltoImage, [Imagen|RespSig]):-
    getpixelalto2(ListPixelDepth, AnchoImage ,AltoImage ,0 , ListPixelDepth2),
    imagenes2(ListPixelxdepth , AnchoImage , AltoImage , RespSig),
    Imagen = [AnchoImage , AltoImage , ListPixelDepth2].


%-----------------------------------------------------------------

%caso para Hex

/*
Predicado: getpixelancho3
Descripcion: Predicado que permite avanzar el parametro del ancho, permite rellenar los espacios con el pixel de color blanco.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Numero (Alto pixel) , Numero(Ancho imagen) , Numero(Acum) , Lista(Pixel).
*/
getpixelancho3(_,_,AnchoImage,Acum , [] ):- AnchoImage == Acum ,!.
getpixelancho3(Pixeles , AltoPixel , AnchoImage , Acum , [Pixel3|RespSig]):-
    obtposicion(1,Pixeles,Pixel),
    obtposicion(4,Pixel,Depth),
    not(member([AltoPixel , Acum ,_ , _ ] , Pixeles)),
    Acum2 is Acum+1,
    getpixelancho3(Pixeles , AltoPixel , AnchoImage , Acum2 , RespSig),
    Pixel3 = [AltoPixel , Acum , "FFFFFF" , Depth] , !;
    member([AltoPixel , Acum ,_ , _ ] , Pixeles),
    Acum2 is Acum+1,
    getpixelancho3(Pixeles , AltoPixel , AnchoImage , Acum2 , RespSig),
    getpixel([AltoPixel,Acum,_,_] , Pixeles, Pixel3), !.

/*
Predicado: getpixelalto3
Descripcion: Predicado que permite avanzar el parametro del alto, para ir rellenando en el orden adecuado.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Numero(Ancho imagen) , Numero (Alto Imagen) , Numero(Acum) , Lista(Pixeles).
*/
getpixelalto3(_,_,Alto,Acum,[]):- Alto == Acum ,!.
getpixelalto3(Pixeles, AnchoImage , AltoImage , Acum , ListPixelDepth):-
    Acum2 is Acum+1,
    getpixelalto3(Pixeles , AnchoImage , AltoImage , Acum2 , RespSig),
    getpixelancho3(Pixeles,Acum,AnchoImage,0,Pixeles2),
    append(Pixeles2, RespSig , ListPixelDepth).


/*
Predicado: imagenes3
Descripcion: Predicado que va lista x lista de los pixeles por profundidades , el cual rellena las posiciones vacias con el pixel de color blanco y completa la imagen.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista(PixelesXprofundidades) , Numero(Ancho imagen) , Numero(Alto Imagen) , Lista(Imagenes).
*/
imagenes3([],_,_,[]):- !.
imagenes3([ListPixelDepth|ListPixelxdepth],AnchoImage, AltoImage, [Imagen|RespSig]):-
    getpixelalto3(ListPixelDepth, AnchoImage ,AltoImage ,0 , ListPixelDepth2),
    imagenes3(ListPixelxdepth , AnchoImage , AltoImage , RespSig),
    Imagen = [AnchoImage , AltoImage , ListPixelDepth2].

%-----------------------------------------------------------------


/*
Predicado: imageDepthLayers
Descripcion: Predicado que permite separar una im?gen en capas en base a la profundidad en que se sit?an los pixeles.
Dominio(Argumento de entrada): lista (imagen) , Lista(ImagenesXprofundidades).
*/
imageDepthLayers(Imagen,ListDL):-
    imageIsPixmap(Imagen),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    pixeles(Imagen,Pixeles),
    xprofundidad(Pixeles , ListPixelxdepth),
    imagenes2(ListPixelxdepth , AnchoImage, AltoImage , ListDL), !;
    imageIsHexmap(Imagen),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    pixeles(Imagen,Pixeles),
    xprofundidad(Pixeles , ListPixelxdepth),
    imagenes3(ListPixelxdepth , AnchoImage, AltoImage , ListDL), !;
    imageIsBitmap(Imagen),
    obtposicion(1,Imagen,AnchoImage),
    obtposicion(2,Imagen,AltoImage),
    pixeles(Imagen,Pixeles),
    xprofundidad(Pixeles , ListPixelxdepth),
    imagenes(ListPixelxdepth , AnchoImage, AltoImage , ListDL).


/*
 * ----------------------------------------------------------------------
 * -------------------------imageDecompress------------------------------
 * ----------------------------------------------------------------------
*/


/*
Predicado: myreplaceDeCom
Descripcion: Predicado que permite ir avanzando pixel por pixel, verificando si estos estan dentro de otra lista , en caso de que sea asi, le saca los corchetes.
Tipo de algoritmo/estrategia: Recursi?n natural.
Dominio(Argumento de entrada): lista (Pixeles) , Lista(Pixeles descomprimidos).
*/
myreplaceDeCom([], []):- !.%caso base
myreplaceDeCom([PixelCompress|Pixeles], [Pixel|RespSig]) :-
    contador(PixelCompress ,  RespContador),
    RespContador == 1,
    obtposicion(1,PixelCompress,Pixel),
    myreplaceDeCom(Pixeles, RespSig), !.
myreplaceDeCom([Pixel|Pixeles], [Pixel|RespSig]) :-
    contador(Pixel , RespContador),
    RespContador > 1,
    myreplaceDeCom(Pixeles, RespSig), !.


/*
Predicado: imageDecompress
Descripcion: Predicado que permite descomprimir una im?gen comprimida.
Dominio(Argumento de entrada): lista (Imagen) , Lista (Nueva Imagen).
*/
imageDecompress(Imagen , NewImagen):-
    obtposicion(1,Imagen, AnchoImage),
    obtposicion(2,Imagen, AltoImage),
    pixeles(Imagen,Pixeles),
    myreplaceDeCom(Pixeles, NewPixeles),
    NewImagen = [AnchoImage , AltoImage , NewPixeles].

