# Run ID

2026-11-25-purchase-trigger-reference-note

- Schema: v2

## Entrada
- Canal / input: documento consolidado de UX copy para notificaciones, con nota referencial de confirmación de compra.
- Finalidad: explicar el alcance exclusivo del trigger de 15 días, sus respuestas derivadas y los estados retirados, sin que el trigger parezca aplicar a toda la tabla.

## Auditoría
- Hechos y términos canónicos: el trigger aplica a 'Se pregunta'; las respuestas 'La otra parte dice sí/no' se activan por respuesta de contraparte; Venta confirmada, Ambos dicen no y No coinciden fueron retirados por decisión editorial.
- Verdad comercial latente: quien implementa debe saber qué mensaje activar, qué mensajes esperar después y cuáles no debe implementar.
- Riesgos o datos faltantes: ninguno; la nota organiza decisiones explícitas del editor.

## Estrategia
- Tensión: una regla junto a una tabla podía asignarse visualmente a todas sus filas.
- Ganancia: una nota aislada identifica el mensaje gatillado, su condición, sus respuestas y las exclusiones.
- Costo honesto de postergar: N/A.
- Mecanismo y control: nota de implementación independiente al inicio; tabla sin condiciones globales ni locales ambiguas.
- Gran idea: “Una regla, un mensaje; sus respuestas y exclusiones quedan explícitas.”
- Mapa de motivaciones (si aplica): claridad contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: se retiró el trigger de encima de la tabla. La nota superior de Confirmación de compra establece que 15 días activa solo 'Se pregunta', identifica las respuestas vinculadas y registra los estados retirados con su motivo.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): documento de UX con contexto de implementación no ambiguo; no se añade urgencia ni resultado de compra no confirmado.
- Palanca y energía de conversión (si aplica): N/A — precisión de jerarquía.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-purchase-trigger-reference-note` en `GO_INTEGRATION`; el editor pidió el trigger fuera de la tabla, junto a respuestas y estados retirados.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
