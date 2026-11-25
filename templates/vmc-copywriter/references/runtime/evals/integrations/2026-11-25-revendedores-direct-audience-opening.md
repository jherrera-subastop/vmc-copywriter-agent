# Integration ID

2026-11-25-revendedores-direct-audience-opening

## Corrección editorial

- Feedback: para Revendedores, la apertura preferida reconoce de inmediato la identidad de audiencia y la novedad: `¿Eres revendedor? ¿Sabías que ahora puedes publicar tu carro en VMC?`. El cuerpo fuente debe desarrollar esa narrativa; una línea corta no basta.
- Alcance: señal de calibración para el email de campaña Revendedores.

## Clasificación y destinos

- Causa: la apertura anterior explicó una situación genérica en vez de activar reconocimiento inmediato del segmento y novedad de producto; además comprimió el cuerpo narrativo en una frase intercambiable.
- Componentes actualizados: `.agents/skills/email/SKILL.md`, `evals/body-persuasion-grader.md`, `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-109`, `seed-110`.
- Señal editorial o run invalidado: `cal-revendedores-001` es dirección positiva; invalida la apertura abstracta del run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → editorial calibration → email skill → commercial coherence / body persuasion → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: la siguiente apertura debe usar identidad + novedad y el cuerpo debe desarrollar situación → decisión → mecanismo → control dentro del bloque fuente.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el correo Revendedores 2.
