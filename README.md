# Laboratorio-3
Por Juan David Alonso, Julián Pinzón y Rodrigo Vera

## Descripcion General
>Este repositorio está destinado a familiarizarse con el sistema operativo Ubuntu y sus comandos básicos, así como a proporcionar una introducción al desarrollo de ROS (Robot Operating System) en MATLAB y Linux. La práctica principal se centra en aprender a utilizar el sistema operativo Ubuntu y sus comandos esenciales, además de explorar cómo desarrollar aplicaciones de robótica utilizando ROS en MATLAB y Linux junto con el concepto de terminales e interfaces.


## Familiarización con 10 comandos basicos 

Las instrucciones básicas de Linux son comandos fundamentales para la navegación y manipulación de archivos en el sistema operativo.

![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/Ejemplo%201-9.JPG).

El primer comando sugerido es "pwd", este imprime la ubicación actual de un archivo dentro del sistema, la utilidad de este comando se da para conocer o recordar directorios donde se ubican o desarrollan proyectos.

"ls" por su parte, lista los archivos y directorios en la ubicación actual, y también puede listar el contenido de un directorio específico al agregar su ubicación después del comando, en la imagen se ve que despliega las carpetas de descagras, documentos, imagenes entre otras.

"cd" cambia el directorio de trabajo actual hacia al que se especifique, esta acción lleva al directorio y registra todo el contenido y nuevos cambios en el directorio.

"touch" es el comando por el cual se crea un archivo vacío con un nombre especifico y tipo definido. en la imagen se puede ver como se crea con el nombre "archivo_prueba" y de tipo .Txt.

"mkdir" por su parte, es un comando similar pero que sirve para crear un directorio o carpeta para almacenar y organizar información que en nuestro ejemplo llamamos "nuevo_directorio_prueba".

Seguidamente "cp" copia un archivo o directorio hacia una ubicación, sino se especifica lo deja en la carpeta actual y allí permite nombrar los archivos nuevos. en nuestro ejemplo creamos "copia_1" en base a "archivo prueba" y los dejamos en la misma ubicación

La instrucción "mv" mueve un archivo o directorio especifico hacia otra ubicación determinada, también se puede usar para cambiar el nombre de archivos y directorios, la diferencia con "mv" es que con "cp" el archivo original permanece. en la imagen se ve como llevamos "archivo_prueba" hacia "nuevo_directorio_prueba".

El siguiente comando "rm" sirve para eliminar un archivo. Para borrar un archivo es necesario especificar el nombre del archivo incluyendo su tipo.

Y de manera analoga el siguiente comando "rmdir" sirve para eliminar un directorio.

![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/Ejemplo%2010.JPG)

Por ultimo "man" muestra la página de manual del comando que se especifique a continuación, ayudando con las opciones adicionales para un uso avanzado. Cada comando mencionado tiene opciones disponibles adicionales para modificar su comportamiento predeterminado como por ejemplo en al imagen anterior se ve al ejecutar "man ls".

## Conexíon de ROS con Matlab

TurtleSim es una herramienta de simulación que permite controlar una tortuga virtual en un entorno bidimensional. Esto permite desarrollar y probar algoritmos de control y planificación de trayectorias en un entorno simulado antes de implementarlos en robots físicos, todo ello a través de la interfaz de MATLAB para interactuar con el sistema ROS.

![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/Tortuga.JPG)


* Para esto, con Linux se lanzaron 2 terminales. En la primera terminal se escribio el comando `roscore` para iniciar el modo maestro mientras que en la segunda terminal se escribió `rosrun turtlesim turtlesim node`.

  ![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/Terminales.JPG)
  
* Una vez dentro de la instancia de Matlab en Linux, se creo un script con el siguiente código:

    ![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/CodMatlab.JPG)
  
* Ejecutando las tres secciones del script, fue posible observar los resultados en cuanto a la pose de la tortuga donde se creo un script adicional  que permitia suscribirse al tópico de pose de la simulación usando el comando `rossubscriber` junto con otro script donde es posible enviar todos los valores asociados a la pose de turtle1.
  
 ![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/Command.JPG) 
* Finalmente en cuanto a como finalizar un nodo maestro (master node) en MATLAB, estando dentro de Ubuntu con ROS, se debe utilizar el siguiente comando en la terminal:
```bash
rosnode kill /rosout
```

## Utilizando Python
