# Base image
FROM debian:bullseye

# Maintainer
MAINTAINER Kouta Okamoto <okakou0512@gmail.com>

# Set non interactive install
ENV DEBIAN_FRONTEND=noninteractive

# Install nodejs
RUN apt-get update && apt-get install -y \
apache2 global

# Install cgi conf file
ADD global-cgi.conf /etc/apache2/conf-available/global-cgi.conf

# Enable cgi
RUN ln -s ../mods-available/cgi.load /etc/apache2/mods-enabled/cgi.load
RUN ln -s ../conf-available/global-cgi.conf /etc/apache2/conf-enabled/global-cgi.conf

# Set run command
CMD [ "apache2ctl", "-D", "FOREGROUND" ]
