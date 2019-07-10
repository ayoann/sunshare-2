# Récupération d'une image de node js
FROM node:10-alpine

# Déclaration de variables d'environnements
ENV HOST=0.0.0.0
ENV PORT=3000

# Création d'un dossier "project" qui contient
# un sous dossier "app" à la racine de notre serveur
RUN mkdir -p /sunshare/app

# On copie le contenu de notre dossier app
# (en local) vers le container
COPY . /sunshare/app

# On copie les fichiers package.json
# (en local) vers le container
COPY package.json /sunshare
COPY package-lock.json /sunshare
COPY nuxt.config.js /sunshare

# Cette commande indique que notre dossier
# par défaut est le dossier de project
WORKDIR /sunshare

# On expose notre port par defaut
EXPOSE $PORT

# On installe les dépendances Node JS
RUN npm install

# Cette commande permet de lancer la commande "start"
# de notre fichier package.json
CMD ["npm", "start", "dev"]