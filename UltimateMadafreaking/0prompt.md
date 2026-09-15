# Guía de Formato para IA - Ultimate Madafreaking Formulary

##  Propósito
Este documento establece las reglas y convenciones para que la IA genere contenido optimizado en LaTeX para el formulario, priorizando **densidad de información** y **eficiencia de espacio** para maximizar contenido por página.

---

##  Principios Fundamentales

### 1. **Prioridad: UNA PÁGINA = UNA SECCIÓN**
- Cada sección debe caber idealmente en **una sola página**
- Usar optimizaciones de espacio agresivas antes de crear nueva página
- Combinar ecuaciones relacionadas en una sola línea con `\quad` cuando sea posible

### 2. **Jerarquía de Estructuras**
```latex
\section{Nombre}                    % Título principal (azul grande)
\begin{multicols}{2}                % SIEMPRE usar dos columnas
  \fmSubSec{Subsección}            % Subsección numerada (magenta)
  \subsubsection*{Sin número}       % Subsección no numerada
  \begin{itemform}                  % Lista con numeración automática
    \item Contenido                 % Items numerados (magenta)
  \end{itemform}
\end{multicols}
```

---

##  Comandos Personalizados Disponibles

### Comandos Definidos en `confi.tex`
```latex
\magn{unidad}              % Unidades físicas: \magn{m/s} → [m/s]
\lp{f(t)}                  % Transformada de Laplace
\lpn{F(s)}                 % Transformada inversa de Laplace
\frt{f(t)}                 % Transformada de Fourier
\frtn{F(\omega)}           % Transformada inversa de Fourier
\evalat{expr}{condición}   % Evaluar en: \evalat{v=gt}{t=0}
\combinat{n}{k}            % Combinatoria: C(n,k)
\arcsec, \arccsc, \arccot  % Funciones inversas
```

### Sistema de Numeración Automática
```latex
\fmSubSec{Título}          % Incrementa contador de subsección
\begin{itemform}           % Inicia lista con numeración (section.subsec.item)
  \item Fórmula            % Auto-numerado como (3.2.1)
\end{itemform}
```

---

##  Optimización de Espacio (Crítico)

### ✅ Técnicas de Compactación

#### 1. **Combinar Ecuaciones Relacionadas**
```latex
% ❌ EVITAR (desperdicia espacio vertical)
\item Campo eléctrico:
$$\vec{E} = k\frac{q}{r^2}\hat{r}$$
\item Campo magnético:
$$\vec{B} = \frac{\mu_0 I}{2\pi r}$$

% ✅ PREFERIR (compacto)
\item Campos:
$$\vec{E} = k\frac{q}{r^2}\hat{r} \quad \vec{B} = \frac{\mu_0 I}{2\pi r}$$
```

#### 2. **Usar Subccolumnas para Items Cortos**
```latex
\begin{multicols}{2}      % Columnas dentro de columnas
\begin{itemform}
\item \textbf{Absorción}:
$$P = \frac{I}{c}$$
\columnbreak
\item \textbf{Reflexión}:
$$P = \frac{2I}{c}$$
\end{itemform}
\end{multicols}
```

#### 3. **Consolidar Ecuaciones con `\quad`**
```latex
% ❌ Separadas (2 líneas)
$$a^2 + b^2 = c^2$$
$$\sin^2\theta + \cos^2\theta = 1$$

% ✅ Unidas (1 línea)
$$a^2 + b^2 = c^2 \quad \sin^2\theta + \cos^2\theta = 1$$
```

#### 4. **Agrupar Definiciones con Título**
```latex
\textbf{Potenciales}    % Título inline sin subsección
\begin{itemform}
  \item \textbf{Puntual}: $V=k\dfrac{q}{r}$
  \item \textbf{Lineal}: $\Delta V = Ed$
\end{itemform}
```

---

##  Convenciones de Escritura

### Fórmulas Matemáticas
```latex
% Delimitadores
$$...$$                    % Ecuaciones display (centradas)
$...$                      % Inline (dentro del texto)

% Vectores
\vec{v}                    % Notación de vector
\mathbf{v}                 % Vector en negrita (menos común)

% Fracciones
\dfrac{a}{b}              % Fracción display (grande)
\frac{a}{b}               % Fracción inline (pequeña)

% Derivadas parciales
\frac{\partial f}{\partial x}
\nabla \times \vec{F}      % Rotacional
\nabla \cdot \vec{F}       % Divergencia
\nabla^2 f                 % Laplaciano
```

