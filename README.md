Symfony Vagrant bootstrap
=========================
Start developing with Symfony http://symfony.com in a matter of minutes.

## Prerequisites

* Get Vagrant http://www.vagrantup.com/
* Get Virtual Box https://www.virtualbox.org/

## Get Symfony project

It will take you only few minutes to get started

    git clone https://github.com/konradpodgorski/symfony-vagrant.git

    cd symfony-vagrant

### New symfony project

    git clone https://github.com/symfony/symfony-standard localhost

    curl -sS https://getcomposer.org/installer | php

    ./composer.phar install -d localhost

Leave all values default

### Import existing project

    git clone PROJECT_REPOSITORY_URL localhost

    curl -sS https://getcomposer.org/installer | php

    ./composer.phar install -d localhost

## Start Vagrant

In root dir (where Vagrantfile is) run:

    vagrant up

Access website in your browser at

    http://localhost:8080/app_dev.php

Treat localhost directory as your project root

**That's it**