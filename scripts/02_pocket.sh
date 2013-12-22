#!/bin/bash

# get out minecraft module ready
puppet module install nanliu/staging

echo puppet module install /vagrant/adamcrews-pocketmine-0.0.1.tar.gz --ignore-dependencies

# config minecraft
echo puppet apply /vagrant/puppet/pocket.pp

