# Integration ID

2026-11-25-proposals-no-mi-garaje

## Corrección editorial

- Feedback: nunca usar `recibe propuestas en Mi Garaje` en copy comercial; comunicar únicamente `recibe propuestas`.
- Alcance: regla inviolable de lenguaje comercial para VMC.

## Clasificación y destinos

- Causa: se mezcló un posible lugar de gestión operativa con el claim comercial de la feature.
- Componentes actualizados: `guardrails/brand-and-language.md`, `evals/factual-grader.md` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-111`.
- Señal editorial o run invalidado: invalida toda línea `recibe propuestas en Mi Garaje` del run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → hard-gates → factual grader + brand guardrail → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: toda propuesta comercial futura usa `recibe propuestas` sin nombrar Mi Garaje.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar la pieza si el editor solicita una nueva versión.
