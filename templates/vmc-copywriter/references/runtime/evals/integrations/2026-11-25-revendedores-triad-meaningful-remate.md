# Integration ID

2026-11-25-revendedores-triad-meaningful-remate

## Corrección editorial

- Feedback: `Compra. Publica. Negocia.` es la ruta más cercana, pero `Todo en VMC` es genérico; el remate debe añadir continuidad real del negocio.
- Alcance: señal de calibración para el slogan de cierre Revendedores.

## Clasificación y destinos

- Causa: la exploración encontró un ritmo correcto, pero lo cerró con ubicación de marca en vez de una consecuencia comercial.
- Componentes actualizados: `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-115`.
- Señal editorial o run invalidado: `cal-revendedores-004`; invalida el remate genérico `Todo en VMC` del run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → editorial calibration → section-heading grader → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: mantener triada solo si el cierre incorpora una consecuencia comercial, no un cierre de ubicación.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el slogan de cierre.
