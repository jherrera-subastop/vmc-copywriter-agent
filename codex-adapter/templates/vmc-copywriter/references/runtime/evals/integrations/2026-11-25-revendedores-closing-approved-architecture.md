# Integration ID

2026-11-25-revendedores-closing-approved-architecture

## Corrección editorial

- Feedback: el cierre debe quedar con H2 `Comprar es solo el comienzo` y línea de apoyo `Ahora puedes realizar todo desde VMC`.
- Alcance: arquitectura aprobada de cierre para el email Revendedores.

## Clasificación y destinos

- Causa: el editor seleccionó una solución de dos capas que resuelve el reframe y el rol de VMC.
- Componentes actualizados: `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-117`.
- Señal editorial o run invalidado: `cal-revendedores-006` es arquitectura positiva que sustituye rutas anteriores de cierre.
- Workflow y gates que lo cargan: workflow → editorial calibration → commercial coherence / section-heading grader → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: preservar la arquitectura aprobada en la próxima reescritura completa.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: entregar el correo completo con el cierre aprobado.
