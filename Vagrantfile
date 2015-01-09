VAGRANTFILE_API_VERSION = "2"

  Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # use the default ubuntu 64bit image
    config.vm.box = "ubuntu/trusty64"

    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
        v.cpus = 2
    end

    # enable private access to the machine via a static ip address
    config.vm.network "private_network", ip: "10.42.0.2"

    # disable the default shared folder
    config.vm.synced_folder ".", "/vagrant", :disabled => true
    config.vm.synced_folder "./projects", "/projects"
 
    # install docker
    config.vm.provision "docker",
      images: ["phusion/baseimage"]

    # update package list, install some packages & build custom docker image
    config.vm.provision :shell, :path => "vagrant-bootstrap.sh"
  
  end
