const express = require('express'); //Importo Express. Framework para crear servidores en Node.js
const app = express(); //Creando una app express
const port = 3000; //Defino el puerto donde va a escuchar nuestro servidor. Es un puerto común para servidores locales

// Servir archivos estáticos (desde la carpeta 'public'). El navegador puede acceder directamente a lo que está en public
app.use(express.static('public'));

// Ruta principal. Cuando alguien visite el puerto 3000 irá directamente al index
app.get('/', (req, res) => {
  res.sendFile(__dirname + '/public/index.html');
});

// Inicio servidor. Express escucha solicitudes en el puerto 3000, cuando funcione muestra el mensaje en consola
app.listen(port, () => {
  console.log(`Servidor corriendo en http://localhost:${port}`);
});
