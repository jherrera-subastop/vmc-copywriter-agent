# Integration ID

2026-11-25-revendedores-slogan-closing

## Corrección editorial

- Feedback: el título de cierre debe sentirse como slogan; el cierre explicativo sigue siendo pésimo.
- Alcance: señal de calibración para cierres de campaña Revendedores y criterio reusable de títulos comerciales tipo slogan.

## Clasificación y destinos

- Causa: el grader exigía payoff, pero no diferenciaba un remate de campaña de una tesis explicada.
- Componentes actualizados: `evals/section-heading-grader.md`, `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-113`.
- Señal editorial o run invalidado: `cal-revendedores-002`; invalida el cierre explicativo del run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → commercial coherence → section-heading grader → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: el próximo título final debe registrar el recurso de remate y la tesis que condensa.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el título de cierre.
