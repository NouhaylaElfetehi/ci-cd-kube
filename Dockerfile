# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Copier les fichiers de l'application
COPY src/ /app/
COPY requirements.txt /app/

# Installer les dépendances
RUN pip install -r requirements.txt

# Exposer le port 8080
EXPOSE 8080

# Commande pour démarrer l'application
CMD ["python", "app.py"]
 