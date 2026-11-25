# Integration ID

2026-11-25-revendedores-closing-heading-conversion

## Corrección editorial

- Feedback: `Vende el carro que tienes. Sigue buscando el que viene.` es un título de cierre pésimo porque describe una secuencia y no convierte.
- Alcance: reusable para títulos de cierre comerciales; señal específica para Revendedores.

## Clasificación y destinos

- Causa: el evaluador aprobó una secuencia automotriz por ser clara, pero no exigió que el título final reabriera una razón comercial para actuar.
- Componentes actualizados: `evals/section-heading-grader.md`, `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-112`.
- Señal editorial o run invalidado: `rej-revendedores-003`; invalida el título final del run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → commercial coherence → section-heading grader → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: todo título pre-CTA debe documentar su tensión/ganancia propia, no una secuencia funcional.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el título de cierre o el correo completo.
