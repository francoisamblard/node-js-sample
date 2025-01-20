# Utiliser l'image Node.js officielle
FROM node:14

# Définir le répertoire de travail
WORKDIR /usr/src/app

# Copier les fichiers de package et installer les dépendances
COPY package*.json ./
RUN npm install --production

# Copier le reste des fichiers de l'application
COPY . .

# Commande pour démarrer l'application
CMD ["npm", "start"]

