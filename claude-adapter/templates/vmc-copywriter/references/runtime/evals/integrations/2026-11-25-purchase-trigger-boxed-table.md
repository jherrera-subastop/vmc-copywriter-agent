# Integration ID

2026-11-25-purchase-trigger-boxed-table

## Corrección editorial

- Feedback: El mensaje con disparador debe presentarse en un recuadro con título, explicación de activación y columnas 'Cuándo' y 'Notificación'.
- Alcance: pieza puntual

## Clasificación y destinos

- Causa: presentación de UX copy; la separación anterior no ofrecía la estructura tabular que el editor necesita para implementación.
- Componentes actualizados: registro del run actual y caso `notification-013` en `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `notification-013`
- Señal editorial o run invalidado: corrección explícita del editor el 2026-11-25; el mensaje gatillado debe verse como bloque tabular autónomo.
- Workflow y gates que lo cargan: `copywriter-workflow` exige `feedback-integration`; `ux-copy` exige que el contexto y la acción sean explícitos; `hard-gates.md` exige este `GO_INTEGRATION`.

## Validación

- Smoke test: `GO_INTEGRATION` mediante `validate-agent-integration.ps1`.
- Run records: pendiente de crear tras esta integración; será validado con `validate-run.ps1` antes de la entrega.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: regenerar el documento con el mensaje gatillado en recuadro tabular.
