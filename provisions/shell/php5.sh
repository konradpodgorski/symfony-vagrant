#!/bin/bash

sudo apt-get install -y php5 php5-fpm php-pear php5-common php5-mcrypt php5-mysql php5-cli php5-gd php5-intl php5-curl php5-dev

# copy config files
sudo cp /vagrant/provisions/shell/etc/php5/cli/php.ini /etc/php5/cli/
sudo cp /vagrant/provisions/shell/etc/php5/fpm/php.ini /etc/php5/fpm/
sudo cp /vagrant/provisions/shell/etc/php5/fpm/pool.d/www.conf /etc/php5/fpm/pool.d/

sudo service php5-fpm restart
