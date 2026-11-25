# Integration ID

2026-11-25-feature-context-intake

## Corrección editorial

- Feedback: al usar una feature por primera vez, el agente debe encaminar la explicación sin un interrogatorio; máximo cinco preguntas y luego aprender de las correcciones.
- Alcance: reusable para features y canales nuevos.

## Clasificación y destinos

- Causa: el workflow no tenía una entrada compacta y explícita para resolver una feature nueva antes de prometer beneficios.
- Componentes actualizados: `.agents/skills/copywriter-workflow/SKILL.md`, `knowledge/library/README.md`, `evals/feature-context-intake-grader.md`, `evals/hard-gates.md`, `evals/cases.jsonl` y el smoke validator.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-106`.
- Señal editorial o run invalidado: esta es una mejora de onboarding reusable; no invalida copy previo.
- Workflow y gates que lo cargan: workflow → feature-context intake → hard-gates → knowledge library → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: todo nuevo feature debe registrar `READY`, `ASK_COMPACT_GRID` o `BLOCKED_FOR_CONTEXT` antes del audit.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: usar el intake cuando una feature nueva lo requiera.
