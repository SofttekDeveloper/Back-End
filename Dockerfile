FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libpq-dev \
    libzip-dev \
    libonig-dev \
    libxml2-dev \
    curl \
    zip \
    && docker-php-ext-install pdo pdo_mysql mbstring zip exif pcntl bcmath opcache

COPY --from=composer:2.6 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

RUN git clone https://github.com/JCUSDeveloper/APIBACKEND.git APIBACKEND \
    && cd APIBACKEND \
    && composer install \
    && cp .env.example .env 

RUN chown -R www-data:www-data /var/www/html/APIBACKEND \
    && chmod -R 775 /var/www/html/APIBACKEND/storage /var/www/html/APIBACKEND/bootstrap/cache

WORKDIR /var/www/html/APIBACKEND

EXPOSE 8000

CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]