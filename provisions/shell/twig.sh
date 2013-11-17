#!/bin/bash

###################
# Twig C extension
###################

sudo pear channel-discover pear.twig-project.org
sudo pear install twig/CTwig
sudo echo "extension=twig.so" | sudo tee -a /etc/php5/conf.d/twig.ini