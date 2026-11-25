# Integration ID

2026-11-25-email-personalized-narrative

## Corrección editorial

- Feedback: el saludo personalizado de un email debe ser seguido por un párrafo que haga sentir al público dentro de la narrativa; en Revendedores reconoce la compra para reventa y la nueva opción de publicar en VMC.
- Alcance: reusable para emails que ya tienen saludo/personalización en la pieza fuente.

## Clasificación y destinos

- Causa: la skill trataba el saludo como decoración en vez de usarlo como primer punto de reconocimiento de audiencia.
- Componentes actualizados: `.agents/skills/email/SKILL.md`, `evals/opening-continuity-grader.md`, `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-108`.
- Señal editorial o run invalidado: `rej-revendedores-002`; invalida un saludo aislado o un primer párrafo genérico del run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → email skill → commercial coherence → opening continuity → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: el siguiente run debe conservar el saludo fuente y registrar el reconocimiento de audiencia del párrafo inmediato.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el correo Revendedores 2.
