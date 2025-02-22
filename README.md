Ejercución del proyecto mi-Proyecto:
mi-Proyecto muestra una página básica de inicio en un entorno dockerizado que ha sido creada usando Node.js y Express.

El proyecto contiene: Dockerfile, docker-compose.yml, package.json, server.js, public y .dockerignore
Public está compuesto a su vez de index, syles y script.

Para llevar a cabo esta práctica vamos a instalar:
    Node.js
    Docker

Pasos a seguir:    
1. Extraemos el zip en nuestro equipo en una ruta de trabajo que tengamos bien ubicada.
2. Abrimos terminal y nos posicionamos directorio que acabamos de extraer 
        cd mi-Proyecto
3. Construimos y arrancamos los contenedores
        docker-compose up --build
4. Entramos en el navegador y escribimos nuestro localhost y el puerto 
        http://localhost:8080/
5. No te olvides de detener los contenedores al finalizar con CTRL+C o usando el siguiente comando:
        docker-compose down 
6. Opcional. Para ejecutar el proyecto sin docker podemos instalar las dependencias con :
        npm install 
    Y luego iniciar el servidor con 
        npm start
