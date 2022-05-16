FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
ENV HOSTNAME=10.152.183.19
ENV ROOT_USERNAME=root
ENV ROOT_PASSWORD=devtronlamp
ENV DB_NAME=my_database
RUN apt update -y && apt install apt-utils apache2 php libapache2-mod-php  php-curl php-xml php-memcached php-mysql net-tools -y
WORKDIR /var/www/html
COPY . .
CMD ["apache2ctl","-D","FOREGROUND"]
EXPOSE 80

