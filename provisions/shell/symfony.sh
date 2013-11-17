#!/bin/bash

# Add ip 10.0.2.2 used by VM to trusted
echo "Updating web/app_dev.php"
BEFORE="array('127.0.0.1'"
AFTER="array('127.0.0.1', '10.0.2.2'"
sed -i "s/$BEFORE/$AFTER/g" "/var/www/localhost/web/app_dev.php"

