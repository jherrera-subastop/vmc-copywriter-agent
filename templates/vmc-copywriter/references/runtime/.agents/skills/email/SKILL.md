---
name: email
description: "Mejora el copy de emails existentes de VMC: asunto, preheader, cuerpo y acción siguiente. Úsala después de auditar un correo; no genera HTML ni flujos de automatización."
---

# Copy para email

## Propósito

Reescribe un email existente para que comunique con claridad la finalidad editorial indicada por el editor y motive la siguiente acción adecuada. Entrega solo copy listo para implementar; no genera HTML, plantillas ni automatizaciones.

## Distinción obligatoria

- **Tema/finalidad editorial:** de qué trata el correo y qué busca lograr. Llega desde el mensaje del editor.
- **Asunto del email:** línea visible en la bandeja de entrada. Es un bloque de copy que esta skill audita o propone.

Nunca confundas el asunto con la finalidad del correo.

## Antes de redactar

1. `copywriter-workflow` ya ejecutó `audit-copy` sobre el correo o material recibido. Esta skill adapta el canal; no repite la auditoría salvo que el insumo cambie.
2. Lee `sources/source-registry.md` y los guardrails aplicables.
3. Recupera de `knowledge/library/` cualquier feature o término ya documentado.

## Workflow

1. Usa la finalidad del editor como criterio principal de decisión.
2. Identifica y conserva los hechos, condiciones y mensajes obligatorios que el correo debe comunicar.
3. Evalúa los campos presentes: asunto, preheader, apertura, cuerpo, bloques de apoyo, CTA y notas operativas.
   - Si la pieza fuente contiene `Hola {{Nombre}}` u otra personalización, consérvala. El primer párrafo debajo debe funcionar como una entrada narrativa de audiencia: reconoce una situación verificable de esa persona antes de presentar la feature. No lo dejes como saludo aislado ni inventes comportamiento individual; usa formulaciones inclusivas como `Si compras para revender...` cuando corresponda.
4. Extrae la tensión u oportunidad contenida en el insumo y completa la hoja de diseño persuasivo común. Si hay varias motivaciones válidas, lee `knowledge/principles/motivation-portfolio.md` y decide si este envío trabaja una sola o una combinación legible; no conviertas el correo en una lista de dolores. El asunto, preheader y apertura se evalúan dentro de `evals/commercial-coherence-grader.md`, incluido el uso de referencias aprobadas. El preheader o apertura debe continuar el asunto y aterrizar el mecanismo sin resetear el tono. Usa la arquitectura aprobada: tensión/interrupción o futuro deseable → consecuencia → mecanismo. No conviertas el email en un manual de pasos. Cuando el brief confirme un segmento automotriz como revendedores, nombra la situación comercial real —comprar para revender, vender el carro actual o rotar inventario—; descarta metáforas genéricas como `negocia tu siguiente movimiento` si no aclaran qué carro, venta o decisión cambia.
5. Reescribe para que cada bloque haga un trabajo distinto: el asunto invita a abrir; la apertura crea continuidad y emoción; el cuerpo vuelve creíble la propuesta; la acción siguiente indica qué puede hacer el usuario. El gate de coherencia comprueba que el cuerpo conserve la tesis humana del asunto/apertura y cubra motivaciones solo cuando corresponda.
   - Si la fuente tiene un bloque de cuerpo o introducción narrativa, desarróllalo dentro de ese mismo bloque. Cuando el brief exige reconocimiento de audiencia, una o dos frases genéricas no bastan: debe recorrer situación de la persona → decisión o tensión → novedad/mecanismo de VMC → control o siguiente acción. Esto no autoriza a añadir bloques ni a alargar por relleno.
6. Mantén una progresión lógica. El correo puede informar, generar interés o invitar a actuar, según la finalidad; no fuerces una CTA agresiva cuando la pieza no la necesita.
7. Ejecuta los tres gates comunes: `evals/hard-gates.md`, `evals/commercial-coherence-grader.md` y `evals/decision-readiness-grader.md`. Verifica que urgencia, FOMO, precios, plazos, beneficios y condiciones tengan respaldo; la acción debe cerrar el bloque previo, no repetir un mandato genérico.

## Entrega

Por defecto, entrega solo los campos que existan o sean necesarios:

```text
Asunto: ...
Preheader: ...

Título: ...
Cuerpo: ...
Acción / botón: ...
```

Respeta el orden del correo original cuando ayude a su implementación. Usa `modo variantes` solo cuando el editor pida A/B o cuando existan dos ángulos claramente distintos que valga la pena probar.

## Límites

- No crear HTML, código, diseño visual ni automatizaciones.
- No alterar cláusulas legales, textos obligatorios o condiciones operativas salvo que el editor lo solicite y exista una fuente aprobada.
- No utilizar urgencia o FOMO por defecto.
- No añadir estadísticas, testimonios, descuentos o promesas no verificadas.
