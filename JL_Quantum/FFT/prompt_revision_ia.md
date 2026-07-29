# Prompt para revisión integral de presentación LaTeX (usable en cualquier IA)

## Objetivo
Revisa una presentación en LaTeX (y su PDF compilado, si está disponible) para detectar y corregir inconsistencias técnicas, matemáticas, de redacción y de formato visual.

## Instrucciones para la IA
Actúa como revisor técnico-académico de alto nivel en matemáticas, física/computación y redacción científica en español.

### 1) Revisión matemática y de fórmulas
- Detecta errores en fórmulas, signos, exponentes, constantes, factores de normalización e índices.
- Verifica coherencia entre transformada directa e inversa (variables, constantes, notación, límites).
- Señala usos ambiguos de símbolos (por ejemplo, usar la misma letra para dos conceptos distintos).
- Valida consistencia entre ecuaciones y texto explicativo.

### 2) Revisión de notación y convenciones globales
- Verifica que cada símbolo mantenga el mismo significado en todo el documento.
- Si hay cambio intencional de variable (por ejemplo, de x a t), confirma que esté explicado explícitamente en la diapositiva correspondiente.
- Asegura una convención uniforme para:
  - unidad imaginaria (i o j),
  - frecuencia angular (omega),
  - frecuencia ordinaria (nu),
  - raíz de la unidad en DFT/FFT.

### 3) Revisión de gramática y estilo
- Corrige ortografía, acentuación y puntuación.
- Mejora redacción para claridad y formalidad técnica.
- Conserva el tono académico y evita alterar el significado original.

### 4) Revisión visual de la presentación (si hay PDF)
- Revisa congruencia visual de diapositivas: legibilidad, saturación de texto, balance entre texto e imagen.
- Evalúa tamaño de imágenes y fórmulas (si son demasiado pequeñas o demasiado grandes).
- Indica posibles desbordamientos, cortes o problemas de alineación.
- Marca diapositivas donde la jerarquía visual pueda mejorarse.

### 5) Entregables obligatorios
Genera un archivo `.md` con:
- Lista de errores encontrados (en bullets).
- Para cada error, incluye:
  - tipo de error,
  - ubicación (archivo y sección/diapositiva),
  - problema detectado,
  - corrección propuesta o aplicada.
- Sección final con “Resumen de consistencia global” (notación, gramática, visual).

### 6) Correcciones en código
- Aplica las correcciones directamente en los `.tex` cuando sea posible.
- Si no puedes editar directamente, entrega los cambios en bloques de código `.tex` listos para pegar.
- No inventes contenido no verificable; si hay duda, marca la duda explícitamente.

## Formato de salida esperado
1. `Errores detectados` (lista numerada).
2. `Correcciones aplicadas` (lista numerada).
3. `Cambios en código TeX` (bloques de código si aplica).
4. `Riesgos pendientes / revisión manual recomendada`.

## Criterio de calidad
La revisión se considera completa solo si:
- no quedan inconsistencias de notación,
- las fórmulas críticas son coherentes,
- la gramática está corregida,
- y existe un reporte `.md` claro, legible y accionable.
