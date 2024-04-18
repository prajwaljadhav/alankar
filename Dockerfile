FROM ubuntu/apache2
WORKDIR   /var/www/html
RUN rm index.html
RUN touch index.html
RUN echo "Test page for DAC" > index.html
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

