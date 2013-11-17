# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # later shell scripts assumes that localhost dir already contains symfony project
    if File::exists?( "localhost/web/app_dev.php" ) == false
      puts "Before starting Vagrant you need to create or clone Symfony project in localhost directory.\n"
      puts "Run\n"
      puts "    git clone https://github.com/symfony/symfony-standard localhost\n"
      puts "It will create localhost directory.\n"
      puts "\n"
      exit
    end

  config.vm.box = "precise64"

  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :forwarded_port, guest: 80, host: 8080

  config.ssh.forward_agent = true

  config.vm.synced_folder "localhost/", "/var/www/localhost"

  config.vm.provision "shell", path: "provisions/shell/system-init.sh"
  config.vm.provision "shell", path: "provisions/shell/nginx.sh"
  config.vm.provision "shell", path: "provisions/shell/php5.sh"
  config.vm.provision "shell", path: "provisions/shell/twig.sh"
  config.vm.provision "shell", path: "provisions/shell/symfony.sh"

end
