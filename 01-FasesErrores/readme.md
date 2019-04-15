01-FasesErrores   
# Trabajo 01 - FasesErrores   
Lautaro Iturregui   
169068-1   
## Consigna
4.1. Objetivos    
Identificar las fases de traducción y errores.   
4.2. Temas   
•  Fases de traducción.   
•  Preprocesamiento.   
•  Compilación.   
•  Ensamblado.   
•  Vinculación (Link).   
•  Errores en cada fase.   
4.3. Tareas
1.Investigar  las  funcionalidades  y  opciones  que  su  compilador  presenta  paralimitar el inicio y fin de las fases de traducción.   
2.Para la siguiente secuencia de pasos:   
a.Transicribir en readme.md cada comando ejecutado y   
b.Describir en readme.md el resultado u error obtenidos para cada paso.   
4.3.1. Secuencia de Pasos1.Escribir hello2.c, que es una variante de hello.c:   
```#include <stdio.h>   
int/*medio*/main(void){    
int i=42;    
prontf("La respuesta es %d\n");   
```
2.Preprocesar   hello2.c,   no   compilar,   y   generar hello2.i.Analizar su contenido.      
3.Escribir hello3.c, una nueva variante:      
```int printf(const char *s, ...);      
int main(void){    
int i=42; 
prontf("La respuesta es %d\n");   
```
4.Investigar la semántica de la primera línea.   
5.Preprocesar hello3.c, no compilar, y generar hello3.i. Buscar diferenciasentre hello3.c y hello3.i.   
6.Compilar el resultado y generar hello3.s, no ensamblar.   
7.Corregir  en  el  nuevo  archivo  hello4.c  y  empezar  de  nuevo,  generarhello4.s, no ensamblar.   
8.Investigar hello4.s.   
9.Ensamblar hello4.s en hello4.o, no vincular.   
10.Vincular hello4.o con la biblioteca estándar y generar el ejecutable.   
11.Corregir en hello5.c y generar el ejecutable.   
12.Ejecutar y analizar el resultado.   
13.Corregir en hello6.c y empezar de nuevo.   
14.Escribir hello7.c, una nueva variante:   
```
int main(void){    
int i=42;       
printf("La respuesta es %d\n", i);
}    
```
15.Explicar porqué funciona.   
4.4. Restricciones   
El programa ejemplo debe enviar por stdout la frase La respuesta es 42, elvalor 42 debe surgir de una variable.   
4.5. Productos   
>DD-FasesErrores   
>|-- readme.md   
>|-- hello2.c   
>|-- hello3.c   
>|-- hello4.c   
>|-- hello5.c   
>|-- hello6.c   
>|-- hello7.c   
