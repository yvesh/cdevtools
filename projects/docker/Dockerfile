FROM phusion/baseimage:0.9.15
MAINTAINER Yves Hoppe <yves@compojoom.com>

# Set correct environment variables.
ENV HOME /root

# Regenerate SSH host keys. baseimage-docker does not contain any, so you
# have to do that yourself. You may also comment out this instruction; the
# init system will auto-generate one during boot.
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

# update the package sources
RUN apt-get update

# we use the enviroment variable to stop debconf from asking questions..
RUN DEBIAN_FRONTEND='noninteractive' apt-get install -y mysql-server apache2 php5 php5-cli php5-mysql php-pear mysql-client php5-xdebug php5-curl curl php5-mcrypt pear-channels wget unzip git

# Install phpmyadmin
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install phpmyadmin

# package install is finished, clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install phing
RUN pear config-set preferred_state alpha
# RUN pear channel-discover pear.phing.info
RUN pear install --alldeps PHP_CodeSniffer-1.5.3
RUN pear install --alldeps phing/phing
RUN pear install --alldeps Console_CommandLine
# RUN pear install --alldeps PHP_CodeSniffer 

# Apache conf
ADD apache2.conf /etc/apache2/apache2.conf

# Add our compojoom www-data user (needs uid / gid 1000)
RUN useradd -s /usr/sbin/nologin -d /projects/www compojoom

# Update apache envvars
ADD envvars /etc/apache2/envvars

# Apache site conf
ADD 000-default.conf /etc/apache2/sites-available/000-default.conf

# php.ini Apache
ADD php.ini-apache /etc/php5/apache2/php.ini

# phpmyadmin Apache
ADD phpmyadmin.conf /etc/apache2/conf-enabled/phpmyadmin.conf
ADD phpmyadmin.config.inc /etc/phpmyadmin/config.inc.php

# install service files for runit
ADD mysqld.service /etc/service/mysqld/run
ADD apache2.service /etc/service/apache2/run

RUN chmod 777 /etc/service/mysqld/run
RUN chmod 777 /etc/service/apache2/run

# clean up tmp files (we don't need them for the image)
RUN rm -rf /tmp/* /var/tmp/*

# Coding standards
RUN git clone https://github.com/joomla/coding-standards.git `pear config-get php_dir`/PHP/CodeSniffer/Standards/Joomla

# Create mount directory for http
VOLUME ['/projects/www']

# expose Apache
EXPOSE 80

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
