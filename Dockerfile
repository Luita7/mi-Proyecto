# Usamos una imagen base de Node.js, que es ligera y contiene todo lo necesario para ejecutar Node.js
FROM node:18-alpine

# Creamos una carpeta en el contenedor donde trabajaremos
WORKDIR /app

# Copiamos el archivo package.json (y otros que puedan ser necesarios más adelante)
COPY package.json ./

# Instalamos las dependencias que hemos definido en package.json (como express)
RUN npm install

# Copiamos todo el contenido del proyecto (nuestros archivos) al contenedor
COPY . .

# Exponemos el puerto 3000, que es el que usamos en nuestro servidor (puede ser otro si elegimos uno diferente)
EXPOSE 3000

# Finalmente, le decimos a Docker cómo ejecutar el servidor de nuestra app
CMD ["node", "server.js"]
