#Tsundoku-AR

##Iteracion 5 (26/6 - 05/6)

### Plan

*Las Stories estan priorizadas asi como fueron escritas*

1. ***DONE*** Crear una barra de navegacion, que este disponible en todas las pantallas de la app, con links a la pantalla de subir imagenes, ver imagenes, escanear qr/hiro. Como deseable agregar una pequeña ayuda para usuarios primerizos *(SP => 3)*
2. ***DONE*** *Fix* En la pagina de leer qr, en un movil, cuando abre la camara abre la camara frontal por default, ademas el espacio donde muestra el video no ocupa el 100% de la pantalla *(SP => 5)*
3. ***DONE*** Generar qr desde la pagina de ver imagenes, agregarlo como un campo mas a la tabla *(SP => 2)*
4. ***DONE*** Subir una imaen obtiene un **Hiro Marker** con el **codigo QR** ,que tiene el id de la imagen, adentro del mismo marker *(SP => 5)*
5. ***DONE*** Crear un boton en la pagina de obtener el qr/hiro que permita descargar la imagen al file system *(SP => 3)*
6. ***DONE*** *Fix* cambiar el comportamiento de por default cuando abre la camara en la pagina de escanear hiro, por que se produce un espejado medio raro cuando usas un movil *(SP => 1)*
7. ***DONE*** Crear un boton en la pagina de obtener el qr/hiro que permita copiar el link de ese qr/hiro al portapapeles del usuario. Tener en cuenta que para esto se tiene que modificar el comportamiento actual ya que es necesario que el qr se calcule cada vez *(SP => 3)*
8. **PREPARAR PRESENTACION** PARA EL MIERCOLES *(SP => 5)*
9. ***DONE*** **Fix** modificar el texto del boton *Seleccionar archivo* en la pantalla de subir imagenes para que este en ingles *(SP => 2)*
10. Cubrir toda la aplicacion con tests de integracion realizados con selenium *(SP => 8)*

###Review

- Stories 1 al 7 y 9 terminadas y deployadas en Heroku.
- Story 10 se cayo del sprint no llegamos a hacerla.
- Story points => 24/37

### Retro

### Nos gusto:

- Ver mejoras en la usabilidad.
- Aumentó el code review.
- Escribimos más código.
- Aprendimos a usar imagemagick para trabajar con imágenes.
- Pudimos resolver problemas de css sin recurrir a frameworks complicados (como Boostrap o Materialize).
- No hubieron historias bloqueantes

### No nos gusto:

- Gitlab nos dejó sin CI.
- No pudimos resolver todos los problemas de diseño (css) de manera elegante.
- Seguimos sin tests, porque no hay objetos.
