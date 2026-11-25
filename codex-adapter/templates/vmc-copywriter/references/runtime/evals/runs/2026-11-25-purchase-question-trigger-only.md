# Run ID

2026-11-25-purchase-question-trigger-only

- Schema: v2

## Entrada
- Canal / input: UX copy — documento consolidado de notificaciones, con corrección del trigger de confirmación de compra.
- Finalidad: especificar que el plazo de 15 días desde la apertura del SubasChat dispara únicamente la primera pregunta de confirmación.

## Auditoría
- Hechos y términos canónicos: 'Se pregunta', 'La otra parte dice sí' y 'La otra parte dice no'. El trigger de 15 días aplica solo al primero.
- Verdad comercial latente: el tiempo determina cuándo se solicita la primera confirmación, no cuándo aparecen las respuestas posteriores.
- Riesgos o datos faltantes: ninguno; alcance limitado a la ubicación de un trigger confirmado por el editor.

## Estrategia
- Tensión: un trigger en el encabezado de todo el bloque podía interpretarse como una condición para respuestas ya generadas.
- Ganancia: la fila que se dispara después de 15 días lleva la condición visible; las filas de respuesta conservan solo su evento.
- Costo honesto de postergar: N/A.
- Mecanismo y control: la regla se coloca dentro del estado 'Se pregunta' y no en el bloque completo.
- Gran idea: “El tiempo activa la pregunta, no las respuestas.”
- Mapa de motivaciones (si aplica): claridad contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: el trigger de 15 días dejó de presentarse como regla general de confirmación de compra. Ahora aparece solo en 'Se pregunta'.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): copia UX transaccional con condición de trigger localizada; no se añade urgencia ni resultado de compra no confirmado.
- Palanca y energía de conversión (si aplica): N/A — precisión de estado.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-purchase-question-trigger-only` en `GO_INTEGRATION`; el editor confirmó el alcance exclusivo del trigger.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
