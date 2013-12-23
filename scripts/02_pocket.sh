#!/bin/bash

# get out minecraft module ready
puppet module install nanliu/staging

puppet module install /vagrant/.cache/adamcrews-pocketmine-0.0.2.tar.gz --ignore-dependencies

# config minecraft
puppet apply -e 'include pocketmine'

