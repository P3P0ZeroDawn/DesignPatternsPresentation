# Patrones de Diseño Interpreter y State

Ejemplos en Ruby que demuestran patrones de diseño: Interpreter y State.

**Patrones implementados**
- Interpreter: [EjemploInterpreter.rb](EjemploInterpreter.rb)
- State: [EjemploState.rb](EjemploState.rb)

**Descripción y problema que resuelve cada ejemplo**
- Interpreter — Mini motor de evaluación de reglas de negocio:
  - Ejemplo pensado como un pequeño intérprete para definir y evaluar reglas de negocio de forma extensible y fácilmente modificable.
- State — Gestión del ciclo de vida de un estudiante en prácticas profesionales:
  - Muestra cómo encapsular comportamientos dependientes del estado (Aspirante, Practicante, Aprobado, Baja) y cómo transicionar entre ellos sin usar condicionales dispersos. Incluye acciones como `seleccionar_proyecto`, `entregar_reporte`, `solicitar_baja` y `solicitar_inscripcion`.

**Requisitos**
- Ruby: >= 2.7

**Instalación de Ruby**
- Windows (RubyInstaller): descarga e instala desde https://rubyinstaller.org y sigue las instrucciones del instalador. Después abre PowerShell y verifica la instalación:

```powershell
ruby -v
```

- macOS (Homebrew):

```bash
brew install ruby
```

- Linux (Debian/Ubuntu):

```bash
sudo apt update
sudo apt install ruby-full
```

- Alternativa (todas las plataformas): usa `rbenv` o `rvm` si necesitas gestionar varias versiones de Ruby.

Después de instalar, verifica con:

```bash
ruby -v
```

**Clonar el repositorio y ejecutar desde cero**

Sigue estos pasos si partes de la página del proyecto y quieres ejecutar los ejemplos en tu máquina. Repositorio público:

`https://github.com/P3P0ZeroDawn/DesignPatternsPresentation.git`

- 1) Clonar el repositorio:

```bash
git clone https://github.com/P3P0ZeroDawn/DesignPatternsPresentation.git
```

- 2) Entrar al directorio del proyecto:

```bash
cd DesignPatternsPresentation
```

- 3) Verificar que los archivos están presentes:

```bash
ls
# o en PowerShell
Get-ChildItem
```

- 4) Verificar que Ruby está instalado y cumple la versión mínima:

```bash
ruby -v
```

- 5) Ejecutar los ejemplos:

```bash
ruby EjemploInterpreter.rb
```
```bash
ruby EjemploState.rb
```

**Dependencias**
- Ninguna (no requiere gems externos). Basta con tener Ruby instalado.

**Notas**
- Los ejemplos están pensados para correr directamente desde la línea de comandos.
- Si no tienes `git`, instálalo desde https://git-scm.com/downloads.
- En Windows puedes usar PowerShell o Git Bash; en macOS/Linux usa la terminal nativa.

**Autores**
- Pedro Enrique Sánchez Rodríguez
- César Daniel Ortega Castillejos

**Experiencia Educativa**
- Principios de Diseño de Software
