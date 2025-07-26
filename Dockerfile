FROM ubuntu:latest

RUN apt update && apt install apache2 -y

# Create target directory manually and add the HTML file
RUN mkdir -p /var/www/html
ADD index.html /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
