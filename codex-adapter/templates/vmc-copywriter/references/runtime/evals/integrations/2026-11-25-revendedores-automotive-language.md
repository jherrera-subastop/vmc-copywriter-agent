# Integration ID

2026-11-25-revendedores-automotive-language

## Corrección editorial

- Feedback: el correo debe reconocer explícitamente a quien compra carros para revender; `negocia tu siguiente movimiento` y equivalentes son abstractos y no pertenecen al registro automotriz.
- Alcance: reusable en emails automotrices dirigidos a revendedores, no una regla para otros sectores.

## Clasificación y destinos

- Causa: el canal transformó la rotación automotriz en una metáfora de negocio sin objeto comercial identificable.
- Componentes actualizados: `.agents/skills/email/SKILL.md`, `evals/language-integrity-grader.md`, `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-107`.
- Señal editorial o run invalidado: `rej-revendedores-001`; invalida las líneas abstractas del run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → email skill → commercial coherence → language integrity → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: el nuevo run debe nombrar compra para reventa y carro actual sin prometer rotación o venta.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el correo Revendedores 2.