### Unidades y Magnitudes
```latex
% SIEMPRE usar el comando \magn
\magn{N}                   % Newtons
\magn{kg\cdot\dfrac{m}{s^2}}
\magn{\dfrac{V}{m}}
```

### Texto Especial
```latex
\textbf{Negrita}           % Para énfasis
\textit{Cursiva}           % Para variables de texto
\text{texto normal}        % Dentro de ecuaciones
```

---

##  Estructura de Secciones

### Plantilla Estándar
```latex
\section{Título Principal}
\begin{multicols}{2}

\fmSubSec{Primera Subsección}
\begin{itemform}
\item \textbf{Concepto 1}:
$$ecuación_1 \quad ecuación_2$$

\item \textbf{Concepto 2}:
$$ecuación_3$$
\end{itemform}

\subsubsection*{Subtítulo Sin Numeración}
\begin{itemform}
\item Contenido...
\end{itemform}

\columnbreak  % Cambio de columna manual (solo si necesario)

\fmSubSec{Segunda Subsección}
% ... contenido ...

\end{multicols}
\newpage      % Solo cuando sea absolutamente necesario
```

### Items Especiales
```latex
% Items con multicols internas
\begin{multicols}{2}
\begin{itemform}
\item Izquierda
\columnbreak
\item Derecha
\end{itemform}
\end{multicols}

% Items sin numeración (dentro de subsección no numerada)
\begin{itemize}[leftmargin=*,noitemsep,topsep=0pt]
\item Sin numeración
\item Compacto
\end{itemize}
```

---

## ⚡ Optimización de Tokens para IA

### Principios de Eficiencia

1. **Batch Multiple Operations**: Usar `multi_replace_string_in_file` para múltiples ediciones
2. **Contexto Mínimo Suficiente**: Incluir 3-5 líneas antes/después en reemplazos
3. **Lectura Estratégica**: Leer rangos específicos, no archivos completos
4. **Búsquedas Paralelas**: Combinar grep/semantic searches cuando sea posible

### Patrón de Edición Eficiente
```markdown
1. grep_search para localizar sección exacta
2. read_file con rango específico (startLine, endLine)
3. multi_replace_string_in_file con todos los cambios juntos
4. get_errors para validar (opcional)
```

---

##  Casos de Uso Comunes

### Agregar Nueva Subsección
```latex
\fmSubSec{Nuevo Tema}
\begin{itemform}
\item \textbf{Fórmula 1}:
$$f(x) = ax^2 + bx + c \quad \magn{unidad}$$

\item \textbf{Fórmula 2}:
$$g(x) = \sin(x) \quad h(x) = \cos(x)$$
\end{itemform}
```

### Agregar Sección con Imagen
```latex
\includegraphics[width=0.8\linewidth]{src/imagen.png}
```

### Ecuaciones con Casos
```latex
\item \textbf{Por casos}:
$$
f(x) = \begin{cases}
x^2 & x \geq 0 \\
-x^2 & x < 0
\end{cases}
$$
```

### Matrices y Determinantes
```latex
% Matriz
$$\begin{pmatrix} a & b \\ c & d \end{pmatrix}$$

% Determinante
$$\begin{vmatrix} a & b \\ c & d \end{vmatrix}$$
```

---

## ⚠️ Errores Comunes a EVITAR

### ❌ NO HACER
```latex
% 1. NO usar \newcommand si ya está en confi.tex
\newcommand{\magn}[1]{\left[#1 \right]}  % ¡Ya existe!

% 2. NO desperdiciar espacio vertical
\item Título

$$ecuación$$

% 3. NO usar saltos de línea innecesarios entre items
\item A

\item B  % ❌ Línea en blanco innecesaria

% 4. NO separar ecuaciones que pueden ir juntas
$$E = mc^2$$
$$F = ma$$  % ¡Mejor: E = mc^2 \quad F = ma

% 5. NO olvidar cerrar multicols
\begin{multicols}{2}
...
% ❌ Falta \end{multicols}
```

### ✅ HACER
```latex
% 1. Usar comandos existentes
\magn{kg}  % ✓

% 2. Compactar contenido
\item Título
$$ecuación$$

% 3. Sin espacios extras
\item A
\item B

% 4. Combinar ecuaciones
$$E = mc^2 \quad F = ma$$

% 5. Cerrar estructuras
\begin{multicols}{2}
...
\end{multicols}  % ✓
```

