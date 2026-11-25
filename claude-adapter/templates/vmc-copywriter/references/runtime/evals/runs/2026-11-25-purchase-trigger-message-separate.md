# Run ID

2026-11-25-purchase-trigger-message-separate

- Schema: v2

## Entrada
- Canal / input: documento consolidado de UX copy para notificaciones, con el único mensaje gatillado separado de la tabla de respuestas.
- Finalidad: aislar visualmente 'Se pregunta' como el único mensaje con disparador de 15 días y dejar la tabla para respuestas derivadas.

## Auditoría
- Hechos y términos canónicos: Se pregunta tiene trigger de 15 días; La otra parte dice sí/no son respuestas derivadas sin trigger propio.
- Verdad comercial latente: quien implementa debe ver inmediatamente que solo una notificación depende del paso del tiempo.
- Riesgos o datos faltantes: ninguno; reorganización de condiciones editoriales explícitas.

## Estrategia
- Tensión: una fila gatillada dentro de una tabla de respuestas permite interpretar que todas comparten su condición temporal.
- Ganancia: el bloque separado contiene condición y texto exacto; las dos respuestas se leen como eventos posteriores.
- Costo honesto de postergar: N/A.
- Mecanismo y control: sección 'Mensaje con disparador' + tabla exclusiva de respuestas derivadas.
- Gran idea: “El trigger vive con un solo mensaje, fuera de la tabla.”
- Mapa de motivaciones (si aplica): claridad contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: 'Se pregunta' se retiró de la tabla y se ubicó en un bloque independiente con el plazo de 15 días. La tabla de Confirmación de compra conserva solo las respuestas sí y no de la contraparte.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): documento de UX con trigger aislado y estados explícitos; no se añade urgencia ni resultado de compra no confirmado.
- Palanca y energía de conversión (si aplica): N/A — precisión de jerarquía.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-purchase-trigger-message-separate` en `GO_INTEGRATION`; el editor exigió sacar el mensaje gatillado de la tabla.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
