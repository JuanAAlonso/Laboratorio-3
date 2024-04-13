# Laboratorio-3
Por Juan David Alonso, Julián Pinzón y Rodrigo Vera

## Descripcion General
>Este repositorio está destinado a familiarizarse con el sistema operativo Ubuntu y sus comandos básicos, así como a proporcionar una introducción al desarrollo de ROS (Robot Operating System) en MATLAB y Linux. La práctica principal se centra en aprender a utilizar el sistema operativo Ubuntu y sus comandos esenciales, además de explorar cómo desarrollar aplicaciones de robótica utilizando ROS en MATLAB y Linux junto con el concepto de terminales e interfaces.


## Familiarización con 10 comandos basicos 

Las instrucciones básicas de Linux son comandos fundamentales para la navegación y manipulación de archivos en el sistema operativo.

El primer comando sugerido es "pwd", este imprime la ubicación actual de un archivo dentro del sistema, la utilidad de este comando se da para conocer o recordar directorios donde se ubican o desarrollan proyectos. Ejemplo:


"ls" por su parte, lista los archivos y directorios en la ubicación actual, y también puede listar el contenido de un directorio específico al agregar su ubicación después del comando. Ejemplo: 


"cd" cambia el directorio de trabajo al que se especifique, esta acción te lleva al directorio y registra todo el contenido en el directorio. Ejemplo:


"touch" es el comando por el cual se crea un archivo vacío con un nombre especifico y tipo definido. Despues de crear un archivo, es posible usar "cd" para confirmar la creación. Ejemplo:


El siguiente comando "rm" sirve para eliminar un archivo. Para borrar un archivo es necesario especificar el nombre del archivo incluyendo su tipo. Ejemplo:


"mkdir" por su parte, es un comando que sirve para crear un directorio para almacenar y organizar informaicón. Ejemplo:


De manera analoga el siguiente comando "rmdir" sirve para eliminar un directorio. Ejemplo:


La instrucción "mv" mueve un archivo o directorio especifico hacia otra ubicación determinada, también se puede usar para cambiar el nombre de archivos y directorios. Ejemplo:


Seguidamente "cp" copia un archivo o directorio hacia una ubicación y allí permite nombrar los archivos nuevos. La diferencia con "mv" es que con "cp" el archivo original permanece. Ejemplo:


Por ultimo "man" muestra la página de manual del comando que especifiques, ayudando con las opciones adicionales para un uso avanzado. Cada comando mencionado tiene opciones disponibles adicionales para modificar su comportamiento predeterminado. Ejemplo:

## Conexíon de ROS con Matlab
* Con Linux se lanzó 2 terminales. En la primera terminal se escribio el comando roscore para iniciar el modo maestro.
* En la segunda terminal escribió rosrun turtlesim turtlesim node
* Se lanzó  una instancia de Matlab en Linux.
* Se creo un script con el siguiente código:
* Se Ejecutó las tres secciones del script y se observaró los resultados con la pose de la tortuga.
* Finalmente en cuanto a como finalizar un nodo maestro (master node) en MATLAB, estando dentro de Ubuntu con ROS, se debe utilizar el siguiente comando en la terminal:
```bash
rosnode kill /rosout
```

