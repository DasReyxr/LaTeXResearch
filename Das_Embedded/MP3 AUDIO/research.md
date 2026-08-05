# TAREA: reporte técnico LaTeX sobre [TEMA]

## Objetivo
Investigar [TEMA] → generar reporte técnico en LaTeX, formato `sn-jnl` (usar `main.tex` + `generalconfig.tex` existentes como base).

## Secciones obligatorias
- Resumen de puntos clave
- Conceptos básicos
- Historia (breve)
- Estructura/arquitectura técnica (a fondo, no superficial)
- Implementaciones
- Ventajas / desventajas (tabla)
- Aplicaciones y uso actual
- Referencias y recursos de implementación (ver abajo)

## Nivel técnico
- Profundizar en detalles técnicos, no quedarse en descripción general.
- Priorizar precisión sobre extensión.

## Imágenes y diagramas
- NO insertar imágenes reales. Dejar `\includegraphics{...}` COMENTADO.
- Encima de cada figura, comentario LaTeX (`\begin{comment}`) con:
  1. Qué buscar (términos/query sugerida)
  2. Qué se espera ver en la imagen
- Cada figura lleva `\caption` y `\label` reales (sin comentar).

## Reglas de formato LaTeX
- Reutilizar `generalconfig.tex` existente.
- Si falta un paquete/comando para mejorar la presentación → agregarlo a `generalconfig.tex` (no al archivo principal), con comentario explicando por qué.
- Tablas: usar columnas flexibles (`tabularx`, `p{}`) que sumen ≤ `\linewidth`. Nunca usar `l|c|l` con texto largo (se desborda).
- Texto largo sin espacios dentro de `\texttt{}` (nombres de función, macros) → insertar `\allowbreak` en puntos lógicos para evitar overfull hbox.
- Verificar que no haya "Overfull \hbox" ni tablas que excedan el margen antes de entregar.

## Referencias y recursos de implementación
- Sección final (antes de Conclusión) con links reales, verificados, organizados por categoría:
  - Estándares/especificaciones oficiales
  - Datasheets de hardware relevante
  - Guías/tutoriales de implementación (idealmente en la plataforma que ya uso: STM32/HAL)
  - Librerías/herramientas de software
- Usar `\url{}` (paquete `xurl` en `generalconfig.tex` para que no desborden el margen).
- Solo URLs reales encontradas por búsqueda, nunca inventadas.

## Entrega
- Archivo `.tex` nuevo e independiente (no sobrescribir `main.tex` original).
- Debe compilar con la clase `sn-jnl` del usuario (no incluida en este entorno; validar sintaxis con `article` como sustituto temporal).