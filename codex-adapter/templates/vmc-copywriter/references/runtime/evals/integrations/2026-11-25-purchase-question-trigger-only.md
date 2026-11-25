# Integration ID

2026-11-25-purchase-question-trigger-only

## Corrección editorial

- Feedback: El trigger de 15 días desde la apertura del SubasChat corresponde solamente a la fila 'Se pregunta', no a todo el bloque de confirmación de compra.
- Alcance: pieza puntual

## Clasificación y destinos

- Causa: precisión de trigger en UX copy; el documento consolidado amplió indebidamente la condición temporal a los estados derivados.
- Componentes actualizados: registro del run actual y caso `notification-008` en `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `notification-008`
- Señal editorial o run invalidado: aclaración explícita del editor el 2026-11-25; el trigger temporal se muestra solo en 'Se pregunta'.
- Workflow y gates que lo cargan: `copywriter-workflow` exige `feedback-integration`; `ux-copy` exige que el texto describa el estado real; `hard-gates.md` exige este `GO_INTEGRATION`.

## Validación

- Smoke test: `GO_INTEGRATION` mediante `validate-agent-integration.ps1`.
- Run records: pendiente de crear tras esta integración; será validado con `validate-run.ps1` antes de la entrega.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: regenerar el documento consolidado con el trigger restringido a la primera pregunta.
