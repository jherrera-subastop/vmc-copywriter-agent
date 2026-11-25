# Integration ID

2026-11-25-purchase-trigger-message-separate

## Corrección editorial

- Feedback: 'Se pregunta' debe ir fuera de la tabla, en un sector propio que indique que es el único mensaje con disparador. La tabla conserva solo respuestas derivadas.
- Alcance: pieza puntual

## Clasificación y destinos

- Causa: agrupación y jerarquía de UX copy; el mensaje gatillado seguía mezclado con mensajes sin trigger.
- Componentes actualizados: registro del run actual y caso `notification-012` en `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `notification-012`
- Señal editorial o run invalidado: aclaración explícita del editor el 2026-11-25; el mensaje con trigger se separa físicamente de la tabla.
- Workflow y gates que lo cargan: `copywriter-workflow` exige `feedback-integration`; `ux-copy` exige contexto de estado no ambiguo; `hard-gates.md` exige este `GO_INTEGRATION`.

## Validación

- Smoke test: `GO_INTEGRATION` mediante `validate-agent-integration.ps1`.
- Run records: pendiente de crear tras esta integración; será validado con `validate-run.ps1` antes de la entrega.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: regenerar el documento con un bloque separado para el único mensaje con disparador.
