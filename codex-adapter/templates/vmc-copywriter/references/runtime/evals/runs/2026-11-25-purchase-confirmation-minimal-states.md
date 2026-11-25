# Run ID

2026-11-25-purchase-confirmation-minimal-states

- Schema: v2

## Entrada
- Canal / input: UX copy — matriz mínima de confirmación de compra para ambos participantes, con trigger de 15 días desde la apertura del SubasChat.
- Finalidad: preguntar y registrar solamente la respuesta afirmativa o negativa de la contraparte, sin estados adicionales de acuerdo o discrepancia.

## Auditoría
- Hechos y términos canónicos: pregunta de confirmación, confirmación positiva de la contraparte y respuesta negativa de la contraparte. `{vehículo}` y `{vendedor / comprador}` son variables de la matriz fuente.
- Verdad comercial latente: la persona debe identificar que se solicita o espera una confirmación sin interpretar la pregunta como una compra ya confirmada.
- Riesgos o datos faltantes: el plazo de 15 días proviene del contexto explícito del editor y se registra como regla de trigger, no como detalle de cada notificación.

## Estrategia
- Tensión: estados adicionales introducen información innecesaria en un flujo de confirmación simple.
- Ganancia: tres estados visibles cubren la pregunta y las dos respuestas relevantes de la contraparte.
- Costo honesto de postergar: N/A; son avisos de confirmación, no mensajes de presión comercial.
- Mecanismo y control: iconos `❓`, `✅` y `❌` acompañan estados explícitos; SubasChat es el lugar definido para confirmar o revisar.
- Gran idea: “La compra se confirma con una respuesta clara de cada parte.”
- Mapa de motivaciones (si aplica): claridad y control contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: se eliminaron 'Ambos dicen no' y 'No coinciden'. Se conservan solo la consulta inicial, el sí de la contraparte y el no de la contraparte; la pregunta inicial se dispara a los 15 días de abrirse el SubasChat.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): oraciones transaccionales completas con prefijo visual; no se añade CTA, urgencia ni resultado de compra no confirmado.
- Palanca y energía de conversión (si aplica): reconocimiento visual → estado explícito → acción/localización en SubasChat; sin FOMO ni promesa.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-purchase-confirmation-minimal-states` en `GO_INTEGRATION`; el editor confirmó el trigger de 15 días y eliminó los dos estados adicionales.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
