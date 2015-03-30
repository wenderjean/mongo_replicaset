Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu-puppet"
  config.librarian_puppet.puppetfile_dir = "librarian"

  config.vm.define :db1 do |db1|
    db1.vm.network :private_network, :ip => "192.168.33.20"

    db1.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "replSet_1.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end

  config.vm.define :db2 do |db2|
    db2.vm.network :private_network, :ip => "192.168.33.21"

    db2.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "replSet_2.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end

  config.vm.define :db3 do |db3|
    db3.vm.network :private_network, :ip => "192.168.33.22"

    db3.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "replSet_3.pp"
      puppet.module_path   = ["modules", "librarian/modules"]
    end
  end
end
