FROM ubuntu:latest

RUN apt update && apt install apache2 -y

# Copy your local ./var/www/html folder into the container's web root
ADD ./var/www/html /var/www/html

# Expose port 80 (optional but good practice)
EXPOSE 80

# Start Apache in foreground
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
