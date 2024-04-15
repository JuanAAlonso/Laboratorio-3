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
Para la conexión de ROS con Python se realiza un código en esté mismo lenguaje. Se inicializa con el código dado por el docente: 

```bash
import rospy  
from geometry_msgs.msg import Twist
from turtlesim.srv import TeleportAbsolute, Teleport Relative
import termios, sys, os
from numpy import pi
```
Aqui se encuentra la libreria rospy, para comunicarse con ROS desde python; Twist, para enviarle comando a turtlesim; sys y os para el uso y manejo del teclado; y por último, Teleport Absoluta para el comando de teletransporte.

Para poder leer el teclado se realiza la siguiente función:
```bash
def get_key():
    fd = sys.stdin.fileno()
    old = termios.tcgetattr(fd)
    new = termios.tcgetattr(fd)
    new[3] = new[3] & ~TERMIOS.ICANON & ~TERMIOS.ECHO
    new[6][TERMIOS.VMIN] = 1
    new[6][TERMIOS.VTIME] = 0
    termios.tcsetattr(fd,TERMIOS.TCSANOW,new)
    c = None
    try:
        key = os.read(fd,1)
    finally:
        termios.tcsetattr(fd,TERMIOS.TCSAFLUSH,old)
    return key
```

Ahora, se inicializa el nodo y se usa el objeto Publisher más Twist para poder enviar el dato y poder cambiar la velocidad de la tortuga:

```bash
rospy.init_node('my_turtle',anonymous=True) 
vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist,queue_size=10)
vel_msg = Twist()
```
Usando un bucle infinito se revisa las presiones del teclado y realizar su función correspondiente:

```bash
while True:
    key = get_key() 
    key = key.decode('utf-8',errors='replace')  
```

Usando un "try" se revisa que tecla se presionó para hacer la función correspóndiente y se publica:

```bash
try:  
    if key.lower() == 'w':
        vel_msg.linear.x = 1
        vel_msg.angular.z = 0

        elif key.lower() == 'a':
        vel_msg.angular.z = pi/4
        vel_msg.linear.x = 0
        ang += pi/4

    elif key.lower() == 'd':
        vel_msg.angular.z = -pi/4
        vel_msg.linear.x = 0
        ang -= pi/4

    elif key.lower() == 's':     
        vel_msg.linear.x = -1
        vel_msg.angular.z = 0

    elif key.lower() == 'q':   
        break

    elif key.lower() == ' ':
        turtle_teleport = rospy.ServiceProxy('turtle1/teleport_absolute',TeleportAbsolute)
        turtle_teleport(5.5,5.5,0)


    elif key.lower() == 'r':
        vel_msg.linear.x = 0       
        vel_msg.angular.z = pi
```

Y por último se tiene el código principal de este script:

```bash
if __name__ == '__main__':
    try:
        rotate()
    except ROSInterruptException:
        pass  
```

Esto da como resultado el movimiento de la tortuga gracias a la conexión con ROS:

  ![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](https://github.com/JuanAAlonso/Laboratorio-3/blob/main/Python.jpg)

## Conclusiones

Existen diferentes formas de conexión con ROS lo que demuestra un programa robusto y flexible. Además de ser de un nivel suficientemente alto para una fácil conexión y uso.
