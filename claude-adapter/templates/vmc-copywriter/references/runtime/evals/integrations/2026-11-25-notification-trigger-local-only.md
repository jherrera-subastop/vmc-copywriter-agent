# Integration ID

2026-11-25-notification-trigger-local-only

## Corrección editorial

- Feedback: Quitar el bloque superior de reglas porque confunde; mostrar el único trigger visible únicamente encima del estado al que pertenece.
- Alcance: pieza puntual

## Clasificación y destinos

- Causa: jerarquía de UX copy; el bloque global separaba una condición de su estado correspondiente.
- Componentes actualizados: registro del run actual y caso `notification-009` en `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `notification-009`
- Señal editorial o run invalidado: corrección explícita del editor el 2026-11-25; no debe existir encabezado global de reglas en el documento.
- Workflow y gates que lo cargan: `copywriter-workflow` exige `feedback-integration`; `ux-copy` exige que el contexto local acompañe el estado; `hard-gates.md` exige este `GO_INTEGRATION`.

## Validación

- Smoke test: `GO_INTEGRATION` mediante `validate-agent-integration.ps1`.
- Run records: pendiente de crear tras esta integración; será validado con `validate-run.ps1` antes de la entrega.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: regenerar el documento consolidado sin bloque de reglas globales.
