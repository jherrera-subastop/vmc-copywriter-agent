# Integration ID

2026-11-25-revendedores-full-cycle-slogan

## Corrección editorial

- Feedback: el cierre debe tratar a VMC como parte de comprar y vender; las propuestas acompañan la continuidad del negocio, no solo una compra siguiente.
- Alcance: señal de calibración para el cierre de Revendedores.

## Clasificación y destinos

- Causa: la premisa anterior redujo el valor a una siguiente compra y perdió el ciclo comercial completo que el editor busca activar.
- Componentes actualizados: `evals/editorial-calibration/title-signals.jsonl` y `evals/cases.jsonl`.

## Prueba de no regresión

- Caso(s) en `evals/cases.jsonl`: `seed-114`.
- Señal editorial o run invalidado: `cal-revendedores-003`; invalida cierres centrados solo en compra futura del run `2026-11-25-revendedores-2-rotacion`.
- Workflow y gates que lo cargan: workflow → editorial calibration → commercial coherence / section-heading grader → salida.

## Validación

- Smoke test: pendiente de ejecutar.
- Run records: el siguiente cierre debe condensar el ciclo compra + venta y resolverlo con una capacidad real de VMC.
- Resultado: `GO_INTEGRATION`

## Siguiente paso

- Solo con `GO_INTEGRATION`: volver a ejecutar el título de cierre.
