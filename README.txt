PRÁCTICAS BÁSICAS BLOQUE 1:

Autor: Nicolás Vázquez Cancela.

Desarrollo:
Para poder llevar la cuenta del número de ocurrencias de caracteres, palabras minúsculas, mayúsculas, númericas, la combinación de todas estas, y frases, se definió una variable global de C para cada una en la sección de declaraciones junto con la expresión regular que las aceptan, más una que acepta los símbolos que no son caracteres para ingnorarlos. A mayores se definió una macro en la sección de declaraciones para incrementar el número de palabras y caracteres, para reducir el código al ser una operación muy frecuentre.

Luego, en la sección de reglas, se usa cada expresión regular para incrementar la variable de la cadena que aceptan. En el caso de las frases, se asumió que varios puntos seguidos solo terminan una frase y no se necesita que les preceda una palabra para considerarse una frase. También se supuso que las palabras minúsculas solo pueden estar formadas por símbolos de letras minúsculas, lo mismo las palabras mayúsculas con las letras mayúsculas, y las palabras numéricas con los números. Intercalar cualquiera de los anteriores símbolos sin espacios, tabuladores o saltos de linea, será considerado como solo palabra y su regla debe situarse después de las reglas de las palabras minúsculas, mayúsculas y númericas, ya que la primera acepta todo lo que las otras y si se pusiera antes, no llegaría activarse nunca las otras. Las reglas para ingnorar símbolos y contar frases pueden ir en cualquier orden.

Finalmente se imprime el número de caracteres, palabras minúsculas, mayúsculas, numéricas, y frases, en la función main de la sección de código.
