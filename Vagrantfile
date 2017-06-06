# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.provision :hosts do |provisioner|
    provisioner.autoconfigure = true

    provisioner.add_host '192.168.56.18', ['aem.local.com', 'aem' ]
    #provisioner.add_host '192.168.56.30', ['web.local.com', 'web' ]
    #provisioner.add_host '192.168.56.40', ['web1.local.com', 'web1' ]
    #provisioner.add_host '192.168.56.14', ['web2.local.com', 'web2' ]
    #provisioner.add_host '192.168.56.16', ['web2.local.com', 'web3' ]

  end

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  #config.vm.box = "precise32"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  #config.vm.box_url = "http://files.vagrantup.com/precise32.box"


  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  #config.vm.network "forwarded_port", guest: 80, host: 4567
  #config.vm.network "forwarded_port", guest: 4502, host: 4568
  #config.vm.network "private_network", ip: "192.168.50.4"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

    #config.vm.provision "ansible" do |ansible|
    #    ansible.playbook = "playbook-setup.yml"
    #end
  # config.vm.provision :shell, path: "bootstrap.sh"

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end


  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL


  config.vm.define "aem" do |aem|

    #web1.vm.box = "centos-6-6-small"
    aem.vm.box = "p0bailey/centos-6-6-small"
    aem.vm.network :private_network, ip: "192.168.56.18"
    aem.vm.hostname = "aem.local.com"
    aem.ssh.insert_key = false

    aem.vm.provider "virtualbox" do |v|
        v.customize [ "modifyvm", :id, "--cpus", "1" ]
        v.customize [ "modifyvm", :id, "--memory", "4096" ]
        v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end

  end


end
