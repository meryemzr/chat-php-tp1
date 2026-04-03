FROM php:8.2-cli

WORKDIR /app

COPY . /app

# Installer mysqli pour la BDD
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Exposer le port
EXPOSE 3000

# Lancer le serveur PHP intégré
CMD ["php", "-S", "0.0.0.0:3000", "-t", "/app"]
