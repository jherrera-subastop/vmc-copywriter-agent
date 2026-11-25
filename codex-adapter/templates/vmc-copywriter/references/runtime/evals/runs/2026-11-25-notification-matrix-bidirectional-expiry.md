# Run ID

2026-11-25-notification-matrix-bidirectional-expiry

- Schema: v2

## Entrada
- Canal / input: UX copy — matriz de notificaciones para vendedor y comprador, con Venta confirmada eliminada, salida a Mi Garaje después de cierre sin acuerdo y dos casos de vencimiento por rol.
- Finalidad: entregar una oración completa y un emoji congruente por aviso; cubrir la expiración de una propuesta pendiente y la expiración de la propia negociación para vendedor y comprador.

## Auditoría
- Hechos y términos canónicos: publicación activa; propuestas, contrapropuestas, aceptación, rechazo, vencimiento después de 24 horas sin respuesta, Ganá Ya, cierre sin acuerdo, Mi Garaje y Compra confirmada. `{vehículo}`, `{comprador}`, `{vendedor}` y `{monto}` son variables de la matriz fuente.
- Verdad comercial latente: cada persona debe entender cuál parte dejó de responder y si venció una propuesta recibida o su propia negociación.
- Riesgos o datos faltantes: se omite 'sin costo' y 'hasta que lo vendas' porque la evidencia pública no confirma la republicación gratuita posterior a un cierre. El contexto del editor habilita referir Mi Garaje como la ruta de republicación.

## Estrategia
- Tensión: un único aviso de vencimiento por rol deja ambigua la dirección de la negociación y quién debía actuar.
- Ganancia: cuatro avisos de expiración cubren ambas direcciones y mantienen propuesta, contrapropuesta y negociación diferenciadas.
- Costo honesto de postergar: N/A; son avisos transaccionales, no mensajes de presión comercial.
- Mecanismo y control: emoji `⌛` + oración completa que nombra objeto, oferta, actor sin respuesta y plazo de 24 horas.
- Gran idea: “Cada vencimiento explica qué expiró y quién dejó de responder.”
- Mapa de motivaciones (si aplica): claridad y control contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: se añaden dos vencimientos por rol. Vendedor: propuesta de comprador vencida por falta de respuesta del vendedor y contrapropuesta del vendedor vencida por falta de respuesta del comprador. Comprador: propuesta propia vencida por falta de respuesta del vendedor y negociación/counterpropuesta vencida por falta de respuesta del comprador. Expiración sigue diferenciada de rechazo.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): oraciones transaccionales completas con prefijo visual; no se añade CTA, urgencia, demanda ni claim comercial no verificado.
- Palanca y energía de conversión (si aplica): reconocimiento visual → oferta identificable → actor responsable → consecuencia textual; sin FOMO ni promesa.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-notification-bidirectional-expiry` en `GO_INTEGRATION`; el editor confirmó ambos sentidos de vencimiento y el plazo de 24 horas.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
