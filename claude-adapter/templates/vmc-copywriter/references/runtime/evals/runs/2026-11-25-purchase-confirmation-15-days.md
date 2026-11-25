# Run ID

2026-11-25-purchase-confirmation-15-days

- Schema: v2

## Entrada
- Canal / input: UX copy — matriz de confirmación de compra para ambos participantes, auditada desde la captura y la regla de trigger confirmada por el editor.
- Finalidad: permitir que ambos participantes confirmen si una compra se concretó, con una pregunta enviada solo 15 días después de abrirse el SubasChat.

## Auditoría
- Hechos y términos canónicos: pregunta de confirmación, confirmación positiva de la contraparte, respuesta negativa de la contraparte, ambas partes indican que no se concretó y respuestas que no coinciden. `{vehículo}` y `{vendedor / comprador}` son variables de la matriz fuente.
- Verdad comercial latente: la persona debe identificar que se pide o se espera una confirmación, sin interpretar la pregunta como una compra ya confirmada.
- Riesgos o datos faltantes: el plazo de 15 días proviene del contexto explícito del editor y se registra como regla de trigger, no como detalle de cada notificación.

## Estrategia
- Tensión: mezclar pregunta, confirmación y desacuerdo puede hacer creer que el resultado de la compra ya está definido.
- Ganancia: una oración por estado que distingue pregunta, espera de respuesta, no concreción y desacuerdo.
- Costo honesto de postergar: N/A; son avisos de confirmación, no mensajes de presión comercial.
- Mecanismo y control: iconos `❓`, `✅`, `❌`, `🚫` y `⚠️` acompañan estados explícitos; SubasChat es el lugar definido para confirmar o revisar.
- Gran idea: “La compra solo se registra según lo que ambas partes confirmen.”
- Mapa de motivaciones (si aplica): claridad y control contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: se conserva la cantidad y el orden de estados de la captura, pero se unen título y detalle en una oración completa, se añade un emoji congruente y se establece que la pregunta inicial se dispara solo 15 días después de abrirse el SubasChat.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): oraciones transaccionales completas con prefijo visual; no se añade CTA, urgencia ni resultado de compra no confirmado.
- Palanca y energía de conversión (si aplica): reconocimiento visual → estado explícito → acción/localización en SubasChat; sin FOMO ni promesa.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-purchase-confirmation-15-days` en `GO_INTEGRATION`; el editor confirmó el trigger de 15 días desde la apertura del SubasChat.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
