FROM php:8.2-cli

WORKDIR /app

COPY . /app

# Installer mysqli pour la BDD
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Exposer le port
EXPOSE 8080

# Lancer le serveur PHP intégré
CMD ["php", "-S", "0.0.0.0:8080", "-t", "/app"]
