FROM php:5.6-apache
RUN docker-php-ext-install gd mysqli
RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load
COPY www/ /www
EXPOSE 8000

