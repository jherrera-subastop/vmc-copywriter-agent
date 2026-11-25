# Run ID

2026-11-25-notification-trigger-local-only

- Schema: v2

## Entrada
- Canal / input: UX copy — documento consolidado de notificaciones, con el trigger de 15 días localizado en su estado.
- Finalidad: quitar el bloque superior de reglas y mostrar el único trigger visible inmediatamente encima de 'Se pregunta'.

## Auditoría
- Hechos y términos canónicos: el trigger de 15 días desde la apertura del SubasChat corresponde exclusivamente a 'Se pregunta'.
- Verdad comercial latente: la condición temporal se entiende mejor junto al evento que la activa.
- Riesgos o datos faltantes: ninguno; cambio de jerarquía y presentación del contexto ya confirmado.

## Estrategia
- Tensión: un bloque global de reglas desvincula el trigger de su evento y confunde el alcance.
- Ganancia: el documento lista directamente las notificaciones; la condición aparece solo donde se necesita.
- Costo honesto de postergar: N/A.
- Mecanismo y control: eliminar el encabezado y las reglas globales; conservar el aviso local antes de la fila 'Se pregunta'.
- Gran idea: “El trigger vive con el estado que dispara.”
- Mapa de motivaciones (si aplica): claridad contextual; N/A para persuasión comercial.

## Ronda 1
- Qué falló / qué cambió: se eliminó por completo el bloque superior 'Reglas de disparo'. El trigger de 15 días permanece solo en la sección de confirmación de compra, inmediatamente antes de 'Se pregunta'.
- Gates duros: PASS
- Coherencia comercial: EVIDENCE_READY
- Paquete visible evaluado (si aplica): documento de UX con contexto local; no se añade urgencia ni resultado de compra no confirmado.
- Palanca y energía de conversión (si aplica): N/A — precisión de jerarquía.
- Referencia de ruta VMC (si aplica): N/A — no es Vendo Mis Cosas ni una apertura comercial.
- Preparación para decisión: READY
- Evidencia relevante / corrección de apuesta: integración `2026-11-25-notification-trigger-local-only` en `GO_INTEGRATION`; el editor indicó que el bloque global confundía.
- Calibración editorial: insuficiente — no existen señales aprobadas específicas para esta matriz; se entrega para calibración editorial.

## Estado final

`CALIBRATION_REQUIRED`
