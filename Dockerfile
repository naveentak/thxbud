# Pull base image.
FROM ubuntu:18.04

LABEL maintainer "Naveen Tak"

# Install apache2
RUN apt-get update && \
    apt install apache2 -y && \
    apt-get clean

COPY index.html /var/www/html

#Port expose on host
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

