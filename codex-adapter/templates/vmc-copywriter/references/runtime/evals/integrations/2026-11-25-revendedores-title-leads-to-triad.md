# Integration ID

2026-11-25-revendedores-title-leads-to-triad

## Corrección editorial

- Feedback: el título final debe ser distinto y llevar hacia `Compra. Publica. Negocia. Todo en VMC.`; esa triada funciona como línea de apoyo, no como H2.
- Alcance: señal de calibración para el cierre de Revendedores.

## Clasificación y destinos

- Causa: se confundió el trabajo del título de reframe con el trabajo de la triada de acciones.
- Componentes actualizados: `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-116`.
- Señal editorial o run invalidado: `cal-revendedores-005`; invalida usar la triada como título en el run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → editorial calibration → section-heading / CTA continuity → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: el cierre debe distinguir H2, triada de apoyo y CTA.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el cierre.
