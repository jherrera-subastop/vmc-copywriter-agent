# Run ID

2026-11-25-notification-matrix-republish-safe

- Schema: v2

## Entrada
- Canal / input: UX copy — matriz de notificaciones para vendedor y comprador, con Venta confirmada eliminada, salida a Mi Garaje después de cierre sin acuerdo y vencimientos explícitos por rol.
- Finalidad: entregar una oración completa y un emoji congruente por aviso, sin afirmar un costo o una condición de republicación no verificada.

## Auditoría
- Hechos y términos canónicos: publicación activa; propuestas, contrapropuestas, aceptación, rechazo, vencimiento después de 24 horas sin respuesta, Ganá Ya, cierre sin acuerdo, Mi Garaje y Compra confirmada. `{vehículo}`, `{comprador}`, `{vendedor}` y `{monto}` son variables de la matriz fuente.
- Verdad comercial latente: después del cierre sin acuerdo, la persona necesita una acción directa que pueda ejecutar desde Mi Garaje; la condición económica de esa acción no está incluida.
- Riesgos o datos faltantes: se omite 'sin costo' y 'hasta que lo vendas' porque la evidencia pública no confirma la republicación gratuita después de un cierre. El contexto del editor habilita referir Mi Garaje como la ruta de republicación.

## Estrategia
- Tensión: cada estado debe ser reconocible y completo sin confundir una expiración con un rechazo ni hacer promesas económicas.
- Ganancia: evento, oferta y consecuencia se comprenden en una sola frase; el cierre ofrece una siguiente acción explícita.
- Costo honesto de postergar: N/A; son avisos transaccionales, no mensajes de presión comercial.
- Mecanismo y control: emoji semánticamente congruente + oración completa. En vencimientos, se explicita el rol: el vendedor no respondió a la propuesta del comprador.
- Gran idea: “Cada estado se reconoce, se entiende y, cuando corresponde, indica el siguiente paso.”
- Mapa de motivaciones (si aplica): claridad y control contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: se elimina Venta confirmada del vendedor. Cierre sin venta incluye la acción de republicar desde Mi Garaje sin reclamar gratuidad. Vencimiento de vendedor y comprador especifican la falta de respuesta del vendedor, de acuerdo con la propuesta originada por el comprador.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): oraciones transaccionales completas con prefijo visual; no se añade CTA, urgencia, demanda ni claim comercial no verificado.
- Palanca y energía de conversión (si aplica): reconocimiento visual → oferta identificable → consecuencia o siguiente paso textual; sin FOMO ni promesa.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-notification-republish-claim-and-expiry-role` en `GO_INTEGRATION`; publicación oficial vigente confirma responder propuestas dentro de 24 horas y no prueba republicación gratuita posterior al cierre.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
