FROM php:8.2-apache

# Installer extensions nécessaires
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Copier les fichiers dans Apache
COPY . /var/www/html/

# Donner les permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
