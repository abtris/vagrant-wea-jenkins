Vagrant.configure("2") do |config|

  config.vm.box = "precise"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  config.vm.provider :virtualbox do |v|
    v.gui = false
  end
  
  config.vm.synced_folder "data/", "/vagrant/data"

  config.vm.define :master do |master|
    master.vm.hostname = "master.vm"
    master.vm.network :forwarded_port, guest: 8080, host: 8080
    master.vm.network :forwarded_port, guest: 80, host: 3000
    master.vm.network :private_network, ip: "33.33.33.10"
  end

  config.vm.define :slave do |slave|
    slave.vm.hostname = "slave.vm"
    slave.vm.network :private_network, ip: "33.33.33.20"
  end

end
