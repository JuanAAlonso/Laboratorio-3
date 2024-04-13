# Laboratorio-3
Por Juan David Alonso, Julián Pinzón y Rodrigo Vera

## Descripcion General
>Este repositorio está destinado a familiarizarse con el sistema operativo Ubuntu y sus comandos básicos, así como a proporcionar una introducción al desarrollo de ROS (Robot Operating System) en MATLAB y Linux. La práctica principal se centra en aprender a utilizar el sistema operativo Ubuntu y sus comandos esenciales, además de explorar cómo desarrollar aplicaciones de robótica utilizando ROS en MATLAB y Linux junto con el concepto de terminales e interfaces.


## Familiarización con 10 comandos basicos 

Las instrucciones básicas de Linux son comandos fundamentales para la navegación y manipulación de archivos en el sistema operativo.

![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.]([https://github.com/JuanAAlonso/Laboratorio1-Robtica-Industrial/blob/main/2.%20Diagrama%20de%20flujo/Diagrama%20de%20flujo%20acciones%20del%20robot.png](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/Ejemplo%201-9.JPG))
El primer comando sugerido es "pwd", este imprime la ubicación actual de un archivo dentro del sistema, la utilidad de este comando se da para conocer o recordar directorios donde se ubican o desarrollan proyectos.
"ls" por su parte, lista los archivos y directorios en la ubicación actual, y también puede listar el contenido de un directorio específico al agregar su ubicación después del comando.
"cd" cambia el directorio de trabajo al que se especifique, esta acción te lleva al directorio y registra todo el contenido en el directorio.
"touch" es el comando por el cual se crea un archivo vacío con un nombre especifico y tipo definido. Despues de crear un archivo, es posible usar "cd" para confirmar la creación.
El siguiente comando "rm" sirve para eliminar un archivo. Para borrar un archivo es necesario especificar el nombre del archivo incluyendo su tipo.
"mkdir" por su parte, es un comando que sirve para crear un directorio para almacenar y organizar informaicón.
De manera analoga el siguiente comando "rmdir" sirve para eliminar un directorio.
La instrucción "mv" mueve un archivo o directorio especifico hacia otra ubicación determinada, también se puede usar para cambiar el nombre de archivos y directorios.
Seguidamente "cp" copia un archivo o directorio hacia una ubicación y allí permite nombrar los archivos nuevos. La diferencia con "mv" es que con "cp" el archivo original permanece.
![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.]([https://github.com/JuanAAlonso/Laboratorio1-Robtica-Industrial/blob/main/2.%20Diagrama%20de%20flujo/Diagrama%20de%20flujo%20acciones%20del%20robot.png](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/Ejemplo%2010.JPG))
Por ultimo "man" muestra la página de manual del comando que especifiques, ayudando con las opciones adicionales para un uso avanzado. Cada comando mencionado tiene opciones disponibles adicionales para modificar su comportamiento predeterminado.

## Conexíon de ROS con Matlab
* Con Linux se lanzó 2 terminales. En la primera terminal se escribio el comando `roscore` para iniciar el modo maestro mientras que en la segunda terminal se escribió `rosrun turtlesim turtlesim node`.
  
* Una vez dentro de la instancia de Matlab en Linux, se creo un script con el siguiente código:
  
* Ejecutando las tres secciones del script, fue posible observar los resultados en cuanto a la pose de la tortuga.
  
* Despues, se creo un script adicional en Matlab que permitia suscribirse al tópico de pose de la simulación usando el comando `rossubscriber` junto con otro script donde es posible enviar todos los valores asociados a la pose de turtle1.
  
* Finalmente en cuanto a como finalizar un nodo maestro (master node) en MATLAB, estando dentro de Ubuntu con ROS, se debe utilizar el siguiente comando en la terminal:
```bash
rosnode kill /rosout
```

