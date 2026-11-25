# Integration ID

2026-11-25-notification-republish-claim-and-expiry-role

## Corrección editorial

- Feedback: Añadir al cierre sin venta una invitación a republicar desde Mi Garaje sin costo hasta vender; retirar Venta confirmada de la matriz; y explicitar los vencimientos para vendedor y comprador.
- Alcance: pieza puntual

## Clasificación y destinos

- Causa: cambio de UX copy, con una condición comercial material (costo de republicación) que requiere fuente vigente y precisión de roles en los vencimientos.
- Componentes actualizados: registro del run actual y caso `notification-004` en `evals/cases.jsonl`. La propuesta previa `2026-11-25-notification-matrix-emoji-per-event` queda invalidada como baseline de esta pieza.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `notification-004`
- Señal editorial o run invalidado: corrección del editor del 2026-11-25. La fuente oficial vigente confirma una publicación sin pagos mensuales ni renovaciones mientras está activa, pero no confirma que una republicación posterior a un cierre sea gratuita.
- Workflow y gates que lo cargan: `copywriter-workflow` exige `feedback-integration` después de feedback material; `ux-copy` y `hard-gates.md` exigen precisión factual y de estado.

## Validación

- Smoke test: `GO_INTEGRATION` mediante `validate-agent-integration.ps1`.
- Run records: pendiente de crear tras esta integración; será validado con `validate-run.ps1` antes de cualquier nueva propuesta.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: verificar la condición de republicación y luego volver a ejecutar el workflow para la matriz.