---

##  Checklist de Validación

Antes de finalizar cualquier contenido, verificar:

- [ ] ¿Está en `\begin{multicols}{2}...\end{multicols}`?
- [ ] ¿Las subsecciones usan `\fmSubSec{}`?
- [ ] ¿Los items están en `\begin{itemform}...\end{itemform}`?
- [ ] ¿Las unidades usan `\magn{}`?
- [ ] ¿Se combinaron ecuaciones relacionadas con `\quad`?
- [ ] ¿Se usaron subcolumnas para items cortos?
- [ ] ¿El contenido cabe en una página o está justificado el `\newpage`?
- [ ] ¿Se eliminaron espacios verticales innecesarios?
- [ ] ¿Las fórmulas son correctas y consistentes?

---

##  Ejemplos de Optimización Real

### Antes (Ineficiente)
```latex
\section{Ondas}
\begin{multicols}{2}
\fmSubSec{Reflexión}
\begin{itemform}
\item Ley de Snell:
$$n_1\sin\theta_1 = n_2\sin\theta_2$$
\end{itemform}

\fmSubSec{Ángulo Crítico}
\begin{itemform}
\item Condición:
$$\sin\theta_c = \frac{n_2}{n_1}$$
\end{itemform}
\end{multicols}
```

### Después (Optimizado)
```latex
\section{Ondas}
\begin{multicols}{2}
\fmSubSec{Reflexión y Refracción}
\begin{multicols}{2}
\begin{itemform}
\item \textbf{Ley de Snell}:
$$n_1\sin\theta_1 = n_2\sin\theta_2$$
\columnbreak
\item \textbf{Ángulo crítico}:
$$\sin\theta_c = \frac{n_2}{n_1}$$
\end{itemform}
\end{multicols}
\end{multicols}
```

**Resultado**: De 2 subsecciones a 1, con subcolumnas. Ahorra ~4 líneas.

---

##  Workflow Recomendado para IA

### Al Agregar Contenido Nuevo:
1. **Analizar contexto**: ¿Dónde encaja mejor?
2. **Leer sección existente**: Verificar formato actual
3. **Diseñar estructura**: Planear subsecciones y agrupaciones
4. **Optimizar espacio**: Aplicar técnicas de compactación
5. **Implementar**: Usar multi_replace cuando sea posible
6. **Validar**: Comprobar sintaxis y coherencia

### Al Hacer Correcciones:
1. **Identificar problema**: grep_search o semantic_search
2. **Leer contexto local**: read_file con rango específico
3. **Aplicar cambios**: multi_replace_string_in_file
4. **Verificar errores**: get_errors si es necesario

---

##  Referencias Rápidas

### Símbolos Matemáticos Comunes
```latex
\alpha, \beta, \gamma, \theta, \phi, \omega
\nabla, \partial, \int, \sum, \prod
\infty, \approx, \equiv, \propto
\rightarrow, \Rightarrow, \leftrightarrow
\times, \cdot, \pm, \mp
\leq, \geq, \neq, \in, \subset
```

### Espaciado Manual
```latex
\quad      % Espacio medio
\qquad     % Espacio doble
\,         % Espacio pequeño
\ or \     % Espacio normal
```

### Estructuras Especiales
```latex
\boxed{ecuación}           % Ecuación en caja
\left( ... \right)         % Paréntesis ajustables
\left\{ ... \right\}       % Llaves ajustables
\left[ ... \right]         % Corchetes ajustables
```

---

##  Filosofía del Formulario

> **"Máxima información, mínimo espacio, máxima claridad"**

Este formulario es una herramienta de referencia rápida. Cada página debe ser densa pero organizada, permitiendo encontrar fórmulas rápidamente sin sacrificar legibilidad.

**Prioridades (en orden):**
1. Corrección matemática
2. Optimización de espacio
3. Organización lógica
4. Estética y claridad

---

##  Notas Finales

- Este documento es **prescriptivo**, no descriptivo
- Actualizar este documento cuando se establezcan nuevas convenciones
- La IA debe consultar este documento antes de generar contenido extenso
- En caso de duda, priorizar la compactación sin sacrificar claridad

**Última actualización**: Diciembre 2025
**Mantenido por**: Das Reyes (con asistencia de IA)
