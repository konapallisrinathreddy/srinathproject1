FROM ubuntu
RUN apt-get update && apt-get install -y apt-utils apache2
# Copy HTML files to the Apache default directory
COPY ./var/www/html/ /var/www/html/

# Start Apache in the foreground
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]

