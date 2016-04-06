# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.box = "hashicorp/precise32"

  config.vm.host_name = "development.example.com"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.network "private_network", ip: "192.168.33.10"
  
 config.vm.provision "shell", inline: <<-SHELL
   wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
   sudo dpkg -i puppetlabs-release-precise.deb
   sudo apt-get update
   sudo apt-get install -y puppet
 SHELL
   
 config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "site.pp"
    puppet.module_path = "puppet/modules"
 end
   
end
