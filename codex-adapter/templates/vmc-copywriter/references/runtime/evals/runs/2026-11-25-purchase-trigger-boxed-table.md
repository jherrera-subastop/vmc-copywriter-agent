# Run ID

2026-11-25-purchase-trigger-boxed-table

- Schema: v2

## Entrada
- Canal / input: documento consolidado de UX copy para notificaciones, con mensaje gatillado en recuadro tabular.
- Finalidad: mostrar visualmente que un solo mensaje se activa por un disparador temporal y exponer su momento y texto de forma copiable.

## Auditoría
- Hechos y términos canónicos: solo '¿Se concretó la compra?' tiene trigger; se activa 15 días después de abrirse el SubasChat.
- Verdad comercial latente: implementación debe asociar sin ambigüedad el plazo con una única notificación.
- Riesgos o datos faltantes: ninguno; presentación de una condición explícita del editor.

## Estrategia
- Tensión: las líneas sueltas no dan la forma de implementación solicitada y pueden perder asociación visual.
- Ganancia: un recuadro tabular encapsula condición, momento y mensaje.
- Costo honesto de postergar: N/A.
- Mecanismo y control: encabezado 'Mensaje con disparador', leyenda explícita y tabla 'Cuándo / Notificación'.
- Gran idea: “Un recuadro, un disparador, un mensaje.”
- Mapa de motivaciones (si aplica): claridad contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: el bloque anterior de líneas sueltas fue reemplazado por un recuadro con leyenda de disparador y tabla de dos columnas. La tabla de confirmación conserva solo respuestas derivadas.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): documento de UX con condición temporal y mensaje explícitos; no se añade urgencia ni resultado de compra no confirmado.
- Palanca y energía de conversión (si aplica): N/A — precisión de jerarquía.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-purchase-trigger-boxed-table` en `GO_INTEGRATION`; el editor solicitó un recuadro con Cuándo y Notificación.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
