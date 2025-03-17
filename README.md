## Projet DevOps - Serveur HTTP Minimaliste avec Docker
Ce projet met en place un serveur HTTP basique en Python, conteneurisé avec Docker.
# Structure du projet
basic-docker-project/
├── app/
│   ├── server.py
├── Dockerfile
├── docker-compose.yml
└── README.md

Prérequis

Docker
Docker Compose (optionnel)

Exécution du projet
# Méthode 1 : Utilisation de Docker
Pour construire l'image Docker : docker build -t simple-http-server .
Pour exécuter le conteneur : docker run -p 8000:8000 simple-http-server


# Méthode 2 : Utilisation de Docker Compose
Pour construire et démarrer le conteneur avec Docker Compose : docker-compose up
Pour construire et démarrer le conteneur en arrière-plan : docker-compose up -d
Pour arrêter le conteneur : docker-compose down
Accès au serveur
Une fois le conteneur démarré, le serveur HTTP est accessible à l'adresse suivante : http://localhost:8000
Le serveur renvoie une page HTML simple avec le message "Hello, Docker!".

## Instructions pour DockerHub
Construire et taguer l'image
# Construire l'image
docker build -t simple-http-server .

# Taguer l'image pour DockerHub
docker tag simple-http-server votre-nom-utilisateur/simple-http-server:latest

# Se connecter à DockerHub
docker login
Entrez vos identifiants DockerHub lorsqu'ils vous sont demandés.

# Pousser l'image sur DockerHub
docker push votre-nom-utilisateur/simple-http-server:latest

# Télécharger l'image depuis DockerHub
Pour utiliser l'image déjà publiée :
docker pull votre-nom-utilisateur/simple-http-server:latest
docker run -p 8000:8000 votre-nom-utilisateur/simple-http-server:latest

Remplacez votre-nom-utilisateur par votre nom d'utilisateur DockerHub réel.

## Méthode automatisée (CI/CD)
Ce projet utilise GitHub Actions pour automatiser la construction et le déploiement de l'image Docker sur DockerHub à chaque push sur la branche principale.
Configuration requise

- Créez un dépôt GitHub et poussez votre code.
- Configurez deux secrets dans les paramètres du dépôt GitHub :

    DOCKERHUB_USERNAME : votre nom d'utilisateur DockerHub
    DOCKERHUB_TOKEN : votre token d'accès DockerHub



Le workflow CI/CD est défini dans le fichier .github/workflows/docker-publish.yml.
# Télécharger l'image depuis DockerHub
Pour utiliser l'image déjà publiée :
docker pull votre-nom-utilisateur/simple-http-server:latest
docker run -p 8000:8000 votre-nom-utilisateur/simple-http-server:latest
Remplacez votre-nom-utilisateur par votre nom d'utilisateur DockerHub réel.