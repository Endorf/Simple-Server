Vagrant.configure("2") do |config|

  config.vm.define "master" do |node|

    node.vm.box = "centos/7"

    node.vm.provider :virtualbox do |vb|
      vb.name = "master"
      vb.memory = "4096"
      vb.cpus = 2
    end  

    node.vm.network :forwarded_port, guest: 3000, host:8080
    node.vm.network :private_network, ip: "192.168.10.10"

    node.vm.provision :shell, path: "provisioners/install-ansible.sh"
  end

end
