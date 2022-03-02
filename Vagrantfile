# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_NO_PARALLEL'] = 'yes'

Vagrant.configure(2) do |config|
  
  NUMERO_NODOS=3

  1.upto(NUMERO_NODOS) do |i|
    config.vm.define vm_name = "servidor#{i}" do |nodo|
    config.vm.box ="bento/ubuntu-20.04"
     nodo.vm.hostname = "servidor#{i}"
     nodo.vm.network "private_network", ip: "10.10.10.#{2+i}"
     nodo.vm.provider :virtualbox do |vb|
     vb.name = "servidor#{i}"
     vb.memory = 2048
     vb.cpus = 1
     end
     #nodo.vm.provision "shell", path: "openmpi.sh"
     #nodo.vm.provision "shell", path: "haproxy-cliente.sh", args: "HAClient#{i} 10.10.10.#{2+i}"
     #nodo.vm.provision "shell", path: "haproxy.cfg"
     #nodo.vm.provision "shell", path: "haproxy-servidor.sh"
    end
  end
end