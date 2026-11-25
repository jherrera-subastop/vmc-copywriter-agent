# VMC Copywriter para Codex

Instala el core completo del agente en `~/.codex/skills/vmc-copywriter`.

Mientras el repositorio no esté publicado, desde una copia local:

```powershell
node .\index.mjs skill
```

Una vez publicado en GitHub, la instalación será:

```bash
npx github:jherrera-subastop/vmc-copywriter-agent skill codex
```

Para actualizar una instalación existente, añade `--force`.
