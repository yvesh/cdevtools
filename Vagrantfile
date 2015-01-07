VAGRANTFILE_API_VERSION = "2"

  Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # use the default ubuntu 64bit image
    config.vm.box = "ubuntu/trusty64"

    # get it fromt vagrant if it does not exist
    # config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    # enable private access to the machine via a static ip address
    config.vm.network "private_network", ip: "10.42.0.2"

    # disable the default shared folder
    config.vm.synced_folder ".", "/vagrant", :disabled => true
    config.vm.synced_folder "./projects", "/projects"
    # set up as many shared folders as necessary
    # in this case for baumgartner fenster.
    # you might want to set www-data as owner and group, to make them
    # easily readable by the nginx/php in docker. :)

    # install docker
    config.vm.provision "docker",
      images: ["phusion/baseimage"]

    # update package list, install some packages & build custom docker image
    config.vm.provision :shell, :path => "vagrant-bootstrap.sh"

 end
