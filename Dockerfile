FROM ubuntu:16.04 
MAINTAINER hwa484848@naver.com
LABEL purpose="Hands On Lab"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash","-c","echo Welcome to docker webpage!!! >> test.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]
