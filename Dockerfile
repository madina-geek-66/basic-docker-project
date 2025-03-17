# Utiliser une image Python officielle comme image de base
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier du serveur dans le conteneur
COPY app/server.py .

# Exposer le port sur lequel le serveur s'exécutera
EXPOSE 8000

# Commande pour démarrer le serveur
CMD ["python", "server.py"]