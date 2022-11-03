:- include(tdaImage_21054850_GuerreroArroyo).


/*

----------------------------------------------------------------------

------------------[SCRIPT DE PRUEBAS DOCUMENTO]----------------------

----------------------------------------------------------------------


-Probar que se puede generar una imagen pixbit.
Codigo a probar:
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 0, 20, PB), pixbit( 1, 0, 0, 30, PC), 
pixbit( 1, 1, 1, 4, PD), image( 2, 2, [PA, PB, PC, PD], I), imageIsBitmap(I), 
imageToString(I, Str),write(Str).



-Probar que imageIsBitMap detecta cuando se tiene una imagen en hex o en rgb.
Codigo a probar:

pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 0, 20, PB), pixbit( 1, 0, 0, 30, PC), 
pixbit( 1, 1, 1, 4, PD), image( 2, 2, [PA, PB, PC, PD], I), imageIsBitmap( I ).

Estos casos deben dar false:

pixhex( 0, 0, "#FF0000", 10, PA), pixhex( 0, 1, "#FF0000", 20, PB), 
pixhex( 1, 0, "#0000FF", 30, PC), pixhex( 1, 1, "#0000FF", 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsBitmap( I ).

pixrgb( 0, 0, 200, 200, 200, 10, PA), pixrgb( 0, 1, 200, 200, 200, 20, PB), 
pixrgb( 1, 0, 190, 190, 190, 30, PC), pixrgb( 1, 1, 190, 190, 190, 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsBitmap( I ).


-Probar que se puede generar una imagen pixhex.
Codigo a probar:
pixhex( 0, 0, "#FF0000", 10, PA), pixhex( 0, 1, "#FF0000", 20, PB), 
pixhex( 1, 0, "#0000FF", 30, PC), pixhex( 1, 1, "#0000FF", 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageToString(I, Str),write(Str).


-Probar que imageIsHexmap detecta cuando se tiene una imagen en bit o en rgb.
Codigo a probar:
pixhex( 0, 0, "#FF0000", 10, PA), pixhex( 0, 1, "#FF0000", 20, PB), 
pixhex( 1, 0, "#0000FF", 30, PC), pixhex( 1, 1, "#0000FF", 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).

Estos casos deben dar false:

pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 0, 20, PB), pixbit( 1, 0, 0, 30, PC), 
pixbit( 1, 1, 1, 4, PD), image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).

pixrgb( 0, 0, 200, 200, 200, 10, PA), pixrgb( 0, 1, 200, 200, 200, 20, PB), 
pixrgb( 1, 0, 190, 190, 190, 30, PC), pixrgb( 1, 1, 190, 190, 190, 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).


-Probar que se puede generar una imagen pixrgb
Codigo a probar:
pixrgb( 0, 0, 255, 0, 0, 10, PA), pixrgb( 0, 1, 255, 0, 0, 20, PB), 
pixrgb( 1, 0, 0, 0, 255, 30, PC), pixrgb( 1, 1, 0, 0, 255, 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageToString(I, Str),write(Str).


-Probar que imageIsPixmap detecta cuando se tiene una imagen en hex o en bit.
Codigo a probar:
pixrgb( 0, 0, 200, 200, 200, 10, PA), pixrgb( 0, 1, 200, 200, 200, 20, PB), 
pixrgb( 1, 0, 190, 190,190, 30, PC), pixrgb( 1, 1, 190, 190, 190, 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsPixmap( I ).

Estos casos deben dar false:

pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 0, 20, PB), pixbit( 1, 0, 0, 30, PC), 
pixbit( 1, 1, 1, 4, PD), image( 2, 2, [PA, PB, PC, PD], I), imageIsPixmap( I ).

pixhex( 0, 0, "#FF0000", 10, PA), pixhex( 0, 1, "#FF0000", 20, PB), 
pixhex( 1, 0, "#0000FF", 30, PC), pixhex( 1, 1, "#0000FF", 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsPixmap( I ).


-Convierte una imagen RGB a HEX y comprueba con los predicados de pertenencia, 
luego convierte a string y muestra por pantalla.
Codigo a probar:
pixrgb( 0, 0, 200, 200, 200, 10, PA), pixrgb( 0, 1, 200, 200, 200, 20, PB), 
pixrgb( 1, 0, 190, 190,190, 30, PC), pixrgb( 1, 1, 190, 190, 190, 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsPixmap( I ), imageRGBToHex(I, I2), 
imageIsHexmap(I2), imageToString(I2, Str), write(Str).


-Comprime una imagen, luego descomprime y debe resultar la misma imagen original.
Codigo a probar:
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 0, 20, PB), pixbit( 1, 0, 0, 30, PC), 
pixbit( 1, 1, 1, 4, PD), image( 2, 2, [PA, PB, PC, PD], I), imageCompress(I, I2), 
imageDecompress(I2, I3).

En el ejemplo anterior “I” debería ser igual a “I3”


-Si se rota una imagen 4 veces en 90°, debería resultar la imagen original.
Codigo a probar:

pixhex( 0, 0, "#FF0000", 10, PA), pixhex( 0, 1, "#FF0000", 20, PB), 
pixhex( 1, 0, "#0000FF", 30, PC), pixhex( 1, 1, "#0000FF", 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageRotate90(I, I2), imageRotate90(I2, I3), 
imageRotate90(I3, I4), imageRotate90(I4, I5).

En el ejemplo anterior “I” debería ser igual a “I5”


-Si se rota una imagen en 90° que tiene el mismo color y profundidad en todos sus 
píxeles, entonces la imagen resultante debería ser la misma imagen original.
Codigo a probar:
pixhex( 0, 0, "#FF0000", 30, PA), pixhex( 0, 1, "#FF0000", 30, PB), 
pixhex( 1, 0, "#FF0000", 30, PC), pixhex( 1, 1, "#FF0000", 30, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageRotate90(I, I2).

En el ejemplo anterior “I” debería ser igual a “I2”


-Si se hace imageFlipV dos veces de una imagen, debería resultar la imagen 
original.
Codigo a probar:
pixhex( 0, 0, "#FF0000", 10, PA), pixhex( 0, 1, "#FF0000", 20, PB), 
pixhex( 1, 0, "#0000FF", 30, PC), pixhex( 1, 1, "#0000FF", 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipV(I, I2), imageFlipV(I2, I3).

En el ejemplo anterior “I” debería ser igual a “I3”


-Si se hace imageFlipH dos veces de una imagen, debería resultar la imagen 
original.
Codigo a probar:
pixhex( 0, 0, "#FF0000", 10, PA), pixhex( 0, 1, "#FF0000", 20, PB), 
pixhex( 1, 0, "#0000FF", 30, PC), pixhex( 1, 1, "#0000FF", 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipH(I, I2), imageFlipH(I2, I3).

En el ejemplo anterior “I” debería ser igual a “I3”


-Si se hace imageFlipH a una imagen que tiene el mismo color y profundidad en 
todos sus pixeles, entonces la imagen resultante debería ser la misma imagen 
original.
Codigo a probar:
pixhex( 0, 0, "#FF0000", 30, PA), pixhex( 0, 1, "#FF0000", 30, PB), 
pixhex( 1, 0, "#FF0000", 30, PC), pixhex( 1, 1, "#FF0000", 30, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipH(I, I2).

En el ejemplo anterior “I” debería ser igual a “I2”


-Se crea una imagen de 3x3 pixeles y se corta en una de 2x2 con solo la esquina 
inferior izquierda (Aunque en la practica deberia ser la esquina inferior derecha).
Codigo a probar:
pixhex( 0, 0, "#FF0000", 20, PA), pixhex( 0, 1, "#FF0000", 20, PB), 
pixhex( 0, 2, "#FF0000", 20, PC), pixhex( 1, 0, "#0000FF", 30, PD), 
pixhex( 1, 1, "#0000FF", 4, PE), pixhex( 1, 2, "#0000FF", 4, PF), 
pixhex( 2, 0, "#0000FF", 4, PG), pixhex( 2, 1, "#0000FF", 4, PH), 
pixhex( 2, 2, "#0000FF", 4, PI), 
image( 3, 3, [PA, PB, PC, PD, PE, PF, PG, PH, PI], I), 
imageCrop( I, 1, 1, 2, 2, I2), pixhex( 0, 0, "#0000FF", 4, PE2), 
pixhex( 0, 1, "#0000FF", 4, PF2), pixhex( 1, 0, "#0000FF", 4, PH2), 
pixhex( 1, 1, "#0000FF", 4, PI2), image( 2, 2, [PE2, PF2, PH2, PI2], I3).

En el ejemplo anterior, “I2” debería ser una imagen con los mismos pixeles y 
dimensiones que “I3”


-Toma el píxel de la posición (0,1) que en la imagen original tiene los valores 
RGB (20, 20, 20) y lo reemplaza por otro píxel con valor RGB (54, 54, 54).
Codigo a probar:
pixrgb( 0, 0, 10, 10, 10, 10, P1), pixrgb( 0, 1, 20, 20, 20, 20, P2), 
pixrgb( 1, 0, 30, 30, 30, 30, P3), pixrgb( 1, 1, 40, 40, 40, 40, P4), 
image( 2, 2, [P1, P2, P3, P4], I1), 
pixrgb( 0, 1, 54, 54, 54, 20, P2_modificado), 
imageChangePixel(I1, P2_modificado, I2).


-Se construye imagen de 2x2 con los primeros 2 pixeles con profundidad 10 y 
los otros 2 con profundidad de 30, entonces al consultar “imageDepthLayers” 
se debería obtener una lista con dos imágenes.

pixrgb( 0, 0, 33, 33, 33, 10, PA), pixrgb( 0, 1, 44, 44, 44, 10, PB), 
pixrgb( 1, 0, 55, 55, 55, 30, PC), pixrgb( 1, 1, 66, 66, 66, 30, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageDepthLayers(I, [PRIMERA, SEGUNDA]), 
pixrgb( 0, 0, 33, 33, 33, 10, PA2), pixrgb( 0, 1, 44, 44, 44, 10, PB2), 
pixrgb( 1, 0, 255, 255, 255, 10, PC2), pixrgb( 1, 1, 255, 255, 255, 10, PD2), 
image( 2, 2, [PA2, PB2, PC2, PD2], I2), pixrgb( 0, 0, 255, 255, 255, 30, PA3), 
pixrgb( 0, 1, 255, 255, 255, 30, PB3), pixrgb( 1, 0, 55, 55, 55, 30, PC3), 
pixrgb( 1, 1, 66, 66, 66, 30, PD3), image( 2, 2, [PA3, PB3, PC3, PD3], I3).

En el ejemplo anterior, “I2” debería ser una imagen con los mismos pixeles y 
dimensiones que “PRIMERA”. “I3” debería ser una imagen con los mismos pixeles 
y dimensiones que “SEGUNDA”.


----------------------------------------------------------------------

------------------[3 ejemplos mas por predicado]----------------------

----------------------------------------------------------------------


-TDA image - constructor  / TDA image - image->string

Genera una imagen pixbit.
pixbit( 0, 0, 0, 10, PA), pixbit( 0, 1, 0, 20, PB), pixbit( 1, 0, 0, 30, PC), 
pixbit( 1, 1, 0, 40, PD), image( 2, 2, [PA, PB, PC, PD], I), imageIsBitmap(I), 
imageToString(I, Str),write(Str).

Genera una imagen pixhex.
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#000000", 20, PB), 
pixhex( 1, 0, "#000000", 30, PC), pixhex( 1, 1, "#FFFFFF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageToString(I, Str),write(Str).

Genera una imagen pixrgb.
pixrgb( 0, 0, 0, 0, 0, 10, PA), pixrgb( 0, 1, 0, 0, 0, 20, PB), 
pixrgb( 1, 0, 255, 255, 255, 30, PC), pixrgb( 1, 1, 255, 255, 255, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageToString(I, Str),write(Str).


-TDA image - is bitmap

False:
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 20, PB), 
pixhex( 1, 0, "#FF00FF", 30, PC), pixhex( 1, 1, "#FF00FF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsBitmap( I ).

True:
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 0, 20, PB), pixbit( 1, 0, 1, 30, PC), 
pixbit( 1, 1, 0, 40, PD), image( 2, 2, [PA, PB, PC, PD], I), imageIsBitmap( I ).

False:
pixrgb( 0, 0, 255, 255, 255, 10, PA), pixrgb( 0, 1, 20, 20, 20, 20, PB), 
pixrgb( 1, 0, 30, 30, 30, 30, PC), pixrgb( 1, 1, 255, 255, 255, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsBitmap( I ).


-TDA image - is hexmap:

False:
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 1, 20, PB), pixbit( 1, 0, 1, 30, PC), 
pixbit( 1, 1, 1, 40, PD), image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).

False:
pixrgb( 0, 0, 255, 255, 255, 10, PA), pixrgb( 0, 1, 20, 20, 20, 20, PB), 
pixrgb( 1, 0, 30, 30, 30, 30, PC), pixrgb( 1, 1, 255, 255, 255, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).

True:
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 20, PB), 
pixhex( 1, 0, "#FF00FF", 30, PC), pixhex( 1, 1, "#FF00FF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).


-TDA image - is pixmap: 

False:
pixbit( 0, 0, 0, 10, PA), pixbit( 0, 1, 0, 20, PB), pixbit( 1, 0, 0, 30, PC), 
pixbit( 1, 1, 0, 40, PD), image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).

True:
pixrgb( 0, 0, 255, 255, 255, 10, PA), pixrgb( 0, 1, 255, 255, 255, 20, PB), 
pixrgb( 1, 0, 255, 255, 255, 30, PC), pixrgb( 1, 1, 255, 255, 255, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).

False:
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 20, PB), 
pixhex( 1, 0, "#FF00FF", 30, PC), pixhex( 1, 1, "#FFFFFF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsHexmap( I ).


-TDA image - is compressed:

Entrega True:
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 1, 20, PB),
pixbit( 1, 0, 0, 30, PC), pixbit( 1, 1, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCompress(I, I2), imageIsCompressed( I ).

Entrega True:
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 20, PB), 
pixhex( 1, 0, "#FF00FF", 30, PC), pixhex( 1, 1, "#FFFFFF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCompress(I, I2),  imageIsCompressed( I ).


Entrega False:
pixrgb( 0, 0, 255, 255, 255, 10, PA), pixrgb( 0, 1, 255, 255, 255, 20, PB), 
pixrgb( 1, 0, 0,0, 0, 30, PC), pixrgb( 1, 1, 0, 0, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageIsCompressed( I ).


-TDA image - flipH:

Se invierten los colores horizontalmente, por ende los pixeles de color blanco quedaran a la derecha (I2).
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 0, 20, PB), 
pixbit( 1, 0, 1, 30, PC), pixbit( 1, 1, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipH( I , I2 ).

Al realizar 3 veces el FlipH, los pixeles de colores blanco quedaran a la derecha(I4).
pixrgb( 0, 0, 255, 255, 255, 10, PA), pixrgb( 0, 1, 0, 0, 0, 20, PB), 
pixrgb( 1, 0, 255, 255, 255, 30, PC), pixrgb( 1, 1, 0, 0, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipH( I , I2 ) , imageFlipH( I2 , I3 ) , imageFlipH( I3 , I4 ).

Al aplicarle el FlipH los colores quedaran en la misma posición. 
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FFFFFF", 20, PB), 
pixhex( 1, 0, "#FF00FF", 30, PC), pixhex( 1, 1, "#FF00FF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipH( I , I2 ).


-TDA image - flipV:

Se invierten los colores horizontalmente, por ende los pixeles de color blanco quedaran abajo.
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 1, 20, PB), 
pixbit( 1, 0, 0, 30, PC), pixbit( 1, 1, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipV( I , I2 ).

Al realizar 3 veces el FlipV, los pixeles de colores blanco quedaran abajo (I4).
pixrgb( 0, 0, 255, 255, 255, 10, PA), pixrgb( 0, 1, 255, 255, 255, 20, PB), 
pixrgb( 1, 0, 0, 0, 0, 30, PC), pixrgb( 1, 1, 0, 0, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipV( I , I2 ) , imageFlipV( I2 , I3 ) , imageFlipV( I3 , I4 ).

Al aplicarle el FlipV los colores quedaran en la misma posición. 
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 20, PB), 
pixhex( 1, 0, "#FFFFFF", 30, PC), pixhex( 1, 1, "#FF00FF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageFlipV( I , I2 ).



-TDA image - crop:

Quedara un solo pixel.
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 1, 20, PB), 
pixbit( 1, 0, 0, 30, PC), pixbit( 1, 1, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCrop(I, 0, 0, 0, 0 , I2).


Queda una imagen de 1 de ancho y 2 de alto , con los pixeles de la izquierda.
pixrgb( 0, 0, 255, 255, 255, 10, PA), pixrgb( 0, 1, 255, 255, 255, 20, PB), 
pixrgb( 1, 0, 0, 0, 0, 30, PC), pixrgb( 1, 1, 0, 0, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCrop(I, 0, 0, 0, 1 , I2).

Queda una imagen de 1 de ancho y 2 de alto , con los pixeles de la derecha de color blanco.
pixhex( 0, 0, "#000000", 10, PA), pixhex( 0, 1, "#FFFFFF", 20, PB), 
pixhex( 1, 0, "#000000", 30, PC), pixhex( 1, 1, "#FFFFFF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCrop(I, 1, 0, 1, 1 , I2).



-TDA image - imgRGB->imgHex:

La imagen de la representación Hex , contiene solamente el color #FFFFFF.
pixrgb( 0, 0, 255, 255, 255, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 255, 255, 255, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I1), imageRGBToHex( I1, I2).

La imagen de la representación Hex , contiene  el color #FFFFFF a la derecha y el color #000000 a la izquierda.
pixrgb( 0, 0, 0, 0, 0, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 0, 0, 0, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I1), imageRGBToHex( I1, I2).

La imagen de la representación Hex , contiene pixeles de color negro #000000.
pixrgb( 0, 0, 0, 0, 0, 10, P1), pixrgb( 0, 1,  0, 0, 0, 20, P2),
pixrgb( 1, 0, 0, 0, 0, 30, P3), pixrgb( 1, 1,  0, 0, 0, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I1), imageRGBToHex( I1, I2).


-TDA image - to histogram:

Entrega la siguiente frencuencia de colores en la imagen :  Histograma = [[1, 3], [0, 1]]
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 1, 20, PB),
pixbit( 1, 0, 0, 30, PC), pixbit( 1, 1, 1, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageToHistogram( I, Histograma).

Entrega la siguiente frencuencia de colores en la imagen :  Histograma = [[[0, 0, 0], 2], [[255, 255, 255], 2]]
pixrgb( 0, 0, 0, 0, 0, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 0, 0, 0, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I), imageToHistogram( I, Histograma).


Entrega la siguiente frencuencia de colores en la imagen :  Histograma = [["#FFFFFF", 2], ["#FF00FF", 2]]
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 20, PB), 
pixhex( 1, 0, "#FFFFFF", 30, PC), pixhex( 1, 1, "#FF00FF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I),imageToHistogram( I, Histograma).


- TDA image - rotate90:

Al aplicarle el rotate90 los pixeles de colores blanco quedaran abajo. 
pixbit( 0, 0, 0, 10, PA), pixbit( 0, 1, 1, 20, PB), 
pixbit( 1, 0, 0, 30, PC), pixbit( 1, 1, 1, 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageRotate90( I, I2).

Al aplicarle el rotate90 , el color blanco(#FFFFFF) cambia con el color negro(#000000).
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#000000", 20, PB), 
pixhex( 1, 0, "#000000", 30, PC), pixhex( 1, 1, "#FFFFFF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I),imageRotate90( I, I2).

Al aplicarle 4 veces rotate90 , se optiene la misma imagen del cominezo , osea I = I5.
pixrgb( 0, 0, 0, 0, 0, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 0, 0, 0, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I), imageRotate90( I, I2), imageRotate90( I2, I3),
imageRotate90( I3, I4), imageRotate90( I4, I5).


- TDA image - compress:
dato: Cuando comprime un pixel, lo indentifica con un doble corchete, esto se hace con la finalidad de recuperar el pixel comprimido.

Los colores que se comprimen son los pixeles que contiene los colores blancos. 
pixbit( 0, 0, 0, 10, PA), pixbit( 0, 1, 1, 20, PB), 
pixbit( 1, 0, 1, 30, PC), pixbit( 1, 1, 1, 4, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCompress(I, I2).

Los colores que se comprimen son los pixeles que contiene los colores blancos.
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FFFFFF", 20, PB), 
pixhex( 1, 0, "#000000", 30, PC), pixhex( 1, 1, "#FFFFFF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I),imageCompress(I, I2).

Se comprimen todos los pixeles.
pixrgb( 0, 0, 255, 255, 255, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 255, 255, 255, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I), imageCompress(I, I2).



-TDA image - changePixel:

Al remplazar el pixel de la imagen , la imagen queda con unicamente pixeles de color blanco.
pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 1, 20, PB),
pixbit( 1, 0, 0, 30, PC), pixbit( 1, 1, 1, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), 
pixbit( 1, 0, 1 , 30, P2_modificado), imageChangePixel(I, P2_modificado, I2).


Al remplazar el pixel de la imagen , quedera en la imagen un pixel de color negro , en la parte inferior derecha.
pixrgb( 0, 0, 255, 255, 255, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 255, 255, 255, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I),
pixrgb( 1, 1,  0 , 0 , 0 , 40, P2_modificado), imageChangePixel(I, P2_modificado, I2).


Al aplicar 2 veces el changePixel , remplazando los pixeles de la derecha por pixeles de color blanco, 
se obtiene una imagen con unicamente pixeles de color blanco.

pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 20, PB), 
pixhex( 1, 0, "#FFFFFF", 30, PC), pixhex( 1, 1, "#FF00FF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I),
pixhex( 1, 1, "#FFFFFF" , 40, P2_modificado), imageChangePixel(I, P2_modificado, I2), 
pixhex( 0, 1, "#FFFFFF" , 20, P3_modificado), imageChangePixel(I2, P3_modificado, I3).



-TDA image - invertColorRGB:


Al aplicarle el invertColorRGB al pixel P3 , y al remplazarlo en la imagen , se obtiene una imagen con unicamente pixeles de color blanco.
pixrgb( 0, 0, 255, 255, 255, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 0, 0, 0, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I),
imageInvertColorRGB(P3, P3_modificado), imageChangePixel(I, P3_modificado, I2).


Al aplicarle el invertColorRGB al pixel P4 , y al remplazarlo en la imagen , quedera en la imagen un pixel de color negro , en la parte inferior derecha.
pixrgb( 0, 0, 255, 255, 255, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 255, 255, 255, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I),
imageInvertColorRGB(P4, P4_modificado), imageChangePixel(I, P4_modificado, I2).


Al aplicarle el invertColorRGB a los pixeles P2 y P4 , y al remplazarlos en la imagen , se obtiene una imagen con unicamente pixeles de color negro.
pixrgb( 0, 0, 0, 0, 0, 10, P1), pixrgb( 0, 1, 255, 255, 255, 20, P2),
pixrgb( 1, 0, 0, 0, 0, 255, 30, P3), pixrgb( 1, 1, 255, 255, 255, 40, P4),
image( 2, 2,[ P1, P2, P3, P4], I),
imageInvertColorRGB(P2, P2_modificado), imageChangePixel(I, P2_modificado, I2), 
imageInvertColorRGB(P4, P4_modificado), imageChangePixel(I2, P4_modificado, I3).



- TDA image - depthLayers:

Al aplicar depthLayers a la imagen, se genera una lista con 4 imagenes debido a que cada pixel tiene una profundidad distinta.
pixbit( 0, 0, 0, 10, PA), pixbit( 0, 1, 0, 20, PB), 
pixbit( 1, 0, 0, 30, PC), pixbit( 1, 1, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageDepthLayers(I, LI).

Al aplicar depthLayers a la imagen , se genera una lista con 2 imagenes adentro , una de profundidad 10 y la otra de profundidad 20.
pixrgb( 0, 0, 255, 0 , 255, 10, P1), pixrgb( 0, 1, 0, 255, 255, 20, P2),
pixrgb( 1, 0, 0, 0, 0, 10, P3), pixrgb( 1, 1, 255, 255, 0 , 20, P4),
image( 2, 2,[ P1, P2, P3, P4], I), imageDepthLayers(I, LI).

Al aplicar depthLayers a la imagen , quedara una lista con una sola imagen dentro , en el cual este debe ser igual a la imagen I.
pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 10, PB), 
pixhex( 1, 0, "#FFFFFF", 10, PC), pixhex( 1, 1, "#FF00FF", 10, PD), 
image( 2, 2, [PA, PB, PC, PD], I),imageDepthLayers(I, LI).


- TDA image - decompress:

Los siguientes codigos a probar , la imagen I debe ser igual a la imagen I3:.

pixbit( 0, 0, 1, 10, PA), pixbit( 0, 1, 1, 20, PB),
pixbit( 1, 0, 0, 30, PC), pixbit( 1, 1, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCompress(I, I2), imageDecompress(I2, I3).

pixhex( 0, 0, "#FFFFFF", 10, PA), pixhex( 0, 1, "#FF00FF", 20, PB), 
pixhex( 1, 0, "#FF00FF", 30, PC), pixhex( 1, 1, "#FFFFFF", 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCompress(I, I2), imageDecompress(I2, I3).


pixrgb( 0, 0, 255, 255, 255, 10, PA), pixrgb( 0, 1, 255, 255, 255, 20, PB), 
pixrgb( 1, 0, 0,0, 0, 30, PC), pixrgb( 1, 1, 0, 0, 0, 40, PD), 
image( 2, 2, [PA, PB, PC, PD], I), imageCompress(I, I2), imageDecompress(I2, I3)

*/