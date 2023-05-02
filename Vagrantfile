Vagrant.configure("2") do |config|

  config.vm.define "node" do |node|

    node.vm.box = "centos/7"

    node.vm.provider :virtualbox do |vb|
      vb.name = "node"
      vb.memory = "512"
      vb.cpus = 1
    end  

    node.vm.network :forwarded_port, guest: 3000, host:8080
    node.vm.network :private_network, ip: "192.168.10.10"
  end

end
