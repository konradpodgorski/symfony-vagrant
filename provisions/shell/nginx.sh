#!/bin/bash

sudo apt-get install -y nginx-light

# copy config files
sudo cp /vagrant/provisions/shell/etc/nginx/nginx.conf /etc/nginx/
sudo cp /vagrant/provisions/shell/etc/nginx/sites-available/localhost /etc/nginx/sites-available/

# remove default site
sudo rm /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-available/default


# enable our site
sudo ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost

sudo service  nginx restart