# Distribución del agente VMC Copywriter

`vmc-copywriter-agent/` es el paquete privado para ChatGPT. Contiene un snapshot del core de VMC dentro de `skills/vmc-copywriter/references/runtime/`.

El snapshot permite aplicar el workflow, knowledge y guardrails en hosts sin acceso al repo. Para conservar feedback, casos de regresión y validadores entre ChatGPT y Claude Code, la siguiente fase añade un backend compartido; no se simula persistencia en este paquete.

El repositorio incluye un instalador único para Claude Code y Codex:

```bash
npx github:jherrera-subastop/vmc-copywriter-agent skill claude
npx github:jherrera-subastop/vmc-copywriter-agent skill codex
```

Ambos aceptan `--force` para actualizar una instalación existente.

## Ciclo de actualización

El runtime instalado es un snapshot versionado. El feedback editorial no se replica automáticamente entre computadoras: primero se integra y valida en el core de VMC, luego se publica una nueva versión y cada usuario actualiza con `--force`.

Antes de publicar, ejecutar `scripts/sync-runtime.ps1` desde el repositorio de distribución para sincronizar y validar los cuatro runtimes empaquetados.
