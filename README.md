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
   
