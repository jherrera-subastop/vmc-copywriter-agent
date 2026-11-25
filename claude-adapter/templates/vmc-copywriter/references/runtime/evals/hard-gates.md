# Gates duros

## Propósito

Resolver primero lo que puede invalidar una pieza, antes de discutir si es atractiva. Este es un solo pase de decisión; no una lista de revisores visibles.

## Cuándo corre

Siempre, antes de la evaluación comercial. Si hay URL, imagen o pieza existente, incluye fidelidad de estructura. Si el editor corrigió una versión anterior, exige el `GO_INTEGRATION` del registro correspondiente.

## Criterios que consulta

- `factual-grader.md` y los `guardrails/` aplicables: hechos, términos, T&C, rol de VMC y promesas.
- `feature-context-intake-grader.md`, solo cuando la feature es nueva o falta un hecho que cambia promesa, audiencia, mecanismo o acción.
- `source-structure-grader.md`, solo si hay una pieza fuente.
- `.agents/skills/feedback-integration/SKILL.md`, solo si hay feedback material desde el último run.

Los documentos anteriores son criterios de evidencia: no se ejecutan como rondas separadas.

## Decisión

```text
Hechos / legal: PASS / REWRITE / VETO
Contexto de feature (si aplica): READY / BLOCKED_FOR_CONTEXT / N/A
Estructura fuente (si aplica): EVIDENCE_READY / REWRITE / VETO / N/A
Integración de feedback (si aplica): GO_INTEGRATION / NO_GO_INTEGRATION / N/A
Resultado: PASS / REWRITE / VETO / BLOCKED_FOR_CONTEXT
Corrección necesaria:
```

`PASS` exige todos los criterios aplicables aprobados. Una afirmación material sin fuente se elimina, condiciona o bloquea; nunca se compensa con una mejor redacción.
