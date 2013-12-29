#!/bin/bash

A=`arch`
case $A in
  i*)
    ARCH='i386' ;;
  x*)
    ARCH='x86_64' ;;
esac

. /etc/lsb-release

case $DISTRIB_ID in
  Ubuntu)
    wget http://apt.puppetlabs.com/puppetlabs-release-$DISTRIB_CODENAME.deb
    dpkg -i puppetlabs-release-$DISTRIB_CODENAME.deb
    apt-get update
    apt-get -y install build-essential puppet
    ;;

  *)
    # Let's install puppet
    wget http://yum.puppetlabs.com/el/6/products/$ARCH/puppetlabs-release-6-7.noarch.rpm
    wget http://mirrors.servercentral.net/fedora/epel/6/$ARCH/epel-release-6-8.noarch.rpm

    yum install -y ./puppetlabs-release*
    yum install -y ./epel-release-6-8.noarch.rpm
    yum install -y puppet
    ;;
esac
