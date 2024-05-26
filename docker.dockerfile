# Usar un tiempo de ejecución oficial de Node.js como imagen principal
FROM node:14 

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app 

# Copiar package.json y package-lock.json al directorio de trabajo
COPY package*.json ./ 

# Instalar las dependencias de la aplicación
RUN npm install

# Copiar el resto del código de la aplicación al directorio de trabajo
COPY . .

# Exponer el puerto en el que se ejecuta la aplicación
EXPOSE 3000 

# Definir el comando para ejecutar la aplicación
CMD [ "npm" , "start" ]
