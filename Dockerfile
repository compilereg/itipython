FROM ubuntu:latest
LABEL maintainer=compiler@aast.edu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install apache2 -y
ADD index.html /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
