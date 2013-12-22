#!/bin/bash

A=`arch`
case $A in
  i*)
    ARCH='i386' ;;
  x*)
    ARCH='x86_64' ;;
esac


# Let's install puppet
wget http://yum.puppetlabs.com/el/6/products/$ARCH/puppetlabs-release-6-7.noarch.rpm

yum install -y ./puppetlabs-release*
yum install -y puppet
