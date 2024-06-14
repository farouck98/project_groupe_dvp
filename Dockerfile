# Utiliser une image de base Python
FROM python:3.8

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier des dépendances, s'il existe
COPY requirements.txt requirements.txt

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier tous les fichiers de l'application
COPY . .

# Exposer le port utilisé par l'application
EXPOSE 5000

# Démarrer l'application
CMD ["python", "app.py"]
