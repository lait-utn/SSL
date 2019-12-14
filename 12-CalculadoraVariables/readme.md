
Tp Promoción SSL 2019

Calculadora con variables - TP 12

#### Introducción

El trabajo consta de una calculadora por consola que permite hacer uso de variables en sus expresiones. la misma funciona como un programa normal de consola: Recibe instrucciones y ejecuta distintas acciones con ese input.

Las variables de la calculadora no requieren ser creadas, instanciadas o inicializadas. El programa cuenta con 26 variables que van desde la A-Z ya inicializadas en 0.

Cada instrucción se finaliza con un Enter (\n).

Adicional: la calculadora admite parentesis de forma opcional: `A+(B*C)`, `(((A)))`, `(A+(B*C))`, etc.

![](https://raw.githubusercontent.com/lait-utn/SSL/master/12-CalculadoraVariables/image.png)

#### Instrucciones que acepta la calculadora:

- `vars`: Imprime el valor de todas las variables. Este es el único comando dentro del programa.
- `asignación de variable`: del tipo `a = 1` o `A = 2`.   observación, `a` y `A` representan la misma variable.
- `expresión aritmética`: Cualquier expresión válida del tipo `a + b + 2` o `1 - 3`.
- `línea vacía`: Interrumpe la ejecución del programa.


#### Restricciones sobre el trabajo:
- Cada Expresión va en una línea.
- Una expresión puede ser: un comando, una asignación de variable, una expresión aritmética, como hasta ahora era el alcance del trabajo.
- El único comando es “vars”, que lista las variables y su valor actual.
- Las variables son las letras del alfabeto ASCII, es decir, isalpha.
- Las variables son case insensitive, es decir, A y a son la misma variable.
- Las variables se inicializan por defecto en cero.
- El trabajo debe estar acompañado de un enunciado.
