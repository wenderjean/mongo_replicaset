Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu-puppet"
  config.librarian_puppet.puppetfile_dir = "librarian"

  config.vm.define :db do |db|
    config.vm.network :private_network, :ip => "192.168.33.10"
    config.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "replSet_1.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end

  config.vm.define :db2 do |db2|
    config.vm.network :private_network, :ip => "192.168.33.11"
    config.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "replSet_2.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end

  config.vm.define :db3 do |db3|
    config.vm.network :private_network, :ip => "192.168.33.12"
    config.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "replSet_3.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end
end
