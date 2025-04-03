# 💻 Fundamentos de Ingeniería de Software

## 📂 Descripción del Repositorio
Bienvenidos a este repositorio, creado para llevar a cabo las tareas y proyectos relacionados con la asignatura **Fundamentos de Ingeniería de Software**. Aquí encontrarás documentos, códigos y recursos que nos ayudarán en el aprendizaje y desarrollo de esta disciplina fundamental en el mundo del desarrollo de software.

## 👥 Integrantes del Proyecto
Este repositorio es mantenido por los siguientes estudiantes:

- **Ismael Sallami Moreno**
- **Julián Carrión Tovar**
- **Jesús Rodríguez González**
- **Alicia Ruiz Gómez**

## 📝 Contenido
En este repositorio podrás encontrar:
- Documentación de los conceptos clave de la asignatura.
- Tareas y prácticas asignadas en el curso.
- Códigos y ejemplos prácticos.
- Apuntes y referencias útiles para el estudio.

## 💡 Objetivo
Nuestro objetivo es desarrollar una base sólida en los principios y metodologías de la ingeniería de software, aprendiendo a aplicar buenas prácticas en el diseño, desarrollo y mantenimiento de software.


---

# Estructuración y Uso del Repositorio  FIS/Practica_1

Cada integrante debe editar su respectivo archivo `pn.tex`, ubicado en `Practica1/Capitulos`, donde `n` corresponde a la parte asignada (Como acordamos al inicio). Al inicio la carpeta donde trabajabamos se llamaba LaTeX, ahora esta renonmbrada dentro de Practica_1/ como Practica-1 para usar nombre más adecuados, así que se recomienda mover el contenido de cada parte de cada uno a Practica_1/Practica-1/Capitulos para que todo funcione como se explica a continuación. Al final, se eliminará el directorio LaTeX ya que es extra.

Para generar el PDF con el formato correcto, es necesario compilar el archivo global de cada práctica. Por ejemplo, en `Practica1`, se debe compilar `Practica1.tex` (Cabe destacar que no tiene porque llamarse el fichero .tex como el directorio).

Como alternativa, se puede generar todos los PDFs de una vez ejecutando `make`. Esto creará los archivos con el formato adecuado y los almacenará en la carpeta `PDFs`, evitando la necesidad de acceder al directorio `build` de cada uno.  

---

# Práctica 2 

- Para las tablas: 
  1. Acceder al enlace: https://www.tablesgenerator.com/latex_tables#
  2. Copiar la tabla, añade debajo las dos mini-tablas de propósito y de resumen.
  3. Junta las celdas con la opción que aparece arriba.
  4. Asegurate de que la fuente de la letra (cursiva, gris, etc) es correcto.
  5. Presiona Generate y copia y pega en la ubicación que indico a continuación: Practica_2/Chapters/Descripcion_casos_uso/<el_nombre_de_tu_parte.tex>
  6. Accede al fichero situado en Practica_2/Chapters/Descripcion_casos_uso.tex y haz el input de la manera en la que esta el primero (ruta relativa del archivo main.tex)
  7. Compila y visualiza el contenido en formato pdf.

## Anotaciones importantes.
  Seguramente las tablas se salgan del pdf en las filas de resumen y demás, para ello debes de cambiar el parámetro de "l" a "p{15cm}", he elegido 15 porque suele ser el tamaño estándar del pdf, pero puedes editarlo a tu antojo. Recomiendo que mires la parte de Practica_2/Chapters/Descripcion_casos_uso/Web_Soporte.tex y lo tomes como referencia.

De esta manera creo que el formato del pdf queda mejor. PD: Ismael ;)
