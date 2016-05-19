#!/bin/bash

# packages may not install without running an update
apt-get update

# Install default database.yml
if [[ ! -e /vagrant/config/database.yml ]]; then
  echo "Installing initial database.yml from database.yml.example"
  sudo -u vagrant cp /vagrant/config/database.yml.example /vagrant/config/database.yml
fi

# Install default config.yml
if [[ ! -e /vagrant/config/config.yml ]]; then
  echo "Installing initial config.yml from config.yml.example"
  sudo -u vagrant cp /vagrant/config/config.yml.example /vagrant/config/config.yml
fi

# Bring in rvm so we aren't installing to the /opt/vagrant_ruby
. /etc/profile.d/rvm.sh

cd /vagrant

rvm get stable
rvm install 2.1.8
rvm --default use 2.1.8

gem install bundler

echo "Running 'bundle'"
bundle

# Run rvmsudo as vagrant to allow users run bundle as the vagrant user.
echo "Switching to 'vagrant' user"
su vagrant
rvmsudo rvm get stable

rake db:create
rake db:migrate
