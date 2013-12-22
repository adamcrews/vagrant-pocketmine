# -*- mode: ruby -*-
# vi: set ft=ruby :
#

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'digital_ocean'

Vagrant.configure('2') do |config|
  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.provider :digital_ocean do |docean, override|

    docean.image = 'CentOS 6.4 x32'
    docean.region = 'San Francisco 1'
    #docean.region = 'New York 1'
    docean.size = '512MB'
    docean.ssh_key_name = 'minecraft'

    override.ssh.private_key_path = '~/.ssh/digitalocean_rsa'
    override.vm.box = 'digital_ocean'
    override.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"
  end

  config.vm.define :pocket001, primary: true do |pocket001|
    pocket001.vm.hostname = 'pocket001.shroom.org'
    pocket001.hostmanager.aliases = "pocket001"
    #pocket001.size = '512MB'
    pocket001.vm.provision :hostmanager
    pocket001.vm.provision "shell", path: "scripts/01_bootstrap.sh"
    pocket001.vm.provision "shell", path: "scripts/02_pocket.sh"
  end

#  config.vm.define :pocket001 do |pocket001|
#    pocket001.vm.hostname = 'pocket001.shroom.org'
#    pocket001.hostmanager.aliases = "pocket001"
#    #pocket001.size = '512MB'
#    pocket001.vm.provision :hostmanager
#    pocket001.vm.provision "shell", path: "scripts/01_bootstrap.sh"
#    pocket001.vm.provision "shell", path: "scripts/02_minecraft.sh"
#  end
end
