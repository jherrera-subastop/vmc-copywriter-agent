# Integration ID

2026-11-25-notification-top-removed-states-only

## Corrección editorial

- Feedback: La parte superior del documento debe mostrar únicamente los estados retirados; el trigger y las respuestas vinculadas se presentan aparte.
- Alcance: pieza puntual

## Clasificación y destinos

- Causa: jerarquía de UX copy; la nota superior contenía más contexto del solicitado.
- Componentes actualizados: registro del run actual y caso `notification-011` en `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `notification-011`
- Señal editorial o run invalidado: corrección explícita del editor el 2026-11-25; el encabezado debe limitarse a estados retirados.
- Workflow y gates que lo cargan: `copywriter-workflow` exige `feedback-integration`; `ux-copy` exige una jerarquía local clara; `hard-gates.md` exige este `GO_INTEGRATION`.

## Validación

- Smoke test: `GO_INTEGRATION` mediante `validate-agent-integration.ps1`.
- Run records: pendiente de crear tras esta integración; será validado con `validate-run.ps1` antes de la entrega.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: regenerar el documento con estados retirados arriba y la explicación del trigger después de su matriz.
