#!/bin/bash

# Create symlink to make Drupal easier to find
ln -s /var/www/whitesite.local /home/vagrant/whitesite.local

# Install yarn
#curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
#echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
#sudo apt-get update
#sudo apt-get install yarn

# Setup UI Kit
#cd ~
#git clone git@github.com:govau/uikit.git
#cd uikit
#yarn
#lerna init
#lerna bootstrap

# Copy Solr configuration and restart
# cp "$SITE"/docroot/profiles/uikit/modules/contrib/search_api_solr/solr-conf/4.x/* /var/solr/collection1/conf
# service solr restart
