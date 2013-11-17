Symfony Vagrant bootstrap
=========================

## Prerequisites

* Get Vagrant http://www.vagrantup.com/
* Get Virtual Box https://www.virtualbox.org/

## Start
It will take you only few minutes to get started

    git clone https://github.com/konradpodgorski/symfony-vagrant.git

    cd symfony-vagrant

### New symfony project

    git clone https://github.com/symfony/symfony-standard localhost

    curl -sS https://getcomposer.org/installer | php

    composer.phar install -d localhost

### Import existing project

    git clone PROJECT_REPOSITORY_URL localhost

    curl -sS https://getcomposer.org/installer | php

    composer.phar install -d localhost
