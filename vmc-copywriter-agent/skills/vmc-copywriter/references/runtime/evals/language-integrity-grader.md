# Criterio de integridad lingüística

## Propósito

Evitar copy que parece construido por un modelo: gramaticalmente defectuoso, semánticamente forzado o incapaz de leerse con naturalidad. Es un criterio interno de `commercial-coherence-grader.md`; no es un cuarto gate ni una revisión visible.

## Cuándo aplica

A toda línea visible de copy comercial. Para una apertura, evalúa H1, línea de resolución y CTA como un paquete único.

## Prueba

1. **Concordancia y referente:** sujetos, verbos, pronombres y objetos concuerdan; cada `eso`, `lo`, `la`, `esa decisión` o equivalente tiene referente inmediato y claro.
2. **Relación semántica:** el predicado expresa una relación que un lector entiende sin interpretarla. No usa fórmulas vacías como `ser parte de esa decisión`, `jugar a tu favor` o `abrir una posibilidad` cuando no explica qué cambia.
3. **Lectura oral:** leído en voz alta, suena a español peruano cotidiano y a una persona; no a traducción, sintaxis inflada o metáfora ensamblada.
4. **Continuidad local:** cada línea responde a la anterior. El subtítulo desarrolla el pensamiento del H1; el CTA completa la decisión del bloque, no reinicia con una orden genérica.
5. **Economía:** ninguna palabra está solo para sonar intensa. Si se quita una expresión y el sentido mejora, reescribir.
6. **Registro de sector:** cuando el brief define un sector o audiencia comercial concreta, el lenguaje debe nombrar su situación real. En automotriz para revendedores, `comprar para revender`, `vender el carro actual`, `rotar inventario` o equivalentes claros son preferibles a abstracciones como `tu siguiente movimiento` si estas no explican qué negocio o decisión cambia.

## Salida interna

```text
Paquete evaluado: H1 / resolución / CTA
Referentes y concordancia:
Relación semántica:
Lectura oral:
Continuidad local:
Resultado: NATURAL / REWRITE / VETO
Corrección:
```

`NATURAL` exige cinco respuestas afirmativas y evidencia literal. Un problema de lenguaje o conexión devuelve `REWRITE` antes de ejecutar la simulación de decisión.
