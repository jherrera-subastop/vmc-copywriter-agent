# Integration ID

2026-11-25-notification-bidirectional-expiry

## Corrección editorial

- Feedback: Falta un segundo vencimiento en cada rol: el de la propuesta que esperaba su respuesta y el de la negociación propia que venció por falta de respuesta de la contraparte.
- Alcance: pieza puntual

## Clasificación y destinos

- Causa: UX copy y cobertura incompleta de estados de expiración por rol.
- Componentes actualizados: registro del run actual y caso `notification-005` en `evals/cases.jsonl`. La propuesta previa `2026-11-25-notification-matrix-republish-safe` queda invalidada como baseline de esta pieza.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `notification-005`
- Señal editorial o run invalidado: aclaración del editor del 2026-11-25; debe haber dos direcciones de vencimiento para vendedor y comprador.
- Workflow y gates que lo cargan: `copywriter-workflow` exige `feedback-integration`; `mi-garaje-notification-semantics` preserva la expiración como evento distinto de rechazo; `hard-gates.md` exige este `GO_INTEGRATION`.

## Validación

- Smoke test: `GO_INTEGRATION` mediante `validate-agent-integration.ps1`.
- Run records: pendiente de crear tras esta integración; será validado con `validate-run.ps1` antes de la entrega.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el workflow para la matriz con vencimientos bidireccionales.
