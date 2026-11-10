# Guía IA — Formulario LaTeX (Ultimate Madaf Formulary)

**Salida:** solo código LaTeX listo para pegar, en español, sin explicaciones. Al editar, devuelve solo el bloque modificado y conserva los comentarios `%` y lo existente.
**Meta:** máxima información, mínimo espacio, claridad. Prioridad: 1) corrección matemática 2) compactación 3) orden lógico 4) estética.

## Entorno (ya cargado por `confi.tex`; no redefinir ni añadir paquetes)
- Cada archivo `FMn_Tema.tex`: `\documentclass{article}\input{confi.tex}\begin{document}…\end{document}`.
- Márgenes mínimos (1.5 cm laterales, 1 cm arriba, 0.5 cm abajo), marca de agua de fondo.
- Paquetes: amsmath, amssymb, mathrsfs, enumitem, multicol, cancel, graphicx, paracol, vwcol.
- Macros:
  - `\fmSubSec{T}`: `\subsection` numerada (sec.sub); reinicia el contador de items.
  - `itemform`: lista con guion magenta `-`. La numeración (sec.sub.item) es invisible y solo sirve para `\ref`.
  - `\magn{u}` → `[u]` · `\lp{}` `\lpn{}` (Laplace) · `\frt{}` `\frtn{}` (Fourier) · `\evalat{expr}{cond}` · `\combinat{n}{k}` · `\arcsec \arccsc \arccot`.
  - `\imgph[ancho]{nombre}{descripción}`: caja placeholder si falta `src/AM/nombre.png`.
  - `Figure`: entorno anti-corte para figuras.

## Estructura
```latex
\section{Tema}
\begin{multicols}{2}
\fmSubSec{Subtema}
\begin{itemform}
\item \textbf{Corta}: $y=mx+b$
\item \textbf{Par}:
$$A=\dfrac{a}{b} \quad B=\sqrt{c}$$
\end{itemform}
\end{multicols}
\newpage
```
- `\section` + `multicols{2}`. Una sección ≈ una página; `\newpage` solo al cerrar sección; `\columnbreak` solo para balancear columnas.
- Sin numeración: `\subsection*`/`\subsubsection*` para bloques auxiliares (DC, AC, conexiones); `\textbf{Título}` inline para agrupar sin encabezado.
- Listas secundarias: `\begin{itemize}[leftmargin=*,noitemsep,topsep=0pt]` (igual para `enumerate`).
- Tablas: `tabular` con `|l|c|l|` y `\hline`. Tablas de transformadas: `$$\begin{aligned}…\end{aligned}$$`. Casos: `cases` o `\left\{\begin{aligned}`.
- Pares de items cortos: `multicols{2}` anidado (dentro o fuera de `itemform`) con `\columnbreak` entre items.

## Compactación (en orden de prioridad)
1. Fórmula corta → inline tras `:`. Larga o varias → `$$…$$` unidas con `\quad`.
2. Sin líneas en blanco entre items ni antes de `$$` (cada una añade espacio vertical).
3. Evitar el patrón "etiqueta: / `$$f$$` / etiqueta: / `$$g$$`" (como en Bode): agrupar con `\quad` o en `aligned`.
4. Evitar `align` numerado; usar `align*` o `aligned`.
5. Texto telegráfico: fórmula + condición/variables en una línea; sin demostraciones.
6. Imágenes: `\includegraphics[width=0.4–0.9\linewidth]{src/FMn/Nombre.png}`. Usar `\linewidth` (dentro de `multicols`, `\textwidth` es el ancho de página completo). Si la imagen no existe aún, `\imgph`.

## Notación
- `\dfrac` en display y fracciones inline que quepan; `\frac` en sub/superíndices.
- Unidades siempre con `\magn{}`; texto en modo math con `\text{}`.
- Fasores `V\angle\theta`; unidad imaginaria `j`; ángulos `^\circ`; dB: `20\log_{10}`.
- Nunca redefinir macros de `confi.tex` con `\newcommand`.

## Errores a evitar
- Falta `\end{multicols}` o `\columnbreak` fuera de `multicols`.
- `\fmSubSec` dentro de `itemform`; `\item` vacío; `\\` final suelto.
- Integrales sin `dt`/`dx`; signos o variables sin verificar (marcar duda con `% VERIFICAR`).
- Rutas de imagen inexistentes sin `\imgph`.

## Checklist
`multicols{2}` cerrado · `\fmSubSec` + `itemform` · `\magn` en unidades · pares con `\quad`/subcolumnas · sin espacios extra · `\newpage` justificado · fórmulas verificadas.