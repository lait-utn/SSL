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

## Resolución

> cpp hello2.c > hello2.i   
2) Al analizar el contenido de hello2.i puedo ver que el preprocesador remplazó el include por las declaraciones de funciones de la biblioteca estandar y también remplazó el comentario que existía entre int y main por un espacio.   
4) Al analizar la primera linea de hello3.c, semanticamente la linea es correcta, está declarando la función printf como int, ya que está función retorna el numero de caracteres impresos, o un valor negativo si ocurre un error

5) > cpp hello3.c > hello3.i   
Se observa que hello3.i no posee todas las declaraciones de la libreria stdio y varios #define que hello2.i si posee   
6)   > gcc -S hello3.i    
La compilacion fallo y se produjo un error:    
>hello3.c: In function ‘main’:    
hello3.c:4:2: warning: implicit declaration of function ‘prontf’; did you mean ‘printf’? [-Wimplicit-function-declaration]
  prontf("La respuesta es %d\n");    
  ^~~~~~    
  printf    
hello3.c:4:2: error: expected declaration or statement at end of input    
    
7) >cpp hello4.c > hello4.i    
   >gcc -S hello4.i    
El archivo preprocesado hello4.i se pudo compilar pero el compilador dio advertencia.    
>hello4.c: In function ‘main’:    
hello4.c:4:9: warning: format ‘%d’ expects a matching ‘int’ argument [-Wformat=]   
  printf("La respuesta es %d\n");   
         ^~~~~~~~~~~~~~~~~~~~~~    
8) El archivo .s posee la traducción del codigo compilado a Assembly, cuenta con varias optimizaciones propias del compilador de GCC, pero la estructura basica del programa es la misma, hace espacio para las variables en la pila, asigna el valor 42 a un punto en la pila, le asigna el valor del string escrito en printf a edi y deja un call printf para ser remplazado por el linker, libera la pila y retorna el control al sistema operativo    
9)> as hello4.s -o hello4.o    
se ensambla el archivo hello4.s y se traduce a instrucciones de codigo maquina, creando un archivo hello4.o    
10) > gcc hello4.o -o hello4    
Crea el archivo ejecutable a partir del archivo objeto    
11) > gcc hello5.c    
12) "La respuesta es 42"   
13) > gcc hello6.c -o hello6    
14) > gcc hello7.c -o hello7   
15) La variante 7 no funciona:   
hello7.c: In function ‘main’:   
hello7.c:3:1: warning: implicit declaration of function ‘printf’ [-Wimplicit-function-declaration]    
 printf("La respuesta es %d\n", i);    
 ^~~~~~    
hello7.c:3:1: warning: incompatible implicit declaration of built-in function ‘printf’    
hello7.c:3:1: note: include ‘<stdio.h>’ or provide a declaration of ‘printf’    
