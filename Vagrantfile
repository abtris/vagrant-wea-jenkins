Vagrant.configure("2") do |config|

  config.vm.box = "wea-jenkins"
  config.vm.box_url = "http://dl.dropbox.com/u/50153812/package.box"

  # config.vm.boot_mode = :gui
  
  config.vm.synced_folder "data/", "/vagrant/data"

  config.vm.define :master do |master|
    master.vm.provision :chef_solo do |chef|
      chef.add_recipe "apt"
      chef.add_recipe "java"
      chef.add_recipe "jenkins"
    end
    master.vm.network :forwarded_port, guest: 8080, host: 8080
    master.vm.network :forwarded_port, guest: 80, host: 3000
    master.vm.network :private_network, ip: "33.33.33.10"
  end

  config.vm.define :slave do |slave|
    slave.vm.provision :chef_solo do |chef|
      chef.add_recipe "apt"
      chef.add_recipe "java"    
      chef.add_recipe "jenkins::node_jnlp"
    end
    slave.vm.network :private_network, ip: "33.33.33.20"
  end

end
