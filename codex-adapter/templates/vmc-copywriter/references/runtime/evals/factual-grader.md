# Factual grader — VMC Copywriter

## Objetivo

Detectar afirmaciones materiales sin respaldo, interpretaciones que contradicen las Condiciones y Términos, y promesas que un copy comercial no puede hacer.

Este grader se ejecuta sobre el copy propuesto antes de aprobarlo.

## Fuentes obligatorias

1. `sources/source-registry.md`.
2. Condiciones y Términos vigentes.
3. Condiciones visibles de la oferta o pieza concreta.
4. Contexto confirmado por el editor.
5. Biblioteca de VMC, solo como apoyo y nunca por encima de una fuente vigente.

## Método

1. Extraer toda afirmación material del copy.
2. Clasificarla como: hecho de plataforma, condición de oferta, feature, promesa, urgencia, prueba social, dato económico, estado de activo o resultado.
3. Identificar la fuente que la respalda.
4. Marcar cada afirmación: `VERIFICADA`, `CONDICIONAL`, `NO VERIFICADA` o `CONTRADICHA`.
5. Resolver el resultado según las reglas de bloqueo.
6. Validar la terminología canónica de la feature contra su ficha en `knowledge/library/`. Un término de producto impreciso se trata como error factual/de producto, no como un simple cambio de estilo.

## Afirmaciones que siempre requieren fuente

- precio, ahorro, comisión, fee, impuesto o valorización;
- fechas, horas, cierres, plazos y disponibilidad;
- garantía, certificación, inspección, financiamiento, entrega y transferencia;
- estado, funcionamiento, kilometraje, historial o documentos de un activo;
- Gana Ya, visitas, propuestas, habilitación u otras condiciones de una oferta;
- cantidad de compradores, pujas, interesados, cupos, demanda o actividad;
- testimonios, empresas, socios o resultados atribuidos a VMC.

## Reglas críticas de VMC

- VMC facilita el Marketplace; no es vendedor, propietario, proveedor, inspector, garante ni parte de la compraventa definitiva.
- Los activos pueden tener condiciones y responsabilidades definidas por el vendedor y por la oferta específica.
- Ganar una oferta En Vivo, llegar a un acuerdo Negociable o usar Gana Ya no equivale por sí solo a transferencia, entrega o propiedad del activo.
- El precio base, las condiciones, fees e impuestos dependen de la oferta específica cuando corresponda.
- En copy comercial, `recibe propuestas` comunica la capacidad. `recibe propuestas en Mi Garaje` y variantes se tratan como error de terminología editorial; solo pueden usarse si el encargo pide explícitamente una instrucción operativa o UX.

## Decisión

| Hallazgo | Resultado |
|---|---|
| Afirmación material verificada y aplicable | Puede continuar |
| Afirmación cierta pero dependiente de la oferta | Mantener solo con condición/contexto visible |
| Afirmación sin fuente | Eliminar, neutralizar o preguntar al editor |
| Afirmación contraria a T&C o a la oferta | `REQUIERE REVISIÓN LEGAL` |
| Promesa falsa, escasez inventada o rol incorrecto de VMC | `NO APROBADO` + actualizar caso de regresión |

## Formato interno

```text
Claim: “...”
Tipo: ...
Fuente: ...
Estado: VERIFICADA / CONDICIONAL / NO VERIFICADA / CONTRADICHA
Acción: mantener / condicionar / eliminar / preguntar / escalar
```

## Modo fuentes

Cuando el editor solicite `modo fuentes`, reutiliza este registro para mostrar solo las fuentes de las afirmaciones materiales usadas en la entrega.
