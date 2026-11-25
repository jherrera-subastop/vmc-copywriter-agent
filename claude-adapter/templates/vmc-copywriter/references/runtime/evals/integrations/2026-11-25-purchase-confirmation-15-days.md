# Integration ID

2026-11-25-purchase-confirmation-15-days

## Corrección editorial

- Feedback: Para ambos participantes, la pregunta de confirmación de compra solo se dispara 15 días después de abrirse el SubasChat. La matriz debe seguir la convención de una oración corrida y emoji congruente por evento.
- Alcance: pieza puntual

## Clasificación y destinos

- Causa: nueva especificación de trigger y UX copy para estados de confirmación de compra.
- Componentes actualizados: registro del run actual y caso `notification-006` en `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `notification-006`
- Señal editorial o run invalidado: contexto confirmado por el editor el 2026-11-25; ningún aviso puede anticipar la confirmación antes de los 15 días desde la apertura del SubasChat.
- Workflow y gates que lo cargan: `copywriter-workflow` exige `feedback-integration`; `ux-copy` exige que una confirmación no se adelante al estado real; `mi-garaje-notification-semantics` separa pregunta, confirmación positiva, negativa y discrepancia; `hard-gates.md` exige este `GO_INTEGRATION`.

## Validación

- Smoke test: `GO_INTEGRATION` mediante `validate-agent-integration.ps1`.
- Run records: pendiente de crear tras esta integración; será validado con `validate-run.ps1` antes de la entrega.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el workflow para la matriz de confirmación de compra.
