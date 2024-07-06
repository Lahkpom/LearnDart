Una aplicación de consola que registrará tareas en nuestro sistema

Estructura
3 folder

models (Clases y objetos)
controllers (lógica de negocios)
utilities (bloques de código para llamar de forma externa que modularizan tareas recurrentes)

Cada uno se va a encangar de almacenar archivos con tareas especìficas para que funciones la aplicación

models
3 Clases
Proyect => abstracta
Task => tareas, implementa proyectos
Subtask => En caso de haber subtareas, hereda de Tareas e implementa proyectos

Basicamente las tareas almacenan subtareas

Creamos un enum con el estado de cada tarea

Creamos un archivo txt para almacenar nuestras tareas (Como si fuera la base de datos)




controllers

agregamos un contrtolador para cada función que deba realizar nuestro programa

