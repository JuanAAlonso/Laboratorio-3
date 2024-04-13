# Laboratorio-3
Por Juan David Alonso, Julián Pinzón y Rodrigo Vera

## Descripcion General
>Este repositorio está destinado a familiarizarse con el sistema operativo Ubuntu y sus comandos básicos, así como a proporcionar una introducción al desarrollo de ROS (Robot Operating System) en MATLAB y Linux. La práctica principal se centra en aprender a utilizar el sistema operativo Ubuntu y sus comandos esenciales, además de explorar cómo desarrollar aplicaciones de robótica utilizando ROS en MATLAB y Linux junto con el concepto de terminales e interfaces.
## Familiarización con 10 comandos basicos 
"pwd" imprime la ubicación actual en el sistema de archivos, como /usr/share o /home/matthew, útil si olvidas dónde estás. Ejemplo de uso: Si estás en el directorio /home/usuario y escribes "pwd", la salida será "/home/usuario", mostrando tu ubicación actual en el sistema de archivos.

"ls" lista los archivos y directorios en la ubicación actual, y también puede listar el contenido de un directorio específico al agregar su ubicación después del comando, por ejemplo: "ls etc/python". Ejemplo de uso: Si estás en el directorio /home/usuario y escribes "ls", se listarán todos los archivos y directorios en ese directorio.

"cd" cambia tu directorio de trabajo al que especifiques, por ejemplo, "cd /var/log" te lleva al directorio de registros contenido en el directorio "var". Ejemplo de uso: Si estás en el directorio /home/usuario y escribes "cd Documentos", cambiarás tu directorio de trabajo al directorio "Documentos" dentro de tu carpeta de usuario.

"touch" crea un archivo vacío con el nombre que especifiques. Crea un archivo y luego usa "cd" para confirmar que se creó en tu directorio actual, por ejemplo: "touch examplefile". Ejemplo de uso: Si escribes "touch newfile.txt", se creará un archivo vacío llamado "newfile.txt" en tu directorio actual.

"rm" elimina un archivo. Para borrar el archivo que acabas de crear, escribe: "rm examplefile". Ejemplo de uso: Si tienes un archivo llamado "oldfile.txt" en tu directorio actual y deseas eliminarlo, puedes escribir "rm oldfile.txt".

"mkdir" crea un directorio. Crea un directorio y luego usa "cd" para confirmar que se creó en tu directorio actual, por ejemplo: "mkdir exampledirectory". Ejemplo de uso: Si escribes "mkdir newfolder", se creará un nuevo directorio llamado "newfolder" en tu directorio actual.

"rmdir" elimina un directorio. Para borrar el directorio que acabas de crear, escribe: "rmdir exampledirectory". Ejemplo de uso: Si deseas eliminar el directorio "oldfolder" que está vacío en tu directorio actual, puedes escribir "rmdir oldfolder".

"mv" mueve un archivo o directorio que especifiques a la ubicación que especifiques, también se usa para cambiar el nombre de archivos y directorios. Por ejemplo, mueve un archivo llamado "sample" desde tu directorio de trabajo actual a un subdirectorio existente llamado "stuff", cambiando su nombre a "example": "mv sample stuff/example". Ejemplo de uso: Si tienes un archivo llamado "file.txt" en tu directorio actual y deseas moverlo al directorio "documents" dentro de tu directorio de usuario, puedes escribir "mv file.txt ~/documents/".

"cp" copia un archivo o directorio que especifiques a la ubicación y nombre de archivo nuevos que especifiques. Por ejemplo, "cp sample stuff/example". La diferencia con "mv" es que con "cp" el archivo original permanece. Ejemplo de uso: Si deseas hacer una copia del archivo "report.txt" en tu directorio actual y guardarlo como "backup_report.txt" en el mismo directorio, puedes escribir "cp report.txt backup_report.txt".

"man" muestra la página de manual del comando que especifiques, revelando opciones adicionales para un uso avanzado. Cada comando mencionado puede hacer mucho más de lo que has aprendido hasta ahora, y la mayoría tiene opciones disponibles para modificar su comportamiento predeterminado. Por ejemplo, al ingresar "man ls" aprenderás sobre opciones útiles como "ls -al", que lista no solo nombres de archivos y directorios, sino también metadatos útiles sobre cada uno. Ejemplo de uso: Si deseas aprender más sobre el comando "ls", puedes escribir "man ls" y se mostrará la página de manual con información detallada sobre cómo usar el comando "ls" y sus diferentes opciones.
##Conexíon de ROS con Matlab
