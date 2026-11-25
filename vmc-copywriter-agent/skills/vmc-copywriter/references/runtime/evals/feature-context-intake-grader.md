# Evaluador de contexto de feature

## Propósito

Evitar copy comercial para una feature desconocida o ambigua sin convertir la primera conversación en un formulario pesado.

## Cuándo aplica

Solo si la feature no tiene ficha confiable en `knowledge/library/` o falta un hecho que alteraría la promesa, el público, el mecanismo o la acción. Si la pieza fuente ya contiene la respuesta, se recupera de ahí y no se pregunta.

## Cuadrícula máxima

En un único mensaje breve, preguntar únicamente lo que falte de estas cinco preguntas:

1. ¿Cómo se llama la feature?
2. ¿Qué permite hacer realmente?
3. ¿Para quién está pensada?
4. ¿Qué acción quieres que haga esa persona?
5. ¿Qué emoción quieres activar y qué dato, límite o condición no debo inventar?

No se exige responder las cinco. No se agregan preguntas cosméticas, de formato o de copy si no cambian el plan comercial.

## Decisión

- `READY`: feature conocida, o contexto suficiente para el claim y la acción.
- `ASK_COMPACT_GRID`: faltan uno o más datos materiales; se pregunta solo esos ítems, máximo cinco.
- `BLOCKED_FOR_CONTEXT`: tras el intake sigue faltando un hecho sin el cual se inventaría una promesa.

## Después de la respuesta

Extraer los hechos reutilizables a la ficha de feature según `knowledge/library/README.md`. Una corrección material posterior se integra mediante `feedback-integration`; no se guarda copy literal como hecho.
