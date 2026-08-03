FROM node:18-alpine

WORKDIR /app

# 1. Aprovechar la caché de capas de Docker
COPY package*.json ./
RUN npm install

# 2. Copiar el resto del código en una sola línea
COPY . .

EXPOSE 3000

CMD ["node", "server.js"]