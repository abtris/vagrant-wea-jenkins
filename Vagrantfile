Vagrant::Config.run do |config|

  config.vm.box = "wea-jenkins"
  config.vm.box_url = "http://dl.dropbox.com/u/50153812/package.box"

  # config.vm.boot_mode = :gui

  config.vm.network :hostonly, "33.33.33.10"  

  config.vm.forward_port 8080, 8080
  config.vm.forward_port 80, 3000

  config.vm.share_folder "v-data", "/vagrant_data", "./data"


end
