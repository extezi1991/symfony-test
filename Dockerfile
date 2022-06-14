FROM php:7.2-apache
WORKDIR /var/www/html
COPY ./symfony5 /var/www/html/symfony5
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf
RUN chown -R www-data:www-data /var/www/html/symfony5 && chmod -R 755 /var/www/html/symfony5 && a2ensite 000-default.conf
EXPOSE 80

