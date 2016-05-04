# -*- mode: ruby -*-
# vi: set ft=ruby :

SERVICE_IP = ENV["SERVICE_IP"] || "192.168.10.110"

Vagrant.configure("2") do |config|
	config.vm.box = "precise64"
	config.vm.box_url = "http://files.vagrantup.com/precise64.box"

	config.vm.network :private_network, ip: SERVICE_IP

	# config.vm.synced_folder "<PATH_TO_NODE_MODULE>", "/usr/local/lib/clout-services-child", nfs: true

	config.vm.provider :virtualbox do |vb|
		vb.customize ["modifyvm", :id, "--memory", "2046"]
		vb.customize ["modifyvm", :id, "--cpus", "2"]
		vb.customize ["modifyvm", :id, "--ioapic", "on"]
	end

	config.vm.provision :shell, path: "provision.sh"
end