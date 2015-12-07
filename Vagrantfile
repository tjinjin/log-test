# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "bento/centos-7.1"
  config.ssh.insert_key = false

  config.vm.define 'web' do |web|
    web.vm.network 'private_network', ip: '192.168.50.10'
    web.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
  config.vm.define 'log' do |log|
    log.vm.network 'private_network', ip: '192.168.50.11'
    log.cache.scope = :box if Vagrant.has_plugin? 'vagrant-cachier'
  end
end
