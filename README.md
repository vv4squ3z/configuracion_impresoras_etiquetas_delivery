## Cargar fuentes a impresoras Zebra GC420t y GC420t en Linux

Para cargar las fuentes a la impresora necesitamos:
* Las fuentes en .bin

Las impresoras deben ser instaladas con el driver EPL2 de Zebra que viene en el CUPS

Para enviar las fuentes a la impresora debemos hacer:
```sh
   lpr -P {NOMBRE_IMPRESORA} -o  raw {FUENTE.bin]
   ```
   
   Dentro del directorio download_fuentes, existen dos archivos .sh para automatizar la instalación
   ```sh
   ./download_fuentes.sh {NOMBRE_IMPRESORA}
   ```
   
## Cargar imagenes a impresoras Zebra GC420t y GC420t en Linux

Para crear las imagenes compatibles con las impresoras necesitamos
* GIMP
* imagemagick

Debemos abrir la imagen en gimp y guardarla en .bmp indexado de 1-bit. Para eso vamos al menu Image -> Mode -> Indexed
Seleccionamos 'Use black and white (1-bit) palette'

Dimensionamos la imagen según lo que necesitamos y convertimos la imagen a .pcx con imagemagick y su herramienta convert
```sh
   convert ARCHIVO.bmp ARCHIVO.pcx
   ```
   
   Ese archivo debemos enviarlo a la impresora, pero antes debemos crear la imagen en la impresora con el comando GM de EPL II
   
   Para eso, podemos crear un archivo .txt con el siguiente contenido:
    ```sh
   GK"NOMBRE"
   GK"NOMBRE"
   GM"NOMBRE"XXXX
   ```
   Donde:
   * "NOMBRE" es el nombre con el que se guardará la imagen en la impresora (máximo 8 caracteres)
   * XXXX es el peso en bytes del archivo .pcx
   Para obtener el peso del archivo podemos usar por ejemplo:
    ```sh
   wc -c ARCHIVO.pcx
   ```
   
   Una vez que tenemos el archivo .txt con las instrucciones para crear la imagen en la impresora enviamos el archivo .txt y el archivo .pcx. (En ese orden)
     ```sh
   lpr -P {IMPRESORA} -o raw ARCHIVO.txt
   lpr -P {IMPRESORA} -o raw ARCHIVO.pcx
   ```
   
   Podemos comprobar si la imagen se guardó en la impresora con el comando EPL:
   ```sh
   GI
   ```
   
   Para imprimir los logos usaremos EPL:
   ```sh
   N
q800
Q800,32
S4
D12
ZB
GG50,50,"NOMBRE"
P1
   ```
   
