FROM php:7.1-apache

RUN a2enmod rewrite
#RUN rm -rf /etc/apache2

copy ./run-apache2.sh /usr/local/bin/
run chmod +x /usr/local/bin/run-apache2.sh

COPY public_html/ /var/www/html/
RUN chmod a+rx -R /var/www/html

CMD [ "run-apache2.sh" ]
