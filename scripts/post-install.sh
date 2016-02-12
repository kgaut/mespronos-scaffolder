#!/bin/sh

# Prepare the settings file for installation
if [ ! -f web/sites/default/settings.php ]
  then
    cp web/sites/default/default.settings.php web/sites/default/settings.php
    chmod 777 web/sites/default/settings.php
    echo "default.settings.php copied to settings.php"
fi

# Prepare the services file for installation
if [ ! -f web/sites/default/services.yml ]
  then
    cp web/sites/default/default.services.yml web/sites/default/services.yml
    chmod 777 web/sites/default/services.yml
    echo "default.services.yml copied to services.yml"
fi

# Prepare the files directory for installation
if [ ! -d web/sites/default/files ]
  then
    mkdir -m777 web/sites/default/files
    touch web/sites/default/files/.gitkeep
    echo "files folder created"
fi

if [ ! -d web/sites/default/tmp ]
  then
    mkdir -m777 web/sites/default/tmp
    touch web/sites/default/tmp/.gitkeep
    echo "tmp folder created"
fi