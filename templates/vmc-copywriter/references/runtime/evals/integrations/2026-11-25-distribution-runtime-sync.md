# Integration ID

`2026-11-25-distribution-runtime-sync`

## Corrección editorial

- Feedback: antes de que el equipo pruebe el instalable, verificar que el workflow, referencias, pesos, gates y mecanismo de aprendizaje publicados sean los mismos que el harness vigente.
- Alcance: reusable

## Clasificación y destinos

- Causa: el instalador `npx` copiaba correctamente el runtime publicado, pero ese snapshot tenía menos runs e integraciones que el core actual. La distribución podía instalar reglas y referencias desactualizadas.
- Componentes actualizados:
  - runtime empaquetado para Claude y Codex sincronizado desde el core vigente;
  - script de sincronización/verificación de distribución en el repositorio público;
  - documentación de release aclarada: el feedback no se propaga entre computadoras automáticamente; requiere integración, publicación y actualización explícita.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `distribution-001`.
- Señal editorial o run invalidado: la instalación aislada desde GitHub no contenía el run ni la integración recientes de Revendedores 2.
- Workflow y gates que lo cargan: `AGENTS.md` → `copywriter-workflow` → `feedback-integration` → `guardrails/agent-integrity.md` → validador estructural. La distribución debe contener el mismo core antes de que un host pueda ejecutar esa cadena.

## Validación

- Smoke test: pendiente de ejecutar después de sincronizar los cuatro templates de distribución.
- Run records: se validará en una instalación aislada el run `2026-11-25-revendedores-2-rotacion.md` y esta integración.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: publicar el commit sincronizado y pedir a los usuarios ejecutar el instalador con `--force`.
